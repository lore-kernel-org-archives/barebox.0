Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj8-0000sj-MG
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:13 +0200
Message-Id: <1287492930-15716-26-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 25/42] version_string: sparse fixes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/version.c |    1 -
 common/console.c   |    2 --
 include/common.h   |    2 ++
 3 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/commands/version.c b/commands/version.c
index 6c683d9..2b3ac05 100644
--- a/commands/version.c
+++ b/commands/version.c
@@ -26,7 +26,6 @@
 
 static int do_version(struct command *cmdtp, int argc, char *argv[])
 {
-	extern char version_string[];
 	printf ("\n%s\n", version_string);
 	return 0;
 }
diff --git a/common/console.c b/common/console.c
index 3a1b451..82786f2 100644
--- a/common/console.c
+++ b/common/console.c
@@ -43,8 +43,6 @@ EXPORT_SYMBOL(console_list);
 #define CONSOLE_INIT_EARLY	1
 #define CONSOLE_INIT_FULL	2
 
-extern char version_string[];
-
 static void display_banner (void)
 {
 	printf (RELOC("\n\n%s\n\n"), RELOC_VAR(version_string));
diff --git a/include/common.h b/include/common.h
index 0cf51b3..394542f 100644
--- a/include/common.h
+++ b/include/common.h
@@ -218,4 +218,6 @@ int run_shell(void);
 
 int memory_display(char *addr, ulong offs, ulong nbytes, int size);
 
+extern const char version_string[];
+
 #endif	/* __COMMON_H_ */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
