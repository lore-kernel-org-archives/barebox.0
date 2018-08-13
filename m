Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fpCWl-0000Jz-9h
 for barebox@lists.infradead.org; Mon, 13 Aug 2018 13:04:57 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Mon, 13 Aug 2018 15:02:49 +0200
Message-Id: <20180813130300.32497-4-r.hieber@pengutronix.de>
In-Reply-To: <20180813130300.32497-1-r.hieber@pengutronix.de>
References: <20180813130300.32497-1-r.hieber@pengutronix.de>
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
Subject: [PATCH v3 03/14] ARM: MXS: i.MX28: allow setup of low-voltage SDRAM
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

The PINCTRL_*_DDR_MODE_* defines are now needed in global scope, so move
them to the respective include header.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 arch/arm/boards/duckbill/lowlevel.c           | 3 ++-
 arch/arm/boards/freescale-mx28-evk/lowlevel.c | 3 ++-
 arch/arm/boards/karo-tx28/lowlevel.c          | 3 ++-
 arch/arm/mach-mxs/include/mach/init.h         | 7 ++++++-
 arch/arm/mach-mxs/mem-init.c                  | 9 +++------
 5 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/duckbill/lowlevel.c b/arch/arm/boards/duckbill/lowlevel.c
index 2922e40f2a..3adda68d77 100644
--- a/arch/arm/boards/duckbill/lowlevel.c
+++ b/arch/arm/boards/duckbill/lowlevel.c
@@ -55,7 +55,8 @@ static noinline void duckbill_init(void)
 
 	pr_debug("initializing SDRAM...\n");
 
-	mx28_mem_init(mx28_dram_vals_default);
+	mx28_mem_init(PINCTRL_EMI_DS_CTRL_DDR_MODE_DDR2,
+			mx28_dram_vals_default);
 
 	pr_debug("DONE\n");
 }
diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
index 4d45a03ba2..9df60210e6 100644
--- a/arch/arm/boards/freescale-mx28-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
@@ -47,7 +47,8 @@ static noinline void freescale_mx28evk_init(void)
 
 	pr_debug("initializing SDRAM...\n");
 
-	mx28_mem_init(mx28_dram_vals_default);
+	mx28_mem_init(PINCTRL_EMI_DS_CTRL_DDR_MODE_DDR2,
+			mx28_dram_vals_default);
 
 	pr_debug("DONE\n");
 }
diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
index d072637de7..99f8a562cc 100644
--- a/arch/arm/boards/karo-tx28/lowlevel.c
+++ b/arch/arm/boards/karo-tx28/lowlevel.c
@@ -47,7 +47,8 @@ static noinline void karo_tx28_init(void)
 
 	pr_debug("initializing SDRAM...\n");
 
-	mx28_mem_init(mx28_dram_vals_default);
+	mx28_mem_init(PINCTRL_EMI_DS_CTRL_DDR_MODE_DDR2,
+			mx28_dram_vals_default);
 
 	pr_debug("DONE\n");
 }
diff --git a/arch/arm/mach-mxs/include/mach/init.h b/arch/arm/mach-mxs/include/mach/init.h
index 6526d303a1..7021981d41 100644
--- a/arch/arm/mach-mxs/include/mach/init.h
+++ b/arch/arm/mach-mxs/include/mach/init.h
@@ -21,8 +21,13 @@ void mxs_power_wait_pswitch(void);
 extern const uint32_t mx28_dram_vals_default[190];
 extern uint32_t mx23_dram_vals[];
 
+#define PINCTRL_EMI_DS_CTRL_DDR_MODE_LPDDR1	(0b00 << 16)
+#define PINCTRL_EMI_DS_CTRL_DDR_MODE_LVDDR2	(0b10 << 16)
+#define PINCTRL_EMI_DS_CTRL_DDR_MODE_DDR2	(0b11 << 16)
+
 void mx23_mem_init(void);
-void mx28_mem_init(const uint32_t dram_vals[190]);
+void mx28_mem_init(const int emi_ds_ctrl_ddr_mode,
+		const uint32_t dram_vals[190]);
 void mxs_mem_setup_cpu_and_hbus(void);
 void mxs_mem_setup_vdda(void);
 void mxs_mem_init_clock(unsigned char divider);
diff --git a/arch/arm/mach-mxs/mem-init.c b/arch/arm/mach-mxs/mem-init.c
index ac8bfee18e..7bc6be00b4 100644
--- a/arch/arm/mach-mxs/mem-init.c
+++ b/arch/arm/mach-mxs/mem-init.c
@@ -318,18 +318,15 @@ void mx23_mem_init(void)
 	mxs_mem_setup_cpu_and_hbus();
 }
 
-#define PINCTRL_EMI_DS_CTRL_DDR_MODE_DDR2	(0x3 << 16)
-
-void mx28_mem_init(const uint32_t dram_vals[190])
+void mx28_mem_init(const int emi_ds_ctrl_ddr_mode, const uint32_t dram_vals[190])
 {
 	mxs_early_delay(11000);
 
 	/* Fractional divider for ref_emi is 21 ; 480 * 18 / 21 = 411MHz */
 	mxs_mem_init_clock(21);
 
-	/* Set DDR2 mode */
-	writel(PINCTRL_EMI_DS_CTRL_DDR_MODE_DDR2,
-			IMX_IOMUXC_BASE + 0x1b80);
+	/* Set DDR mode */
+	writel(emi_ds_ctrl_ddr_mode, IMX_IOMUXC_BASE + 0x1b80);
 
 	/*
 	 * Configure the DRAM registers
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
