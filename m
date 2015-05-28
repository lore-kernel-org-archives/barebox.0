Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yxv9c-00066E-Dz
 for barebox@lists.infradead.org; Thu, 28 May 2015 10:35:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 May 2015 12:34:41 +0200
Message-Id: <1432809284-17362-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] memcpy command: Add 64bit support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/memcpy.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/memcpy.c b/commands/memcpy.c
index 78716b1..9c8b645 100644
--- a/commands/memcpy.c
+++ b/commands/memcpy.c
@@ -47,7 +47,7 @@ static int do_memcpy(int argc, char *argv[])
 	struct stat statbuf;
 	int ret = 0;
 
-	if (mem_parse_options(argc, argv, "bwls:d:", &mode, &sourcefile,
+	if (mem_parse_options(argc, argv, "bwlqs:d:", &mode, &sourcefile,
 			&destfile, NULL) < 0)
 		return 1;
 
@@ -135,6 +135,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-b", "byte access")
 BAREBOX_CMD_HELP_OPT ("-w", "word access (16 bit)")
 BAREBOX_CMD_HELP_OPT ("-l", "long access (32 bit)")
+BAREBOX_CMD_HELP_OPT ("-q", "quad access (64 bit)")
 BAREBOX_CMD_HELP_OPT ("-s FILE", "source file (default /dev/mem)")
 BAREBOX_CMD_HELP_OPT ("-d FILE", "write file (default /dev/mem)")
 BAREBOX_CMD_HELP_END
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
