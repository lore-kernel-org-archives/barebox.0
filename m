Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvZf-0008QU-Pi
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:39:37 +0000
Received: from geraet.fritz.box (i577B69AA.versanet.de [87.123.105.170])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id D1F11E000D
 for <barebox@lists.infradead.org>; Mon, 30 Mar 2020 14:39:32 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:39:09 +0200
Message-Id: <20200330143915.663705-2-ahmad@a3f.at>
In-Reply-To: <20200330143915.663705-1-ahmad@a3f.at>
References: <20200330143915.663705-1-ahmad@a3f.at>
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
Subject: [PATCH 2/8] ARM: stm32mp: init: detect Revision Z and 800 MHz profiles
To: barebox@lists.infradead.org

Revision A was 0x1000 and B was 0x2000, so I assumed the next would
be revision C valued 0x3000. Alas, it's revision Z with 0x2001...

Change the code accordingly and add detection for the new 800Mhz
profiles.

Code taken from U-Boot commit
cf0818b477 ("stm32mp1: support of STM32MP15x Rev.Z") and
Patch[1] "stm32mp1: add 800 MHz profile support".

[1]: https://st-md-mailman.stormreply.com/pipermail/uboot-stm32/2020-February/002170.html

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-stm32mp/include/mach/revision.h | 18 +++++++-
 arch/arm/mach-stm32mp/init.c                  | 41 ++++++++++++++++---
 2 files changed, 53 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-stm32mp/include/mach/revision.h b/arch/arm/mach-stm32mp/include/mach/revision.h
index 387201421de7..2eb4d44b3368 100644
--- a/arch/arm/mach-stm32mp/include/mach/revision.h
+++ b/arch/arm/mach-stm32mp/include/mach/revision.h
@@ -6,17 +6,33 @@
 #ifndef __MACH_CPUTYPE_H__
 #define __MACH_CPUTYPE_H__
 
-/* ID = Device Version (bit31:16) + Device Part Number (RPN) (bit15:0)*/
+
+/* ID = Device Version (bit31:16) + Device Part Number (RPN) (bit7:0)
+ * 157X: 2x Cortex-A7, Cortex-M4, CAN FD, GPU, DSI
+ * 153X: 2x Cortex-A7, Cortex-M4, CAN FD
+ * 151X: 1x Cortex-A7, Cortex-M4
+ * XXXA: Cortex-A7 @ 650 MHz
+ * XXXC: Cortex-A7 @ 650 MHz + Secure Boot + HW Crypto
+ * XXXD: Cortex-A7 @ 800 MHz
+ * XXXF: Cortex-A7 @ 800 MHz + Secure Boot + HW Crypto
+ */
 #define CPU_STM32MP157Cxx	0x05000000
 #define CPU_STM32MP157Axx	0x05000001
 #define CPU_STM32MP153Cxx	0x05000024
 #define CPU_STM32MP153Axx	0x05000025
 #define CPU_STM32MP151Cxx	0x0500002E
 #define CPU_STM32MP151Axx	0x0500002F
+#define CPU_STM32MP157Fxx	0x05000080
+#define CPU_STM32MP157Dxx	0x05000081
+#define CPU_STM32MP153Fxx	0x050000A4
+#define CPU_STM32MP153Dxx	0x050000A5
+#define CPU_STM32MP151Fxx	0x050000AE
+#define CPU_STM32MP151Dxx	0x050000AF
 
 /* silicon revisions */
 #define CPU_REV_A	0x1000
 #define CPU_REV_B	0x2000
+#define CPU_REV_Z	0x2001
 
 int stm32mp_silicon_revision(void);
 int stm32mp_cputype(void);
diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index 6280d94da69f..8a50657664b1 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -194,17 +194,29 @@ static int get_cpu_package(u32 *pkg)
 
 static int setup_cpu_type(void)
 {
-	const char *cputypestr;
-	const char *cpupkgstr;
+	const char *cputypestr, *cpupkgstr, *cpurevstr;
+	u32 pkg;
 
 	get_cpu_type(&__stm32mp_cputype);
 	switch (__stm32mp_cputype) {
+	case CPU_STM32MP157Fxx:
+		cputypestr = "157F";
+		break;
+	case CPU_STM32MP157Dxx:
+		cputypestr = "157D";
+		break;
 	case CPU_STM32MP157Cxx:
 		cputypestr = "157C";
 		break;
 	case CPU_STM32MP157Axx:
 		cputypestr = "157A";
 		break;
+	case CPU_STM32MP153Fxx:
+		cputypestr = "153F";
+		break;
+	case CPU_STM32MP153Dxx:
+		cputypestr = "153D";
+		break;
 	case CPU_STM32MP153Cxx:
 		cputypestr = "153C";
 		break;
@@ -217,6 +229,12 @@ static int setup_cpu_type(void)
 	case CPU_STM32MP151Axx:
 		cputypestr = "151A";
 		break;
+	case CPU_STM32MP151Fxx:
+		cputypestr = "151F";
+		break;
+	case CPU_STM32MP151Dxx:
+		cputypestr = "151D";
+		break;
 	default:
 		cputypestr = "????";
 		break;
@@ -242,11 +260,24 @@ static int setup_cpu_type(void)
 	}
 
 	__stm32mp_silicon_revision = get_cpu_revision();
+	switch (__stm32mp_silicon_revision) {
+	case CPU_REV_A:
+		cpurevstr = "A";
+		break;
+	case CPU_REV_B:
+		cpurevstr = "B";
+		break;
+	case CPU_REV_Z:
+		cpurevstr = "Z";
+		break;
+	default:
+		cpurevstr = "?";
+	}
 
 	pr_debug("cputype = 0x%x, package = 0x%x, revision = 0x%x\n",
-		 __stm32mp_cputype, __stm32mp_package, __stm32mp_silicon_revision);
-	pr_info("detected STM32MP%s%s Rev.%c\n", cputypestr, cpupkgstr,
-		(__stm32mp_silicon_revision >> 12) + 'A' - 1);
+		 __stm32mp_cputype, pkg, __stm32mp_silicon_revision);
+	pr_info("detected STM32MP%s%s Rev.%s\n", cputypestr, cpupkgstr, cpurevstr);
+
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
