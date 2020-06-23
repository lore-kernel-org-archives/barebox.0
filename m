Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnimZ-0001Uc-1u
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:16:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2020 15:15:56 +0200
Message-Id: <20200623131606.16316-11-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/20] net: fec_imx: add fsl,imx8mp-fec compatible
To: Barebox List <barebox@lists.infradead.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

From: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/fec_imx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 772f930f0d..aefb626e67 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -922,6 +922,9 @@ static __maybe_unused struct of_device_id imx_fec_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx6sx-fec",
 		.data = (void *)FEC_TYPE_IMX6,
+	}, {
+		.compatible = "fsl,imx8mp-fec",
+		.data = (void *)FEC_TYPE_IMX6,
 	}, {
 		.compatible = "fsl,mvf600-fec",
 		.data = (void *)FEC_TYPE_IMX6,
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
