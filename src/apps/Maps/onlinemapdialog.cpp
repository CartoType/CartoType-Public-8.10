#include "onlinemapdialog.h"
#include "ui_onlinemapdialog.h"

OnlineMapDialog::OnlineMapDialog(QWidget *parent):
    QDialog(parent),
    ui(new Ui::OnlineMapDialog)
    {
    ui->setupUi(this);

    // Set the URL to Mapbox Streets V8.
    ui->url->setText("https://api.mapbox.com/v4/mapbox.mapbox-streets-v8");
    }

OnlineMapDialog::~OnlineMapDialog()
    {
    delete ui;
    }
