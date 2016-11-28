Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cBIHJ-0007SB-LO
 for barebox@lists.infradead.org; Mon, 28 Nov 2016 09:31:15 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Mon, 28 Nov 2016 10:27:35 +0100
Message-Id: <1480325255-17750-4-git-send-email-akurz@blala.de>
In-Reply-To: <1480325255-17750-1-git-send-email-akurz@blala.de>
References: <1480325255-17750-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 4/4] ARM i.MX: Add i.MX6SL support
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Most i.MX6SL infrastructure is already covered in barebox by general i.MX6
support. Missing infrastructure provided in separate commits are
* USB id for scripts imx-usb-loader
* SoC type detection
* Clock infrastructure

Add the remaining bits and pieces to provide barebox i.MX6SL SoC support.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/imx.c        | 2 ++
 drivers/clk/imx/Makefile       | 1 +
 drivers/pinctrl/imx-iomux-v3.c | 4 +++-
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 952db00..1eea275 100644
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
index 65d7859..527d5e8 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -18,5 +18,6 @@ obj-$(CONFIG_ARCH_IMX51)  += clk-imx5.o
 obj-$(CONFIG_ARCH_IMX53)  += clk-imx5.o
 obj-$(CONFIG_ARCH_IMX6)   += clk-imx6.o
 obj-$(CONFIG_ARCH_IMX6SX) += clk-imx6sx.o
+obj-$(CONFIG_ARCH_IMX6SL) += clk-imx6sl.o
 obj-$(CONFIG_ARCH_IMX6UL) += clk-imx6ul.o
 obj-$(CONFIG_ARCH_VF610)  += clk-vf610.o
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index 4b3f033..7d24a87 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -202,9 +202,11 @@ static __maybe_unused struct of_device_id imx_iomux_v3_dt_ids[] = {
 		.compatible = "fsl,imx53-iomuxc",
 	}, {
 		.compatible = "fsl,imx6q-iomuxc",
-	},  {
+	}, {
 		.compatible = "fsl,imx6dl-iomuxc",
 	}, {
+		.compatible = "fsl,imx6sl-iomuxc",
+	}, {
 		.compatible = "fsl,imx6sx-iomuxc",
 	}, {
 		.compatible = "fsl,imx6ul-iomuxc",
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
