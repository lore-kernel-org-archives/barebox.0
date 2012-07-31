Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwIO4-0007yS-47
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 19:45:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jul 2012 21:45:42 +0200
Message-Id: <1343763942-5011-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mem md: make md -s /dev/something work again
To: barebox@lists.infradead.org

Since

|commit d22b85a203aea20a2b2618f5f457fe96c502868d
|Author: Sascha Hauer <s.hauer@pengutronix.de>
|Date:   Wed Jul 4 23:41:13 2012 +0200
|
|    mem md: bail out without arguments
|
|    Without arguments the 'md' command defaults to show address 0 which
|    likely results in a NULL pointer exception, so only three keystrokes
|    are necessary to crash barebox. Show usage instead if 'md' is invoked
|    without arguments, so that it at least requires an address to be given
|    to crash barebox. This increases the stability of barebox by 66%. Hurray!

barebox does not crash any longer when a plain 'md' without additional arguments
is exectuted. However, doing a 'md -s /dev/nor0' was a standard usecase which now
does not work anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mem.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index 5322def..cc94062 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -170,6 +170,9 @@ static int do_mem_md(int argc, char *argv[])
 	char *filename = DEVMEM;
 	int mode = O_RWSIZE_4;
 
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
 	if (mem_parse_options(argc, argv, "bwls:", &mode, &filename, NULL) < 0)
 		return 1;
 
@@ -180,8 +183,6 @@ static int do_mem_md(int argc, char *argv[])
 		}
 		if (size == ~0)
 			size = 0x100;
-	} else {
-		return COMMAND_ERROR_USAGE;
 	}
 
 	fd = open_and_lseek(filename, mode | O_RDONLY, start);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
