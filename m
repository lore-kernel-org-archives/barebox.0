Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWIP-0000HV-B0
 for barebox@lists.infradead.org; Mon, 06 Jan 2020 17:36:11 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  6 Jan 2020 18:35:39 +0100
Message-Id: <20200106173540.20367-5-ahmad@a3f.at>
In-Reply-To: <20200106173540.20367-1-ahmad@a3f.at>
References: <20200106173540.20367-1-ahmad@a3f.at>
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
Subject: [RFC PATCH 4/5] ARM: at91: add helpers for MCI barebox chain-loading
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de

With PBL FAT support implemented, provide an sama5d2_sdhci_start_image
helper that cann called from the PBL to chainload a barebox.bin file
from the first FAT partition.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-at91/Kconfig              |  5 +++
 arch/arm/mach-at91/Makefile             |  1 +
 arch/arm/mach-at91/include/mach/xload.h | 12 ++++++
 arch/arm/mach-at91/xload-mmc.c          | 51 +++++++++++++++++++++++++
 4 files changed, 69 insertions(+)
 create mode 100644 arch/arm/mach-at91/include/mach/xload.h
 create mode 100644 arch/arm/mach-at91/xload-mmc.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 5267102bf94e..a14aa59773fa 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -34,6 +34,11 @@ config HAVE_AT91_GENERATED_CLK
 config HAVE_AT91_BOOTSTRAP
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
index 66d0b700f61e..8db30f338c37 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -11,6 +11,7 @@ obj-$(CONFIG_AT91_BOOTSTRAP)	+= bootstrap.o
 
 obj-y += at91sam9_reset.o
 obj-y += at91sam9g45_reset.o
+pbl-$(CONFIG_AT91_MCI_PBL) +=  xload-mmc.o
 
 obj-$(CONFIG_AT91SAM9_SMC) += sam9_smc.o
 
diff --git a/arch/arm/mach-at91/include/mach/xload.h b/arch/arm/mach-at91/include/mach/xload.h
new file mode 100644
index 000000000000..d73be6d45f67
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/xload.h
@@ -0,0 +1,12 @@
+#ifndef __MACH_XLOAD_H
+#define __MACH_XLOAD_H
+
+#include <linux/compiler.h>
+#include <pbl.h>
+
+void __noreturn sama5d2_sdhci_start_image(int instance);
+
+int atmel_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
+
+#endif /* __MACH_XLOAD_H */
+
diff --git a/arch/arm/mach-at91/xload-mmc.c b/arch/arm/mach-at91/xload-mmc.c
new file mode 100644
index 000000000000..adb260f40e33
--- /dev/null
+++ b/arch/arm/mach-at91/xload-mmc.c
@@ -0,0 +1,51 @@
+#include <common.h>
+#include <mach/xload.h>
+#include <mach/hardware.h>
+#include <asm/barebox-arm.h>
+#include <linux/sizes.h> // FIXME remove
+#include <asm/cache.h>
+#include <pbl.h>
+#include <debug_ll.h>
+
+static void at91_fat_start_image(struct pbl_bio *bio, void *buf, unsigned int len)
+{
+	void __noreturn (*bb)(void);
+	int ret;
+
+	ret = pbl_fat_load(bio, "barebox.bin", buf, len);
+	if (ret) {
+		pr_err("pbl_fat_load: error %d\n", ret);
+		return;
+	}
+
+	bb = buf;
+
+	sync_caches_for_execution();
+
+	bb();
+}
+
+/**
+ * sama5d2_sdhci_start_image - Load and start an image from FAT-formatted SDHCI
+ * @instance: The SDHCI instance {0,1}
+ *
+ * Return: If successul, this function does not return. A negative error
+ * code is returned when this function fails.
+ */
+void __noreturn sama5d2_sdhci_start_image(int instance)
+{
+	void *buf = (void *)SAMA5_DDRCS + SZ_64M;
+	void __iomem *base;
+	struct pbl_bio bio;
+	int ret;
+
+	base = IOMEM(instance ? SAMA5D2_BASE_SDHC1 : SAMA5D2_BASE_SDHC0);
+	ret = atmel_sdhci_bio_init(&bio, base);
+	if (ret)
+		goto out_panic;
+
+	at91_fat_start_image(&bio, buf, SZ_64M);
+
+out_panic:
+	panic("FAT chainloading failed\n");
+}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
