Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnS-0008Bm-LB
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:46:19 +0100
Message-Id: <20200217124623.14520-39-s.hauer@pengutronix.de>
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
Subject: [PATCH 38/42] ARM: i.MX8M: Add TF-A loading support for i.MX8MM
To: Barebox List <barebox@lists.infradead.org>

Basically the same as for i.MX8MQ, just some function split up needed
to account for different base addresses for the TF-A on both SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile           |  2 +-
 arch/arm/mach-imx/atf.c              | 26 +++++++++++++++++++-------
 arch/arm/mach-imx/include/mach/atf.h |  9 +++++++--
 firmware/Kconfig                     |  3 +++
 firmware/Makefile                    |  1 +
 5 files changed, 31 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 105785ba1b..30ced0e202 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -16,7 +16,7 @@ lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_VF610) += vf610.o
 obj-$(CONFIG_ARCH_IMX8M) += imx8m.o
-lwl-$(CONFIG_ARCH_IMX8MQ) += atf.o
+lwl-$(CONFIG_ARCH_IMX8M) += atf.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index c1b358d125..4ced8cd083 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -2,13 +2,14 @@
 #include <mach/atf.h>
 
 /**
- * imx8mq_atf_load_bl31 - Load ATF BL31 blob and transfer control to it
+ * imx8m_atf_load_bl31 - Load ATF BL31 blob and transfer control to it
  *
  * @fw:		Pointer to the BL31 blob
  * @fw_size:	Size of the BL31 blob
+ * @atf_dest:	Place where the BL31 is copied to and executed
  *
  * This function:
-
+ *
  *     1. Copies built-in BL31 blob to an address i.MX8M's BL31
  *        expects to be placed
  *
@@ -25,17 +26,28 @@
  * any other implementation may or may not work
  *
  */
-void imx8mq_atf_load_bl31(const void *fw, size_t fw_size)
+
+static void imx8m_atf_load_bl31(const void *fw, size_t fw_size, void *atf_dest)
 {
-	void __noreturn (*bl31)(void) = (void *)MX8MQ_ATF_BL31_BASE_ADDR;
+	void __noreturn (*bl31)(void) = atf_dest;
 
-	if (WARN_ON(fw_size > MX8MQ_ATF_BL31_SIZE_LIMIT))
+	if (WARN_ON(fw_size > MX8M_ATF_BL31_SIZE_LIMIT))
 		return;
 
 	memcpy(bl31, fw, fw_size);
 
 	asm volatile("msr sp_el2, %0" : :
-		     "r" (MX8MQ_ATF_BL33_BASE_ADDR - 16) :
+		     "r" (atf_dest - 16) :
 		     "cc");
 	bl31();
-}
\ No newline at end of file
+}
+
+void imx8mm_atf_load_bl31(const void *fw, size_t fw_size)
+{
+	imx8m_atf_load_bl31(fw, fw_size, (void *)MX8MM_ATF_BL31_BASE_ADDR);
+}
+
+void imx8mq_atf_load_bl31(const void *fw, size_t fw_size)
+{
+	imx8m_atf_load_bl31(fw, fw_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR);
+}
diff --git a/arch/arm/mach-imx/include/mach/atf.h b/arch/arm/mach-imx/include/mach/atf.h
index aeb24bad00..f64a9dd2ba 100644
--- a/arch/arm/mach-imx/include/mach/atf.h
+++ b/arch/arm/mach-imx/include/mach/atf.h
@@ -4,10 +4,15 @@
 #include <linux/sizes.h>
 #include <asm/system.h>
 
-#define MX8MQ_ATF_BL31_SIZE_LIMIT	SZ_64K
+#define MX8M_ATF_BL31_SIZE_LIMIT	SZ_64K
+
+#define MX8MM_ATF_BL31_BASE_ADDR	0x00920000
 #define MX8MQ_ATF_BL31_BASE_ADDR	0x00910000
-#define MX8MQ_ATF_BL33_BASE_ADDR	0x40200000
+#define MX8M_ATF_BL33_BASE_ADDR		0x40200000
+#define MX8MM_ATF_BL33_BASE_ADDR	MX8M_ATF_BL33_BASE_ADDR
+#define MX8MQ_ATF_BL33_BASE_ADDR	MX8M_ATF_BL33_BASE_ADDR
 
+void imx8mm_atf_load_bl31(const void *fw, size_t fw_size);
 void imx8mq_atf_load_bl31(const void *fw, size_t fw_size);
 
 #endif
\ No newline at end of file
diff --git a/firmware/Kconfig b/firmware/Kconfig
index a6f79e8a97..169c6ee915 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -7,6 +7,9 @@ config EXTRA_FIRMWARE_DIR
 config FIRMWARE_IMX_LPDDR4_PMU_TRAIN
        	bool
 
+config FIRMWARE_IMX8MM_ATF
+        bool
+
 config FIRMWARE_IMX8MQ_ATF
         bool
 
diff --git a/firmware/Makefile b/firmware/Makefile
index 9581ee6116..a0f40d3f4e 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -9,6 +9,7 @@ firmware-$(CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN) += \
 	lpddr4_pmu_train_2d_dmem.bin \
 	lpddr4_pmu_train_2d_imem.bin
 
+firmware-$(CONFIG_FIRMWARE_IMX8MM_ATF) += imx8mm-bl31.bin
 firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx8mq-bl31.bin
 
 firmware-$(CONFIG_DRIVER_NET_FSL_FMAN) += fsl_fman_ucode_ls1046_r1.0_106_4_18.bin
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
