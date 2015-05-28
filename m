Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yxv9m-00067e-Dh
 for barebox@lists.infradead.org; Thu, 28 May 2015 10:35:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 May 2015 12:34:39 +0200
Message-Id: <1432809284-17362-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1432809284-17362-1-git-send-email-s.hauer@pengutronix.de>
References: <1432809284-17362-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] md command: Add 64bit support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/md.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/md.c b/commands/md.c
index 07a03d5..c88259a 100644
--- a/commands/md.c
+++ b/commands/md.c
@@ -49,7 +49,7 @@ static int do_mem_md(int argc, char *argv[])
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
-	if (mem_parse_options(argc, argv, "bwls:x", &mode, &filename, NULL,
+	if (mem_parse_options(argc, argv, "bwlqs:x", &mode, &filename, NULL,
 			&swab) < 0)
 		return 1;
 
@@ -105,6 +105,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-b",  "byte access")
 BAREBOX_CMD_HELP_OPT ("-w",  "word access (16 bit)")
 BAREBOX_CMD_HELP_OPT ("-l",  "long access (32 bit)")
+BAREBOX_CMD_HELP_OPT ("-q",  "quad access (64 bit)")
 BAREBOX_CMD_HELP_OPT ("-s FILE",  "display file (default /dev/mem)")
 BAREBOX_CMD_HELP_OPT ("-x",       "swap bytes at output")
 BAREBOX_CMD_HELP_TEXT("")
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
