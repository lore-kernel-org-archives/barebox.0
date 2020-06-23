Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnimZ-0001Ua-1t
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:16:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2020 15:15:57 +0200
Message-Id: <20200623131606.16316-12-s.hauer@pengutronix.de>
In-Reply-To: <20200623131606.16316-1-s.hauer@pengutronix.de>
References: <20200623131606.16316-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/20] mci: imx-esdhc: Add i.MX8mp compatible
To: Barebox List <barebox@lists.infradead.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

From: Oleksij Rempel <o.rempel@pengutronix.de>

Only add the compatible string to let the driver match.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index bff8dd67ad..b383344142 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -387,6 +387,7 @@ static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
 	{ .compatible = "fsl,imx6sx-usdhc", .data = &usdhc_imx6sx_data },
 	{ .compatible = "fsl,imx8mq-usdhc", .data = &usdhc_imx6sx_data },
 	{ .compatible = "fsl,imx8mm-usdhc", .data = &usdhc_imx6sx_data },
+	{ .compatible = "fsl,imx8mp-usdhc", .data = &usdhc_imx6sx_data },
 	{ .compatible = "fsl,ls1046a-esdhc",.data = &esdhc_ls_data  },
 	{ /* sentinel */ }
 };
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
