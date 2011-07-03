Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f43.google.com ([209.85.161.43])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QdTfi-0004Sa-3M
	for barebox@lists.infradead.org; Sun, 03 Jul 2011 20:53:42 +0000
Received: by fxg17 with SMTP id 17so4167232fxg.16
	for <barebox@lists.infradead.org>; Sun, 03 Jul 2011 13:53:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  4 Jul 2011 00:53:02 +0400
Message-Id: <1309726383-17932-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1309726383-17932-1-git-send-email-antonynpavlov@gmail.com>
References: <1309726383-17932-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] lib/readline.c: fix unused-but-set-variable gcc warning
To: barebox@lists.infradead.org

---
 lib/readline.c |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/lib/readline.c b/lib/readline.c
index a3e1de9..5717a17 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -176,7 +176,6 @@ int readline(const char *prompt, char *buf, int len)
 {
 	unsigned long num = 0;
 	unsigned long eol_num = 0;
-	unsigned long rlen;
 	unsigned wlen;
 	int ichar;
 	int insert = 1;
@@ -191,7 +190,6 @@ int readline(const char *prompt, char *buf, int len)
 	puts (prompt);
 
 	while (1) {
-		rlen = 1;
 		ichar = read_key();
 
 		if ((ichar == '\n') || (ichar == '\r')) {
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
