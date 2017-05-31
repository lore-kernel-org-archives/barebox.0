Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dG6FE-0007xc-Nl
 for barebox@lists.infradead.org; Wed, 31 May 2017 16:13:14 +0000
Received: by mail-wm0-x244.google.com with SMTP id k15so4763530wmh.3
 for <barebox@lists.infradead.org>; Wed, 31 May 2017 09:12:52 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 31 May 2017 18:12:41 +0200
Message-Id: <7499fda2a3c12627c05a66d1a6a9111646beb695.1496247033.git.aleksander@aleksander.es>
In-Reply-To: <cover.1496247033.git.aleksander@aleksander.es>
References: <cover.1496247033.git.aleksander@aleksander.es>
In-Reply-To: <cover.1496247033.git.aleksander@aleksander.es>
References: <cover.1496247033.git.aleksander@aleksander.es>
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
Subject: [PATCH 2/2] sandbox: --stdin and --stdout allow max one bidirectional
 console
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Allow up to one bidirectional FIFO/file based console in addition to
the default stdin/stdout console that is always registered.

We avoid opening the FIFO files while parsing the options because the
whole logic may block if e.g. trying to open the --stdout FIFO and
there is no reader in the other end. So instead, we store the --stdout
and --stdin file paths given, and we open both sequentially once all
the options have been parsed. This also allows us to validate that at
most a single pair of --stdin and --stdout paths has been given.
e.g.:
    term1 $ mkfifo /tmp/bbstdin
    term1 $ mkfifo /tmp/bbstdout
    term1 $ ./barebox -I /tmp/bbstdin -O /tmp/bbstdout
       (blocks until a reader is available in the stdout FIFO)

    term2 $ cat /tmp/bbstdout & cat > /tmp/bbstdin
       (starts reader and writer, which triggers barebox to continue)

If only one console is activated (CONFIG_CONSOLE_ACTIVATE_ALL=n), the
default stdin/stdout console will be preferred instead of the new
FIFO/file based, which would need to be activated explicitly later on.
e.g.:
    barebox@barebox sandbox:/ cs1.active=ioe

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 arch/sandbox/os/common.c | 48 +++++++++++++++++++++++++++++++++++++-----------
 1 file changed, 37 insertions(+), 11 deletions(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 192917ac2..0461abaac 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -39,6 +39,7 @@
 #include <signal.h>
 #include <sys/select.h>
 #include <sys/wait.h>
+#include <linux/limits.h>
 /*
  * ...except the ones needed to connect with barebox
  */
@@ -329,9 +330,11 @@ static const char optstring[] = "hm:i:e:d:O:I:x:y:";
 int main(int argc, char *argv[])
 {
 	void *ram;
-	int opt, ret, fd;
+	int opt, ret;
 	int malloc_size = CONFIG_MALLOC_SIZE;
 	int fdno = 0, envno = 0, option_index = 0;
+	char path_stdout[PATH_MAX + 1] = { 0 };
+	char path_stdin[PATH_MAX + 1] = { 0 };
 
 	while (1) {
 		option_index = 0;
@@ -360,22 +363,18 @@ int main(int argc, char *argv[])
 			}
 			break;
 		case 'O':
-			fd = open(optarg, O_WRONLY);
-			if (fd < 0) {
-				perror("open");
+			if (path_stdout[0]) {
+				printf("error: cannot specify -O,--stdout multiple times\n");
 				exit(1);
 			}
-
-			barebox_register_console(-1, fd);
+			strncpy(path_stdout, optarg, PATH_MAX);
 			break;
 		case 'I':
-			fd = open(optarg, O_RDWR);
-			if (fd < 0) {
-				perror("open");
+			if (path_stdin[0]) {
+				printf("error: cannot specify -I,--stdin multiple times\n");
 				exit(1);
 			}
-
-			barebox_register_console(fd, -1);
+			strncpy(path_stdin, optarg, PATH_MAX);
 			break;
 		case 'x':
 			sdl_xres = strtoul(optarg, NULL, 0);
@@ -426,6 +425,33 @@ int main(int argc, char *argv[])
 		}
 	}
 
+	/* Register additional FIFO console */
+	if (path_stdout[0] || path_stdin[0]) {
+		int fdout, fdin;
+
+		/* Both must be given to build a FIFO console */
+		if (!path_stdin[0] || !path_stdout[0]) {
+			printf("error: both -I,--stdin and -O,--stdout must be"
+			       "specified to enable the FIFO console\n");
+			exit(1);
+		}
+
+		fdout = open(path_stdout, O_WRONLY);
+		if (fdout < 0) {
+			perror("open stdout");
+			exit(1);
+		}
+
+		fdin = open(path_stdin, O_RDWR);
+		if (fdin < 0) {
+			perror("open stdin");
+			exit(1);
+		}
+
+		barebox_register_console(fdin, fdout);
+	}
+
+	/* Register default stdin/stdout console */
 	barebox_register_console(fileno(stdin), fileno(stdout));
 
 	rawmode();
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
