Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rl24y-00010B-Dm
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 17:35:17 +0000
From: Sanjeev Premi <premi@ti.com>
Date: Wed, 11 Jan 2012 23:04:44 +0530
Message-ID: <1326303284-14444-2-git-send-email-premi@ti.com>
In-Reply-To: <1326303284-14444-1-git-send-email-premi@ti.com>
References: <1326303284-14444-1-git-send-email-premi@ti.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC 2/2] ARM omap: Add CONFIG_SILENT
To: barebox@lists.infradead.org

Don't display any verbose message on the console.

Signed-off-by: Sanjeev Premi <premi@ti.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---

 This config option is kept separate, as user may
 want console features, but avoid initial messages.

 Although I have marked the change to be specific to
 ARM+OMAP, it is generally applicable. Will change
 the subject in actual based on review comments to
 this RFC.

 common/Kconfig   |    4 ++++
 common/startup.c |    2 ++
 common/version.c |    3 ++-
 3 files changed, 8 insertions(+), 1 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index a664624..cf09034 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -369,6 +369,10 @@ config TIMESTAMP
 	  commands like bootm or iminfo. This option is
 	  automatically enabled when you select CFG_CMD_DATE .
 
+config SILENT
+	bool
+	prompt "Don't display any messages on console"
+
 config CONSOLE_FULL
 	bool
 	default y
diff --git a/common/startup.c b/common/startup.c
index 180fdc3..976c0d3 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -52,6 +52,7 @@ static void display_meminfo(void)
 
 	debug("barebox code: 0x%p -> 0x%p\n", _stext, _etext);
 	debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop);
+#ifndef CONFIG_SILENT
 	printf("Malloc space: 0x%08lx -> 0x%08lx (size %s)\n",
 		mstart, mend, size_human_readable(msize));
 #ifdef CONFIG_ARM
@@ -59,6 +60,7 @@ static void display_meminfo(void)
 		STACK_BASE, STACK_BASE + STACK_SIZE,
 		size_human_readable(STACK_SIZE));
 #endif
+#endif /* CONFIG_SILENT */
 }
 
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
diff --git a/common/version.c b/common/version.c
index 0af8ec1..6d26ef8 100644
--- a/common/version.c
+++ b/common/version.c
@@ -6,7 +6,8 @@ const char version_string[] =
 
 void barebox_banner (void)
 {
+#ifndef CONFIG_SILENT
 	printf("\n\n%s\n\n", version_string);
 	printf("Board: " CONFIG_BOARDINFO "\n");
+#endif
 }
-
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
