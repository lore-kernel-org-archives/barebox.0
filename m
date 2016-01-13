Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNUn-0004J1-IQ
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 15:38:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Jan 2016 16:37:22 +0100
Message-Id: <1452699456-1025-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
References: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/15] poller: Fix async poller
To: Barebox List <barebox@lists.infradead.org>

The async poller does not work as expected since it can happen that
the async poller is removed from the list of pollers while we are
iterating over the list. Even list_for_each_entry_safe does not help
here since we may remove the next list element, but
list_for_each_entry_safe only allows to remove the current list element.

Rework the async poller so that it is registered with the poller
framework on registration and then is only marked as active with
poller_call_async(). This way we do not have to do list manipulations
while running the pollers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/poller.c  | 26 ++++++++++++++++++++++----
 include/poller.h |  4 ++++
 2 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/common/poller.c b/common/poller.c
index 496636d..32795b6 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -32,6 +32,7 @@ int poller_unregister(struct poller_struct *poller)
 	if (!poller->registered)
 		return -ENODEV;
 
+
 	list_del(&poller->list);
 	poller->registered = 0;
 
@@ -42,12 +43,14 @@ static void poller_async_callback(struct poller_struct *poller)
 {
 	struct poller_async *pa = container_of(poller, struct poller_async, poller);
 
+	if (!pa->active)
+		return;
+
 	if (get_time_ns() < pa->end)
 		return;
 
+	pa->active = 0;
 	pa->fn(pa->ctx);
-	pa->fn = NULL;
-	poller_unregister(&pa->poller);
 }
 
 /*
@@ -62,7 +65,9 @@ static void poller_async_callback(struct poller_struct *poller)
  */
 int poller_async_cancel(struct poller_async *pa)
 {
-	return poller_unregister(&pa->poller);
+	pa->active = 0;
+
+	return 0;
 }
 
 /*
@@ -80,13 +85,26 @@ int poller_call_async(struct poller_async *pa, uint64_t delay_ns,
 		void (*fn)(void *), void *ctx)
 {
 	pa->ctx = ctx;
-	pa->poller.func = poller_async_callback;
 	pa->end = get_time_ns() + delay_ns;
 	pa->fn = fn;
+	pa->active = 1;
+
+	return 0;
+}
+
+int poller_async_register(struct poller_async *pa)
+{
+	pa->poller.func = poller_async_callback;
+	pa->active = 0;
 
 	return poller_register(&pa->poller);
 }
 
+int poller_async_unregister(struct poller_async *pa)
+{
+	return poller_unregister(&pa->poller);
+}
+
 void poller_call(void)
 {
 	struct poller_struct *poller, *tmp;
diff --git a/include/poller.h b/include/poller.h
index cda5b57..35a2271 100644
--- a/include/poller.h
+++ b/include/poller.h
@@ -26,8 +26,12 @@ struct poller_async {
 	void (*fn)(void *);
 	void *ctx;
 	uint64_t end;
+	int active;
 };
 
+int poller_async_register(struct poller_async *pa);
+int poller_async_unregister(struct poller_async *pa);
+
 int poller_call_async(struct poller_async *pa, uint64_t delay_ns,
 		void (*fn)(void *), void *ctx);
 int poller_async_cancel(struct poller_async *pa);
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
