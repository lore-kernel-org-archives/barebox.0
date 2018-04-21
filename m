Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f9gyf-0006gC-At
 for barebox@lists.infradead.org; Sat, 21 Apr 2018 01:06:11 +0000
Received: by mail-pf0-x242.google.com with SMTP id g14so4986248pfh.3
 for <barebox@lists.infradead.org>; Fri, 20 Apr 2018 18:05:59 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 20 Apr 2018 18:05:37 -0700
Message-Id: <20180421010538.16488-10-andrew.smirnov@gmail.com>
In-Reply-To: <20180421010538.16488-1-andrew.smirnov@gmail.com>
References: <20180421010538.16488-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 09/10] ARM: VFxxx: Detect cpu variant on start
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/Makefile               |  1 +
 arch/arm/mach-imx/imx.c                  |  2 +-
 arch/arm/mach-imx/include/mach/generic.h |  1 +
 arch/arm/mach-imx/vf610.c                | 47 ++++++++++++++++++++++++++++++++
 4 files changed, 50 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-imx/vf610.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 8ec846cce..160ed4b08 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -15,6 +15,7 @@ obj-$(CONFIG_ARCH_IMX6) += imx6.o usb-imx6.o
 CFLAGS_imx6.o := -march=armv7-a
 lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_ARCH_IMX7) += imx7.o
+obj-$(CONFIG_ARCH_VF610) += vf610.o
 obj-$(CONFIG_ARCH_IMX_XLOAD) += xload.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_IMX_OCOTP)	+= ocotp.o
diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 32d8e11a7..bf15f0b06 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -119,7 +119,7 @@ static int imx_init(void)
 	else if (cpu_is_mx7())
 		ret = imx7_init();
 	else if (cpu_is_vf610())
-		ret = 0;
+		ret = vf610_init();
 	else
 		return -EINVAL;
 
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index dedb4bbf0..ad9d9cb02 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -36,6 +36,7 @@ int imx51_init(void);
 int imx53_init(void);
 int imx6_init(void);
 int imx7_init(void);
+int vf610_init(void);
 
 int imx1_devices_init(void);
 int imx21_devices_init(void);
diff --git a/arch/arm/mach-imx/vf610.c b/arch/arm/mach-imx/vf610.c
new file mode 100644
index 000000000..c2d02632f
--- /dev/null
+++ b/arch/arm/mach-imx/vf610.c
@@ -0,0 +1,47 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <init.h>
+#include <common.h>
+#include <io.h>
+#include <linux/sizes.h>
+#include <mach/generic.h>
+#include <mach/revision.h>
+#include <mach/vf610.h>
+
+int vf610_init(void)
+{
+	const char *cputypestr;
+	void __iomem *src = IOMEM(VF610_SRC_BASE_ADDR);
+
+	switch (vf610_cpu_type()) {
+	case VF610_CPUTYPE_VF610:
+		cputypestr = "VF610";
+		break;
+	case VF610_CPUTYPE_VF600:
+		cputypestr = "VF600";
+		break;
+	case VF610_CPUTYPE_VF510:
+		cputypestr = "VF510";
+		break;
+	case VF610_CPUTYPE_VF500:
+		cputypestr = "VF500";
+		break;
+	default:
+		cputypestr = "unknown VFxxx";
+		break;
+	}
+
+	imx_set_silicon_revision(cputypestr, vf610_cpu_revision());
+	return 0;
+}
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
