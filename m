Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QUvfP-0001hJ-Sk
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 06:58:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jun 2011 08:57:52 +0200
Message-Id: <1307689073-9559-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1307689073-9559-1-git-send-email-s.hauer@pengutronix.de>
References: <1307689073-9559-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] stringlist: use seperately allocated string.
To: barebox@lists.infradead.org

Allocate the string in string list seperately instead of
embedding a zero length string into struct stringlist.
Besides looking cleaner this allows us to implement a
string_list_asprintf.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/stringlist.h |    6 ++++--
 lib/stringlist.c     |    6 +++---
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/include/stringlist.h b/include/stringlist.h
index 3453e9a..86edcf0 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -5,7 +5,7 @@
 
 struct string_list {
 	struct list_head list;
-	char str[0];
+	char *str;
 };
 
 int string_list_add(struct string_list *sl, char *str);
@@ -20,8 +20,10 @@ static inline void string_list_free(struct string_list *sl)
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
index 9ccf8fa..3c8ecec 100644
--- a/lib/stringlist.c
+++ b/lib/stringlist.c
@@ -1,15 +1,15 @@
 #include <common.h>
 #include <xfuncs.h>
 #include <malloc.h>
+#include <xfuncs.h>
 #include <stringlist.h>
 
 int string_list_add(struct string_list *sl, char *str)
 {
 	struct string_list *new;
 
-	new = xmalloc(sizeof(struct string_list) + strlen(str) + 1);
-
-	strcpy(new->str, str);
+	new = xmalloc(sizeof(*new));
+	new->str = xstrdup(str);
 
 	list_add_tail(&new->list, &sl->list);
 
-- 
1.7.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
