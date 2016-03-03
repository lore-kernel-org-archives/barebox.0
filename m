Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward8m.cmail.yandex.net ([2a02:6b8:b030::10])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abV9Y-0007sN-EN
 for barebox@lists.infradead.org; Thu, 03 Mar 2016 15:27:02 +0000
Received: from smtp4m.mail.yandex.net (smtp4m.mail.yandex.net
 [IPv6:2a02:6b8:0:2519::126])
 by forward8m.cmail.yandex.net (Yandex) with ESMTP id 6563C21438
 for <barebox@lists.infradead.org>; Thu,  3 Mar 2016 18:26:36 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Thu,  3 Mar 2016 18:17:09 +0300
Message-Id: <1457018230-4554-1-git-send-email-rndfax@yandex.ru>
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
Subject: [PATCH 1/2] poller: allow safely remove pollers in any time
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

---
 common/poller.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/common/poller.c b/common/poller.c
index 32795b6..7cec5d4 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -15,6 +15,7 @@
 
 static LIST_HEAD(poller_list);
 static int poller_active;
+static struct poller_struct *next;
 
 int poller_register(struct poller_struct *poller)
 {
@@ -33,6 +34,10 @@ int poller_unregister(struct poller_struct *poller)
 		return -ENODEV;
 
 
+	if (&next->list == &poller->list) {
+		next = list_entry(next->list.next, struct poller_struct, list);
+	}
+
 	list_del(&poller->list);
 	poller->registered = 0;
 
@@ -107,14 +112,14 @@ int poller_async_unregister(struct poller_async *pa)
 
 void poller_call(void)
 {
-	struct poller_struct *poller, *tmp;
+	struct poller_struct *poller;
 
 	if (poller_active)
 		return;
 
 	poller_active = 1;
 
-	list_for_each_entry_safe(poller, tmp, &poller_list, list)
+	list_for_each_entry_safe(poller, next, &poller_list, list)
 		poller->func(poller);
 
 	poller_active = 0;
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
