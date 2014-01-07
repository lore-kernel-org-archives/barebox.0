Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0TkQ-0002du-RR
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 10:18:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Jan 2014 11:18:36 +0100
Message-Id: <1389089916-2771-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] usb: chipidea i.MX: add some delay after ulpi_setup
To: barebox@lists.infradead.org

On the pcm038 the ULPI phy is found correctly, but after
a power cycle the attached devices are not found. Adding
some delay fixes this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index dfaf590..a7ad734 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -47,6 +47,7 @@ static int imx_chipidea_port_init(void *drvdata)
 			if (ret)
 				dev_err(ci->dev, "ULPI setup failed with %s\n",
 						strerror(-ret));
+			mdelay(20);
 		} else {
 			dev_err(ci->dev, "no ULPI support available\n");
 			ret = -ENODEV;
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
