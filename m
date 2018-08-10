Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foCiU-0002KM-6X
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 19:04:55 +0000
Received: by mail-pl0-x241.google.com with SMTP id d5-v6so4419771pll.4
 for <barebox@lists.infradead.org>; Fri, 10 Aug 2018 12:04:43 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 10 Aug 2018 12:04:24 -0700
Message-Id: <20180810190429.10823-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180810190429.10823-1-andrew.smirnov@gmail.com>
References: <20180810190429.10823-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/6] ARM: i.MX8M: Expose code to query cpu revision
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

CPU revision information is needed for boot source detection, so
expose it as a small helper function and convert existing code to use
it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx8mq.c              | 57 +++++++------------------
 arch/arm/mach-imx/include/mach/imx8mq.h | 38 +++++++++++++++++
 2 files changed, 53 insertions(+), 42 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/imx8mq.h

diff --git a/arch/arm/mach-imx/imx8mq.c b/arch/arm/mach-imx/imx8mq.c
index 152f07bc1..bc463ee75 100644
--- a/arch/arm/mach-imx/imx8mq.c
+++ b/arch/arm/mach-imx/imx8mq.c
@@ -18,53 +18,13 @@
 #include <asm/system.h>
 #include <mach/generic.h>
 #include <mach/revision.h>
-#include <mach/imx8mq-regs.h>
+#include <mach/imx8mq.h>
 
 #include <linux/arm-smccc.h>
 
-#define IMX8MQ_ROM_VERSION_A0	0x800
-#define IMX8MQ_ROM_VERSION_B0	0x83C
-
-#define MX8MQ_ANATOP_DIGPROG	0x6c
-
 #define FSL_SIP_BUILDINFO			0xC2000003
 #define FSL_SIP_BUILDINFO_GET_COMMITHASH	0x00
 
-static void imx8mq_silicon_revision(void)
-{
-	void __iomem *anatop = IOMEM(MX8MQ_ANATOP_BASE_ADDR);
-	uint32_t reg = readl(anatop + MX8MQ_ANATOP_DIGPROG);
-	uint32_t type = (reg >> 16) & 0xff;
-	uint32_t rom_version;
-	const char *cputypestr;
-
-	reg &= 0xff;
-
-	if (reg == IMX_CHIP_REV_1_0) {
-		/*
-		 * For B0 chip, the DIGPROG is not updated, still TO1.0.
-		 * we have to check ROM version further
-		 */
-		rom_version = readl(IOMEM(IMX8MQ_ROM_VERSION_A0));
-		if (rom_version != IMX_CHIP_REV_1_0) {
-			rom_version = readl(IOMEM(IMX8MQ_ROM_VERSION_B0));
-			if (rom_version >= IMX_CHIP_REV_2_0)
-				reg = IMX_CHIP_REV_2_0;
-		}
-	}
-
-	switch (type) {
-	case 0x82:
-		cputypestr = "i.MX8MQ";
-		break;
-	default:
-		cputypestr = "unknown i.MX8M";
-		break;
-	};
-
-	imx_set_silicon_revision(cputypestr, reg);
-}
-
 static int imx8mq_init_syscnt_frequency(void)
 {
 	if (current_el() == 3) {
@@ -86,9 +46,22 @@ core_initcall(imx8mq_init_syscnt_frequency);
 
 int imx8mq_init(void)
 {
+	void __iomem *anatop = IOMEM(MX8MQ_ANATOP_BASE_ADDR);
+	uint32_t reg = readl(anatop + MX8MQ_ANATOP_DIGPROG);
+	uint32_t type = (reg >> 16) & 0xff;
 	struct arm_smccc_res res;
+	const char *cputypestr;
+
+	switch (type) {
+	case 0x82:
+		cputypestr = "i.MX8MQ";
+		break;
+	default:
+		cputypestr = "unknown i.MX8M";
+		break;
+	};
 
-	imx8mq_silicon_revision();
+	imx_set_silicon_revision(cputypestr, imx8mq_cpu_revision());
 
 	if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
 	    IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
diff --git a/arch/arm/mach-imx/include/mach/imx8mq.h b/arch/arm/mach-imx/include/mach/imx8mq.h
new file mode 100644
index 000000000..f51d4e664
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx8mq.h
@@ -0,0 +1,38 @@
+#ifndef __MACH_IMX8MQ_H
+#define __MACH_IMX8MQ_H
+
+#include <io.h>
+#include <mach/generic.h>
+#include <mach/imx8mq-regs.h>
+#include <mach/revision.h>
+
+#define IMX8MQ_ROM_VERSION_A0	0x800
+#define IMX8MQ_ROM_VERSION_B0	0x83C
+
+#define MX8MQ_ANATOP_DIGPROG	0x6c
+
+static inline int imx8mq_cpu_revision(void)
+{
+	void __iomem *anatop = IOMEM(MX8MQ_ANATOP_BASE_ADDR);
+	uint32_t revision = readl(anatop + MX8MQ_ANATOP_DIGPROG);
+
+	revision &= 0xff;
+
+	if (revision == IMX_CHIP_REV_1_0) {
+		uint32_t rom_version;
+		/*
+		 * For B0 chip, the DIGPROG is not updated, still TO1.0.
+		 * we have to check ROM version further
+		 */
+		rom_version = readl(IOMEM(IMX8MQ_ROM_VERSION_A0));
+		if (rom_version != IMX_CHIP_REV_1_0) {
+			rom_version = readl(IOMEM(IMX8MQ_ROM_VERSION_B0));
+			if (rom_version >= IMX_CHIP_REV_2_0)
+				revision = IMX_CHIP_REV_2_0;
+		}
+	}
+
+	return revision;
+}
+
+#endif /* __MACH_IMX8_H */
\ No newline at end of file
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
