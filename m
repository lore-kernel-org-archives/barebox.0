Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo6.mail-out.ovh.net ([46.105.59.196])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3U6N-0004Pj-4u
 for barebox@lists.infradead.org; Tue, 23 Dec 2014 18:22:36 +0000
Received: from mail179.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 4F03DFF93D8
 for <barebox@lists.infradead.org>; Tue, 23 Dec 2014 19:22:11 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 23 Dec 2014 19:21:56 +0100
Message-Id: <1419358918-25569-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
References: <20141223170709.GA15818@ns203013.ovh.net>
 <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/9] poller: allow to restrict the poller frequency
To: barebox@lists.infradead.org

so we do not slow down barebox on too much polling
specialy on USB drivers

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/poller.c  | 11 ++++++++++-
 include/poller.h |  3 +++
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/common/poller.c b/common/poller.c
index 496636d..58b105d 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -24,6 +24,9 @@ int poller_register(struct poller_struct *poller)
 	list_add_tail(&poller->list, &poller_list);
 	poller->registered = 1;
 
+	if (poller->frequency)
+		poller->poll_next = get_time_ns();
+
 	return 0;
 }
 
@@ -96,8 +99,14 @@ void poller_call(void)
 
 	poller_active = 1;
 
-	list_for_each_entry_safe(poller, tmp, &poller_list, list)
+	list_for_each_entry_safe(poller, tmp, &poller_list, list) {
+
+		if (poller->frequency && get_time_ns() < poller->poll_next)
+			continue;
 		poller->func(poller);
+		if (poller->frequency)
+			poller->poll_next += poller->frequency;
+	}
 
 	poller_active = 0;
 }
diff --git a/include/poller.h b/include/poller.h
index cda5b57..3568a80 100644
--- a/include/poller.h
+++ b/include/poller.h
@@ -14,6 +14,9 @@ struct poller_struct {
 	void (*func)(struct poller_struct *poller);
 	int registered;
 	struct list_head list;
+
+	uint64_t frequency;
+	uint64_t poll_next;
 };
 
 int poller_register(struct poller_struct *poller);
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
