Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Twwvh-00041t-Tb
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 15:35:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 16:35:17 +0100
Message-Id: <1358696119-18387-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358696119-18387-1-git-send-email-s.hauer@pengutronix.de>
References: <1358696119-18387-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] startup: add __noreturn to start_barebox
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c |    3 +--
 include/common.h |    2 +-
 pbl/misc.c       |    4 +++-
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index c26bc5f..ecb5691 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -90,7 +90,7 @@ fs_initcall(mount_root);
 
 int (*barebox_main)(void);
 
-void start_barebox (void)
+void __noreturn start_barebox(void)
 {
 	initcall_t *initcall;
 	int result;
@@ -162,4 +162,3 @@ void shutdown_barebox(void)
 	arch_shutdown();
 #endif
 }
-
diff --git a/include/common.h b/include/common.h
index e858d0a..2c707f7 100644
--- a/include/common.h
+++ b/include/common.h
@@ -165,7 +165,7 @@ unsigned long long strtoull_suffix(const char *str, char **endp, int base);
  */
 extern int (*barebox_main)(void);
 
-void start_barebox(void);
+void __noreturn start_barebox(void);
 void shutdown_barebox(void);
 
 /*
diff --git a/pbl/misc.c b/pbl/misc.c
index a2cb44d..9065bf0 100644
--- a/pbl/misc.c
+++ b/pbl/misc.c
@@ -14,6 +14,8 @@ void __noreturn panic(const char *fmt, ...)
 	while(1);
 }
 
-void start_barebox(void)
+void __noreturn start_barebox(void)
 {
+	/* Should never be here in the pbl */
+	hang();
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
