Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Axi-00065z-MX
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:31 +0100
Message-Id: <1389971012-22977-22-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 21/22] mci: imx: Add devicetree probe support
To: barebox@lists.infradead.org

Only simple probing, no properties supported yet.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index aea78c7..6992177 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -520,8 +520,17 @@ static int mxcmci_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id mxcmci_compatible[] = {
+	{
+		.compatible = "fsl,imx27-mmc",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d mxcmci_driver = {
         .name  = DRIVER_NAME,
         .probe = mxcmci_probe,
+	.of_compatible = DRV_OF_COMPAT(mxcmci_compatible),
 };
 device_platform_driver(mxcmci_driver);
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
