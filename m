Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-f170.google.com ([209.85.192.170])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uj7tA-0003UX-6f
 for barebox@lists.infradead.org; Sun, 02 Jun 2013 13:00:00 +0000
Received: by mail-pd0-f170.google.com with SMTP id x10so4413169pdj.29
 for <barebox@lists.infradead.org>; Sun, 02 Jun 2013 05:59:33 -0700 (PDT)
From: Masaki Muranaka <monaka@monami-ya.jp>
Date: Sun,  2 Jun 2013 21:59:05 +0900
Message-Id: <1370177945-36985-1-git-send-email-monaka@monami-ya.com>
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
Subject: [PATCH] Remove a redundant line.
To: barebox@lists.infradead.org

Signed-off-by: Masaki Muranaka <monaka@monami-ya.com>
---
 commands/echo.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/commands/echo.c b/commands/echo.c
index 8929234..4dfd870 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -55,7 +55,6 @@ static int do_echo(int argc, char *argv[])
 			break;
 		case 'o':
 			oflags |= O_TRUNC;
-			file = argv[optind + 1];
 			if (optind + 1 < argc)
 				file = argv[optind + 1];
 			else
-- 
1.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
