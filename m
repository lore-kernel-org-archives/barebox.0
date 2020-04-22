Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRADg-0003FC-1y
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 07:55:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 22 Apr 2020 09:54:52 +0200
Message-Id: <20200422075452.25226-12-s.hauer@pengutronix.de>
In-Reply-To: <20200422075452.25226-1-s.hauer@pengutronix.de>
References: <20200422075452.25226-1-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/11] poller: Allow to run pollers inside of pollers
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

This adds a slice to each poller which is acquired before the poller is
executed. This allows us to run pollers inside of other pollers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/poller.c  | 15 +++++++--------
 include/poller.h |  2 ++
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/common/poller.c b/common/poller.c
index 95f828b439..cccffcb88d 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -14,7 +14,6 @@
 #include <clock.h>
 
 static LIST_HEAD(poller_list);
-static int poller_active;
 
 int poller_register(struct poller_struct *poller, const char *name)
 {
@@ -22,6 +21,7 @@ int poller_register(struct poller_struct *poller, const char *name)
 		return -EBUSY;
 
 	poller->name = xstrdup(name);
+	slice_init(&poller->slice, poller->name);
 	list_add_tail(&poller->list, &poller_list);
 	poller->registered = 1;
 
@@ -111,15 +111,14 @@ void poller_call(void)
 {
 	struct poller_struct *poller, *tmp;
 
-	if (poller_active)
-		return;
-
-	poller_active = 1;
+	list_for_each_entry_safe(poller, tmp, &poller_list, list) {
+		if (slice_acquired(&poller->slice))
+			continue;
 
-	list_for_each_entry_safe(poller, tmp, &poller_list, list)
+		slice_acquire(&poller->slice);
 		poller->func(poller);
-
-	poller_active = 0;
+		slice_release(&poller->slice);
+	}
 }
 
 #if defined CONFIG_CMD_POLLER
diff --git a/include/poller.h b/include/poller.h
index 886557252b..c8b6829685 100644
--- a/include/poller.h
+++ b/include/poller.h
@@ -7,11 +7,13 @@
 #define POLLER_H
 
 #include <linux/list.h>
+#include <slice.h>
 
 struct poller_struct {
 	void (*func)(struct poller_struct *poller);
 	int registered;
 	struct list_head list;
+	struct slice slice;
 	char *name;
 };
 
-- 
2.26.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
