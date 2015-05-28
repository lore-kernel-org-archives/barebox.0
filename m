Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yxv9r-0006yR-DT
 for barebox@lists.infradead.org; Thu, 28 May 2015 10:35:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 May 2015 12:34:44 +0200
Message-Id: <1432809284-17362-11-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] mw command: Add 64bit support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mw.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/commands/mw.c b/commands/mw.c
index f0384f6..8ca3c61 100644
--- a/commands/mw.c
+++ b/commands/mw.c
@@ -42,7 +42,7 @@ static int do_mem_mw(int argc, char *argv[])
 	loff_t adr;
 	int swab = 0;
 
-	if (mem_parse_options(argc, argv, "bwld:x", &mode, NULL, &filename,
+	if (mem_parse_options(argc, argv, "bwlqd:x", &mode, NULL, &filename,
 			&swab) < 0)
 		return 1;
 
@@ -59,6 +59,7 @@ static int do_mem_mw(int argc, char *argv[])
 		u8 val8;
 		u16 val16;
 		u32 val32;
+		u64 val64;
 		switch (mode) {
 		case O_RWSIZE_1:
 			val8 = simple_strtoul(argv[optind], NULL, 0);
@@ -76,6 +77,12 @@ static int do_mem_mw(int argc, char *argv[])
 				val32 = __swab32(val32);
 			ret = write(fd, &val32, 4);
 			break;
+		case O_RWSIZE_8:
+			val64 = simple_strtoull(argv[optind], NULL, 0);
+			if (swab)
+				val64 = __swab64(val64);
+			ret = write(fd, &val64, 8);
+			break;
 		}
 		if (ret < 0) {
 			perror("write");
@@ -97,6 +104,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
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
