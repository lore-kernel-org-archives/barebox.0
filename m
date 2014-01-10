Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Zuw-0006iP-VI
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 11:06:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2014 12:05:52 +0100
Message-Id: <1389351959-20448-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389351959-20448-1-git-send-email-s.hauer@pengutronix.de>
References: <1389351959-20448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] list: add list_first_entry_or_null()
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/list.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/linux/list.h b/include/linux/list.h
index 5ae90b4..bc63ece 100644
--- a/include/linux/list.h
+++ b/include/linux/list.h
@@ -292,6 +292,17 @@ static inline void list_splice_init(struct list_head *list,
 	list_entry((head)->prev, type, member)
 
 /**
+ * list_first_entry_or_null - get the first element from a list
+ * @ptr:	the list head to take the element from.
+ * @type:	the type of the struct this is embedded in.
+ * @member:	the name of the list_struct within the struct.
+ *
+ * Note that if the list is empty, it returns NULL.
+ */
+#define list_first_entry_or_null(ptr, type, member) \
+	(!list_empty(ptr) ? list_first_entry(ptr, type, member) : NULL)
+
+/**
  * list_for_each	-	iterate over a list
  * @pos:	the &struct list_head to use as a loop cursor.
  * @head:	the head for your list.
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
