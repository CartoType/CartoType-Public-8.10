#ifndef ONLINEMAPDIALOG_H
#define ONLINEMAPDIALOG_H

#include <QDialog>

namespace Ui
{
class OnlineMapDialog;
}

class OnlineMapDialog : public QDialog
    {
    Q_OBJECT

    public:
    explicit OnlineMapDialog(QWidget *parent = nullptr);
    ~OnlineMapDialog();

    Ui::OnlineMapDialog *ui;
    };

#endif // ONLINEMAPDIALOG_H
