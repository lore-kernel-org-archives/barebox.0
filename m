Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.176.91])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEw6G-0005xx-Tx
 for barebox@lists.infradead.org; Sun, 16 Feb 2014 07:25:18 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 16 Feb 2014 11:24:30 +0400
Message-Id: <1392535477-21275-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/8] common/kallsyms.c: Fix sparse warning
To: barebox@lists.infradead.org

CHECK   common/kallsyms.c
common/kallsyms.c:170:12: warning: symbol 'kallsyms_lookup' was not declared. Should it be static?

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 common/kallsyms.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/kallsyms.c b/common/kallsyms.c
index 94dfcdc..121b77c 100644
--- a/common/kallsyms.c
+++ b/common/kallsyms.c
@@ -167,10 +167,10 @@ static unsigned long get_symbol_pos(unsigned long addr,
  *   It resides in a module.
  * - We also guarantee that modname will be valid until rescheduled.
  */
-const char *kallsyms_lookup(unsigned long addr,
-			    unsigned long *symbolsize,
-			    unsigned long *offset,
-			    char **modname, char *namebuf)
+static const char *kallsyms_lookup(unsigned long addr,
+				   unsigned long *symbolsize,
+				   unsigned long *offset,
+				   char **modname, char *namebuf)
 {
 	namebuf[KSYM_NAME_LEN - 1] = 0;
 	namebuf[0] = 0;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
