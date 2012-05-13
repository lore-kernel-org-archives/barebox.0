Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STXZw-0002uS-4X
 for barebox@lists.infradead.org; Sun, 13 May 2012 12:07:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 13 May 2012 14:07:06 +0200
Message-Id: <1336910826-27453-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] timeout: allow to set a variable with the key pressed
To: barebox@lists.infradead.org

Useful if we want to know which key caused the timeout.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/timeout.c |   16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/commands/timeout.c b/commands/timeout.c
index 01ece52..d4e90cd 100644
--- a/commands/timeout.c
+++ b/commands/timeout.c
@@ -25,6 +25,7 @@
 #include <errno.h>
 #include <getopt.h>
 #include <clock.h>
+#include <environment.h>
 
 #define TIMEOUT_RETURN	(1 << 0)
 #define TIMEOUT_CTRLC	(1 << 1)
@@ -35,9 +36,11 @@ static int do_timeout(int argc, char *argv[])
 {
 	int timeout = 3, ret = 1;
 	int flags = 0, opt, countdown;
+	int key = 0;
 	uint64_t start, second;
+	const char *varname = NULL;
 
-	while((opt = getopt(argc, argv, "t:crsa")) > 0) {
+	while((opt = getopt(argc, argv, "t:crsav:")) > 0) {
 		switch(opt) {
 		case 'r':
 			flags |= TIMEOUT_RETURN;
@@ -51,6 +54,9 @@ static int do_timeout(int argc, char *argv[])
 		case 's':
 			flags |= TIMEOUT_SILENT;
 			break;
+		case 'v':
+			varname = optarg;
+			break;
 		default:
 			return 1;
 		}
@@ -71,13 +77,14 @@ static int do_timeout(int argc, char *argv[])
 
 	do {
 		if (tstc()) {
-			int key = getc();
+			key = getc();
 			if (flags & TIMEOUT_CTRLC && key == 3)
 				goto  out;
 			if (flags & TIMEOUT_ANYKEY)
 				goto out;
 			if (flags & TIMEOUT_RETURN && key == '\n')
 				goto out;
+			key = 0;
 		}
 		if (!(flags & TIMEOUT_SILENT) && is_timeout(second, SECOND)) {
 			printf("\b\b%2d", countdown--);
@@ -87,6 +94,11 @@ static int do_timeout(int argc, char *argv[])
 
 	ret = 0;
 out:
+	if (varname && key) {
+		char str[2] = { };
+		str[0] = key;
+		setenv(varname, str);
+	}
 	if (!(flags & TIMEOUT_SILENT))
 		printf("\n");
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
