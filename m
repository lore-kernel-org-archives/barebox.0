Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoSw-0007oF-Eu
 for barebox@lists.infradead.org; Wed, 14 Aug 2019 08:17:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Aug 2019 10:16:57 +0200
Message-Id: <20190814081659.22670-3-s.hauer@pengutronix.de>
In-Reply-To: <20190814081659.22670-1-s.hauer@pengutronix.de>
References: <20190814081659.22670-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] pinctrl: i.MX iomux-v1: Add i.MX1 support
To: Barebox List <barebox@lists.infradead.org>

This adds the device tree compatible for the i.MX1 iomux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/imx-iomux-v1.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pinctrl/imx-iomux-v1.c b/drivers/pinctrl/imx-iomux-v1.c
index d0136f931e..81925f2fd4 100644
--- a/drivers/pinctrl/imx-iomux-v1.c
+++ b/drivers/pinctrl/imx-iomux-v1.c
@@ -289,6 +289,8 @@ static int imx_iomux_v1_probe(struct device_d *dev)
 static __maybe_unused struct of_device_id imx_iomux_v1_dt_ids[] = {
 	{
 		.compatible = "fsl,imx27-iomuxc",
+	}, {
+		.compatible = "fsl,imx1-iomuxc",
 	}, {
 		/* sentinel */
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
