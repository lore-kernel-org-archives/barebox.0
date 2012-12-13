Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjAzr-00023m-Oh
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 15:46:52 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Thu, 13 Dec 2012 16:46:46 +0100
Message-Id: <1355413606-18097-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] commands: flash: add missing newlines to error messages
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 commands/flash.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/flash.c b/commands/flash.c
index b1673de..d22d6a0 100644
--- a/commands/flash.c
+++ b/commands/flash.c
@@ -54,7 +54,7 @@ static int do_flerase(int argc, char *argv[])
 
 	fd = open(filename, O_WRONLY);
 	if (fd < 0) {
-		printf("open %s: %s", filename, errno_str());
+		printf("open %s: %s\n", filename, errno_str());
 		return 1;
 	}
 
@@ -125,7 +125,7 @@ static int do_protect(int argc, char *argv[])
 
 	fd = open(filename, O_WRONLY);
 	if (fd < 0) {
-		printf("open %s: %s", filename, errno_str());
+		printf("open %s: %s\n", filename, errno_str());
 		return 1;
 	}
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
