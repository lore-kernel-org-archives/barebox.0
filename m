Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8sq-0001vl-4q
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:49:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:49:36 +0100
Message-Id: <1323946179-9883-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
References: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] ARM: remove unused icache command
To: barebox@lists.infradead.org

The icache command is unused. Instead of adding it to compilation
again, remove it as the cpuinfo command provides the same information.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpu.c |   34 ----------------------------------
 1 files changed, 0 insertions(+), 34 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index d4a3b14..14bb6d1 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -89,37 +89,3 @@ void arch_shutdown(void)
 	);
 #endif
 }
-
-/**
- * @page arm_boot_preparation Linux Preparation on ARM
- *
- * For ARM we never enable data cache so we do not need to disable it again.
- * Linux can be called with instruction cache enabled. As this is the
- * default setting we are running in barebox, there's no special preparation
- * required.
- */
-#ifdef CONFIG_COMMAND
-static int do_icache(struct command *cmdtp, int argc, char *argv[])
-{
-	if (argc == 1) {
-		printf("icache is %sabled\n", icache_status() ? "en" : "dis");
-		return 0;
-	}
-
-	if (simple_strtoul(argv[1], NULL, 0) > 0)
-		icache_enable();
-	else
-		icache_disable();
-
-	return 0;
-}
-
-static const __maybe_unused char cmd_icache_help[] =
-"Usage: icache [0|1]\n";
-
-BAREBOX_CMD_START(icache)
-	.cmd		= do_icache,
-	.usage		= "show/change icache status",
-	BAREBOX_CMD_HELP(cmd_icache_help)
-BAREBOX_CMD_END
-#endif
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
