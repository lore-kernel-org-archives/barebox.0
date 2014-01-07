Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0TkQ-0002dt-RR
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 10:19:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Jan 2014 11:18:35 +0100
Message-Id: <1389089916-2771-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] usb: chipidea i.MX: always print an error message when
 ULPI fails
To: barebox@lists.infradead.org

The ULPI code does not print a message when the operation times
out. Add one to the caller so that he gets an idea that something
is going wrong.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index c81c10d..dfaf590 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -44,6 +44,9 @@ static int imx_chipidea_port_init(void *drvdata)
 		dev_dbg(ci->dev, "using ULPI phy\n");
 		if (IS_ENABLED(CONFIG_USB_ULPI)) {
 			ret = ulpi_setup(ci->base + 0x170, 1);
+			if (ret)
+				dev_err(ci->dev, "ULPI setup failed with %s\n",
+						strerror(-ret));
 		} else {
 			dev_err(ci->dev, "no ULPI support available\n");
 			ret = -ENODEV;
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
