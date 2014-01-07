Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0TkQ-0002dr-RQ
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 10:19:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Jan 2014 11:18:33 +0100
Message-Id: <1389089916-2771-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389089916-2771-1-git-send-email-s.hauer@pengutronix.de>
References: <1389089916-2771-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] usb: chipidea i.MX: remove unused pdata->init hook
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 5 -----
 include/usb/chipidea-imx.h     | 1 -
 2 files changed, 6 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index d8209d1..2f290e1 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -32,7 +32,6 @@ struct imx_chipidea {
 	struct ehci_data data;
 	unsigned long flags;
 	enum imx_usb_mode mode;
-	int (*init)(int port);
 	int portno;
 };
 
@@ -58,9 +57,6 @@ static int imx_chipidea_port_init(void *drvdata)
 	if (ret)
 		dev_err(ci->dev, "misc init failed: %s\n", strerror(-ret));
 
-	if (ci->init)
-		ci->init(ci->portno);
-
 	return ret;
 }
 
@@ -152,7 +148,6 @@ static int imx_chipidea_probe(struct device_d *dev)
 		}
 		ci->portno = dev->id;
 		ci->flags = pdata->flags;
-		ci->init = pdata->init;
 		ci->mode = pdata->mode;
 	}
 
diff --git a/include/usb/chipidea-imx.h b/include/usb/chipidea-imx.h
index 5801cf1..487217c 100644
--- a/include/usb/chipidea-imx.h
+++ b/include/usb/chipidea-imx.h
@@ -42,7 +42,6 @@ enum imx_usb_mode {
 struct imxusb_platformdata {
 	unsigned long flags;
 	enum imx_usb_mode mode;
-	int (*init)(int port);
 };
 
 int imx_usbmisc_port_init(int port, unsigned flags);
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
