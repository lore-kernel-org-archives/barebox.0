Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg010.nifty.com ([202.248.44.36]
 helo=conuserg010-v.nifty.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXp9n-0003VF-Jp
 for barebox@lists.infradead.org; Fri, 04 Sep 2015 11:27:48 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri,  4 Sep 2015 20:27:11 +0900
Message-Id: <1441366031-856-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: [PATCH] console: use int rather than uint in printf() and friends
To: barebox@lists.infradead.org

These functions and vsprintf() return int type.
No reason to use uint type.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 common/console_common.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index fcf89e8..a9bbce9 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -105,7 +105,7 @@ nolog:
 int pr_print(int level, const char *fmt, ...)
 {
 	va_list args;
-	uint i;
+	int i;
 	char printbuffer[CFG_PBSIZE];
 
 	if (!IS_ENABLED(CONFIG_LOGBUF) && level > barebox_loglevel)
@@ -191,7 +191,7 @@ void log_print(unsigned flags)
 int printf(const char *fmt, ...)
 {
 	va_list args;
-	uint i;
+	int i;
 	char printbuffer[CFG_PBSIZE];
 
 	va_start(args, fmt);
@@ -212,7 +212,7 @@ EXPORT_SYMBOL(printf);
 
 int vprintf(const char *fmt, va_list args)
 {
-	uint i;
+	int i;
 	char printbuffer[CFG_PBSIZE];
 
 	/*
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
