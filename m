Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDqj1-0006bw-RB
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:56:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Aug 2013 08:55:53 +0200
Message-Id: <1377500163-28962-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
References: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/22] ARM: cpuinfo: display the core name and version
To: barebox@lists.infradead.org

From: Jan Luebbe <jlu@pengutronix.de>

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpuinfo.c | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index 8aea4b4..260d47b 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -31,6 +31,12 @@
 #define CPU_ARCH_ARMv6		8
 #define CPU_ARCH_ARMv7		9
 
+#define ARM_CPU_PART_CORTEX_A5      0xC050
+#define ARM_CPU_PART_CORTEX_A7      0xC070
+#define ARM_CPU_PART_CORTEX_A8      0xC080
+#define ARM_CPU_PART_CORTEX_A9      0xC090
+#define ARM_CPU_PART_CORTEX_A15     0xC0F0
+
 static void decode_cache(unsigned long size)
 {
 	int linelen = 1 << ((size & 0x3) + 3);
@@ -154,6 +160,33 @@ static int do_cpuinfo(int argc, char *argv[])
 	printf("implementer: %s\narchitecture: %s\n",
 			implementer, architecture);
 
+	if (cpu_arch == CPU_ARCH_ARMv7) {
+		unsigned int major, minor;
+		char *part;
+		major = (mainid >> 20) & 0xf;
+		minor = mainid & 0xf;
+		switch (mainid & 0xfff0) {
+		case ARM_CPU_PART_CORTEX_A5:
+			part = "Cortex-A5";
+			break;
+		case ARM_CPU_PART_CORTEX_A7:
+			part = "Cortex-A7";
+			break;
+		case ARM_CPU_PART_CORTEX_A8:
+			part = "Cortex-A8";
+			break;
+		case ARM_CPU_PART_CORTEX_A9:
+			part = "Cortex-A9";
+			break;
+		case ARM_CPU_PART_CORTEX_A15:
+			part = "Cortex-A15";
+			break;
+		default:
+			part = "unknown";
+		}
+		printf("core: %s r%up%u\n", part, major, minor);
+	}
+
 	if (cache & (1 << 24)) {
 		/* separate I/D cache */
 		printf("I-cache: ");
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
