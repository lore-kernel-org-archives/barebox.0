Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yxv9X-00065E-Jy
 for barebox@lists.infradead.org; Thu, 28 May 2015 10:35:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 May 2015 12:34:42 +0200
Message-Id: <1432809284-17362-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] memset command: Add 64bit support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/memset.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/memset.c b/commands/memset.c
index bb5f46d..fc5b659 100644
--- a/commands/memset.c
+++ b/commands/memset.c
@@ -44,7 +44,7 @@ static int do_memset(int argc, char *argv[])
 	int     ret = 1;
 	char	*file = "/dev/mem";
 
-	if (mem_parse_options(argc, argv, "bwld:", &mode, NULL, &file,
+	if (mem_parse_options(argc, argv, "bwlqd:", &mode, NULL, &file,
 			NULL) < 0)
 		return 1;
 
@@ -92,6 +92,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-b",  "byte access")
 BAREBOX_CMD_HELP_OPT ("-w",  "word access (16 bit)")
 BAREBOX_CMD_HELP_OPT ("-l",  "long access (32 bit)")
+BAREBOX_CMD_HELP_OPT ("-q",  "quad access (64 bit)")
 BAREBOX_CMD_HELP_OPT ("-d FILE",  "write file (default /dev/mem)")
 BAREBOX_CMD_HELP_END
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
