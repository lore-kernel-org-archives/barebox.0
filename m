Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RSmkE-0002aD-K2
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 09:34:28 +0000
Received: by eye3 with SMTP id 3so7592647eye.36
 for <barebox@lists.infradead.org>; Tue, 22 Nov 2011 01:34:24 -0800 (PST)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue, 22 Nov 2011 10:34:14 +0100
Message-Id: <1321954454-8015-1-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <20111122092450.GF27267@pengutronix.de>
References: <20111122092450.GF27267@pengutronix.de>
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
Subject: [PATCH v2] commands/cp: add verbose mode which displays progress bar
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 v2: use getopt

 commands/cp.c            |   26 ++++++++++++++++++++------
 drivers/usb/gadget/dfu.c |    2 +-
 include/libbb.h          |    2 +-
 lib/copy_file.c          |   21 ++++++++++++++++++++-
 4 files changed, 42 insertions(+), 9 deletions(-)

diff --git a/commands/cp.c b/commands/cp.c
index 3428105..8b2fa48 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -32,6 +32,7 @@
 #include <fs.h>
 #include <malloc.h>
 #include <libgen.h>
+#include <getopt.h>

 /**
  * @param[in] cmdtp FIXME
@@ -44,8 +45,20 @@ static int do_cp(struct command *cmdtp, int argc, char *argv[])
 	struct stat statbuf;
 	int last_is_dir = 0;
 	int i;
+	int opt;
+	int verbose = 0;
+	int argc_min = 3;

-	if (argc < 3)
+	while ((opt = getopt(argc, argv, "v")) > 0) {
+		switch (opt) {
+		case 'v':
+			verbose = 1;
+			break;
+		}
+		argc_min++;
+	}
+
+	if (argc < argc_min)
 		return COMMAND_ERROR_USAGE;

 	if (!stat(argv[argc - 1], &statbuf)) {
@@ -53,21 +66,22 @@ static int do_cp(struct command *cmdtp, int argc, char *argv[])
 			last_is_dir = 1;
 	}

-	if (argc > 3 && !last_is_dir) {
+	if (argc > argc_min && !last_is_dir) {
 		printf("cp: target `%s' is not a directory\n", argv[argc - 1]);
 		return 1;
 	}

-	for (i = 1; i < argc - 1; i++) {
+	i = (!verbose) ? 1 : 2;
+	for (; i < argc - 1; i++) {
 		if (last_is_dir) {
 			char *dst;
 			dst = concat_path_file(argv[argc - 1], basename(argv[i]));
-			ret = copy_file(argv[i], dst);
+			ret = copy_file(argv[i], dst, verbose);
 			if (ret)
 				goto out;
 			free(dst);
 		} else {
-			ret = copy_file(argv[i], argv[argc - 1]);
+			ret = copy_file(argv[i], argv[argc - 1], verbose);
 			if (ret)
 				goto out;
 		}
@@ -79,7 +93,7 @@ out:
 }

 BAREBOX_CMD_HELP_START(cp)
-BAREBOX_CMD_HELP_USAGE("cp <source> <destination>\n")
+BAREBOX_CMD_HELP_USAGE("cp [-v] <source> <destination>\n")
 BAREBOX_CMD_HELP_SHORT("copy file from <source> to <destination>.\n")
 BAREBOX_CMD_HELP_END

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 1387c6d..0a0d244 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -259,7 +259,7 @@ static int handle_dnload(struct usb_function *f, const struct usb_ctrlrequest *c
 				ret = -EINVAL;
 				goto err_out;
 			}
-			ret = copy_file(DFU_TEMPFILE, dfu_devs[dfualt].dev);
+			ret = copy_file(DFU_TEMPFILE, dfu_devs[dfualt].dev, 0);
 			if (ret) {
 				printf("copy file failed\n");
 				ret = -EINVAL;
diff --git a/include/libbb.h b/include/libbb.h
index 0962969..2d17c3f 100644
--- a/include/libbb.h
+++ b/include/libbb.h
@@ -26,7 +26,7 @@ int recursive_action(const char *fileName, unsigned flags,

 char * safe_strncpy(char *dst, const char *src, size_t size);

-int copy_file(const char *src, const char *dst);
+int copy_file(const char *src, const char *dst, int verbose);

 int process_escape_sequence(const char *source, char *dest, int destlen);

diff --git a/lib/copy_file.c b/lib/copy_file.c
index 809befe..967806c 100644
--- a/lib/copy_file.c
+++ b/lib/copy_file.c
@@ -4,20 +4,23 @@
 #include <errno.h>
 #include <malloc.h>
 #include <libbb.h>
+#include <progress.h>

 #define RW_BUF_SIZE	(ulong)4096

 /**
  * @param[in] src FIXME
  * @param[out] dst FIXME
+ * @param[in] verbose FIXME
  */
-int copy_file(const char *src, const char *dst)
+int copy_file(const char *src, const char *dst, int verbose)
 {
 	char *rw_buf = NULL;
 	int srcfd = 0, dstfd = 0;
 	int r, w;
 	int ret = 1;
 	void *buf;
+	int total = 0;

 	rw_buf = xmalloc(RW_BUF_SIZE);

@@ -33,6 +36,15 @@ int copy_file(const char *src, const char *dst)
 		goto out;
 	}

+	if (verbose) {
+		struct stat statbuf;
+
+		if (stat(src, &statbuf) < 0)
+			statbuf.st_size = 0;
+
+		init_progression_bar(statbuf.st_size);
+	}
+
 	while(1) {
 		r = read(srcfd, rw_buf, RW_BUF_SIZE);
 		if (r < 0) {
@@ -51,11 +63,18 @@ int copy_file(const char *src, const char *dst)
 			}
 			buf += w;
 			r -= w;
+			total += w;
 		}
+
+		if (verbose)
+			show_progress(total);
 	}

 	ret = 0;
 out:
+	if (verbose)
+		putchar('\n');
+
 	free(rw_buf);
 	if (srcfd > 0)
 		close(srcfd);
--
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
