Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xr5PJ-0006MB-9H
 for barebox@lists.infradead.org; Wed, 19 Nov 2014 13:34:53 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed, 19 Nov 2014 14:34:28 +0100
Message-Id: <1416404068-8526-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] stringlist: string_list_contains can use a const string
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 include/stringlist.h | 2 +-
 lib/stringlist.c     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/stringlist.h b/include/stringlist.h
index 127998cb6e21..2e2addf98f19 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -11,7 +11,7 @@ struct string_list {
 int string_list_add(struct string_list *sl, char *str);
 int string_list_add_asprintf(struct string_list *sl, const char *fmt, ...);
 int string_list_add_sorted(struct string_list *sl, char *str);
-int string_list_contains(struct string_list *sl, char *str);
+int string_list_contains(struct string_list *sl, const char *str);
 void string_list_print_by_column(struct string_list *sl);
 
 static inline void string_list_init(struct string_list *sl)
diff --git a/lib/stringlist.c b/lib/stringlist.c
index cc84944f73b3..57801b3bb04d 100644
--- a/lib/stringlist.c
+++ b/lib/stringlist.c
@@ -60,7 +60,7 @@ int string_list_add_sorted(struct string_list *sl, char *str)
 	return 0;
 }
 
-int string_list_contains(struct string_list *sl, char *str)
+int string_list_contains(struct string_list *sl, const char *str)
 {
 	struct string_list *entry;
 
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
