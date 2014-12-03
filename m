Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XwB26-0006Ah-MA
 for barebox@lists.infradead.org; Wed, 03 Dec 2014 14:35:59 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed,  3 Dec 2014 15:33:59 +0100
Message-Id: <1417617240-16852-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 1/2] stringlist: the string argument should be const
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 include/stringlist.h | 4 ++--
 lib/stringlist.c     | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/stringlist.h b/include/stringlist.h
index 2e2addf98f19..e85500a99485 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -8,9 +8,9 @@ struct string_list {
 	char *str;
 };
 
-int string_list_add(struct string_list *sl, char *str);
+int string_list_add(struct string_list *sl, const char *str);
 int string_list_add_asprintf(struct string_list *sl, const char *fmt, ...);
-int string_list_add_sorted(struct string_list *sl, char *str);
+int string_list_add_sorted(struct string_list *sl, const char *str);
 int string_list_contains(struct string_list *sl, const char *str);
 void string_list_print_by_column(struct string_list *sl);
 
diff --git a/lib/stringlist.c b/lib/stringlist.c
index 57801b3bb04d..8a18366a96d5 100644
--- a/lib/stringlist.c
+++ b/lib/stringlist.c
@@ -13,7 +13,7 @@ static int string_list_compare(struct list_head *a, struct list_head *b)
 	return strcmp(astr, bstr);
 }
 
-int string_list_add(struct string_list *sl, char *str)
+int string_list_add(struct string_list *sl, const char *str)
 {
 	struct string_list *new;
 
@@ -48,7 +48,7 @@ int string_list_add_asprintf(struct string_list *sl, const char *fmt, ...)
 	return 0;
 }
 
-int string_list_add_sorted(struct string_list *sl, char *str)
+int string_list_add_sorted(struct string_list *sl, const char *str)
 {
 	struct string_list *new;
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
