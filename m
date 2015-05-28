Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yxv9X-00065F-Jx
 for barebox@lists.infradead.org; Thu, 28 May 2015 10:35:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 May 2015 12:34:40 +0200
Message-Id: <1432809284-17362-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/10] memcmp command: Add 64bit support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/memcmp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/memcmp.c b/commands/memcmp.c
index d048150..e079d5f 100644
--- a/commands/memcmp.c
+++ b/commands/memcmp.c
@@ -49,7 +49,7 @@ static int do_memcmp(int argc, char *argv[])
 	int     offset = 0;
 	struct  stat statbuf;
 
-	if (mem_parse_options(argc, argv, "bwls:d:", &mode, &sourcefile,
+	if (mem_parse_options(argc, argv, "bwlqs:d:", &mode, &sourcefile,
 			&destfile, NULL) < 0)
 		return 1;
 
@@ -138,6 +138,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-b",  "byte access")
 BAREBOX_CMD_HELP_OPT ("-w",  "word access (16 bit)")
 BAREBOX_CMD_HELP_OPT ("-l",  "long access (32 bit)")
+BAREBOX_CMD_HELP_OPT ("-q",  "quad access (64 bit)")
 BAREBOX_CMD_HELP_OPT ("-s FILE", "source file (default /dev/mem)")
 BAREBOX_CMD_HELP_OPT ("-d FILE", "destination file (default /dev/mem)")
 BAREBOX_CMD_HELP_END
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
