Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8PyP-0001r6-Ej
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 06:17:26 +0000
Received: by wgbdt14 with SMTP id dt14so2766242wgb.18
 for <barebox@lists.infradead.org>; Sun, 02 Sep 2012 23:17:24 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Mon,  3 Sep 2012 08:18:08 +0200
Message-Id: <1346653088-7576-3-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1346653088-7576-1-git-send-email-alex.aring@gmail.com>
References: <1346653088-7576-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 3/3] sandbox: fix malloc argument
To: barebox@lists.infradead.org

Fix malloc argument for sandbox system.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/sandbox/os/common.c | 87 +++++++++++++++++++++++++++++++-----------------
 1 file changed, 57 insertions(+), 30 deletions(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 92b7dbb..e296574 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -271,33 +271,29 @@ err_out:
 
 static void print_usage(const char*);
 
+static struct option long_options[] = {
+	{"help",   0, 0, 'h'},
+	{"malloc", 1, 0, 'm'},
+	{"image",  1, 0, 'i'},
+	{"env",    1, 0, 'e'},
+	{"stdout", 1, 0, 'O'},
+	{"stdin",  1, 0, 'I'},
+	{0, 0, 0, 0},
+};
+
+static const char optstring[] = "hm:i:e:O:I:";
+
 int main(int argc, char *argv[])
 {
 	void *ram;
 	int opt, ret, fd;
 	int malloc_size = 8 * 1024 * 1024;
 	char str[6];
-	int fdno = 0, envno = 0;
-
-	ram = malloc(malloc_size);
-	if (!ram) {
-		printf("unable to get malloc space\n");
-		exit(1);
-	}
-	mem_malloc_init(ram, ram + malloc_size - 1);
+	int fdno = 0, envno = 0, option_index = 0;
 
 	while (1) {
-		int option_index = 0;
-		static struct option long_options[] = {
-			{"help",   0, 0, 'h'},
-			{"image",  1, 0, 'i'},
-			{"env",    1, 0, 'e'},
-			{"stdout", 1, 0, 'O'},
-			{"stdin",  1, 0, 'I'},
-			{0, 0, 0, 0},
-		};
-
-		opt = getopt_long(argc, argv, "hi:e:O:I:",
+		option_index = 0;
+		opt = getopt_long(argc, argv, optstring,
 			long_options, &option_index);
 
 		if (opt == -1)
@@ -307,18 +303,7 @@ int main(int argc, char *argv[])
 		case 'h':
 			print_usage(basename(argv[0]));
 			exit(0);
-		case 'i':
-			sprintf(str, "fd%d", fdno);
-			ret = add_image(optarg, str);
-			if (ret)
-				exit(1);
-			fdno++;
-			break;
 		case 'm':
-			/* This option is broken. add_image needs malloc, so
-			 * mem_alloc_init() has to be called before option
-			 * parsing
-			 */
 			malloc_size = strtoul(optarg, NULL, 0);
 			break;
 		case 'e':
@@ -351,6 +336,47 @@ int main(int argc, char *argv[])
 		}
 	}
 
+	ram = malloc(malloc_size);
+	if (!ram) {
+		printf("unable to get malloc space\n");
+		exit(1);
+	}
+	mem_malloc_init(ram, ram + malloc_size - 1);
+
+	/* reset getopt */
+	optind = 1;
+
+	while (1) {
+		option_index = 0;
+		opt = getopt_long(argc, argv, optstring,
+			long_options, &option_index);
+
+		if (opt == -1)
+			break;
+
+		switch (opt) {
+		case 'h':
+			break;
+		case 'm':
+			break;
+		case 'i':
+			sprintf(str, "fd%d", fdno);
+			ret = add_image(optarg, str);
+			if (ret)
+				exit(1);
+			fdno++;
+			break;
+		case 'e':
+			break;
+		case 'O':
+			break;
+		case 'I':
+			break;
+		default:
+			exit(1);
+		}
+	}
+
 	barebox_register_console("console", fileno(stdin), fileno(stdout));
 
 	rawmode();
@@ -371,6 +397,7 @@ static void print_usage(const char *prgname)
 "Usage: %s [OPTIONS]\n"
 "Start barebox.\n\n"
 "Options:\n\n"
+"  -m, "
 "  -i, --image=<file>   Map an image file to barebox. This option can be given\n"
 "                       multiple times. The files will show up as\n"
 "                       /dev/fd0 ... /dev/fdx under barebox.\n"
-- 
1.7.12


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
