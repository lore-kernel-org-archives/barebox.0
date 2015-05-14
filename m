Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x231.google.com ([2607:f8b0:400e:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YsjIk-0000Jj-TO
 for barebox@lists.infradead.org; Thu, 14 May 2015 02:55:12 +0000
Received: by pacwv17 with SMTP id wv17so69483435pac.0
 for <barebox@lists.infradead.org>; Wed, 13 May 2015 19:54:49 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 May 2015 19:54:23 -0700
Message-Id: <1431572067-4038-6-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
References: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/10] common: pbl: Allow boards to override hang()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add provisions such that board code can re-define the behaviour of
hang() to implement a behaviour better suited for a particular
hardware platform.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/startup.c | 15 ++++++++++++++-
 include/common.h | 22 ++++++++++++++++++++++
 pbl/misc.c       | 19 ++++++++++++++++++-
 3 files changed, 54 insertions(+), 2 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index e59b06d..d701fab 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -118,12 +118,25 @@ void __noreturn start_barebox(void)
 	/* NOTREACHED - no way out of command loop except booting */
 }

-void __noreturn hang (void)
+void __noreturn __hang (void)
 {
 	puts ("### ERROR ### Please RESET the board ###\n");
 	for (;;);
 }

+static hang_handler_t hang_handler = __hang;
+
+void __noreturn hang(void)
+{
+	hang_handler();
+}
+
+void set_hang_handler(hang_handler_t handler)
+{
+	hang_handler = handler;
+}
+
+
 void (*board_shutdown)(void);

 /* Everything needed to cleanly shutdown barebox.
diff --git a/include/common.h b/include/common.h
index eef371c..86e755d 100644
--- a/include/common.h
+++ b/include/common.h
@@ -56,7 +56,11 @@
  */
 void reginfo(void);

+typedef void __noreturn (*hang_handler_t)(void);
+
 void __noreturn hang (void);
+void __noreturn __hang (void);
+void set_hang_handler(hang_handler_t handler);

 char *size_human_readable(unsigned long long size);

@@ -193,6 +197,24 @@ void barebox_set_hostname(const char *);
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 #endif

+#if defined(CONFIG_ARM)
+#include <asm/barebox-arm.h>
+
+static inline void *get_true_address(const void *ptr)
+{
+	resource_size_t address = (resource_size_t)ptr;
+
+	address -= get_runtime_offset();
+
+	return (void *)address;
+}
+#else
+static inline void *get_true_address(const void *ptr)
+{
+	return (void *)ptr;
+}
+#endif
+
 /*
  * Check if two regions overlap. returns true if they do, false otherwise
  */
diff --git a/pbl/misc.c b/pbl/misc.c
index 7e76120..3d5a881 100644
--- a/pbl/misc.c
+++ b/pbl/misc.c
@@ -4,11 +4,28 @@
 #include <linux/string.h>
 #include <linux/ctype.h>

-void __noreturn hang(void)
+void __noreturn __hang(void)
 {
 	while (1);
 }

+static hang_handler_t hang_handler = __hang;
+
+void __noreturn hang(void)
+{
+	hang_handler_t *__hand_handler_p = get_true_address(&hang_handler);
+	hang_handler_t __hang_handler    = get_true_address(*__hand_handler_p);
+
+	__hang_handler();
+}
+
+void set_hang_handler(hang_handler_t handler)
+{
+	hang_handler_t *__hang_handler_p = get_true_address(&hang_handler);
+
+	*__hang_handler_p = handler;
+}
+
 void __noreturn panic(const char *fmt, ...)
 {
 	while(1);
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
