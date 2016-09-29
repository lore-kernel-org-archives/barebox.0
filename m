Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x241.google.com ([2607:f8b0:400e:c03::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpjig-0008EC-K8
 for barebox@lists.infradead.org; Thu, 29 Sep 2016 22:22:24 +0000
Received: by mail-pa0-x241.google.com with SMTP id t6so338452pae.2
 for <barebox@lists.infradead.org>; Thu, 29 Sep 2016 15:22:01 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 29 Sep 2016 15:21:42 -0700
Message-Id: <1475187703-5748-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] i.MX: Introduce imx6_cpu_revision()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Factor out CPU revision identification code from imx6_init() into a
standalone inline function (similar to imx6_cpu_type()), so that it
would be possible to use that functionality in PBL code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Sascha:

I have an almost ready to send, board support patch that uses this in
PBL. Unfortunately at the last minute a regression in functionality
was discovered in that code, so I can't post it until that is
resolved, meanwhile I am hoping I can get this code in while I am
debugging.

Let me know if you'd rathe I send everything together.

 arch/arm/mach-imx/imx6.c              | 38 +----------------------------------
 arch/arm/mach-imx/include/mach/imx6.h | 36 +++++++++++++++++++++++++++++++++
 2 files changed, 37 insertions(+), 37 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index ba8fb89..101a2f6 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -25,8 +25,6 @@
 #include <asm/mmu.h>
 #include <asm/cache-l2x0.h>
 
-#define SI_REV 0x260
-
 void imx6_init_lowlevel(void)
 {
 	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
@@ -115,47 +113,13 @@ void imx6_init_lowlevel(void)
 int imx6_init(void)
 {
 	const char *cputypestr;
-	u32 rev;
 	u32 mx6_silicon_revision;
 
 	imx6_init_lowlevel();
 
 	imx6_boot_save_loc((void *)MX6_SRC_BASE_ADDR);
 
-	rev = readl(MX6_ANATOP_BASE_ADDR + SI_REV);
-
-	switch (rev & 0xfff) {
-	case 0x00:
-		mx6_silicon_revision = IMX_CHIP_REV_1_0;
-		break;
-
-	case 0x01:
-		mx6_silicon_revision = IMX_CHIP_REV_1_1;
-		break;
-
-	case 0x02:
-		mx6_silicon_revision = IMX_CHIP_REV_1_2;
-		break;
-
-	case 0x03:
-		mx6_silicon_revision = IMX_CHIP_REV_1_3;
-		break;
-
-	case 0x04:
-		mx6_silicon_revision = IMX_CHIP_REV_1_4;
-		break;
-
-	case 0x05:
-		mx6_silicon_revision = IMX_CHIP_REV_1_5;
-		break;
-
-	case 0x100:
-		mx6_silicon_revision = IMX_CHIP_REV_2_0;
-		break;
-
-	default:
-		mx6_silicon_revision = IMX_CHIP_REV_UNKNOWN;
-	}
+	mx6_silicon_revision = imx6_cpu_revision();
 
 	switch (imx6_cpu_type()) {
 	case IMX6_CPUTYPE_IMX6Q:
diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index e8ffa47..fb5eaf1 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -4,6 +4,7 @@
 #include <io.h>
 #include <mach/generic.h>
 #include <mach/imx6-regs.h>
+#include <mach/revision.h>
 
 void imx6_init_lowlevel(void);
 
@@ -48,6 +49,41 @@ static inline int imx6_cpu_type(void)
 	return __imx6_cpu_type();
 }
 
+static inline int __imx6_cpu_revision(void)
+{
+
+	uint32_t rev;
+
+	rev = readl(MX6_ANATOP_BASE_ADDR + IMX6_ANATOP_SI_REV);
+
+	switch (rev & 0xfff) {
+	case 0x00:
+		return IMX_CHIP_REV_1_0;
+	case 0x01:
+		return IMX_CHIP_REV_1_1;
+	case 0x02:
+		return IMX_CHIP_REV_1_2;
+	case 0x03:
+		return IMX_CHIP_REV_1_3;
+	case 0x04:
+		return IMX_CHIP_REV_1_4;
+	case 0x05:
+		return IMX_CHIP_REV_1_5;
+	case 0x100:
+		return IMX_CHIP_REV_2_0;
+	}
+
+	return IMX_CHIP_REV_UNKNOWN;
+}
+
+static inline int imx6_cpu_revision(void)
+{
+	if (!cpu_is_mx6())
+		return 0;
+
+	return __imx6_cpu_revision();
+}
+
 #define DEFINE_MX6_CPU_TYPE(str, type)					\
 	static inline int cpu_mx6_is_##str(void)			\
 	{								\
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
