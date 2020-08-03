Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2Sgn-0001sJ-B6
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 05:07:10 +0000
Received: by mail-ej1-x643.google.com with SMTP id jp10so10700312ejb.0
 for <barebox@lists.infradead.org>; Sun, 02 Aug 2020 22:07:05 -0700 (PDT)
From: yegorslists@googlemail.com
Date: Mon,  3 Aug 2020 07:07:00 +0200
Message-Id: <20200803050700.28388-1-yegorslists@googlemail.com>
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
Subject: [PATCH] add untar command
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Use busybox implementation as a reference.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 commands/Kconfig  |   8 +
 commands/Makefile |   1 +
 commands/untar.c  | 598 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 607 insertions(+)
 create mode 100644 commands/untar.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 3789f33c3..b1f6ec1cd 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -998,6 +998,14 @@ config CMD_UNCOMPRESS
 
 	  Usage: uncompress INFILE OUTFILE
 
+config CMD_UNTAR
+	bool
+	prompt "untar"
+	help
+	  Unpack a tar file.
+
+	  Usage: untar INFILE DIRECTORY
+
 # end File commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 01082de44..5cde39399 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -61,6 +61,7 @@ obj-$(CONFIG_USB_GADGET_DFU)	+= dfu.o
 obj-$(CONFIG_USB_GADGET_SERIAL)	+= usbserial.o
 obj-$(CONFIG_CMD_GPIO)		+= gpio.o
 obj-$(CONFIG_CMD_UNCOMPRESS)	+= uncompress.o
+obj-$(CONFIG_CMD_UNTAR)		+= untar.o
 obj-$(CONFIG_CMD_I2C)		+= i2c.o
 obj-$(CONFIG_CMD_SPI)		+= spi.o
 obj-$(CONFIG_CMD_UBI)		+= ubi.o
diff --git a/commands/untar.c b/commands/untar.c
new file mode 100644
index 000000000..f3b3135bd
--- /dev/null
+++ b/commands/untar.c
@@ -0,0 +1,598 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2020 Yegor Yefremov <yegorslists@googlemail.com>
+
+/* untar.c - unpack a tar file */
+
+#include <common.h>
+#include <command.h>
+#include <errno.h>
+#include <fcntl.h>
+#include <fs.h>
+
+#if defined(i386) || defined(__x86_64__) || defined(__mips__) || defined(__cris__)
+/* add other arches which benefit from this... */
+typedef signed char smallint;
+typedef unsigned char smalluint;
+#else
+/* for arches where byte accesses generate larger code: */
+typedef int smallint;
+typedef unsigned smalluint;
+#endif
+
+typedef struct file_header_t {
+	char *name;
+	char *link_target;
+	off_t size;
+	uid_t uid;
+	gid_t gid;
+	mode_t mode;
+	time_t mtime;
+	dev_t device;
+} file_header_t;
+
+typedef struct archive_handle_t {
+	/* Flags. 1st since it is most used member */
+	unsigned ah_flags;
+
+	/* The raw stream as read from disk or stdin */
+	int src_fd;
+
+	/* Currently processed file's header */
+	file_header_t *file_header;
+
+	/* Count processed bytes */
+	off_t offset;
+	smallint tar__end;
+} archive_handle_t;
+
+/* POSIX tar Header Block, from POSIX 1003.1-1990  */
+#define TAR_BLOCK_SIZE 512
+#define NAME_SIZE      100
+#define NAME_SIZE_STR "100"
+typedef struct tar_header_t {     /* byte offset */
+	char name[NAME_SIZE];     /*   0-99 */
+	char mode[8];             /* 100-107 */
+	char uid[8];              /* 108-115 */
+	char gid[8];              /* 116-123 */
+	char size[12];            /* 124-135 */
+	char mtime[12];           /* 136-147 */
+	char chksum[8];           /* 148-155 */
+	char typeflag;            /* 156-156 */
+	char linkname[NAME_SIZE]; /* 157-256 */
+	/* POSIX:   "ustar" NUL "00" */
+	/* GNU tar: "ustar  " NUL */
+	/* Normally it's defined as magic[6] followed by
+	 * version[2], but we put them together to save code.
+	 */
+	char magic[8];            /* 257-264 */
+	char uname[32];           /* 265-296 */
+	char gname[32];           /* 297-328 */
+	char devmajor[8];         /* 329-336 */
+	char devminor[8];         /* 337-344 */
+	char prefix[155];         /* 345-499 */
+	char padding[12];         /* 500-512 (pad to exactly TAR_BLOCK_SIZE) */
+} tar_header_t;
+
+static archive_handle_t* init_handle(void)
+{
+      archive_handle_t *archive_handle;
+
+      /* Initialize default values */
+      archive_handle = xzalloc(sizeof(archive_handle_t));
+      archive_handle->file_header = xzalloc(sizeof(file_header_t));
+
+      return archive_handle;
+}
+
+/* NB: _DESTROYS_ str[len] character! */
+static unsigned long long getOctal(char *str, int len)
+{
+	unsigned long long v;
+	char *end;
+	/* NB: leading spaces are allowed. Using strtoull to handle that.
+	 * The downside is that we accept e.g. "-123" too :(
+	 */
+	str[len] = '\0';
+	v = simple_strtoull(str, &end, 8);
+	/* std: "Each numeric field is terminated by one or more
+	 * <space> or NUL characters". We must support ' '! */
+	if (*end != '\0' && *end != ' ') {
+		int8_t first = str[0];
+		if (!(first & 0x80)) {
+			printf("corrupted octal value in tar header\n");
+			return 1;
+		}
+		/*
+		 * GNU tar uses "base-256 encoding" for very large numbers.
+		 * Encoding is binary, with highest bit always set as a marker
+		 * and sign in next-highest bit:
+		 * 80 00 .. 00 - zero
+		 * bf ff .. ff - largest positive number
+		 * ff ff .. ff - minus 1
+		 * c0 00 .. 00 - smallest negative number
+		 *
+		 * Example of tar file with 8914993153 (0x213600001) byte file.
+		 * Field starts at offset 7c:
+		 * 00070  30 30 30 00 30 30 30 30  30 30 30 00 80 00 00 00  |000.0000000.....|
+		 * 00080  00 00 00 02 13 60 00 01  31 31 31 32 30 33 33 36  |.....`..11120336|
+		 *
+		 * NB: tarballs with NEGATIVE unix times encoded that way were seen!
+		 */
+		/* Sign-extend 7bit 'first' to 64bit 'v' (that is, using 6th bit as sign): */
+		first <<= 1;
+		first >>= 1; /* now 7th bit = 6th bit */
+		v = first;   /* sign-extend 8 bits to 64 */
+		while (--len != 0)
+			v = (v << 8) + (uint8_t) *++str;
+	}
+	return v;
+}
+#define GET_OCTAL(a) getOctal((a), sizeof(a))
+
+#define p_longname 0
+#define p_linkname 0
+
+/* Like strcpy but can copy overlapping strings. */
+static void overlapping_strcpy(char *dst, const char *src)
+{
+      /* Cheap optimization for dst == src case -
+       * better to have it here than in many callers.
+       */
+      if (dst != src) {
+          while ((*dst = *src) != '\0') {
+              dst++;
+              src++;
+          }
+      }
+}
+
+/*
+ * Return NULL if string is not prefixed with key. Return pointer to the
+ * first character in string after the prefix key. If key is an empty string,
+ * return pointer to the beginning of string.
+ */
+static char* is_prefixed_with(const char *string, const char *key)
+{
+	while (*key != '\0') {
+		if (*key != *string)
+			return NULL;
+		key++;
+		string++;
+	}
+	return (char*)string;
+}
+
+/* Find out if the last character of a string matches the one given */
+static char* last_char_is(const char *s, int c)
+  {
+      if (!s[0])
+          return NULL;
+      while (s[1])
+          s++;
+      return (*s == (char)c) ? (char *) s : NULL;
+}
+
+static const char* strip_unsafe_prefix(const char *str)
+{
+	const char *cp = str;
+	while (1) {
+		char *cp2;
+		if (*cp == '/') {
+			cp++;
+			continue;
+		}
+		if (is_prefixed_with(cp, "/../"+1)) {
+			cp += 3;
+			continue;
+		}
+		cp2 = strstr(cp, "/../");
+		if (!cp2)
+			break;
+		cp = cp2 + 4;
+	}
+	if (cp != str) {
+		static smallint warned = 0;
+		if (!warned) {
+			warned = 1;
+			printf("removing leading '%.*s' from member names\n",
+				(int)(cp - str), str);
+		}
+	}
+	return cp;
+}
+
+/* Concatenate path and filename to new allocated buffer.
+ * Add '/' only as needed (no duplicate // are produced).
+ * If path is NULL, it is assumed to be "/".
+ * filename should not be NULL.
+ */
+static char* concat_path_file(const char *path, const char *filename)
+{
+      char *lc;
+
+      if (!path)
+          path = "";
+      lc = last_char_is(path, '/');
+      while (*filename == '/')
+          filename++;
+      return xasprintf("%s%s%s", path, (lc==NULL ? "/" : ""), filename);
+}
+
+static void process_pax_hdr(archive_handle_t *archive_handle, unsigned sz)
+{
+	unsigned blk_sz = (sz + 511) & (~511);
+	char *buf, *p;
+
+	p = buf = xmalloc(blk_sz + 1);
+	read(archive_handle->src_fd, buf, blk_sz);
+	archive_handle->offset += blk_sz;
+
+	/* prevent bb_strtou from running off the buffer */
+	buf[sz] = '\0';
+
+	while (sz != 0) {
+		char *end, *value;
+		unsigned len;
+
+		/* Every record has this format: "LEN NAME=VALUE\n" */
+		len = simple_strtoul(p, &end, 10);
+		/* expect errno to be EINVAL, because the character
+		 * following the digits should be a space
+		 */
+		p += len;
+		sz -= len;
+		if (
+		/** (int)sz < 0 - not good enough for huge malicious VALUE of 2^32-1 */
+		    (int)(sz|len) < 0 /* this works */
+		 || len == 0
+		 || errno != EINVAL
+		 || *end != ' '
+		) {
+			printf("malformed extended header, skipped\n");
+			break;
+		}
+		/* overwrite the terminating newline with NUL
+		 * (we do not bother to check that it *was* a newline)
+		 */
+		p[-1] = '\0';
+		value = end + 1;
+	}
+
+	free(buf);
+}
+
+static void data_align(archive_handle_t *archive_handle, unsigned boundary)
+{
+	unsigned skip_amount = (boundary - (archive_handle->offset % boundary)) % boundary;
+
+	lseek(archive_handle->src_fd, archive_handle->offset + skip_amount, SEEK_SET);
+	archive_handle->offset += skip_amount;
+}
+
+static int copy_fd(int srcfd, int dstfd, off_t size)
+{
+	int total = 0;
+	int ret = 1;
+	char *rw_buf = NULL;
+	int r;
+
+	rw_buf = xmalloc(RW_BUF_SIZE);
+
+	while (size) {
+		if (size < RW_BUF_SIZE)
+			total = size;
+		else
+			total = RW_BUF_SIZE;
+		r = read(srcfd, rw_buf, total);
+		if (r < 0) {
+			perror("read");
+			ret = r;
+			goto out;
+		}
+		if (!r)
+			break;
+
+		ret = write(dstfd, rw_buf, r);
+		if (ret < 0) {
+			perror("write");
+			goto out;
+		}
+
+		size -= total;
+	}
+out:
+	free(rw_buf);
+	return ret;
+}
+
+static int data_extract_all(archive_handle_t *archive_handle)
+{
+	file_header_t *file_header = archive_handle->file_header;
+	int dst_fd;
+	int res;
+	char *hard_link;
+# define dst_name (file_header->name)
+
+
+	/* Hard links are encoded as regular files of size 0
+	 * with a nonempty link field */
+	hard_link = NULL;
+	if (S_ISREG(file_header->mode) && file_header->size == 0)
+		hard_link = file_header->link_target;
+	if (hard_link) {
+		printf("Hard links not supported\n");
+		return 1;
+	}
+
+	/* Remove the entry if it exists */
+	if (!S_ISDIR(file_header->mode)) {
+		/* Proceed with deleting */
+		if (unlink(dst_name) == -1
+		 && errno != ENOENT
+		) {
+			printf("can't remove old file %s", dst_name);
+			return 1;
+		}
+	}
+
+	/* Create the filesystem entry */
+	switch (file_header->mode & S_IFMT) {
+	case S_IFREG: {
+		/* Regular file */
+		char *dst_nameN;
+		int flags = O_WRONLY | O_CREAT | O_EXCL;
+		dst_nameN = dst_name;
+		dst_fd = open(dst_nameN,
+			flags,
+			file_header->mode
+			);
+		copy_fd(archive_handle->src_fd, dst_fd, file_header->size);
+		close(dst_fd);
+		break;
+	}
+	case S_IFDIR:
+		res = mkdir(dst_name, file_header->mode);
+		if ((res != 0)
+		 && (errno != EISDIR) /* btw, Linux doesn't return this */
+		 && (errno != EEXIST)
+		) {
+			printf("can't make dir %s", dst_name);
+		}
+		break;
+	default:
+		printf("unrecognized file type");
+		return 1;
+	}
+
+	return 0; 
+}
+
+static int get_header(archive_handle_t *archive_handle)
+{
+	file_header_t *file_header = archive_handle->file_header;
+	tar_header_t tar;
+	char *cp;
+	int tar_typeflag; /* can be "char", "int" seems give smaller code */
+	int i, sum_u, sum;
+	int parse_names;
+
+	/* Align header */
+	data_align(archive_handle, 512);
+
+again_after_align:
+
+	i = 512;
+	read(archive_handle->src_fd, &tar, i);
+	archive_handle->offset += i;
+
+	/* If there is no filename its an empty header */
+	if (tar.name[0] == 0 && tar.prefix[0] == 0
+	/* Have seen a tar archive with pax 'x' header supplying UTF8 filename,
+	 * with actual file having all name fields NUL-filled. Check this: */
+	 && !p_longname
+	) {
+		if (archive_handle->tar__end) {
+			/* Second consecutive empty header - end of archive.
+			 * Read until the end to empty the pipe from gz or bz2
+			 */
+			while (read(archive_handle->src_fd, &tar, 512) == 512)
+				continue;
+			return 1; /* "end of archive" */
+		}
+		archive_handle->tar__end = 1;
+		return 0; /* "decoded one header" */
+	}
+	archive_handle->tar__end = 0;
+
+	/* Check header has valid magic, "ustar" is for the proper tar,
+	 * five NULs are for the old tar format  */
+	if (!is_prefixed_with(tar.magic, "ustar")) {
+		printf("invalid tar magic\n");
+		return 1;
+	}
+
+	/* Do checksum on headers.
+	 * POSIX says that checksum is done on unsigned bytes, but
+	 * Sun and HP-UX gets it wrong... more details in
+	 * GNU tar source. */
+	sum_u = ' ' * sizeof(tar.chksum);
+	for (i = 0; i < 148; i++) {
+		sum_u += ((unsigned char*)&tar)[i];
+	}
+	for (i = 156; i < 512; i++) {
+		sum_u += ((unsigned char*)&tar)[i];
+	}
+	/* Most tarfiles have tar.chksum NUL or space terminated, but
+	 * github.com decided to be "special" and have unterminated field:
+	 * 0090: 30343300 30303031 33323731 30000000 |043.000132710...|
+	 *                                                ^^^^^^^^|
+	 * Need to use GET_OCTAL. This overwrites tar.typeflag ---+
+	 * (the '0' char immediately after chksum in example above) with NUL.
+	 */
+	tar_typeflag = (uint8_t)tar.typeflag; /* save it */
+	sum = GET_OCTAL(tar.chksum);
+	if (sum_u != sum) {
+		printf("invalid tar header checksum\n");
+		return 1;
+	}
+	/* GET_OCTAL trashes subsequent field, therefore we call it
+	 * on fields in reverse order */
+	if (tar.devmajor[0]) {
+		char t = tar.prefix[0];
+		/* we trash prefix[0] here, but we DO need it later! */
+		tar.prefix[0] = t;
+	}
+
+	/* 0 is reserved for high perf file, treat as normal file */
+	if (tar_typeflag == '\0') tar_typeflag = '0';
+	parse_names = (tar_typeflag >= '0' && tar_typeflag <= '7');
+
+	file_header->link_target = NULL;
+	if (!p_linkname && parse_names && tar.linkname[0]) {
+		file_header->link_target = xstrndup(tar.linkname, sizeof(tar.linkname));
+		/* FIXME: what if we have non-link object with link_target? */
+		/* Will link_target be free()ed? */
+	}
+	file_header->mtime = GET_OCTAL(tar.mtime);
+	file_header->size = GET_OCTAL(tar.size);
+	file_header->gid = GET_OCTAL(tar.gid);
+	file_header->uid = GET_OCTAL(tar.uid);
+	/* Set bits 0-11 of the files mode */
+	file_header->mode = 07777 & GET_OCTAL(tar.mode);
+
+	file_header->name = NULL;
+	if (!p_longname && parse_names) {
+		/* we trash mode[0] here, it's ok */
+		//tar.name[sizeof(tar.name)] = '\0'; - gcc 4.3.0 would complain
+		tar.mode[0] = '\0';
+		if (tar.prefix[0]) {
+			/* and padding[0] */
+			tar.padding[0] = '\0';
+			file_header->name = concat_path_file(tar.prefix, tar.name);
+		} else
+			file_header->name = xstrdup(tar.name);
+	}
+
+	/* Set bits 12-15 of the files mode */
+	/* (typeflag was not trashed because chksum does not use getOctal) */
+	switch (tar_typeflag) {
+	case '1': /* hardlink */
+		/* we mark hardlinks as regular files with zero size and a link name */
+		file_header->mode |= S_IFREG;
+		/* on size of link fields from star(4)
+		 * ... For tar archives written by pre POSIX.1-1988
+		 * implementations, the size field usually contains the size of
+		 * the file and needs to be ignored as no data may follow this
+		 * header type.  For POSIX.1- 1988 compliant archives, the size
+		 * field needs to be 0.  For POSIX.1-2001 compliant archives,
+		 * the size field may be non zero, indicating that file data is
+		 * included in the archive.
+		 * i.e; always assume this is zero for safety.
+		 */
+		goto size0;
+	case '7':
+	/* case 0: */
+	case '0':
+		file_header->mode |= S_IFREG;
+		break;
+	case '2':
+		file_header->mode |= S_IFLNK;
+		/* have seen tarballs with size field containing
+		 * the size of the link target's name */
+ size0:
+		file_header->size = 0;
+		break;
+	case '3':
+		file_header->mode |= S_IFCHR;
+		goto size0; /* paranoia */
+	case '4':
+		file_header->mode |= S_IFBLK;
+		goto size0;
+	case '5':
+		file_header->mode |= S_IFDIR;
+		goto size0;
+	case '6':
+		file_header->mode |= S_IFIFO;
+		goto size0;
+	case 'g':	/* pax global header */
+	case 'x': {	/* pax extended header */
+		if ((size_t)file_header->size > 0xfffff) /* paranoia */
+			goto skip_ext_hdr;
+		process_pax_hdr(archive_handle, file_header->size);
+		goto again_after_align;
+	}
+ skip_ext_hdr:
+	{
+		off_t sz;
+		printf("warning: skipping header '%c'\n", tar_typeflag);
+		sz = (file_header->size + 511) & ~(off_t)511;
+		archive_handle->offset += sz;
+		sz >>= 9; /* sz /= 512 but w/o contortions for signed div */
+		while (sz--)
+			read(archive_handle->src_fd, &tar, 512);
+		/* return get_header_tar(archive_handle); */
+		goto again_after_align;
+	}
+	default:
+		printf("unknown typeflag: 0x%x\n", tar_typeflag);
+		return 1;
+	}
+
+	/* Everything up to and including last ".." component is stripped */
+	overlapping_strcpy(file_header->name, strip_unsafe_prefix(file_header->name));
+
+	/* Strip trailing '/' in directories */
+	/* Must be done after mode is set as '/' is used to check if it's a directory */
+	cp = last_char_is(file_header->name, '/');
+
+	printf("%s, %ld\n", file_header->name, file_header->size);
+	/* Note that we kill the '/' only after action_header() */
+	/* (like GNU tar 1.15.1: verbose mode outputs "dir/dir/") */
+	if (cp)
+		*cp = '\0';
+	if (data_extract_all(archive_handle))
+		return 1;
+
+	archive_handle->offset += file_header->size;
+
+	free(file_header->link_target);
+	/* Do not free(file_header->name)!
+	 * It might be inserted in archive_handle->passed - see above */
+	return 0; /* "decoded one header" */
+}
+
+static int do_untar(int argc, char *argv[])
+{
+	archive_handle_t *handle;
+	int ret;
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	handle = init_handle();
+	handle->src_fd = open(argv[1], O_RDONLY);
+	if (handle->src_fd < 0) {
+		perror("open");
+		return 1;
+	}
+
+	if (argc == 3) {
+		chdir(argv[2]);
+	}
+
+	while(!get_header(handle))
+		ret = 0;
+
+	if (ret)
+		printf("failed to decompress\n");
+
+	close(handle->src_fd);
+	return ret;
+}
+
+BAREBOX_CMD_START(untar)
+	.cmd            = do_untar,
+	BAREBOX_CMD_DESC("unpack a tar file")
+	BAREBOX_CMD_OPTS("INFILE [DIRECTORY]")
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
+BAREBOX_CMD_END
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
