Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TcvLz-0003GG-VH
 for barebox@lists.infradead.org; Mon, 26 Nov 2012 09:51:52 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so6167215lbo.36
 for <barebox@lists.infradead.org>; Mon, 26 Nov 2012 01:51:50 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 26 Nov 2012 13:51:40 +0400
Message-Id: <1353923501-13372-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1353923501-13372-1-git-send-email-antonynpavlov@gmail.com>
References: <1353923501-13372-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] commands: md: add the '-x' option (swap bytes)
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/mem.c |   24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index a42b7ba..9873e52 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -136,7 +136,7 @@ static int open_and_lseek(const char *filename, int mode, loff_t pos)
 }
 
 static int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
-		char **sourcefile, char **destfile)
+		char **sourcefile, char **destfile, int *swab)
 {
 	int opt;
 
@@ -157,6 +157,9 @@ static int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 		case 'd':
 			*destfile = optarg;
 			break;
+		case 'x':
+			*swab = 1;
+			break;
 		default:
 			return -1;
 		}
@@ -173,11 +176,13 @@ static int do_mem_md(int argc, char *argv[])
 	int fd;
 	char *filename = DEVMEM;
 	int mode = O_RWSIZE_4;
+	int swab = 0;
 
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
-	if (mem_parse_options(argc, argv, "bwls:", &mode, &filename, NULL) < 0)
+	if (mem_parse_options(argc, argv, "bwls:x", &mode, &filename, NULL,
+			&swab) < 0)
 		return 1;
 
 	if (optind < argc) {
@@ -204,7 +209,7 @@ static int do_mem_md(int argc, char *argv[])
 			goto out;
 
 		if ((ret = memory_display(rw_buf, start, r,
-				mode >> O_RWSIZE_SHIFT, 0)))
+				mode >> O_RWSIZE_SHIFT, swab)))
 			goto out;
 
 		start += r;
@@ -225,6 +230,7 @@ static const __maybe_unused char cmd_md_help[] =
 "  -b          output in bytes\n"
 "  -w          output in halfwords (16bit)\n"
 "  -l          output in words (32bit)\n"
+"  -x          swap bytes at output\n"
 "\n"
 "Memory regions:\n"
 "Memory regions can be specified in two different forms: start+size\n"
@@ -250,7 +256,8 @@ static int do_mem_mw(int argc, char *argv[])
 	int mode = O_RWSIZE_4;
 	loff_t adr;
 
-	if (mem_parse_options(argc, argv, "bwld:", &mode, NULL, &filename) < 0)
+	if (mem_parse_options(argc, argv, "bwld:", &mode, NULL, &filename,
+			NULL) < 0)
 		return 1;
 
 	if (optind + 1 >= argc)
@@ -318,7 +325,8 @@ static int do_mem_cmp(int argc, char *argv[])
 	int     offset = 0;
 	struct  stat statbuf;
 
-	if (mem_parse_options(argc, argv, "bwls:d:", &mode, &sourcefile, &destfile) < 0)
+	if (mem_parse_options(argc, argv, "bwls:d:", &mode, &sourcefile,
+			&destfile, NULL) < 0)
 		return 1;
 
 	if (optind + 2 > argc)
@@ -425,7 +433,8 @@ static int do_mem_cp(int argc, char *argv[])
 	struct stat statbuf;
 	int ret = 0;
 
-	if (mem_parse_options(argc, argv, "bwls:d:", &mode, &sourcefile, &destfile) < 0)
+	if (mem_parse_options(argc, argv, "bwls:d:", &mode, &sourcefile,
+			&destfile, NULL) < 0)
 		return 1;
 
 	if (optind + 2 > argc)
@@ -530,7 +539,8 @@ static int do_memset(int argc, char *argv[])
 	int     ret = 1;
 	char	*file = DEVMEM;
 
-	if (mem_parse_options(argc, argv, "bwld:", &mode, NULL, &file) < 0)
+	if (mem_parse_options(argc, argv, "bwld:", &mode, NULL, &file,
+			NULL) < 0)
 		return 1;
 
 	if (optind + 3 > argc)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
