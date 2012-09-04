Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8z8P-00082j-37
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 19:50:10 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 18096DC5B0C
 for <barebox@lists.infradead.org>; Tue,  4 Sep 2012 21:55:22 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  4 Sep 2012 21:50:08 +0200
Message-Id: <1346788217-16042-10-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346788217-16042-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120904194720.GB32603@game.jcrosoft.org>
 <1346788217-16042-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 10/19] test: add -L support to test if it's a symbolic link
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/test.c |   11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/commands/test.c b/commands/test.c
index 9ffa892..18eeaab 100644
--- a/commands/test.c
+++ b/commands/test.c
@@ -43,6 +43,7 @@ typedef enum {
 	OPT_DIRECTORY,
 	OPT_FILE,
 	OPT_EXISTS,
+	OPT_SYMBOLIC_LINK,
 	OPT_MAX,
 } test_opts;
 
@@ -62,6 +63,7 @@ static char *test_options[] = {
 	[OPT_FILE]			= "-f",
 	[OPT_DIRECTORY]			= "-d",
 	[OPT_EXISTS]			= "-e",
+	[OPT_SYMBOLIC_LINK]		= "-L",
 };
 
 static int parse_opt(const char *opt)
@@ -140,9 +142,10 @@ static int do_test(int argc, char *argv[])
 		case OPT_FILE:
 		case OPT_DIRECTORY:
 		case OPT_EXISTS:
+		case OPT_SYMBOLIC_LINK:
 			adv = 2;
 			if (ap[1] && *ap[1] != ']' && strlen(ap[1])) {
-				expr = stat(ap[1], &statbuf);
+				expr = (opt == OPT_SYMBOLIC_LINK ? lstat : stat)(ap[1], &statbuf);
 				if (expr < 0) {
 					expr = 0;
 					break;
@@ -160,6 +163,10 @@ static int do_test(int argc, char *argv[])
 					expr = 1;
 					break;
 				}
+				if (opt == OPT_SYMBOLIC_LINK && S_ISLNK(statbuf.st_mode)) {
+					expr = 1;
+					break;
+				}
 			}
 			break;
 
@@ -224,7 +231,7 @@ static const char *test_aliases[] = { "[", NULL};
 
 static const __maybe_unused char cmd_test_help[] =
 "Usage: test [OPTIONS]\n"
-"options: !, =, !=, -eq, -ne, -ge, -gt, -le, -lt, -o, -a, -z, -n, -d, -e, -f\n"
+"options: !, =, !=, -eq, -ne, -ge, -gt, -le, -lt, -o, -a, -z, -n, -d, -e, -f, -L\n"
 "see 'man test' on your PC for more information.\n";
 
 static const __maybe_unused char cmd_test_usage[] = "minimal test like /bin/sh";
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
