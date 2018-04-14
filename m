Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKA-0001dJ-Rg
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:50:58 +0000
Received: by mail-pl0-x242.google.com with SMTP id 59-v6so7774184plc.13
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:50:51 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:23 -0700
Message-Id: <20180414175024.9962-10-andrew.smirnov@gmail.com>
In-Reply-To: <20180414175024.9962-1-andrew.smirnov@gmail.com>
References: <20180414175024.9962-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/10] ARM: VFxxx: Add code to detect cpu variant
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/vf610-regs.h |  3 ++
 arch/arm/mach-imx/include/mach/vf610.h      | 51 +++++++++++++++++++++++++++++
 2 files changed, 54 insertions(+)
 create mode 100644 arch/arm/mach-imx/include/mach/vf610.h

diff --git a/arch/arm/mach-imx/include/mach/vf610-regs.h b/arch/arm/mach-imx/include/mach/vf610-regs.h
index 8be220b68..2afdf7edc 100644
--- a/arch/arm/mach-imx/include/mach/vf610-regs.h
+++ b/arch/arm/mach-imx/include/mach/vf610-regs.h
@@ -107,4 +107,7 @@
 #define VF610_MSCM_IRSPRC_CP0_EN	1
 #define VF610_MSCM_IRSPRC_NUM		112
 
+#define VF610_MSCM_CPxCOUNT		0x00c
+#define VF610_MSCM_CPxCFG1		0x014
+
 #endif
diff --git a/arch/arm/mach-imx/include/mach/vf610.h b/arch/arm/mach-imx/include/mach/vf610.h
new file mode 100644
index 000000000..6d00d2e45
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/vf610.h
@@ -0,0 +1,51 @@
+#ifndef __MACH_VF610_H
+#define __MACH_VF610_H
+
+#include <io.h>
+#include <mach/generic.h>
+#include <mach/vf610-regs.h>
+#include <mach/revision.h>
+
+#define VF610_CPUTYPE_VFx10	0x010
+
+#define VF610_CPUTYPE_VF610	0x610
+#define VF610_CPUTYPE_VF600	0x600
+#define VF610_CPUTYPE_VF510	0x510
+#define VF610_CPUTYPE_VF500	0x500
+
+#define VF610_ROM_VERSION_OFFSET	0x80
+
+static inline int __vf610_cpu_type(void)
+{
+	void __iomem *mscm = IOMEM(VF610_MSCM_BASE_ADDR);
+	const u32 cpxcount = readl(mscm + VF610_MSCM_CPxCOUNT);
+	const u32 cpxcfg1  = readl(mscm + VF610_MSCM_CPxCFG1);
+	int cpu_type;
+
+	cpu_type = cpxcount ? VF610_CPUTYPE_VF600 : VF610_CPUTYPE_VF500;
+
+	return cpxcfg1 ? cpu_type | VF610_CPUTYPE_VFx10 : cpu_type;
+}
+
+static inline int vf610_cpu_type(void)
+{
+	if (!cpu_is_vf610())
+		return 0;
+
+	return __vf610_cpu_type();
+}
+
+static inline int vf610_cpu_revision(void)
+{
+	if (!cpu_is_vf610())
+		return IMX_CHIP_REV_UNKNOWN;
+
+	/*
+	 * There doesn't seem to be a documented way of retreiving
+	 * silicon revision on VFxxx cpus, so we just report Mask ROM
+	 * version instead
+	 */
+	return readl(VF610_ROM_VERSION_OFFSET) & 0xff;
+}
+
+#endif
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
