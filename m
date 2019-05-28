Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVV2m-0000mR-S6
 for barebox@lists.infradead.org; Tue, 28 May 2019 05:53:06 +0000
Received: by mail-pl1-x642.google.com with SMTP id gn7so7832897plb.10
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 22:53:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 22:52:57 -0700
Message-Id: <20190528055257.31257-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] libbb: Drop simple_itoa()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hush is the only one user of simple_itoa() and the code there can be
re-implemented using snprintf(). Change the code to get rid of
simple_itoa().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/hush.c   |  7 ++++++-
 include/libbb.h |  2 --
 lib/libbb.c     | 14 --------------
 3 files changed, 6 insertions(+), 17 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index dab9b0408..68c3eccdf 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -402,7 +402,12 @@ static void b_free(o_string *o)
 static int b_adduint(o_string *o, unsigned int i)
 {
 	int r;
-	char *p = simple_itoa(i);
+	/* 21 digits plus null terminator, good for 64-bit or smaller
+	 * ints */
+	char number[22];
+	char *p = number;
+
+	snprintf(number, sizeof(number), "%u", i);
 
 	/* no escape checking necessary */
 	do {
diff --git a/include/libbb.h b/include/libbb.h
index 1f6afaa27..d05c19063 100644
--- a/include/libbb.h
+++ b/include/libbb.h
@@ -29,6 +29,4 @@ char * safe_strncpy(char *dst, const char *src, size_t size);
 
 int process_escape_sequence(const char *source, char *dest, int destlen);
 
-char *simple_itoa(unsigned int i);
-
 #endif /* __LIBBB_H */
diff --git a/lib/libbb.c b/lib/libbb.c
index 239611c27..d0c9bf4d8 100644
--- a/lib/libbb.c
+++ b/lib/libbb.c
@@ -112,17 +112,3 @@ char * safe_strncpy(char *dst, const char *src, size_t size)
 	return strncpy(dst, src, size);
 }
 EXPORT_SYMBOL(safe_strncpy);
-
-char *simple_itoa(unsigned int i)
-{
-	/* 21 digits plus null terminator, good for 64-bit or smaller ints */
-	static char local[22];
-	char *p = &local[21];
-	*p-- = '\0';
-	do {
-		*p-- = '0' + i % 10;
-		i /= 10;
-	} while (i > 0);
-	return p + 1;
-}
-EXPORT_SYMBOL(simple_itoa);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
