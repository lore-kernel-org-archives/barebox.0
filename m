Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVDu-0004wx-1r
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:24:04 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 07:23:31 +0200
Message-Id: <20200701052340.9462-20-a.fatoum@pengutronix.de>
In-Reply-To: <20200701052340.9462-1-a.fatoum@pengutronix.de>
References: <20200701052340.9462-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 19/28] ARM: at91: add helpers for chain-loading barebox from
 SD-card
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With PBL FAT support implemented, provide an sama5d2_sdhci_start_image
helper that can be called from the PBL to chainload a barebox.bin file
from the first FAT partition.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig              |  5 ++
 arch/arm/mach-at91/Makefile             |  1 +
 arch/arm/mach-at91/include/mach/xload.h | 12 ++++
 arch/arm/mach-at91/xload-mmc.c          | 85 +++++++++++++++++++++++++
 4 files changed, 103 insertions(+)
 create mode 100644 arch/arm/mach-at91/include/mach/xload.h
 create mode 100644 arch/arm/mach-at91/xload-mmc.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 54fa9b8aa28c..25ef854bf0b5 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -40,6 +40,11 @@ config HAVE_AT91_I2S_MUX_CLK
 config HAVE_AT91_SAM9X60_PLL
 	bool
 
+config AT91_MCI_PBL
+	bool
+	depends on MCI_ATMEL_SDHCI_PBL
+	default y
+
 # Select if board uses the common at91sam926x_board_init
 config AT91SAM926X_BOARD_INIT
 	bool
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 254bbeef2773..31a91b967ef4 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_AT91_BOOTSTRAP)	+= bootstrap.o
 
 obj-y += at91sam9_reset.o
 obj-y += at91sam9g45_reset.o
+pbl-$(CONFIG_AT91_MCI_PBL) +=  xload-mmc.o
 
 obj-$(CONFIG_AT91SAM9_SMC) += sam9_smc.o
 obj-$(CONFIG_HAVE_AT91SAM9_RST) += at91sam9_rst.o
diff --git a/arch/arm/mach-at91/include/mach/xload.h b/arch/arm/mach-at91/include/mach/xload.h
new file mode 100644
index 000000000000..f110236b0b10
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/xload.h
@@ -0,0 +1,12 @@
+#ifndef __MACH_XLOAD_H
+#define __MACH_XLOAD_H
+
+#include <linux/compiler.h>
+#include <pbl.h>
+
+void __noreturn sama5d2_sdhci_start_image(u32 r4);
+
+int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
+
+#endif /* __MACH_XLOAD_H */
+
diff --git a/arch/arm/mach-at91/xload-mmc.c b/arch/arm/mach-at91/xload-mmc.c
new file mode 100644
index 000000000000..bc974b6446c7
--- /dev/null
+++ b/arch/arm/mach-at91/xload-mmc.c
@@ -0,0 +1,85 @@
+#include <common.h>
+#include <mach/xload.h>
+#include <mach/sama5_bootsource.h>
+#include <mach/hardware.h>
+#include <mach/sama5d2_ll.h>
+#include <mach/gpio.h>
+#include <linux/sizes.h>
+#include <asm/cache.h>
+#include <pbl.h>
+
+static void __naked __noreturn xload_bb(void __noreturn (*bb)(void), u32 r4)
+{
+	asm volatile("mov r4, %0" : : "r"(r4) : );
+	asm volatile("bx  %0"     : : "r"(bb) : );
+}
+
+static void at91_fat_start_image(struct pbl_bio *bio,
+				 void *buf, unsigned int len,
+				 u32 r4)
+{
+	void __noreturn (*bb)(void);
+	int ret;
+
+	ret = pbl_fat_load(bio, "barebox.bin", buf, len);
+	if (ret < 0) {
+		pr_err("pbl_fat_load: error %d\n", ret);
+		return;
+	}
+
+	bb = buf;
+
+	sync_caches_for_execution();
+
+	xload_bb(bb, r4);
+}
+
+static const struct sdhci_instance {
+	void __iomem *base;
+	unsigned id;
+	u8 periph;
+	s8 pins[15];
+} sdhci_instances[] = {
+	[0] = { SAMA5D2_BASE_SDHC0, SAMA5D2_ID_SDMMC0, AT91_MUX_PERIPH_A,
+		{ 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 13, 10, 11, 12, -1 } },
+	[1] = { SAMA5D2_BASE_SDHC1, SAMA5D2_ID_SDMMC1, AT91_MUX_PERIPH_E,
+		{ 18, 19, 20, 21, 22, 28, 30, -1 } },
+};
+
+/**
+ * sama5d2_sdhci_start_image - Load and start an image from FAT-formatted SDHCI
+ * @r4: value of r4 passed by BootROM
+ *
+ * Return: If successul, this function does not return. A negative error
+ * code is returned when this function fails.
+ */
+void __noreturn sama5d2_sdhci_start_image(u32 r4)
+{
+	void *buf = (void *)SAMA5_DDRCS;
+	const struct sdhci_instance *instance;
+	struct pbl_bio bio;
+	const s8 *pin;
+	int ret;
+
+	instance = &sdhci_instances[!!sama5_bootsource_instance(r4)];
+
+	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_PIOA);
+	for (pin = instance->pins; *pin >= 0; pin++) {
+		at91_mux_pio4_set_periph(SAMA5D2_BASE_PIOA,
+					 BIT(*pin), instance->periph);
+	}
+
+	sama5d2_pmc_enable_periph_clock(instance->id);
+	sama5d2_pmc_enable_generic_clock(instance->id, AT91_PMC_GCKCSS_UPLL_CLK, 1);
+
+	ret = at91_sdhci_bio_init(&bio, instance->base);
+	if (ret)
+		goto out_panic;
+
+	/* TODO: eMMC boot partition handling: they are not FAT-formatted */
+
+	at91_fat_start_image(&bio, buf, SZ_16M, r4);
+
+out_panic:
+	panic("FAT chainloading failed\n");
+}
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
