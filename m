Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RCctl-0004ac-0I
	for barebox@lists.infradead.org; Sat, 08 Oct 2011 19:49:29 +0000
Received: by bkat2 with SMTP id t2so7854311bka.36
	for <barebox@lists.infradead.org>; Sat, 08 Oct 2011 12:49:26 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  8 Oct 2011 23:49:18 +0400
Message-Id: <1318103358-16271-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC PATCH] arm: cpuinfo: import ARM architecture detection code from
	Linux
To: barebox@lists.infradead.org

This code correctly detects architecture (v7) for Cortex-A9.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/cpu/cpuinfo.c |   91 +++++++++++++++++++++++++++++++++++++-----------
 1 files changed, 70 insertions(+), 21 deletions(-)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index e19b8de..05971b3 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -23,6 +23,17 @@
 #include <common.h>
 #include <command.h>
 
+#define CPU_ARCH_UNKNOWN	0
+#define CPU_ARCH_ARMv3		1
+#define CPU_ARCH_ARMv4		2
+#define CPU_ARCH_ARMv4T		3
+#define CPU_ARCH_ARMv5		4
+#define CPU_ARCH_ARMv5T		5
+#define CPU_ARCH_ARMv5TE	6
+#define CPU_ARCH_ARMv5TEJ	7
+#define CPU_ARCH_ARMv6		8
+#define CPU_ARCH_ARMv7		9
+
 static void decode_cache(unsigned long size)
 {
 	int linelen = 1 << ((size & 0x3) + 3);
@@ -35,8 +46,6 @@ static void decode_cache(unsigned long size)
 		printf("%d bytes (linelen = %d)\n", cache_size, linelen);
 }
 
-static char *post_arm7_archs[] = {"v4", "v4T", "v5", "v5T", "v5TE", "v5TEJ", "v6"};
-
 static char *crbits[] = {"M", "A", "C", "W", "P", "D", "L", "B", "S", "R",
 	"F", "Z", "I", "V", "RR", "L4", "", "", "", "", "", "FI", "U", "XP",
 	"VE", "EE", "L2"};
@@ -46,6 +55,7 @@ static int do_cpuinfo(struct command *cmdtp, int argc, char *argv[])
 	unsigned long mainid, cache, cr;
 	char *architecture, *implementer;
 	int i;
+	int cpu_arch;
 
 	__asm__ __volatile__(
 		"mrc    p15, 0, %0, c0, c0, 0   @ read control reg\n"
@@ -85,25 +95,64 @@ static int do_cpuinfo(struct command *cmdtp, int argc, char *argv[])
 		implementer = "Unknown";
 	}
 
-	if ((mainid & 0x0008f000) == 0x00000000) {
-                /* pre-ARM7 */
-                architecture = "Pre-ARM7";
-        } else {
-                if ((mainid & 0x0008f000) == 0x00007000) {
-                        /* ARM7 */
-			if (mainid & (1 << 23))
-				architecture = "3";
-			else
-				architecture = "4T";
-                } else {
-                        /* post-ARM7 */
-			int arch = (mainid >> 16) & 0xf;
-			if (arch > 0 && arch < 8)
-				architecture = post_arm7_archs[arch - 1];
-			else
-				architecture = "Unknown";
-                }
-        }
+	if ((mainid & 0x0008f000) == 0) {
+		cpu_arch = CPU_ARCH_UNKNOWN;
+	} else if ((mainid & 0x0008f000) == 0x00007000) {
+		cpu_arch = (mainid & (1 << 23)) ? CPU_ARCH_ARMv4T : CPU_ARCH_ARMv3;
+	} else if ((mainid & 0x00080000) == 0x00000000) {
+		cpu_arch = (mainid >> 16) & 7;
+		if (cpu_arch)
+			cpu_arch += CPU_ARCH_ARMv3;
+	} else if ((mainid & 0x000f0000) == 0x000f0000) {
+		unsigned int mmfr0;
+
+		/* Revised CPUID format. Read the Memory Model Feature
+		 * Register 0 and check for VMSAv7 or PMSAv7 */
+		asm("mrc	p15, 0, %0, c0, c1, 4"
+		    : "=r" (mmfr0));
+		if ((mmfr0 & 0x0000000f) >= 0x00000003 ||
+		    (mmfr0 & 0x000000f0) >= 0x00000030)
+			cpu_arch = CPU_ARCH_ARMv7;
+		else if ((mmfr0 & 0x0000000f) == 0x00000002 ||
+			 (mmfr0 & 0x000000f0) == 0x00000020)
+			cpu_arch = CPU_ARCH_ARMv6;
+		else
+			cpu_arch = CPU_ARCH_UNKNOWN;
+	} else
+		cpu_arch = CPU_ARCH_UNKNOWN;
+
+	switch (cpu_arch) {
+	case CPU_ARCH_ARMv3:
+		architecture = "v3";
+		break;
+	case CPU_ARCH_ARMv4:
+		architecture = "v4";
+		break;
+	case CPU_ARCH_ARMv4T:
+		architecture = "v4T";
+		break;
+	case CPU_ARCH_ARMv5:
+		architecture = "v5";
+		break;
+	case CPU_ARCH_ARMv5T:
+		architecture = "v5T";
+		break;
+	case CPU_ARCH_ARMv5TE:
+		architecture = "v5TE";
+		break;
+	case CPU_ARCH_ARMv5TEJ:
+		architecture = "v5TEJ";
+		break;
+	case CPU_ARCH_ARMv6:
+		architecture = "v6";
+		break;
+	case CPU_ARCH_ARMv7:
+		architecture = "v7";
+		break;
+	case CPU_ARCH_UNKNOWN:
+	default:
+		architecture = "Unknown";
+	}
 
 	printf("implementer: %s\narchitecture: %s\n",
 			implementer, architecture);
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
