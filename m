Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNInt-0007kg-4N
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 08:12:25 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  3 Apr 2013 10:12:16 +0200
Message-Id: <1364976736-23869-8-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1364976736-23869-1-git-send-email-mkl@pengutronix.de>
References: <1364976736-23869-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 7/7] ARM: mxs: add bootsource detection
To: barebox@lists.infradead.org

For now only the v1.2 i.MX28 silicon is supported. The actual information is
read from a magic address within the internal SRAM.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/mach-mxs/imx.c                   | 99 +++++++++++++++++++++++++++++++
 arch/arm/mach-mxs/include/mach/revision.h | 24 ++++++++
 2 files changed, 123 insertions(+)
 create mode 100644 arch/arm/mach-mxs/include/mach/revision.h

diff --git a/arch/arm/mach-mxs/imx.c b/arch/arm/mach-mxs/imx.c
index ab32f10..cdf9275 100644
--- a/arch/arm/mach-mxs/imx.c
+++ b/arch/arm/mach-mxs/imx.c
@@ -14,11 +14,15 @@
  */
 
 #include <common.h>
+#include <bootsource.h>
 #include <command.h>
 #include <complete.h>
 #include <init.h>
 #include <io.h>
+
+#include <mach/generic.h>
 #include <mach/imx-regs.h>
+#include <mach/revision.h>
 
 #define HW_RTC_PERSISTENT1     0x070
 
@@ -55,3 +59,98 @@ BAREBOX_CMD_START(dump_clocks)
 	.usage		= "show clock frequencies",
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
+
+
+static int __silicon_revision = SILICON_REVISION_UNKNOWN;
+
+int silicon_revision_get(void)
+{
+	return __silicon_revision;
+}
+
+void silicon_revision_set(const char *soc, int revision)
+{
+	__silicon_revision = revision;
+
+	printf("detected %s revision %d.%d\n", soc,
+	       (revision >> 4) & 0xf, revision & 0xf);
+}
+
+#define HW_DIGCTL_CHIPID	(0x8001c310)
+#define HW_DIGCTL_CHIPID_MASK	(0xffff << 16)
+#define HW_DIGCTL_CHIPID_MX23	(0x3780 << 16)
+#define HW_DIGCTL_CHIPID_MX28	(0x2800 << 16)
+
+static void mxs_silicon_revision(void)
+{
+	enum silicon_revision revision = SILICON_REVISION_UNKNOWN;
+	const char *product = "unknown";
+	uint32_t reg;
+	uint8_t rev;
+
+	reg = readl((void __iomem *)HW_DIGCTL_CHIPID);
+	rev = reg & 0xff;
+
+	switch (reg & HW_DIGCTL_CHIPID_MASK) {
+	case HW_DIGCTL_CHIPID_MX23:
+		product = "i.MX23";
+		switch (rev) {
+		case 0x0: revision = SILICON_REVISION_1_0; break;
+		case 0x1: revision = SILICON_REVISION_1_1; break;
+		case 0x2: revision = SILICON_REVISION_1_2; break;
+		case 0x3: revision = SILICON_REVISION_1_3; break;
+		case 0x4: revision = SILICON_REVISION_1_4; break;
+		}
+	case HW_DIGCTL_CHIPID_MX28:
+		product = "i.MX28";
+		switch (rev) {
+		case 0x1: revision = SILICON_REVISION_1_2; break;
+		}
+	}
+
+	silicon_revision_set(product, revision);
+}
+
+#define MX28_REV_1_0_MODE	(0x0001a7f0)
+#define MX28_REV_1_2_MODE	(0x00019bf0)
+
+static void mxs_boot_save_loc(void)
+{
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
+	int instance = 0;
+	uint32_t mode = 0xff;
+
+	if (cpu_is_mx23()) {
+		/* not implemented yet */
+	} else if (cpu_is_mx28()) {
+		enum silicon_revision rev = silicon_revision_get();
+
+		if (rev == SILICON_REVISION_1_2)
+			mode = *(uint32_t *)MX28_REV_1_2_MODE;
+		else
+			mode = *(uint32_t *)MX28_REV_1_0_MODE;
+	}
+
+	switch (mode & 0xf) {
+	case 0x0: src = BOOTSOURCE_USB; break;		/* "USB" */
+	case 0x1: src = BOOTSOURCE_I2C_EEPROM; break;	/* "I2C, master" */
+	case 0x3: instance = 1;	/* fallthrough */	/* "SSP SPI #2, master, NOR" */
+	case 0x2: src = BOOTSOURCE_SPI_NOR; break;	/* "SSP SPI #1, master, NOR" */
+	case 0x4: src = BOOTSOURCE_NAND; break;		/* "NAND" */
+	case 0x8: src = BOOTSOURCE_SPI_EEPROM; break;	/* "SSP SPI #3, master, EEPROM" */
+	case 0xa: instance = 1;	/* fallthrough */	/* "SSP SD/MMC #1" */
+	case 0x9: src = BOOTSOURCE_MMC; break;		/* "SSP SD/MMC #0" */
+	}
+
+	bootsource_set(src);
+	bootsource_set_instance(instance);
+}
+
+static int mxs_init(void)
+{
+	mxs_silicon_revision();
+	mxs_boot_save_loc();
+
+	return 0;
+}
+postcore_initcall(mxs_init);
diff --git a/arch/arm/mach-mxs/include/mach/revision.h b/arch/arm/mach-mxs/include/mach/revision.h
new file mode 100644
index 0000000..91f174d
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/revision.h
@@ -0,0 +1,24 @@
+#ifndef __MACH_REVISION_H__
+#define __MACH_REVISION_H__
+
+/* silicon revisions  */
+enum silicon_revision {
+	SILICON_REVISION_1_0 = 0x10,
+	SILICON_REVISION_1_1 = 0x11,
+	SILICON_REVISION_1_2 = 0x12,
+	SILICON_REVISION_1_3 = 0x13,
+	SILICON_REVISION_1_4 = 0x14,
+	SILICON_REVISION_2_0 = 0x20,
+	SILICON_REVISION_2_1 = 0x21,
+	SILICON_REVISION_2_2 = 0x22,
+	SILICON_REVISION_2_3 = 0x23,
+	SILICON_REVISION_3_0 = 0x30,
+	SILICON_REVISION_3_1 = 0x31,
+	SILICON_REVISION_3_2 = 0x32,
+	SILICON_REVISION_UNKNOWN =0xff
+};
+
+int silicon_revision_get(void);
+void silicon_revision_set(const char *soc, int revision);
+
+#endif /* __MACH_REVISION_H__ */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
