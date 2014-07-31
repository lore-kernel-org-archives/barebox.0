Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCpSj-0002yF-QW
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 12:28:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 31 Jul 2014 14:27:32 +0200
Message-Id: <1406809657-2489-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1406809657-2489-1-git-send-email-s.hauer@pengutronix.de>
References: <1406809657-2489-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] move file helper functions to separate file
To: barebox@lists.infradead.org

We have our file helper functions in several places. Move them
all to lib/libfile.c.
With this we no longer have file helpers in fs/fs.c which contains
the core fs functions and no functions in lib/libbb.c which are
not from busybox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c                        |   1 +
 arch/arm/mach-at91/boot_test_cmd.c          |   1 +
 arch/arm/mach-omap/omap_generic.c           |   1 +
 arch/arm/mach-omap/xload.c                  |   1 +
 arch/blackfin/boards/ipe337/cmd_alternate.c |   1 +
 arch/mips/lib/bootm.c                       |   1 +
 commands/barebox-update.c                   |   1 +
 commands/cp.c                               |   1 +
 commands/crc.c                              |   1 +
 commands/edit.c                             |   1 +
 commands/exec.c                             |   1 +
 commands/insmod.c                           |   1 +
 commands/linux16.c                          |   1 +
 commands/of_dump.c                          |   1 +
 commands/oftree.c                           |   1 +
 commands/readf.c                            |   1 +
 commands/tftp.c                             |   1 +
 commands/uimage.c                           |   1 +
 common/blspec.c                             |   1 +
 common/bootm.c                              |   1 +
 common/hush.c                               |   1 +
 common/menutree.c                           |   1 +
 common/uimage.c                             |   1 +
 drivers/usb/gadget/dfu.c                    |   1 +
 fs/fs.c                                     |  72 -------
 fs/uimagefs.c                               |   1 +
 include/fs.h                                |  14 --
 include/libbb.h                             |   7 -
 include/libfile.h                           |  15 ++
 lib/Makefile                                |   2 +-
 lib/copy_file.c                             |  86 ---------
 lib/gui/image_renderer.c                    |   1 +
 lib/libbb.c                                 |  93 ---------
 lib/libfile.c                               | 288 ++++++++++++++++++++++++++++
 34 files changed, 330 insertions(+), 273 deletions(-)
 create mode 100644 include/libfile.h
 delete mode 100644 lib/copy_file.c
 create mode 100644 lib/libfile.c

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index d9b9111..9dce2cb 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -6,6 +6,7 @@
 #include <image.h>
 #include <init.h>
 #include <fs.h>
+#include <libfile.h>
 #include <linux/list.h>
 #include <xfuncs.h>
 #include <malloc.h>
diff --git a/arch/arm/mach-at91/boot_test_cmd.c b/arch/arm/mach-at91/boot_test_cmd.c
index 66c598b..4fd1998 100644
--- a/arch/arm/mach-at91/boot_test_cmd.c
+++ b/arch/arm/mach-at91/boot_test_cmd.c
@@ -7,6 +7,7 @@
 #include <common.h>
 #include <command.h>
 #include <libbb.h>
+#include <libfile.h>
 #include <getopt.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 060c592..334cf8d 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -20,6 +20,7 @@
 #include <io.h>
 #include <fs.h>
 #include <malloc.h>
+#include <libfile.h>
 #include <linux/stat.h>
 #include <mach/gpmc.h>
 #include <mach/generic.h>
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index a309450..e9d7bbb 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -5,6 +5,7 @@
 #include <init.h>
 #include <driver.h>
 #include <linux/mtd/mtd.h>
+#include <libfile.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <sizes.h>
diff --git a/arch/blackfin/boards/ipe337/cmd_alternate.c b/arch/blackfin/boards/ipe337/cmd_alternate.c
index 992d274..b332cfb 100644
--- a/arch/blackfin/boards/ipe337/cmd_alternate.c
+++ b/arch/blackfin/boards/ipe337/cmd_alternate.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <command.h>
+#include <libfile.h>
 #include <linux/stat.h>
 #include <malloc.h>
 #include <fs.h>
diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 3d6a4ce..0e03aa9 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -1,5 +1,6 @@
 #include <boot.h>
 #include <common.h>
+#include <libfile.h>
 #include <init.h>
 #include <fs.h>
 #include <errno.h>
diff --git a/commands/barebox-update.c b/commands/barebox-update.c
index a24dc3e..92e0efa 100644
--- a/commands/barebox-update.c
+++ b/commands/barebox-update.c
@@ -17,6 +17,7 @@
  */
 #include <common.h>
 #include <command.h>
+#include <libfile.h>
 #include <getopt.h>
 #include <malloc.h>
 #include <errno.h>
diff --git a/commands/cp.c b/commands/cp.c
index 1a56754..af7a3d4 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -26,6 +26,7 @@
 #include <malloc.h>
 #include <libgen.h>
 #include <getopt.h>
+#include <libfile.h>
 
 /**
  * @param[in] argc Argument count from command line
diff --git a/commands/crc.c b/commands/crc.c
index 7c2936c..9b6a3e2 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -22,6 +22,7 @@
 #include <fs.h>
 #include <getopt.h>
 #include <malloc.h>
+#include <libfile.h>
 #include <environment.h>
 
 static int crc_from_file(const char* file, ulong *crc)
diff --git a/commands/edit.c b/commands/edit.c
index 5a2da7d..97c2a81 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -21,6 +21,7 @@
 #include <fs.h>
 #include <linux/ctype.h>
 #include <fcntl.h>
+#include <libfile.h>
 #include <readkey.h>
 #include <errno.h>
 #include <xfuncs.h>
diff --git a/commands/exec.c b/commands/exec.c
index 635f65e..7c8934f 100644
--- a/commands/exec.c
+++ b/commands/exec.c
@@ -23,6 +23,7 @@
 #include <fcntl.h>
 #include <linux/stat.h>
 #include <errno.h>
+#include <libfile.h>
 #include <malloc.h>
 #include <xfuncs.h>
 
diff --git a/commands/insmod.c b/commands/insmod.c
index 176437e..735dde0 100644
--- a/commands/insmod.c
+++ b/commands/insmod.c
@@ -3,6 +3,7 @@
 #include <module.h>
 #include <errno.h>
 #include <fs.h>
+#include <libfile.h>
 #include <malloc.h>
 
 static int do_insmod(int argc, char *argv[])
diff --git a/commands/linux16.c b/commands/linux16.c
index 594efc7..bb678bd 100644
--- a/commands/linux16.c
+++ b/commands/linux16.c
@@ -24,6 +24,7 @@
 #include <environment.h>
 #include <fs.h>
 #include <errno.h>
+#include <libfile.h>
 #include <getopt.h>
 #include <malloc.h>
 #include <boot.h>
diff --git a/commands/of_dump.c b/commands/of_dump.c
index cafde07..315dbba 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -18,6 +18,7 @@
  */
 
 #include <common.h>
+#include <libfile.h>
 #include <fdt.h>
 #include <of.h>
 #include <command.h>
diff --git a/commands/oftree.c b/commands/oftree.c
index 983a0a5..ad622de 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -26,6 +26,7 @@
 #include <common.h>
 #include <environment.h>
 #include <fdt.h>
+#include <libfile.h>
 #include <of.h>
 #include <command.h>
 #include <fs.h>
diff --git a/commands/readf.c b/commands/readf.c
index c8cc574..8dd5a2b 100644
--- a/commands/readf.c
+++ b/commands/readf.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <command.h>
 #include <fs.h>
+#include <libfile.h>
 #include <malloc.h>
 #include <linux/stat.h>
 #include <linux/ctype.h>
diff --git a/commands/tftp.c b/commands/tftp.c
index 62b9424..8a3b541 100644
--- a/commands/tftp.c
+++ b/commands/tftp.c
@@ -24,6 +24,7 @@
 #include <fs.h>
 #include <net.h>
 #include <libbb.h>
+#include <libfile.h>
 
 #define TFTP_MOUNT_PATH	"/.tftp_tmp_path"
 
diff --git a/commands/uimage.c b/commands/uimage.c
index 33523d7..7c2dca4 100644
--- a/commands/uimage.c
+++ b/commands/uimage.c
@@ -7,6 +7,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <getopt.h>
+#include <libfile.h>
 
 static int uimage_fd;
 
diff --git a/common/blspec.c b/common/blspec.c
index 9314eea..a4adc48 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -21,6 +21,7 @@
 #include <malloc.h>
 #include <block.h>
 #include <fcntl.h>
+#include <libfile.h>
 #include <libbb.h>
 #include <init.h>
 #include <boot.h>
diff --git a/common/bootm.c b/common/bootm.c
index 71390cb..447c9b6 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -16,6 +16,7 @@
 #include <fs.h>
 #include <malloc.h>
 #include <memory.h>
+#include <libfile.h>
 #include <globalvar.h>
 #include <init.h>
 
diff --git a/common/hush.c b/common/hush.c
index 6be43cf..09d9326 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -118,6 +118,7 @@
 #include <libbb.h>
 #include <glob.h>
 #include <getopt.h>
+#include <libfile.h>
 #include <libbb.h>
 #include <magicvar.h>
 #include <linux/list.h>
diff --git a/common/menutree.c b/common/menutree.c
index 814512d..97e628d 100644
--- a/common/menutree.c
+++ b/common/menutree.c
@@ -15,6 +15,7 @@
 #include <glob.h>
 #include <menu.h>
 #include <fs.h>
+#include <libfile.h>
 
 #include <linux/stat.h>
 
diff --git a/common/uimage.c b/common/uimage.c
index 4ef0968..a7011a7 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -22,6 +22,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <libbb.h>
+#include <libfile.h>
 #include <uncompress.h>
 #include <fcntl.h>
 #include <fs.h>
diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index d0f2155..bc5ee9c 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -43,6 +43,7 @@
 #include <linux/list.h>
 #include <usb/gadget.h>
 #include <linux/stat.h>
+#include <libfile.h>
 #include <usb/ch9.h>
 #include <usb/dfu.h>
 #include <config.h>
diff --git a/fs/fs.c b/fs/fs.c
index dd410b7..fd3d353 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -34,78 +34,6 @@
 #include <libgen.h>
 #include <block.h>
 
-void *read_file(const char *filename, size_t *size)
-{
-	int fd;
-	struct stat s;
-	void *buf = NULL;
-	const char *tmpfile = "/.read_file_tmp";
-	int ret;
-
-again:
-	if (stat(filename, &s))
-		return NULL;
-
-	if (s.st_size == FILESIZE_MAX) {
-		ret = copy_file(filename, tmpfile, 0);
-		if (ret)
-			return NULL;
-		filename = tmpfile;
-		goto again;
-	}
-
-	buf = xzalloc(s.st_size + 1);
-
-	fd = open(filename, O_RDONLY);
-	if (fd < 0)
-		goto err_out;
-
-	ret = read_full(fd, buf, s.st_size);
-	if (ret < 0)
-		goto err_out1;
-
-	close(fd);
-
-	if (size)
-		*size = s.st_size;
-
-	if (filename == tmpfile)
-		unlink(tmpfile);
-
-	return buf;
-
-err_out1:
-	close(fd);
-err_out:
-	free(buf);
-
-	if (filename == tmpfile)
-		unlink(tmpfile);
-
-	return NULL;
-}
-
-EXPORT_SYMBOL(read_file);
-
-int write_file(const char *filename, void *buf, size_t size)
-{
-	int fd, ret;
-
-	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT);
-	if (fd < 0)
-		return fd;
-
-	ret = write_full(fd, buf, size);
-
-	close(fd);
-
-	if (ret < 0)
-		return ret;
-
-	return 0;
-}
-EXPORT_SYMBOL(write_file);
-
 char *mkmodestr(unsigned long mode, char *str)
 {
 	static const char *l = "xwr";
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index 6547b7c..63931c2 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -17,6 +17,7 @@
 #include <uimagefs.h>
 #include <libbb.h>
 #include <rtc.h>
+#include <libfile.h>
 
 static bool uimagefs_is_data_file(struct uimagefs_handle_data *d)
 {
diff --git a/include/fs.h b/include/fs.h
index 073641c..b2541a4 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -164,20 +164,6 @@ int ls(const char *path, ulong flags);
 char *mkmodestr(unsigned long mode, char *str);
 
 /*
- * Read a file into memory. Memory is allocated with malloc and must
- * be freed with free() afterwards. This function allocates one
- * byte more than actually needed and sets this to zero, so that
- * it can be used for text files.
- * If size is nonzero it s set to the file size.
- */
-void *read_file(const char *filename, size_t *size);
-
-/*
- * Write a buffer to a file. This file is newly created.
- */
-int write_file(const char *filename, void *buf, size_t size);
-
-/*
  * This function turns 'path' into an absolute path and removes all occurrences
  * of "..", "." and double slashes. The returned string must be freed wit free().
  */
diff --git a/include/libbb.h b/include/libbb.h
index 2fe710c..a362bd3 100644
--- a/include/libbb.h
+++ b/include/libbb.h
@@ -26,15 +26,8 @@ int recursive_action(const char *fileName, unsigned flags,
 
 char * safe_strncpy(char *dst, const char *src, size_t size);
 
-int copy_file(const char *src, const char *dst, int verbose);
-
 int process_escape_sequence(const char *source, char *dest, int destlen);
 
 char *simple_itoa(unsigned int i);
 
-int write_full(int fd, void *buf, size_t size);
-int read_full(int fd, void *buf, size_t size);
-
-char *read_file_line(const char *fmt, ...);
-
 #endif /* __LIBBB_H */
diff --git a/include/libfile.h b/include/libfile.h
new file mode 100644
index 0000000..d47a111
--- /dev/null
+++ b/include/libfile.h
@@ -0,0 +1,15 @@
+#ifndef __LIBFILE_H
+#define __LIBFILE_H
+
+int write_full(int fd, void *buf, size_t size);
+int read_full(int fd, void *buf, size_t size);
+
+char *read_file_line(const char *fmt, ...);
+
+void *read_file(const char *filename, size_t *size);
+
+int write_file(const char *filename, void *buf, size_t size);
+
+int copy_file(const char *src, const char *dst, int verbose);
+
+#endif /* __LIBFILE_H */
diff --git a/lib/Makefile b/lib/Makefile
index e8769a9..dfd3aae 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -25,7 +25,6 @@ obj-$(CONFIG_GLOB)		+= fnmatch.o
 obj-$(CONFIG_GENERIC_FIND_NEXT_BIT) += find_next_bit.o
 obj-y			+= glob.o
 obj-y			+= notifier.o
-obj-y			+= copy_file.o
 obj-y			+= random.o
 obj-y			+= lzo/
 obj-$(CONFIG_LZ4_DECOMPRESS) += lz4/
@@ -44,3 +43,4 @@ obj-y			+= gui/
 obj-$(CONFIG_XYMODEM)	+= xymodem.o
 obj-y			+= unlink-recursive.o
 obj-$(CONFIG_STMP_DEVICE) += stmp-device.o
+obj-y			+= libfile.o
diff --git a/lib/copy_file.c b/lib/copy_file.c
deleted file mode 100644
index fdd0cac..0000000
--- a/lib/copy_file.c
+++ /dev/null
@@ -1,86 +0,0 @@
-#include <common.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <errno.h>
-#include <malloc.h>
-#include <libbb.h>
-#include <progress.h>
-
-/**
- * @param[in] src FIXME
- * @param[out] dst FIXME
- * @param[in] verbose FIXME
- */
-int copy_file(const char *src, const char *dst, int verbose)
-{
-	char *rw_buf = NULL;
-	int srcfd = 0, dstfd = 0;
-	int r, w;
-	int ret = 1;
-	void *buf;
-	int total = 0;
-	struct stat statbuf;
-
-	rw_buf = xmalloc(RW_BUF_SIZE);
-
-	srcfd = open(src, O_RDONLY);
-	if (srcfd < 0) {
-		printf("could not open %s: %s\n", src, errno_str());
-		goto out;
-	}
-
-	dstfd = open(dst, O_WRONLY | O_CREAT | O_TRUNC);
-	if (dstfd < 0) {
-		printf("could not open %s: %s\n", dst, errno_str());
-		goto out;
-	}
-
-	if (verbose) {
-		if (stat(src, &statbuf) < 0)
-			statbuf.st_size = 0;
-
-		init_progression_bar(statbuf.st_size);
-	}
-
-	while(1) {
-		r = read(srcfd, rw_buf, RW_BUF_SIZE);
-		if (r < 0) {
-			perror("read");
-			goto out;
-		}
-		if (!r)
-			break;
-
-		buf = rw_buf;
-		while (r) {
-			w = write(dstfd, buf, r);
-			if (w < 0) {
-				perror("write");
-				goto out;
-			}
-			buf += w;
-			r -= w;
-			total += w;
-		}
-
-		if (verbose) {
-			if (statbuf.st_size && statbuf.st_size != FILESIZE_MAX)
-				show_progress(total);
-			else
-				show_progress(total / 16384);
-		}
-	}
-
-	ret = 0;
-out:
-	if (verbose)
-		putchar('\n');
-
-	free(rw_buf);
-	if (srcfd > 0)
-		close(srcfd);
-	if (dstfd > 0)
-		close(dstfd);
-
-	return ret;
-}
diff --git a/lib/gui/image_renderer.c b/lib/gui/image_renderer.c
index 8047961..dd29389 100644
--- a/lib/gui/image_renderer.c
+++ b/lib/gui/image_renderer.c
@@ -10,6 +10,7 @@
 #include <errno.h>
 #include <fs.h>
 #include <malloc.h>
+#include <libfile.h>
 
 static LIST_HEAD(image_renderers);
 
diff --git a/lib/libbb.c b/lib/libbb.c
index dd42e66..239611c 100644
--- a/lib/libbb.c
+++ b/lib/libbb.c
@@ -126,96 +126,3 @@ char *simple_itoa(unsigned int i)
 	return p + 1;
 }
 EXPORT_SYMBOL(simple_itoa);
-
-/*
- * write_full - write to filedescriptor
- *
- * Like write, but guarantees to write the full buffer out, else
- * it returns with an error.
- */
-int write_full(int fd, void *buf, size_t size)
-{
-	size_t insize = size;
-	int now;
-
-	while (size) {
-		now = write(fd, buf, size);
-		if (now <= 0)
-			return now;
-		size -= now;
-		buf += now;
-	}
-
-	return insize;
-}
-EXPORT_SYMBOL(write_full);
-
-/*
- * read_full - read from filedescriptor
- *
- * Like read, but this function only returns less bytes than
- * requested when the end of file is reached.
- */
-int read_full(int fd, void *buf, size_t size)
-{
-	size_t insize = size;
-	int now;
-	int total = 0;
-
-	while (size) {
-		now = read(fd, buf, size);
-		if (now == 0)
-			return total;
-		if (now < 0)
-			return now;
-		total += now;
-		size -= now;
-		buf += now;
-	}
-
-	return insize;
-}
-EXPORT_SYMBOL(read_full);
-
-/*
- * read_file_line - read a line from a file
- *
- * Used to compose a filename from a printf format and to read a line from this
- * file. All leading and trailing whitespaces (including line endings) are
- * removed. The returned buffer must be freed with free(). This function is
- * supposed for reading variable like content into a buffer, so files > 1024
- * bytes are ignored.
- */
-char *read_file_line(const char *fmt, ...)
-{
-	va_list args;
-	char *filename;
-	char *buf, *line = NULL;
-	size_t size;
-	int ret;
-	struct stat s;
-
-	va_start(args, fmt);
-	filename = vasprintf(fmt, args);
-	va_end(args);
-
-	ret = stat(filename, &s);
-	if (ret)
-		goto out;
-
-	if (s.st_size > 1024)
-		goto out;
-
-	buf = read_file(filename, &size);
-	if (!buf)
-		goto out;
-
-	line = strim(buf);
-
-	line = xstrdup(line);
-	free(buf);
-out:
-	free(filename);
-	return line;
-}
-EXPORT_SYMBOL_GPL(read_file_line);
diff --git a/lib/libfile.c b/lib/libfile.c
new file mode 100644
index 0000000..b36537f
--- /dev/null
+++ b/lib/libfile.c
@@ -0,0 +1,288 @@
+/*
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <malloc.h>
+#include <libfile.h>
+#include <progress.h>
+#include <linux/stat.h>
+
+/*
+ * write_full - write to filedescriptor
+ *
+ * Like write, but guarantees to write the full buffer out, else
+ * it returns with an error.
+ */
+int write_full(int fd, void *buf, size_t size)
+{
+	size_t insize = size;
+	int now;
+
+	while (size) {
+		now = write(fd, buf, size);
+		if (now <= 0)
+			return now;
+		size -= now;
+		buf += now;
+	}
+
+	return insize;
+}
+EXPORT_SYMBOL(write_full);
+
+/*
+ * read_full - read from filedescriptor
+ *
+ * Like read, but this function only returns less bytes than
+ * requested when the end of file is reached.
+ */
+int read_full(int fd, void *buf, size_t size)
+{
+	size_t insize = size;
+	int now;
+	int total = 0;
+
+	while (size) {
+		now = read(fd, buf, size);
+		if (now == 0)
+			return total;
+		if (now < 0)
+			return now;
+		total += now;
+		size -= now;
+		buf += now;
+	}
+
+	return insize;
+}
+EXPORT_SYMBOL(read_full);
+
+/*
+ * read_file_line - read a line from a file
+ *
+ * Used to compose a filename from a printf format and to read a line from this
+ * file. All leading and trailing whitespaces (including line endings) are
+ * removed. The returned buffer must be freed with free(). This function is
+ * supposed for reading variable like content into a buffer, so files > 1024
+ * bytes are ignored.
+ */
+char *read_file_line(const char *fmt, ...)
+{
+	va_list args;
+	char *filename;
+	char *buf, *line = NULL;
+	size_t size;
+	int ret;
+	struct stat s;
+
+	va_start(args, fmt);
+	filename = vasprintf(fmt, args);
+	va_end(args);
+
+	ret = stat(filename, &s);
+	if (ret)
+		goto out;
+
+	if (s.st_size > 1024)
+		goto out;
+
+	buf = read_file(filename, &size);
+	if (!buf)
+		goto out;
+
+	line = strim(buf);
+
+	line = xstrdup(line);
+	free(buf);
+out:
+	free(filename);
+	return line;
+}
+EXPORT_SYMBOL_GPL(read_file_line);
+
+/**
+ * read_file - read a file to an allocated buffer
+ * @filename:  The filename to read
+ * @size:      After successful return contains the size of the file
+ *
+ * This function reads a file to an allocated buffer.
+ * Some TFTP servers do not transfer the size of a file. In this case
+ * a the file is first read to a temporary file.
+ *
+ * Return: The buffer conataining the file or NULL on failure
+ */
+void *read_file(const char *filename, size_t *size)
+{
+	int fd;
+	struct stat s;
+	void *buf = NULL;
+	const char *tmpfile = "/.read_file_tmp";
+	int ret;
+
+again:
+	if (stat(filename, &s))
+		return NULL;
+
+	if (s.st_size == FILESIZE_MAX) {
+		ret = copy_file(filename, tmpfile, 0);
+		if (ret)
+			return NULL;
+		filename = tmpfile;
+		goto again;
+	}
+
+	buf = xzalloc(s.st_size + 1);
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0)
+		goto err_out;
+
+	ret = read_full(fd, buf, s.st_size);
+	if (ret < 0)
+		goto err_out1;
+
+	close(fd);
+
+	if (size)
+		*size = s.st_size;
+
+	if (filename == tmpfile)
+		unlink(tmpfile);
+
+	return buf;
+
+err_out1:
+	close(fd);
+err_out:
+	free(buf);
+
+	if (filename == tmpfile)
+		unlink(tmpfile);
+
+	return NULL;
+}
+EXPORT_SYMBOL(read_file);
+
+/**
+ * write_file - write a buffer to a file
+ * @filename:    The filename to write
+ * @size:        The size of the buffer
+ *
+ * Return: 0 for success or negative error value
+ */
+int write_file(const char *filename, void *buf, size_t size)
+{
+	int fd, ret;
+
+	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT);
+	if (fd < 0)
+		return fd;
+
+	ret = write_full(fd, buf, size);
+
+	close(fd);
+
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL(write_file);
+
+/**
+ * copy_file - Copy a file
+ * @src:	The source filename
+ * @dst:	The destination filename
+ * @verbose:	if true, show a progression bar
+ *
+ * Return: 0 for success or negative error code
+ */
+int copy_file(const char *src, const char *dst, int verbose)
+{
+	char *rw_buf = NULL;
+	int srcfd = 0, dstfd = 0;
+	int r, w;
+	int ret = 1;
+	void *buf;
+	int total = 0;
+	struct stat statbuf;
+
+	rw_buf = xmalloc(RW_BUF_SIZE);
+
+	srcfd = open(src, O_RDONLY);
+	if (srcfd < 0) {
+		printf("could not open %s: %s\n", src, errno_str());
+		goto out;
+	}
+
+	dstfd = open(dst, O_WRONLY | O_CREAT | O_TRUNC);
+	if (dstfd < 0) {
+		printf("could not open %s: %s\n", dst, errno_str());
+		goto out;
+	}
+
+	if (verbose) {
+		if (stat(src, &statbuf) < 0)
+			statbuf.st_size = 0;
+
+		init_progression_bar(statbuf.st_size);
+	}
+
+	while (1) {
+		r = read(srcfd, rw_buf, RW_BUF_SIZE);
+		if (r < 0) {
+			perror("read");
+			goto out;
+		}
+		if (!r)
+			break;
+
+		buf = rw_buf;
+		while (r) {
+			w = write(dstfd, buf, r);
+			if (w < 0) {
+				perror("write");
+				goto out;
+			}
+			buf += w;
+			r -= w;
+			total += w;
+		}
+
+		if (verbose) {
+			if (statbuf.st_size && statbuf.st_size != FILESIZE_MAX)
+				show_progress(total);
+			else
+				show_progress(total / 16384);
+		}
+	}
+
+	ret = 0;
+out:
+	if (verbose)
+		putchar('\n');
+
+	free(rw_buf);
+	if (srcfd > 0)
+		close(srcfd);
+	if (dstfd > 0)
+		close(dstfd);
+
+	return ret;
+}
+EXPORT_SYMBOL(copy_file);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
