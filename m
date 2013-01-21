Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gw6.ovh.net ([213.251.189.206] helo=mail431.ha.ovh.net)
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxNiB-0003NC-Ne
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 20:11:20 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 21:09:48 +0100
Message-Id: <1358798996-26595-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130121200712.GJ26329@game.jcrosoft.org>
References: <20130121200712.GJ26329@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/9] usb: add parameters info on usb device
To: barebox@lists.infradead.org

   iManufacturer = 0
        iProduct = 1
   iSerialNumber = 0
    Manufacturer =
         Product = OHCI Root Hub
    SerialNumber =
        idVendor = 0000
       idProduct = 0000

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/usb/core/usb.c |   14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 9dc931b..a813be5 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -300,6 +300,7 @@ static int usb_new_device(struct usb_device *dev)
 	int port = -1;
 	struct usb_device *parent = dev->parent;
 	unsigned short portstatus;
+	char str[16];
 
 	buf = dma_alloc(USB_BUFSIZ);
 
@@ -438,6 +439,19 @@ static int usb_new_device(struct usb_device *dev)
 	print_usb_device(dev);
 
 	register_device(&dev->dev);
+	sprintf(str, "%d", dev->descriptor->iManufacturer);
+	dev_add_param_fixed(&dev->dev, "iManufacturer", str);
+	sprintf(str, "%d", dev->descriptor->iProduct);
+	dev_add_param_fixed(&dev->dev, "iProduct", str);
+	sprintf(str, "%d", dev->descriptor->iSerialNumber);
+	dev_add_param_fixed(&dev->dev, "iSerialNumber", str);
+	dev_add_param_fixed(&dev->dev, "Manufacturer", dev->mf);
+	dev_add_param_fixed(&dev->dev, "Product", dev->prod);
+	dev_add_param_fixed(&dev->dev, "SerialNumber", dev->serial);
+	sprintf(str, "%04x", le16_to_cpu(dev->descriptor->idVendor));
+	dev_add_param_fixed(&dev->dev, "idVendor", str);
+	sprintf(str, "%04x", le16_to_cpu(dev->descriptor->idProduct));
+	dev_add_param_fixed(&dev->dev, "idProduct", str);
 	list_add_tail(&dev->list, &usb_device_list);
 
 	err = 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
