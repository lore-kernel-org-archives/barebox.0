Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m50-134.163.com ([123.125.50.134])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqhcF-0000Wn-IR
 for barebox@lists.infradead.org; Thu, 14 Apr 2016 13:47:28 +0000
From: Du Huanpeng <d-hp@163.com>
Date: Thu, 14 Apr 2016 21:46:54 +0800
Message-Id: <1460641614-4660-1-git-send-email-d-hp@163.com>
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
Subject: [PATCH] readline: use a simple function to replace printf
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

From: Du Huanpeng <u74147@gmail.com>

maybe this patch is not very necessary, but this make we have
opportunity to use simplified version of printf.
  printf ("%.*s", n, str);

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 lib/readline.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/lib/readline.c b/lib/readline.c
index b5d99ca..31fd1ed 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -13,9 +13,6 @@
  * Author: Janghoon Lyu <nandy@mizi.com>
  */
 
-#define putnstr(str,n)	do {			\
-		printf ("%.*s", n, str);	\
-	} while (0)
 
 #define CTL_BACKSPACE		('\b')
 #define DEL			255
@@ -36,6 +33,13 @@ static LIST_HEAD(history_list);
 static struct list_head *history_current;
 static int history_num_entries;
 
+static void putnstr(const char *str, int n)
+{
+	int i;
+	for(i=0; i<n && str[i]; i++) {
+		putchar(str[i]);
+	}
+}
 static void cread_add_to_hist(char *line)
 {
 	struct history *history;
-- 
1.9.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
