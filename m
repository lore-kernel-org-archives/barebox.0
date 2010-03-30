Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwZHf-0001Rz-F5
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 11:07:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Mar 2010 13:06:45 +0200
Message-Id: <1269947215-18214-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
References: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/12] make panic and hang __noreturn functions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c |    2 +-
 include/common.h |    4 ++--
 lib/vsprintf.c   |    2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 6dca270..c7d0cf0 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -161,7 +161,7 @@ void start_barebox (void)
 	/* NOTREACHED - no way out of command loop except booting */
 }
 
-void hang (void)
+void __noreturn hang (void)
 {
 	puts ("### ERROR ### Please RESET the board ###\n");
 	for (;;);
diff --git a/include/common.h b/include/common.h
index 3b3d2de..fb1400c 100644
--- a/include/common.h
+++ b/include/common.h
@@ -65,8 +65,8 @@ typedef void (interrupt_handler_t)(void *);
  */
 void reginfo(void);
 
-void	hang (void) __attribute__ ((noreturn));
-void	panic(const char *fmt, ...);
+void __noreturn hang (void);
+void __noreturn panic(const char *fmt, ...);
 
 /* */
 long int initdram (int);
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 26fcaa7..91ad613 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -593,7 +593,7 @@ char *asprintf(const char *fmt, ...)
 }
 EXPORT_SYMBOL(asprintf);
 
-void panic(const char *fmt, ...)
+void __noreturn panic(const char *fmt, ...)
 {
 	va_list	args;
 	va_start(args, fmt);
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
