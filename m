Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rxa8f-0002fF-1D
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:22:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:22:34 +0100
Message-Id: <1329294165-12089-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
References: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/12] add list_is_singular
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/list.h |    9 +++++++++
 1 files changed, 9 insertions(+), 0 deletions(-)

diff --git a/include/linux/list.h b/include/linux/list.h
index 15ed499..5ae90b4 100644
--- a/include/linux/list.h
+++ b/include/linux/list.h
@@ -210,6 +210,15 @@ static inline int list_empty_careful(const struct list_head *head)
 	return (next == head) && (next == head->prev);
 }
 
+/**
+ * list_is_singular - tests whether a list has just one entry.
+ * @head: the list to test.
+ */
+static inline int list_is_singular(const struct list_head *head)
+{
+	return !list_empty(head) && (head->next == head->prev);
+}
+
 static inline void __list_splice(struct list_head *list,
 				 struct list_head *head)
 {
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
