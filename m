Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yxv9m-00067t-Dj
 for barebox@lists.infradead.org; Thu, 28 May 2015 10:35:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 May 2015 12:34:43 +0200
Message-Id: <1432809284-17362-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] mm command: Add 64bit support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mm.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/commands/mm.c b/commands/mm.c
index ff2e746..7c890a6 100644
--- a/commands/mm.c
+++ b/commands/mm.c
@@ -38,9 +38,10 @@ static int do_mem_mm(int argc, char *argv[])
 	u8 val8;
 	u16 val16;
 	u32 val32;
-	u32 value, mask;
+	u64 val64;
+	u64 value, mask;
 
-	if (mem_parse_options(argc, argv, "bwld:", &mode, NULL, &filename,
+	if (mem_parse_options(argc, argv, "bwlqd:", &mode, NULL, &filename,
 			&swab) < 0)
 		return 1;
 
@@ -48,8 +49,8 @@ static int do_mem_mm(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	adr = strtoull_suffix(argv[optind++], NULL, 0);
-	value = simple_strtoul(argv[optind++], NULL, 0);
-	mask = simple_strtoul(argv[optind++], NULL, 0);
+	value = simple_strtoull(argv[optind++], NULL, 0);
+	mask = simple_strtoull(argv[optind++], NULL, 0);
 
 	fd = open_and_lseek(filename, mode | O_RDWR, adr);
 	if (fd < 0)
@@ -86,6 +87,16 @@ static int do_mem_mm(int argc, char *argv[])
 		if (ret < 0)
 			goto out_write;
 		break;
+	case O_RWSIZE_8:
+		if (ret < 0)
+			goto out_read;
+		ret = pread(fd, &val64, 8, adr);
+		val64 &= ~mask;
+		val64 |= (value & mask);
+		ret = pwrite(fd, &val64, 8, adr);
+		if (ret < 0)
+			goto out_write;
+		break;
 	}
 
 	close(fd);
@@ -110,6 +121,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
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
