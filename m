Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4sz-0002ga-5g
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:51:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 21/23] pinmmux: i.MX: add pin mux support for i.MX7
Date: Mon, 16 Jan 2017 11:51:06 +0100
Message-Id: <20170116105108.13617-22-s.hauer@pengutronix.de>
In-Reply-To: <20170116105108.13617-1-s.hauer@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>
Cc: Juergen Borleis <jbe@pengutronix.de>

From: Juergen Borleis <jbe@pengutronix.de>

Signed-off-by Juergen Borleis <jbe@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/imx-iomux-v3.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index 4b3f03389..1dc46e81a 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -24,6 +24,7 @@
 #include <pinctrl.h>
 #include <malloc.h>
 #include <mach/iomux-v3.h>
+#include <mach/generic.h>
 
 struct imx_iomux_v3 {
 	void __iomem *base;
@@ -41,7 +42,7 @@ static void imx_iomuxv3_setup_single(void __iomem *base, struct device_d *dev,
 		"mux: 0x%08x -> 0x%04x, conf: 0x%08x -> 0x%04x input: 0x%08x -> 0x%04x\n",
 		mux_val, mux_reg, conf_val, conf_reg, input_val, input_reg);
 
-	if (mux_reg)
+	if (mux_reg || cpu_is_mx7())
 		writel(mux_val, base + mux_reg);
 	if (conf_reg)
 		writel(conf_val, base + conf_reg);
@@ -209,6 +210,8 @@ static __maybe_unused struct of_device_id imx_iomux_v3_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx6ul-iomuxc",
 	}, {
+		.compatible = "fsl,imx7d-iomuxc",
+	}, {
 		/* sentinel */
 	}
 };
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
