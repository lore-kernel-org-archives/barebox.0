Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x235.google.com ([2607:f8b0:400e:c05::235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg66-0000lf-7i
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:53 +0000
Received: by mail-pg0-x235.google.com with SMTP id p21-v6so3851204pgd.11
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:27 -0700
Message-Id: <20180615041136.23492-22-andrew.smirnov@gmail.com>
In-Reply-To: <20180615041136.23492-1-andrew.smirnov@gmail.com>
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 18/27] console_simple: Get rid of global console pointer
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

We already add registered console to global console_list, so there
isn't really a need to have a global console pointer. Now, with
majority of references to console pointer gone, we can easily ditch it
and use console_list directly instead.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/console_simple.c | 5 +----
 lib/console.c           | 7 +++----
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/common/console_simple.c b/common/console_simple.c
index ac22a2592..91b6cb6cd 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -5,14 +5,11 @@
 #include <debug_ll.h>
 #include <console.h>
 
-extern struct console_device *console;
-
 int console_register(struct console_device *newcdev)
 {
-	if (console)
+	if (!list_empty(&console_list))
 		return -EBUSY;
 
-	console = newcdev;
 	console_list.prev = console_list.next = &newcdev->list;
 	newcdev->list.prev = newcdev->list.next = &console_list;
 
diff --git a/lib/console.c b/lib/console.c
index b8d6456c9..03563c9de 100644
--- a/lib/console.c
+++ b/lib/console.c
@@ -28,8 +28,7 @@ __data struct console_device console_ll = {
 	.putc = NULL,
 	.ctx  = NULL,
 };
-__data struct console_device *console;
-LIST_HEAD(console_list);
+__data LIST_HEAD(console_list);
 EXPORT_SYMBOL(console_list);
 
 /**
@@ -73,10 +72,10 @@ struct console_device *__console_get_default(void)
 	if (unlikely(!console_ll.putc))
 		console_ll.putc = __console_ll_putc;
 
-	if (IS_ENABLED(__PBL__) || !console)
+	if (IS_ENABLED(__PBL__) || list_empty(&console_list))
 		return &console_ll;
 
-	return console;
+	return list_first_entry(&console_list, struct console_device, list);
 }
 
 /**
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
