Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2bdl-0005X4-Kp
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 07:41:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  3 Jul 2014 09:40:45 +0200
Message-Id: <1404373246-10075-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] string_list: Add string_list_for_each_entry macro
To: barebox@lists.infradead.org

To ease iterating over a string_list.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/stringlist.h | 3 +++
 lib/stringlist.c     | 6 +++---
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/include/stringlist.h b/include/stringlist.h
index 8738137..127998c 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -29,4 +29,7 @@ static inline void string_list_free(struct string_list *sl)
 	}
 }
 
+#define string_list_for_each_entry(entry, sl) \
+	list_for_each_entry(entry, &(sl)->list, list)
+
 #endif /* __STRINGLIST_H */
diff --git a/lib/stringlist.c b/lib/stringlist.c
index a8af15d..cc84944 100644
--- a/lib/stringlist.c
+++ b/lib/stringlist.c
@@ -64,7 +64,7 @@ int string_list_contains(struct string_list *sl, char *str)
 {
 	struct string_list *entry;
 
-	list_for_each_entry(entry, &sl->list, list) {
+	string_list_for_each_entry(entry, sl) {
 		if (!strcmp(str, entry->str))
 			return 1;
 	}
@@ -77,7 +77,7 @@ void string_list_print_by_column(struct string_list *sl)
 	int len = 0, num, i;
 	struct string_list *entry;
 
-	list_for_each_entry(entry, &sl->list, list) {
+	string_list_for_each_entry(entry, sl) {
 		int l = strlen(entry->str) + 4;
 		if (l > len)
 			len = l;
@@ -91,7 +91,7 @@ void string_list_print_by_column(struct string_list *sl)
 		num = 1;
 
 	i = 0;
-	list_for_each_entry(entry, &sl->list, list) {
+	string_list_for_each_entry(entry, sl) {
 		if (!(++i % num))
 			printf("%s\n", entry->str);
 		else
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
