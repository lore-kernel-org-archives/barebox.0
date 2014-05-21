Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22b.google.com ([2a00:1450:400c:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WnE8B-0001Q2-V7
 for barebox@lists.infradead.org; Wed, 21 May 2014 21:33:00 +0000
Received: by mail-wg0-f43.google.com with SMTP id l18so2523326wgh.2
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 14:32:37 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Wed, 21 May 2014 23:32:29 +0200
Message-Id: <1400707949-16521-3-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1400707949-16521-1-git-send-email-franck.jullien@gmail.com>
References: <1400707949-16521-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 3/3] openrisc: update cpuinfo
To: barebox@lists.infradead.org

Update cpuinfo to display the current CPU implementation
using the VR2 register defined in the architecture specification
v1.0

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/openrisc/lib/cpuinfo.c |   50 +++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 50 insertions(+), 0 deletions(-)

diff --git a/arch/openrisc/lib/cpuinfo.c b/arch/openrisc/lib/cpuinfo.c
index 1f137f0..9434b5e 100644
--- a/arch/openrisc/lib/cpuinfo.c
+++ b/arch/openrisc/lib/cpuinfo.c
@@ -23,6 +23,13 @@
 #include <asm/cache.h>
 #include <asm/openrisc_exc.h>
 
+/* CPUID */
+#define OR1KSIM	0x00
+#define OR1200	0x12
+#define MOR1KX	0x01
+#define ALTOR32	0x32
+#define OR10	0x10
+
 static volatile int illegal_instruction;
 
 static void illegal_instruction_handler(void)
@@ -56,10 +63,46 @@ static int checkinstructions(void)
 	return 0;
 }
 
+static void cpu_implementation(ulong vr2, char *string)
+{
+	switch (vr2 >> 24) {
+
+	case OR1KSIM:
+		sprintf(string, "or1ksim");
+		break;
+	case OR1200:
+		sprintf(string, "OR1200");
+		break;
+	case MOR1KX:
+		sprintf(string, "mor1kx v%u.%u - ", (uint)((vr2 >> 16) & 0xff),
+			(uint)((vr2 >> 8) & 0xff));
+
+		if ((uint)(vr2 & 0xff) == 1)
+			strcat(string, "cappuccino");
+		else if ((uint)(vr2 & 0xff) == 2)
+			strcat(string, "espresso");
+		else if ((uint)(vr2 & 0xff) == 3)
+			strcat(string, "prontoespresso");
+		else
+			strcat(string, "unknwown");
+
+		break;
+	case ALTOR32:
+		sprintf(string, "AltOr32");
+		break;
+	case OR10:
+		sprintf(string, "OR10");
+		break;
+	default:
+		sprintf(string, "unknown");
+	}
+}
+
 int checkcpu(void)
 {
 	ulong upr = mfspr(SPR_UPR);
 	ulong vr = mfspr(SPR_VR);
+	ulong vr2 = mfspr(SPR_VR2);
 	ulong iccfgr = mfspr(SPR_ICCFGR);
 	ulong dccfgr = mfspr(SPR_DCCFGR);
 	ulong immucfgr = mfspr(SPR_IMMUCFGR);
@@ -71,9 +114,16 @@ int checkcpu(void)
 	uint ways;
 	uint sets;
 
+	char impl_str[50];
+
 	printf("CPU:   OpenRISC-%x00 (rev %d) @ %d MHz\n",
 		ver, rev, (CONFIG_SYS_CLK_FREQ / 1000000));
 
+	if (vr2) {
+		cpu_implementation(vr2, impl_str);
+		printf("       Implementation: %s\n", impl_str);
+	}
+
 	if (upr & SPR_UPR_DCP) {
 		block_size = (dccfgr & SPR_DCCFGR_CBS) ? 32 : 16;
 		ways = 1 << (dccfgr & SPR_DCCFGR_NCW);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
