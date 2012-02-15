Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxZxC-0007B1-LJ
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:11:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:10:48 +0100
Message-Id: <1329293450-10234-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329293450-10234-1-git-send-email-s.hauer@pengutronix.de>
References: <1329293450-10234-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] list: add list_last_entry function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/list.h |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/include/linux/list.h b/include/linux/list.h
index 1a4cbc4..15ed499 100644
--- a/include/linux/list.h
+++ b/include/linux/list.h
@@ -272,6 +272,17 @@ static inline void list_splice_init(struct list_head *list,
 	list_entry((ptr)->next, type, member)
 
 /**
+ * list_last_entry - get the last element from a list
+ * @head: the list head to take the element from.
+ * @type: the type of the struct this is embedded in.
+ * @member: the name of the list_struct within the struct.
+ *
+ * Note, that list is expected to be not empty.
+ */
+#define list_last_entry(head, type, member) \
+	list_entry((head)->prev, type, member)
+
+/**
  * list_for_each	-	iterate over a list
  * @pos:	the &struct list_head to use as a loop cursor.
  * @head:	the head for your list.
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
