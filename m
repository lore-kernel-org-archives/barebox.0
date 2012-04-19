Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo3.mail-out.ovh.net ([87.98.184.141]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKkT5-0003el-0o
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 06:03:51 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E6938FF8ABD
 for <barebox@lists.infradead.org>; Thu, 19 Apr 2012 08:05:08 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Apr 2012 07:44:48 +0200
Message-Id: <1334814298-11468-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120419053846.GA20601@game.jcrosoft.org>
References: <20120419053846.GA20601@game.jcrosoft.org>
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
Subject: [PATCH 01/11] stringlist: use seperately allocated string
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Allocate the string in string list seperately instead of
embedding a zero length string into struct stringlist.
Besides looking cleaner this allows us to implement a
string_list_asprintf.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/stringlist.h |    6 ++++--
 lib/stringlist.c     |   10 ++++------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/include/stringlist.h b/include/stringlist.h
index c923542..4b3cbf3 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -5,7 +5,7 @@
 
 struct string_list {
 	struct list_head list;
-	char str[0];
+	char *str;
 };
 
 int string_list_add(struct string_list *sl, char *str);
@@ -22,8 +22,10 @@ static inline void string_list_free(struct string_list *sl)
 {
 	struct string_list *entry, *safe;
 
-	list_for_each_entry_safe(entry, safe, &sl->list, list)
+	list_for_each_entry_safe(entry, safe, &sl->list, list) {
+		free(entry->str);
 		free(entry);
+	}
 }
 
 #endif /* __STRING_H */
diff --git a/lib/stringlist.c b/lib/stringlist.c
index a8ff979..c8b835e 100644
--- a/lib/stringlist.c
+++ b/lib/stringlist.c
@@ -16,9 +16,8 @@ int string_list_add(struct string_list *sl, char *str)
 {
 	struct string_list *new;
 
-	new = xmalloc(sizeof(struct string_list) + strlen(str) + 1);
-
-	strcpy(new->str, str);
+	new = xmalloc(sizeof(*new));
+	new->str = xstrdup(str);
 
 	list_add_tail(&new->list, &sl->list);
 
@@ -29,9 +28,8 @@ int string_list_add_sorted(struct string_list *sl, char *str)
 {
 	struct string_list *new;
 
-	new = xmalloc(sizeof(struct string_list) + strlen(str) + 1);
-
-	strcpy(new->str, str);
+	new = xmalloc(sizeof(*new));
+	new->str = xstrdup(str);
 
 	list_add_sort(&new->list, &sl->list, string_list_compare);
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
