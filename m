Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosH-0008BL-NJ
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 26/78] ARM: remove function prototypes from the past
Date: Fri, 16 Mar 2018 13:53:02 +0100
Message-Id: <20180316125354.23462-27-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

Several functions do not exist anymore for a long time now. Remove their
prototypes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 8 --------
 arch/openrisc/cpu/cpu.c            | 5 -----
 2 files changed, 13 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 9fc8afbe7d..6c7507a9c7 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -32,16 +32,8 @@
 #include <linux/compiler.h>
 #include <asm/barebox-arm-head.h>
 
-/* cpu/.../cpu.c */
-int	cleanup_before_linux(void);
-
-/* arch/<arch>board(s)/.../... */
-int	board_init(void);
-int	dram_init (void);
-
 extern char __exceptions_start[], __exceptions_stop[];
 
-void board_init_lowlevel(void);
 unsigned long get_runtime_offset(void);
 
 /* global_variable_offset() - Access global variables when not running at link address
diff --git a/arch/openrisc/cpu/cpu.c b/arch/openrisc/cpu/cpu.c
index e7f944555e..cae42d41b8 100644
--- a/arch/openrisc/cpu/cpu.c
+++ b/arch/openrisc/cpu/cpu.c
@@ -23,11 +23,6 @@
 #include <asm/system.h>
 #include <asm/openrisc_exc.h>
 
-int cleanup_before_linux(void)
-{
-	return 0;
-}
-
 extern void __reset(void);
 
 static void __noreturn openrisc_restart_cpu(struct restart_handler *rst)
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
