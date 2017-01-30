Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cYKnZ-0002Fs-3t
 for barebox@lists.infradead.org; Mon, 30 Jan 2017 22:51:47 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Mon, 30 Jan 2017 23:50:58 +0100
Message-Id: <1485816659-26091-4-git-send-email-akurz@blala.de>
In-Reply-To: <1485816659-26091-1-git-send-email-akurz@blala.de>
References: <1485816659-26091-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 4/5] ARM i.MX: Add i.MX6SL support
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Most i.MX6SL infrastructure is already covered in barebox by general i.MX6
support. Missing infrastructure provided in separate commits are
* SoC type detection
* Clock infrastructure

Add the missing fsl,imx6sl-mmdc, so it will not be catched by fsl,imx6q-mmdc
and the remaining bits and pieces to provide barebox i.MX6SL SoC support.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/esdctl.c     | 3 +++
 arch/arm/mach-imx/imx.c        | 2 ++
 drivers/clk/imx/Makefile       | 1 +
 drivers/pinctrl/imx-iomux-v3.c | 2 ++
 4 files changed, 8 insertions(+)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index ffe708f..1eebc77 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -432,6 +432,9 @@ static struct platform_device_id imx_esdctl_ids[] = {
 
 static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 	{
+		.compatible = "fsl,imx6sl-mmdc",
+		.data = &imx6ul_data
+	}, {
 		.compatible = "fsl,imx6ul-mmdc",
 		.data = &imx6ul_data
 	}, {
diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 907340f..1990739 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -61,6 +61,8 @@ static int imx_soc_from_dt(void)
 		return IMX_CPU_IMX6;
 	if (of_machine_is_compatible("fsl,imx6sx"))
 		return IMX_CPU_IMX6;
+	if (of_machine_is_compatible("fsl,imx6sl"))
+		return IMX_CPU_IMX6;
 	if (of_machine_is_compatible("fsl,imx6qp"))
 		return IMX_CPU_IMX6;
 	if (of_machine_is_compatible("fsl,imx6ul"))
diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
index 32d5038..b864b4f 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -19,6 +19,7 @@ obj-$(CONFIG_ARCH_IMX51)  += clk-imx5.o
 obj-$(CONFIG_ARCH_IMX53)  += clk-imx5.o
 obj-$(CONFIG_ARCH_IMX6)   += clk-imx6.o
 obj-$(CONFIG_ARCH_IMX6SX) += clk-imx6sx.o
+obj-$(CONFIG_ARCH_IMX6SL) += clk-imx6sl.o
 obj-$(CONFIG_ARCH_IMX6UL) += clk-imx6ul.o
 obj-$(CONFIG_ARCH_IMX7) += clk-imx7.o
 obj-$(CONFIG_ARCH_VF610)  += clk-vf610.o
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index b5fa235..dea4324 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -198,6 +198,8 @@ static __maybe_unused struct of_device_id imx_iomux_v3_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx6ul-iomuxc",
 	}, {
+		.compatible = "fsl,imx6sl-iomuxc",
+	}, {
 		.compatible = "fsl,imx7d-iomuxc",
 	}, {
 		.compatible = "fsl,imx7d-iomuxc-lpsr",
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
