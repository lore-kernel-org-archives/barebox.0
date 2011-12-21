Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RdNb8-0002pc-Nf
 for barebox@lists.infradead.org; Wed, 21 Dec 2011 14:56:51 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed, 21 Dec 2011 15:56:36 +0100
Message-Id: <1324479396-8185-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] command: flash: remove broken filename check
To: barebox@lists.infradead.org

It makes no sense to check the filename pointer here, because a) we have
already been using it and b) argc has been tested against 1 already, so
argv[1] should not be NULL. So, drop the checks.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 commands/flash.c |   10 ----------
 1 files changed, 0 insertions(+), 10 deletions(-)

diff --git a/commands/flash.c b/commands/flash.c
index db7c87d..8237ac8 100644
--- a/commands/flash.c
+++ b/commands/flash.c
@@ -58,11 +58,6 @@ static int do_flerase(struct command *cmdtp, int argc, char *argv[])
 
 	size = s.st_size;
 
-	if (!filename) {
-		printf("missing filename\n");
-		return 1;
-	}
-
 	fd = open(filename, O_WRONLY);
 	if (fd < 0) {
 		printf("open %s: %s", filename, errno_str());
@@ -136,11 +131,6 @@ static int do_protect(struct command *cmdtp, int argc, char *argv[])
 
 	size = s.st_size;
 
-	if (!filename) {
-		printf("missing filename\n");
-		return 1;
-	}
-
 	fd = open(filename, O_WRONLY);
 	if (fd < 0) {
 		printf("open %s: %s", filename, errno_str());
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
