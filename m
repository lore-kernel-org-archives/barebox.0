Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dGlGm-0006o3-9j
 for barebox@lists.infradead.org; Fri, 02 Jun 2017 12:01:34 +0000
Received: by mail-wm0-x244.google.com with SMTP id b84so18541845wmh.0
 for <barebox@lists.infradead.org>; Fri, 02 Jun 2017 05:01:10 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Fri,  2 Jun 2017 14:01:05 +0200
Message-Id: <20170602120105.20663-1-aleksander@aleksander.es>
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
Subject: [PATCH] sandbox: new --stdinout option to enable a bidirectional
 console
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

In addition to allowing read-only and write-only consoles with --stdin
and --stdout, we now allow bidirectional read/write consoles with FIFO
files. This is e.g. to allow doing RATP over the FIFO based consoles.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 arch/sandbox/os/common.c | 53 ++++++++++++++++++++++++++++++++++++++----------
 1 file changed, 42 insertions(+), 11 deletions(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 8cf087313..665e8194e 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -312,26 +312,28 @@ static int add_dtb(const char *file)
 static void print_usage(const char*);
 
 static struct option long_options[] = {
-	{"help",   0, 0, 'h'},
-	{"malloc", 1, 0, 'm'},
-	{"image",  1, 0, 'i'},
-	{"env",    1, 0, 'e'},
-	{"dtb",    1, 0, 'd'},
-	{"stdout", 1, 0, 'O'},
-	{"stdin",  1, 0, 'I'},
-	{"xres",  1, 0, 'x'},
-	{"yres",  1, 0, 'y'},
+	{"help",     0, 0, 'h'},
+	{"malloc",   1, 0, 'm'},
+	{"image",    1, 0, 'i'},
+	{"env",      1, 0, 'e'},
+	{"dtb",      1, 0, 'd'},
+	{"stdout",   1, 0, 'O'},
+	{"stdin",    1, 0, 'I'},
+	{"stdinout", 1, 0, 'B'},
+	{"xres",     1, 0, 'x'},
+	{"yres",     1, 0, 'y'},
 	{0, 0, 0, 0},
 };
 
-static const char optstring[] = "hm:i:e:d:O:I:x:y:";
+static const char optstring[] = "hm:i:e:d:O:I:B:x:y:";
 
 int main(int argc, char *argv[])
 {
 	void *ram;
-	int opt, ret, fd;
+	int opt, ret, fd, fd2;
 	int malloc_size = CONFIG_MALLOC_SIZE;
 	int fdno = 0, envno = 0, option_index = 0;
+	char *aux;
 
 	while (1) {
 		option_index = 0;
@@ -421,6 +423,31 @@ int main(int argc, char *argv[])
 
 			barebox_register_console(fd, -1);
 			break;
+		case 'B':
+			aux = strchr(optarg, ',');
+			if (!aux) {
+				printf("-B, --stdinout requires two file paths given\n");
+				exit(1);
+			}
+
+			/* open stdout file */
+			fd = open(aux + 1, O_WRONLY);
+			if (fd < 0) {
+				perror("open stdout");
+				exit(1);
+			}
+
+			/* open stdin file */
+			aux = strndup(optarg, aux - optarg);
+			fd2 = open(aux, O_RDWR);
+			if (fd2 < 0) {
+				perror("open stdin");
+				exit(1);
+			}
+			free(aux);
+
+			barebox_register_console(fd2, fd);
+			break;
 		default:
 			break;
 		}
@@ -463,6 +490,10 @@ static void print_usage(const char *prgname)
 "                       <file> can be a regular file or a FIFO.\n"
 "  -I, --stdin=<file>   Register a file as a console capable of doing stdin.\n"
 "                       <file> can be a regular file or a FIFO.\n"
+"  -B, --stdinout=<filein>,<fileout>\n"
+"                       Register a bidirectional console capable of doing both\n"
+"                       stdin and stdout. <filein> and <fileout> can be regular\n"
+"                       files or FIFOs.\n"
 "  -x, --xres=<res>     SDL width.\n"
 "  -y, --yres=<res>     SDL height.\n",
 	prgname
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
