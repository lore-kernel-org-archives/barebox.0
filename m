Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRrHw-0005RA-9P
 for barebox@lists.infradead.org; Mon, 12 Oct 2020 06:26:31 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Oct 2020 08:26:12 +0200
Message-Id: <20201012062619.20400-5-a.fatoum@pengutronix.de>
In-Reply-To: <20201012062619.20400-1-a.fatoum@pengutronix.de>
References: <20201012062619.20400-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 05/12] sandbox: hostfile: maintain created temp files over
 reset
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Currently, hostfils without a barebox,filename are assigned a new
temporary file on every start.

For use of a hostfile syscon for reboot mode or reset source, we will
need to persist the changes over a regular reset. This can easily be
done by passing through all automatically created temporary file with
an explicit --image option on subsequent runs. Do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  split anonymous hostfiles commit into two: one for temp files creation
  and another for maintaining them over resets. They were squashed by
  mistake.
---
 arch/sandbox/Makefile         |  2 +-
 arch/sandbox/board/hostfile.c | 10 +++++++++-
 arch/sandbox/os/common.c      | 36 ++++++++++++++++++++++++++++-------
 3 files changed, 39 insertions(+), 9 deletions(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 23832e6b2fc2..17f9a298d773 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -24,7 +24,7 @@ KBUILD_CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 		-Dgetenv=barebox_getenv -Dprintf=barebox_printf \
 		-Dglob=barebox_glob -Dglobfree=barebox_globfree \
 		-Dioctl=barebox_ioctl -Dfstat=barebox_fstat \
-		-Dftruncate=barebox_ftruncate \
+		-Dftruncate=barebox_ftruncate -Dasprintf=barebox_asprintf \
 		-Dopendir=barebox_opendir -Dreaddir=barebox_readdir \
 		-Dclosedir=barebox_closedir -Dreadlink=barebox_readlink \
 		-Doptarg=barebox_optarg -Doptind=barebox_optind
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 2d4e5d55eae0..e3e38b7119d5 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -191,14 +191,22 @@ static int of_hostfile_fixup(struct device_node *root, void *ctx)
 {
 	struct hf_info *hf = ctx;
 	struct device_node *node;
+	bool name_only = false;
 	int ret;
 
-	node = of_new_node(root, hf->devname);
+	node = of_get_child_by_name(root, hf->devname);
+	if (node)
+		name_only = true;
+	else
+		node = of_new_node(root, hf->devname);
 
 	ret = of_property_write_string(node, "barebox,filename", hf->filename);
 	if (ret)
 		return ret;
 
+	if (name_only)
+		return 0;
+
 	ret = of_property_write_string(node, "compatible", hostfile_dt_ids->compatible);
 	if (ret)
 		return ret;
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 5326df4891c9..54d2b97b4af7 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -19,6 +19,7 @@
  * These are host includes. Never include any barebox header
  * files here...
  */
+#define _GNU_SOURCE
 #include <stdio.h>
 #include <stdlib.h>
 #include <stdint.h>
@@ -124,6 +125,7 @@ void __attribute__((noreturn)) linux_exit(void)
 	exit(0);
 }
 
+static size_t saved_argv_len;
 static char **saved_argv;
 
 void linux_reexec(void)
@@ -296,16 +298,25 @@ int linux_open_hostfile(struct hf_info *hf)
 	struct stat s;
 	int fd;
 
-	printf("add %s backed by file %s%s\n", hf->devname,
-	       hf->filename, hf->is_readonly ? "(ro)" : "");
+	printf("add %s %sbacked by file %s%s\n", hf->devname,
+	       hf->filename ? "" : "initially un", hf->filename ?: "",
+	       hf->is_readonly ? "(ro)" : "");
 
 	if (hf->filename) {
 		fd = hf->fd = open(hf->filename, (hf->is_readonly ? O_RDONLY : O_RDWR) | O_CLOEXEC);
 	} else {
-		buf = strdup("/tmp/barebox-hostfileXXXXXX");
+		char *filename;
 		int ret;
 
-		fd = hf->fd = mkstemp(buf);
+		ret = asprintf(&buf, "--image=%s=/tmp/barebox-hostfileXXXXXX", hf->devname);
+		if (ret < 0) {
+			perror("asprintf");
+			goto err_out;
+		}
+
+		filename = buf + strlen("--image==") + strlen(hf->devname);
+
+		fd = hf->fd = mkstemp(filename);
 		if (fd >= 0) {
 			ret = fcntl(fd, F_SETFD, FD_CLOEXEC);
 			if (ret < 0) {
@@ -319,7 +330,14 @@ int linux_open_hostfile(struct hf_info *hf)
 				goto err_out;
 			}
 
-			hf->filename = buf;
+			hf->filename = filename;
+
+			saved_argv = realloc(saved_argv,
+					     ++saved_argv_len * sizeof(*saved_argv));
+			if (!saved_argv)
+				exit(1);
+			saved_argv[saved_argv_len - 2] = buf;
+			saved_argv[saved_argv_len - 1] = NULL;
 		}
 	}
 
@@ -437,8 +455,6 @@ int main(int argc, char *argv[])
 	__sanitizer_set_death_callback(cookmode);
 #endif
 
-	saved_argv = argv;
-
 	while (1) {
 		option_index = 0;
 		opt = getopt_long(argc, argv, optstring,
@@ -476,6 +492,12 @@ int main(int argc, char *argv[])
 		}
 	}
 
+	saved_argv_len = argc + 1;
+	saved_argv = calloc(saved_argv_len, sizeof(*saved_argv));
+	if (!saved_argv)
+		exit(1);
+	memcpy(saved_argv, argv, saved_argv_len * sizeof(*saved_argv));
+
 	ram = malloc(malloc_size);
 	if (!ram) {
 		printf("unable to get malloc space\n");
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
