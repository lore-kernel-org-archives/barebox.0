Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnJ-00080o-0c
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:51 +0100
Message-Id: <20200217124623.14520-11-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/42] ARM: i.MX8M: rename imx8_* bootsource functions to
 imx8mq_*
To: Barebox List <barebox@lists.infradead.org>

Those will differ between i.MX8MQ and i.MX8MM, so give them the
appropriate prefix before introducing i.MX8MM support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c    | 2 +-
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c | 2 +-
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c    | 2 +-
 arch/arm/mach-imx/boot.c                     | 6 +++---
 arch/arm/mach-imx/imx8m.c                    | 2 +-
 arch/arm/mach-imx/include/mach/generic.h     | 4 ++--
 6 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 68464e330d..58dafe7aac 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -84,7 +84,7 @@ static __noreturn noinline void nxp_imx8mq_evk_start(void)
 		 * for the piggy data, so we need to ensure that we are running
 		 * the same code in DRAM.
 		 */
-		imx8_get_boot_source(&src, &instance);
+		imx8mq_get_boot_source(&src, &instance);
 		if (src == BOOTSOURCE_MMC)
 			ret = imx8_esdhc_load_image(instance, false);
 		BUG_ON(ret);
diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index 4ce5c4ecde..cdbf88e8c1 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -52,7 +52,7 @@ static void phytec_imx8mq_som_sram_setup(void)
 
 	ddr_init();
 
-	imx8_get_boot_source(&src, &instance);
+	imx8mq_get_boot_source(&src, &instance);
 
 	if (src == BOOTSOURCE_MMC)
 		ret = imx8_esdhc_load_image(instance, true);
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index 63f87eede0..81ef4de421 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -74,7 +74,7 @@ static void zii_imx8mq_dev_sram_setup(void)
 	if (running_as_ddr_helper())
 		ddr_helper_halt();
 
-	imx8_get_boot_source(&src, &instance);
+	imx8mq_get_boot_source(&src, &instance);
 
 	if (src == BOOTSOURCE_MMC)
 		ret = imx8_esdhc_load_image(instance, true);
diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 0c51767c42..350355fb41 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -579,7 +579,7 @@ void vf610_boot_save_loc(void)
 	imx_boot_save_loc(vf610_get_boot_source);
 }
 
-void imx8_get_boot_source(enum bootsource *src, int *instance)
+void imx8mq_get_boot_source(enum bootsource *src, int *instance)
 {
 	unsigned long addr;
 
@@ -590,7 +590,7 @@ void imx8_get_boot_source(enum bootsource *src, int *instance)
 	__imx7_get_boot_source(src, instance, addr);
 }
 
-void imx8_boot_save_loc(void)
+void imx8mq_boot_save_loc(void)
 {
-	imx_boot_save_loc(imx8_get_boot_source);
+	imx_boot_save_loc(imx8mq_get_boot_source);
 }
diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index d06ba098c3..031b25bfc1 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -42,7 +42,7 @@ int imx8mq_init(void)
 	struct arm_smccc_res res;
 	const char *cputypestr;
 
-	imx8_boot_save_loc();
+	imx8mq_boot_save_loc();
 
 	switch (type) {
 	case IMX8M_CPUTYPE_IMX8MQ:
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 5102c34e4c..3666fd4f8b 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -16,7 +16,7 @@ void imx53_boot_save_loc(void);
 void imx6_boot_save_loc(void);
 void imx7_boot_save_loc(void);
 void vf610_boot_save_loc(void);
-void imx8_boot_save_loc(void);
+void imx8mq_boot_save_loc(void);
 
 void imx25_get_boot_source(enum bootsource *src, int *instance);
 void imx27_get_boot_source(enum bootsource *src, int *instance);
@@ -26,7 +26,7 @@ void imx53_get_boot_source(enum bootsource *src, int *instance);
 void imx6_get_boot_source(enum bootsource *src, int *instance);
 void imx7_get_boot_source(enum bootsource *src, int *instance);
 void vf610_get_boot_source(enum bootsource *src, int *instance);
-void imx8_get_boot_source(enum bootsource *src, int *instance);
+void imx8mq_get_boot_source(enum bootsource *src, int *instance);
 
 int imx1_init(void);
 int imx21_init(void);
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
