Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI4zc-0005fg-QI
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 07:03:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 09:03:00 +0200
Message-Id: <20200915070305.15763-2-s.hauer@pengutronix.de>
In-Reply-To: <20200915070305.15763-1-s.hauer@pengutronix.de>
References: <20200915070305.15763-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] powerpc: Add prototypes to header file
To: Barebox List <barebox@lists.infradead.org>

This adds prototypes of the board specific functions
fsl_ddr_board_options() and fsl_ddr_board_info() to a header
file. Including this header file from the board files reveals
that the prototypes are different across the different implementations,
so harmonize them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/powerpc/boards/freescale-p1010rdb/ddr.c | 4 +---
 arch/powerpc/boards/freescale-p1022ds/ddr.c  | 4 +---
 arch/powerpc/ddr-8xxx/ddr.h                  | 4 ----
 arch/powerpc/include/asm/fsl_ddr_sdram.h     | 8 ++++++++
 4 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/powerpc/boards/freescale-p1010rdb/ddr.c b/arch/powerpc/boards/freescale-p1010rdb/ddr.c
index 18069f4df1..14fa426726 100644
--- a/arch/powerpc/boards/freescale-p1010rdb/ddr.c
+++ b/arch/powerpc/boards/freescale-p1010rdb/ddr.c
@@ -20,7 +20,7 @@
 
 static const u8 spd_addr = 0x52;
 
-int fsl_ddr_board_info(struct ddr_board_info_s *info)
+void fsl_ddr_board_info(struct ddr_board_info_s *info)
 {
 	p1010rdb_early_init();
 
@@ -34,8 +34,6 @@ int fsl_ddr_board_info(struct ddr_board_info_s *info)
 	info->i2c_speed = 400000;
 	info->i2c_base = IOMEM(I2C2_BASE_ADDR);
 	info->spd_i2c_addr = &spd_addr;
-
-	return 0;
 }
 
 void fsl_ddr_board_options(struct memctl_options_s *popts,
diff --git a/arch/powerpc/boards/freescale-p1022ds/ddr.c b/arch/powerpc/boards/freescale-p1022ds/ddr.c
index 1944518c79..3a8298f928 100644
--- a/arch/powerpc/boards/freescale-p1022ds/ddr.c
+++ b/arch/powerpc/boards/freescale-p1022ds/ddr.c
@@ -19,7 +19,7 @@
 
 static const u8 spd_addr = 0x51;
 
-int fsl_ddr_board_info(struct ddr_board_info_s *info)
+void fsl_ddr_board_info(struct ddr_board_info_s *info)
 {
 	/*
 	 * Early mapping is needed to access the clock
@@ -37,8 +37,6 @@ int fsl_ddr_board_info(struct ddr_board_info_s *info)
 	info->i2c_speed = 400000;
 	info->i2c_base = IOMEM(I2C2_BASE_ADDR);
 	info->spd_i2c_addr = &spd_addr;
-
-	return 0;
 }
 
 struct board_specific_parameters {
diff --git a/arch/powerpc/ddr-8xxx/ddr.h b/arch/powerpc/ddr-8xxx/ddr.h
index 2ef87f2776..8560e37167 100644
--- a/arch/powerpc/ddr-8xxx/ddr.h
+++ b/arch/powerpc/ddr-8xxx/ddr.h
@@ -109,8 +109,4 @@ int fsl_ddr_get_spd(
 		struct ddr_board_info_s *binfo);
 int fsl_ddr_set_memctl_regs(
 		const struct fsl_ddr_info_s *info);
-void fsl_ddr_board_options(
-		struct memctl_options_s *popts,
-		struct dimm_params_s *pdimm);
-void fsl_ddr_board_info(struct ddr_board_info_s *info);
 #endif
diff --git a/arch/powerpc/include/asm/fsl_ddr_sdram.h b/arch/powerpc/include/asm/fsl_ddr_sdram.h
index f4732389f6..b6c0b4dd7a 100644
--- a/arch/powerpc/include/asm/fsl_ddr_sdram.h
+++ b/arch/powerpc/include/asm/fsl_ddr_sdram.h
@@ -184,4 +184,12 @@ struct memctl_options_s {
 
 extern phys_size_t fsl_ddr_sdram(void);
 extern phys_size_t fixed_sdram(void);
+
+struct dimm_params_s;
+
+void fsl_ddr_board_options(
+		struct memctl_options_s *popts,
+		struct dimm_params_s *pdimm);
+void fsl_ddr_board_info(struct ddr_board_info_s *info);
+
 #endif
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
