/*
cartotype_vector_joiner.h
Copyright (C) 2023 CartoType Ltd.
See www.cartotype.com for more information.
*/

#pragma once

#include <vector>
#include <map>

/**
Joins two vectors that share start or end members.

Joins aSource to this aDest by joining it at one end or other if possible and adding the members of aSource to aDest.
Reverses the added members if necessary. Returns true if the join was possible.

Does nothing if either vector is empty.
*/
template<typename T> bool JoinVectors(std::vector<T>& aDest,const std::vector<T>& aSource)
    {
    if (aDest.empty() || aSource.empty() || &aDest == &aSource)
        return false;

    if (aDest.back() == aSource.front())
        {
        aDest.insert(aDest.end(),aSource.begin() + 1,aSource.end());
        return true;
        }
    if (aDest.back() == aSource.back())
        {
        aDest.insert(aDest.end(),aSource.rbegin() + 1,aSource.rend());
        return true;
        }
    if (aDest.front() == aSource.back())
        {
        aDest.insert(aDest.begin(),aSource.begin(),aSource.end() - 1);
        return true;
        }
    if (aDest.front() == aSource.front())
        {
        aDest.insert(aDest.begin(),aSource.rbegin(),aSource.rend() - 1);
        return true;
        }

    return false;
    }

/**
A class to join two vectors that share start or end members.
Use it by creating all the vectors, then calling Join once on each vector.
After that, use only those vectors which are not empty.
*/

template<typename T> class VectorJoiner
    {
    public:
    void Join(std::vector<T>& aVector)
        {
        if (aVector.empty())
            return;

        std::vector<T>* cur_vector = &aVector;
        for (int pass = 0; pass < 2; pass++)
            {
            auto iter = m_end_map.find(cur_vector->front());
            if (iter == m_end_map.end())
                iter = m_end_map.find(cur_vector->back());
            if (iter == m_end_map.end())
                break;

            auto found_vector = iter->second;
            m_end_map.erase(found_vector->front());
            m_end_map.erase(found_vector->back());
            JoinVectors(*found_vector,*cur_vector);

            cur_vector->clear();
            cur_vector = found_vector;
            }

        m_end_map[cur_vector->front()] = cur_vector;
        m_end_map[cur_vector->back()] = cur_vector;
        }

    private:
    std::map<T,std::vector<T>*> m_end_map;
    };
