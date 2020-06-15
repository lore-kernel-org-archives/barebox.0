Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksnD-00070O-5F
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 17:21:10 +0000
From: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>
Date: Mon, 15 Jun 2020 19:20:43 +0200
Message-Id: <ffa4bbca43e0cb290710535f13b657fbda2b9801.1592241105.git.dg@emlix.com>
In-Reply-To: <cover.1592241105.git.dg@emlix.com>
References: <cover.1592241105.git.dg@emlix.com>
In-Reply-To: <cover.1592241105.git.dg@emlix.com>
References: <cover.1592241105.git.dg@emlix.com>
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
Subject: [PATCH v3 10/14] poller: Allow to run pollers inside of pollers
To: Barebox List <barebox@lists.infradead.org>

From: Sascha Hauer <s.hauer@pengutronix.de>

This adds a slice to each poller which is acquired before the poller is
executed. This allows us to run pollers inside of other pollers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/poller.c  | 19 ++++++++++---------
 include/poller.h |  2 ++
 2 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/common/poller.c b/common/poller.c
index 95f828b43..2525034bb 100644
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
 
@@ -33,7 +33,7 @@ int poller_unregister(struct poller_struct *poller)
 	if (!poller->registered)
 		return -ENODEV;
 
-
+	slice_exit(&poller->slice);
 	list_del(&poller->list);
 	poller->registered = 0;
 	free(poller->name);
@@ -111,15 +111,16 @@ void poller_call(void)
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
+		idle_slice_acquire();
 		poller->func(poller);
-
-	poller_active = 0;
+		idle_slice_release();
+		slice_release(&poller->slice);
+	}
 }
 
 #if defined CONFIG_CMD_POLLER
diff --git a/include/poller.h b/include/poller.h
index 886557252..c8b682968 100644
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
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
