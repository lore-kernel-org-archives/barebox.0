Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4A3q-000662-Km
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 17:19:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2016 18:19:07 +0100
Message-Id: <20161108171907.20726-8-s.hauer@pengutronix.de>
In-Reply-To: <20161108171907.20726-1-s.hauer@pengutronix.de>
References: <20161108171907.20726-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] ARM: i.MX6 esdctl: Add i.MX6ul support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c              | 19 +++++++++++++++++++
 arch/arm/mach-imx/include/mach/esdctl.h |  1 +
 2 files changed, 20 insertions(+)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 106e648..ffe708f 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -377,6 +377,11 @@ static __maybe_unused struct imx_esdctl_data imx6q_data = {
 	.add_mem = imx6_mmdc_add_mem,
 };
 
+static __maybe_unused struct imx_esdctl_data imx6ul_data = {
+	.base0 = 0x80000000,
+	.add_mem = imx6_mmdc_add_mem,
+};
+
 static struct platform_device_id imx_esdctl_ids[] = {
 #ifdef CONFIG_ARCH_IMX1
 	{
@@ -427,6 +432,9 @@ static struct platform_device_id imx_esdctl_ids[] = {
 
 static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 	{
+		.compatible = "fsl,imx6ul-mmdc",
+		.data = &imx6ul_data
+	}, {
 		.compatible = "fsl,imx6q-mmdc",
 		.data = &imx6q_data
 	}, {
@@ -589,3 +597,14 @@ void __noreturn imx6q_barebox_entry(void *boarddata)
 
 	barebox_arm_entry(0x10000000, size, boarddata);
 }
+
+void __noreturn imx6ul_barebox_entry(void *boarddata)
+{
+	u64 size_cs0 = imx6_mmdc_sdram_size((void *)MX6_MMDC_P0_BASE_ADDR, 0);
+	u64 size_cs1 = imx6_mmdc_sdram_size((void *)MX6_MMDC_P0_BASE_ADDR, 1);
+	u64 total    = size_cs0 + size_cs1;
+
+	resource_size_t size = min(total, (u64)IMX6_MAX_SDRAM_SIZE);
+
+	barebox_arm_entry(0x80000000, size, boarddata);
+}
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index cf8d89d..66dcc89 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -136,6 +136,7 @@ void __noreturn imx35_barebox_entry(void *boarddata);
 void __noreturn imx51_barebox_entry(void *boarddata);
 void __noreturn imx53_barebox_entry(void *boarddata);
 void __noreturn imx6q_barebox_entry(void *boarddata);
+void __noreturn imx6ul_barebox_entry(void *boarddata);
 void imx_esdctl_disable(void);
 #endif
 
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
