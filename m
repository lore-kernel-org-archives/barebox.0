Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vw2NW-0004A0-Pv
 for barebox@lists.infradead.org; Thu, 26 Dec 2013 04:16:59 +0000
Received: by mail-la0-f46.google.com with SMTP id eh20so3510427lab.33
 for <barebox@lists.infradead.org>; Wed, 25 Dec 2013 20:16:34 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 26 Dec 2013 08:24:09 +0400
Message-Id: <1388031849-21383-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] lib: fix whitespace, drop blank lines at EOF
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/notifier.h            | 1 -
 lib/Makefile                  | 2 +-
 lib/copy_file.c               | 1 -
 lib/kfifo.c                   | 1 -
 lib/notifier.c                | 1 -
 lib/process_escape_sequence.c | 1 -
 lib/show_progress.c           | 1 -
 7 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/include/notifier.h b/include/notifier.h
index c83e28b..e0df3e6 100644
--- a/include/notifier.h
+++ b/include/notifier.h
@@ -35,4 +35,3 @@ int clock_notifier_call_chain(void);
 	};
 
 #endif /* __NOTIFIER_H */
-
diff --git a/lib/Makefile b/lib/Makefile
index e1db99b..e8769a9 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -9,7 +9,7 @@ obj-y			+= misc.o
 obj-$(CONFIG_PARAMETER)	+= parameter.o
 obj-y			+= xfuncs.o
 obj-y			+= getopt.o
-obj-y 			+= readkey.o
+obj-y			+= readkey.o
 obj-y			+= kfifo.o
 obj-y			+= libbb.o
 obj-y			+= libgen.o
diff --git a/lib/copy_file.c b/lib/copy_file.c
index 778cc00..fdd0cac 100644
--- a/lib/copy_file.c
+++ b/lib/copy_file.c
@@ -84,4 +84,3 @@ out:
 
 	return ret;
 }
-
diff --git a/lib/kfifo.c b/lib/kfifo.c
index afd3894..307dae1 100644
--- a/lib/kfifo.c
+++ b/lib/kfifo.c
@@ -153,4 +153,3 @@ unsigned int kfifo_getc(struct kfifo *fifo, unsigned char *c)
 
 	return 0;
 }
-
diff --git a/lib/notifier.c b/lib/notifier.c
index a2aac53..9eb734e 100644
--- a/lib/notifier.c
+++ b/lib/notifier.c
@@ -56,4 +56,3 @@ int clock_notifier_call_chain(void)
 {
 	return notifier_call_chain(&clock_notifier_list, 0, NULL);
 }
-
diff --git a/lib/process_escape_sequence.c b/lib/process_escape_sequence.c
index 47a7e5c..1bfd070 100644
--- a/lib/process_escape_sequence.c
+++ b/lib/process_escape_sequence.c
@@ -80,4 +80,3 @@ int process_escape_sequence(const char *source, char *dest, int destlen)
 	dest[i] = 0;
 	return 0;
 }
-
diff --git a/lib/show_progress.c b/lib/show_progress.c
index 98dc849..f9aa1a9 100644
--- a/lib/show_progress.c
+++ b/lib/show_progress.c
@@ -62,4 +62,3 @@ void init_progression_bar(int max)
 	else
 		printf("\t");
 }
-
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
