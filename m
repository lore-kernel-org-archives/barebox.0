Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22f.google.com ([2607:f8b0:400e:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlLbe-0007rg-VV
 for barebox@lists.infradead.org; Sun, 11 Oct 2015 18:44:28 +0000
Received: by pacex6 with SMTP id ex6so5406741pac.0
 for <barebox@lists.infradead.org>; Sun, 11 Oct 2015 11:44:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 11 Oct 2015 11:43:41 -0700
Message-Id: <1444589021-12727-8-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1444589021-12727-1-git-send-email-andrew.smirnov@gmail.com>
References: <1444589021-12727-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 8/8] common/parser.c: Do not treat zero return code as error
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Run_command() would return zero to indicated success so treating it as
error case would completely break command repetition logic, so change
comparinson operator from "less or equal" to "less then"

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/parser.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/common/parser.c b/common/parser.c
index 2b95aed..6136dbf 100644
--- a/common/parser.c
+++ b/common/parser.c
@@ -266,7 +266,6 @@ int run_shell(void)
 {
 	static char lastcommand[CONFIG_CBSIZE] = { 0, };
 	int len;
-	int rc = 1;
 
 	login();
 
@@ -276,14 +275,14 @@ int run_shell(void)
 		if (len > 0)
 			strcpy (lastcommand, console_buffer);
 
-		if (len == -1)
+		if (len == -1) {
 			puts ("<INTERRUPT>\n");
-		else
-			rc = run_command(lastcommand);
-
-		if (rc <= 0) {
-			/* invalid command or not repeatable, forget it */
-			lastcommand[0] = 0;
+		} else {
+			const int rc = run_command(lastcommand);
+			if (rc < 0) {
+				/* invalid command or not repeatable, forget it */
+				lastcommand[0] = 0;
+			}
 		}
 	}
 	return 0;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
