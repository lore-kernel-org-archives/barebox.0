Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fT0Y1-0002QF-1M
 for barebox@lists.infradead.org; Wed, 13 Jun 2018 07:50:30 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 13 Jun 2018 09:50:14 +0200
Message-Id: <20180613075014.16396-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] ARM: i.MX: esdctl: Add support for i.MX6SoloX's memory
 controller
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Add code needed to dynamically detect the offset and amount of RAM.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index c1680d5ff..875e942de 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -390,6 +390,11 @@ static __maybe_unused struct imx_esdctl_data imx6q_data = {
 	.add_mem = imx6_mmdc_add_mem,
 };
 
+static __maybe_unused struct imx_esdctl_data imx6sx_data = {
+	.base0 = MX6_MMDC_PORT0_BASE_ADDR,
+	.add_mem = imx6_mmdc_add_mem,
+};
+
 static __maybe_unused struct imx_esdctl_data imx6ul_data = {
 	.base0 = MX6_MMDC_PORT0_BASE_ADDR,
 	.add_mem = imx6_mmdc_add_mem,
@@ -455,6 +460,9 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx6ul-mmdc",
 		.data = &imx6ul_data
+	}, {
+		.compatible = "fsl,imx6sx-mmdc",
+		.data = &imx6sx_data
 	}, {
 		.compatible = "fsl,imx6q-mmdc",
 		.data = &imx6q_data
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
