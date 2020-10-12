Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRrI3-0005UC-Ob
 for barebox@lists.infradead.org; Mon, 12 Oct 2020 06:26:37 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Oct 2020 08:26:11 +0200
Message-Id: <20201012062619.20400-4-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 04/12] sandbox: hostfile: support anonymous hostfiles in
 device tree
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

So far use of hostfile in the device tree required us to hard code a file
name. If we instead create a temporary file on demand, we can support:
- environment
- barebox-state
- syscon for reset source and reboot mode

out of the box with no dependency on external files.
Do the necessary, so a hostfile device tree node without a
barebox,filename gets a temporary file generated with the appropriate
size.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  split anonymous hostfiles commit into two: one for temp files creation
  and another for maintaining them over resets. They were squashed by
  mistake.
---
 arch/sandbox/Makefile         |  1 +
 arch/sandbox/board/hostfile.c | 17 ++++++++++++++---
 arch/sandbox/os/common.c      | 28 ++++++++++++++++++++++++++--
 3 files changed, 41 insertions(+), 5 deletions(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 09112c3ba8d3..23832e6b2fc2 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -24,6 +24,7 @@ KBUILD_CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 		-Dgetenv=barebox_getenv -Dprintf=barebox_printf \
 		-Dglob=barebox_glob -Dglobfree=barebox_globfree \
 		-Dioctl=barebox_ioctl -Dfstat=barebox_fstat \
+		-Dftruncate=barebox_ftruncate \
 		-Dopendir=barebox_opendir -Dreaddir=barebox_readdir \
 		-Dclosedir=barebox_closedir -Dreadlink=barebox_readlink \
 		-Doptarg=barebox_optarg -Doptind=barebox_optind
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 8990e20f15b6..2d4e5d55eae0 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -226,18 +226,23 @@ static int of_hostfile_map_fixup(struct device_node *root, void *ctx)
 
 	for_each_compatible_node_from(node, root, NULL, hostfile_dt_ids->compatible) {
 		struct hf_info hf = {};
-		uint64_t reg[2];
+		uint64_t reg[2] = {};
+		bool no_filename;
 
 		hf.devname = node->name;
 
 		ret = of_property_read_string(node, "barebox,filename", &hf.filename);
-		if (ret)
-			goto out;
+		no_filename = ret;
 
 		hf.is_blockdev = of_property_read_bool(node, "barebox,blockdev");
 		hf.is_cdev = of_property_read_bool(node, "barebox,cdev");
 		hf.is_readonly = of_property_read_bool(node, "barebox,read-only");
 
+		of_property_read_u64_array(node, "reg", reg, ARRAY_SIZE(reg));
+
+		hf.base = reg[0];
+		hf.size = reg[1];
+
 		ret = linux_open_hostfile(&hf);
 		if (ret)
 			goto out;
@@ -253,6 +258,12 @@ static int of_hostfile_map_fixup(struct device_node *root, void *ctx)
 		if (ret)
 			goto out;
 
+		if (no_filename) {
+			ret = of_property_write_string(node, "barebox,filename", hf.filename);
+			if (ret)
+				goto out;
+		}
+
 		ret = of_property_write_u32(node, "barebox,fd", hf.fd);
 out:
 		if (ret)
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 6032a8c26b41..5326df4891c9 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -292,14 +292,36 @@ static int add_image(const char *_str, char *devname_template, int *devname_numb
 
 int linux_open_hostfile(struct hf_info *hf)
 {
+	char *buf = NULL;
 	struct stat s;
 	int fd;
 
 	printf("add %s backed by file %s%s\n", hf->devname,
 	       hf->filename, hf->is_readonly ? "(ro)" : "");
 
-	fd = hf->fd = open(hf->filename, (hf->is_readonly ? O_RDONLY : O_RDWR) | O_CLOEXEC);
-	hf->base = (unsigned long)MAP_FAILED;
+	if (hf->filename) {
+		fd = hf->fd = open(hf->filename, (hf->is_readonly ? O_RDONLY : O_RDWR) | O_CLOEXEC);
+	} else {
+		buf = strdup("/tmp/barebox-hostfileXXXXXX");
+		int ret;
+
+		fd = hf->fd = mkstemp(buf);
+		if (fd >= 0) {
+			ret = fcntl(fd, F_SETFD, FD_CLOEXEC);
+			if (ret < 0) {
+				perror("fcntl");
+				goto err_out;
+			}
+
+			ret = ftruncate(fd, hf->size);
+			if (ret < 0) {
+				perror("ftruncate");
+				goto err_out;
+			}
+
+			hf->filename = buf;
+		}
+	}
 
 	if (fd < 0) {
 		perror("open");
@@ -311,6 +333,7 @@ int linux_open_hostfile(struct hf_info *hf)
 		goto err_out;
 	}
 
+	hf->base = (unsigned long)MAP_FAILED;
 	hf->size = s.st_size;
 
 	if (S_ISBLK(s.st_mode)) {
@@ -344,6 +367,7 @@ int linux_open_hostfile(struct hf_info *hf)
 err_out:
 	if (fd > 0)
 		close(fd);
+	free(buf);
 	return -1;
 }
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
