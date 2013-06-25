Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrToP-0000oq-Fh
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 14:01:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Jun 2013 16:01:10 +0200
Message-Id: <1372168870-3005-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372168870-3005-1-git-send-email-s.hauer@pengutronix.de>
References: <1372168870-3005-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] pinctrl: imx-iomux-v3: Add imx6dl compatible entry
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/imx-iomux-v3.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index c867a23..1223c02 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -194,6 +194,8 @@ static __maybe_unused struct of_device_id imx_iomux_v3_dt_ids[] = {
 		.compatible = "fsl,imx53-iomuxc",
 	}, {
 		.compatible = "fsl,imx6q-iomuxc",
+	},  {
+		.compatible = "fsl,imx6dl-iomuxc",
 	}, {
 		/* sentinel */
 	}
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
