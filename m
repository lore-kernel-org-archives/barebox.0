Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYVV-0000KX-W5
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 14:58:36 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1itYVT-0002mR-3s
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 15:58:23 +0100
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1itYVS-0006Dh-SV
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 15:58:22 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 20 Jan 2020 15:58:20 +0100
Message-Id: <20200120145821.22899-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20200120145821.22899-1-s.trumtrar@pengutronix.de>
References: <20200120145821.22899-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v3 2/3] imd: add support for checksum generation/verification
To: Barebox List <barebox@lists.infradead.org>

Add a new imd type "checksum". This type consists of the CRC32 checksum
of the whole barebox image minus the checksum itself.
The checksum can be written to the imd field with the bareboximd host-tool.
It can be verified with said tool or with "imd" on the target.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes in v3:
  - moved the flags field to the uint32_t tag

 commands/imd.c           |   1 +
 common/imd-barebox.c     |   1 +
 common/imd.c             | 169 ++++++++++++++++++++++++++++++++++++++-
 include/image-metadata.h |  42 ++++++++++
 scripts/bareboximd.c     |  32 ++++++++
 5 files changed, 244 insertions(+), 1 deletion(-)

diff --git a/commands/imd.c b/commands/imd.c
index f1a22cef96bd..16ab7290c920 100644
--- a/commands/imd.c
+++ b/commands/imd.c
@@ -46,6 +46,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-t <type>", "only show information of <type>")
 BAREBOX_CMD_HELP_OPT ("-n <no>", "for tags with multiple strings only show string <no>")
 BAREBOX_CMD_HELP_OPT ("-s VARNAME",  "set variable VARNAME instead of showing information")
+BAREBOX_CMD_HELP_OPT ("-V",  "Verify checksum of image")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Without options all information available is printed. Valid types are:")
 BAREBOX_CMD_HELP_TEXT("release, build, model, of_compatible")
diff --git a/common/imd-barebox.c b/common/imd-barebox.c
index e9cd37d83ec8..4aec51bfbdc2 100644
--- a/common/imd-barebox.c
+++ b/common/imd-barebox.c
@@ -23,3 +23,4 @@ __BAREBOX_IMD_SECTION(.barebox_imd_end) = {
 
 BAREBOX_IMD_TAG_STRING(imd_build_tag, IMD_TYPE_BUILD, UTS_VERSION, 1);
 BAREBOX_IMD_TAG_STRING(imd_release_tag, IMD_TYPE_RELEASE, UTS_RELEASE, 1);
+BAREBOX_IMD_CRC(imd_checksum, 0x0, 1);
diff --git a/common/imd.c b/common/imd.c
index e0dab69644c0..b8429184777b 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -22,6 +22,7 @@
 #include <getopt.h>
 #include <malloc.h>
 #include <fs.h>
+#include <crc.h>
 
 #ifndef CONFIG_CMD_IMD
 int imd_command_setenv(const char *variable_name, const char *value)
@@ -167,6 +168,9 @@ static struct imd_type_names imd_types[] = {
 	}, {
 		.type = IMD_TYPE_OF_COMPATIBLE,
 		.name = "of_compatible",
+	}, {
+		.type = IMD_TYPE_CHECKSUM,
+		.name = "checksum",
 	},
 };
 
@@ -256,6 +260,40 @@ char *imd_concat_strings(const struct imd_header *imd)
 	return str;
 }
 
+/**
+ * imd_uint32_data - get uint32 data
+ * @imd: The IMD entry
+ *
+ * This function returns the data in @imd.
+ *
+ * Return: A pointer to the uint32 or NULL if the entry is not uint32.
+ */
+const uint32_t *imd_uint32_data(const struct imd_header *imd) {
+	char *p = (char *)(imd + 1);
+
+	if (!imd_is_uint32(imd_read_type(imd)))
+		return NULL;
+
+	return (uint32_t *)p;
+}
+
+/**
+ * imd_uint32_flags - get uint32 flags
+ * @imd: The IMD entry
+ *
+ * This function returns the flags in @imd.
+ *
+ * Return: A pointer to the flags or NULL if the entry is not uint32.
+ */
+uint32_t *imd_uint32_flags(const struct imd_header *imd) {
+	char *p = (char *)(imd + 1);
+
+	if (!imd_is_uint32(imd_read_type(imd)))
+		return NULL;
+
+	return (uint32_t *)(p + sizeof(uint32_t));
+}
+
 /**
  * imd_get_param - get a parameter
  * @imd: The IMD entry
@@ -287,6 +325,118 @@ const char *imd_get_param(const struct imd_header *imd, const char *name)
 	return NULL;
 }
 
+static int imd_calculate_crc32(void *input, const struct imd_header *imd_start,
+			       struct imd_header **imd_crc, uint32_t *crc,
+			       size_t size)
+{
+	const struct imd_header *imd;
+	int length;
+	int end_ofs = (char *)imd_start - (char *)input + sizeof(char) * 8;
+
+	/* search the checksum imd token */
+	imd_for_each(imd_start, imd) {
+		length = imd_read_length(imd);
+		length = ALIGN(length, 4);
+		length += sizeof(struct imd_header);
+
+		if (imd_read_type(imd) == IMD_TYPE_CHECKSUM) {
+			*imd_crc = (struct imd_header *)imd;
+			debug("Found crc token at %d\n", end_ofs);
+			break;
+		}
+
+		end_ofs += length;
+	}
+
+	/*
+	 * Calculate checksum from start of input up to the checksum.
+	 * The checksum and the flags field in the imd_entry_uint32 entry are
+	 * modified after the checksum is calculated. Therefore skip them here
+	 * or the checksum will become invalid once it is written to the
+	 * checksum tag.
+	 */
+	length = sizeof(struct imd_header);
+	end_ofs += length;
+
+	*crc = crc32(*crc, input, end_ofs);
+	debug("Calculated checksum from %d to %d: 0x%08x\n", 0, end_ofs, *crc);
+
+	/* move past the checksum data and flags field */
+	end_ofs += sizeof(uint32_t) + sizeof(char);
+	input += end_ofs;
+
+	*crc = crc32(*crc, input, size - end_ofs);
+	debug("Calculated checksum from %d to %d: 0x%08x\n", end_ofs,
+	      end_ofs + (size - end_ofs), *crc);
+
+	return 0;
+}
+
+static int imd_write_crc32(void *buf, const struct imd_header *imd_start,
+			   const char *filename, size_t size)
+{
+	struct imd_header *imd_crc;
+	uint32_t crc = 0;
+
+	imd_calculate_crc32(buf, imd_start, &imd_crc, &crc, size);
+	debug("Calculated crc: 0x%08x\n", crc);
+
+	if (!imd_crc) {
+		debug("No tag of type 0x%08x found\n", IMD_TYPE_CHECKSUM);
+
+		return -ENODATA;
+	} else {
+		uint32_t *p = (uint32_t *)(imd_crc + 1);
+
+		if (*p != crc) {
+			uint32_t *flags = imd_uint32_flags(imd_crc);
+			*flags |= IMD_FLAG_TAG_VALID;
+			debug("Update crc token from 0x%08x to 0x%08x (flags 0x%08x)\n", *p, crc, *flags);
+			*p = crc;
+
+			write_file(filename, buf, size);
+		}
+	}
+
+	return 0;
+};
+
+int imd_verify_crc32(void *buf, size_t size)
+{
+	const struct imd_header *imd_start;
+	struct imd_header *imd_crc;
+	uint32_t crc = 0;
+
+	imd_start = imd_get(buf, size);
+	if (IS_ERR(imd_start))
+		return PTR_ERR(imd_start);
+
+	imd_calculate_crc32(buf, imd_start, &imd_crc, &crc, size);
+	debug("Calculated crc: 0x%08x\n", crc);
+
+	if (!imd_crc) {
+		debug("No tag of type 0x%08x found\n", IMD_TYPE_CHECKSUM);
+
+		return -ENOENT;
+	} else {
+		uint32_t *p = (uint32_t *)(imd_crc + 1);
+		uint32_t *flags = imd_uint32_flags(imd_crc);
+
+		if (*p != crc && imd_entry_is_valid(*flags)) {
+			eprintf("CRC: image corrupted. Found checksum 0x%08x instead of 0x%08x\n",
+			       *p, crc);
+			return -EILSEQ;
+		} else if (*p != crc && !imd_entry_is_valid(*flags)) {
+			printf("CRC: is invalid, but the checksum tag is not enabled\n");
+			return -EINVAL;
+		} else {
+			printf("CRC: valid\n");
+		}
+	}
+
+	return 0;
+};
+
 int imd_command_verbose;
 
 int imd_command(int argc, char *argv[])
@@ -299,10 +449,12 @@ int imd_command(int argc, char *argv[])
 	const char *filename;
 	const char *variable_name = NULL;
 	char *str;
+	uint32_t checksum = 0;
+	uint32_t verify = 0;
 
 	imd_command_verbose = 0;
 
-	while ((opt = getopt(argc, argv, "vt:s:n:")) > 0) {
+	while ((opt = getopt(argc, argv, "vt:s:n:cV")) > 0) {
 		switch(opt) {
 		case 't':
 			type = imd_name_to_type(optarg);
@@ -320,6 +472,12 @@ int imd_command(int argc, char *argv[])
 		case 'n':
 			strno = simple_strtoul(optarg, NULL, 0);
 			break;
+		case 'c':
+			checksum = 1;
+			break;
+		case 'V':
+			verify = 1;
+			break;
 		default:
 			return -ENOSYS;
 		}
@@ -342,6 +500,11 @@ int imd_command(int argc, char *argv[])
 		goto out;
 	}
 
+	if (checksum)
+		imd_write_crc32(buf, imd_start, filename, size);
+	if (verify)
+		imd_verify_crc32(buf, size);
+
 	if (type == IMD_TYPE_INVALID) {
 		imd_for_each(imd_start, imd) {
 			uint32_t type = imd_read_type(imd);
@@ -350,6 +513,10 @@ int imd_command(int argc, char *argv[])
 				str = imd_concat_strings(imd);
 
 				printf("%s: %s\n", imd_type_to_name(type), str);
+			} else if (imd_is_uint32(type)) {
+				uint32_t *p = (uint32_t *)(imd + 1);
+
+				printf("%s: 0x%08x\n", imd_type_to_name(type), *p);
 			} else {
 				debug("Unknown tag 0x%08x\n", type);
 			}
diff --git a/include/image-metadata.h b/include/image-metadata.h
index 5904d95acd37..637a611a39a1 100644
--- a/include/image-metadata.h
+++ b/include/image-metadata.h
@@ -25,9 +25,12 @@
 #define IMD_TYPE_MODEL		0x640c8004 /* The board name this image is for */
 #define IMD_TYPE_OF_COMPATIBLE	0x640c8005 /* the device tree compatible string */
 #define IMD_TYPE_PARAMETER	0x640c8006 /* A generic parameter. Use key=value as data */
+#define IMD_TYPE_CHECKSUM	0x640c1007 /* the checksum of the barebox images */
 #define IMD_TYPE_END		0x640c7fff
 #define IMD_TYPE_INVALID	0xffffffff
 
+#define IMD_FLAG_TAG_VALID	(1 << 0)
+
 /*
  * The IMD header. All data is stored in little endian format in the image.
  * The next header starts at the next 4 byte boundary after the data.
@@ -51,6 +54,25 @@ static inline int imd_is_string(uint32_t type)
 	return (type & 0x8000) ? 1 : 0;
 }
 
+static inline int imd_is_uint32(uint32_t type)
+{
+	return (type & 0x1000) ? 1 : 0;
+}
+
+static inline int imd_entry_is_valid(uint32_t flags)
+{
+	return (flags & IMD_FLAG_TAG_VALID) ? 1 : 0;
+}
+
+/*
+ * A IMD int.
+ */
+struct imd_entry_uint32 {
+	struct imd_header header;
+	uint32_t data;
+	uint32_t flags;
+};
+
 static inline int imd_type_valid(uint32_t type)
 {
 	return (type & 0xffff0000) == 0x640c0000;
@@ -78,11 +100,23 @@ static inline uint32_t imd_read_length(const struct imd_header *imd)
 	return imd_read_le32(&imd->datalength);
 }
 
+static inline uint32_t imd_read_flags(const struct imd_entry_uint32 *imd)
+{
+	return imd_read_le32(&imd->flags);
+}
+
+static inline int imd_tag_is_valid(uint32_t flags)
+{
+	return (flags & IMD_FLAG_TAG_VALID) ? 1 : 0;
+}
+
 const struct imd_header *imd_find_type(const struct imd_header *imd,
 				       uint32_t type);
 
 const struct imd_header *imd_get(const void *buf, int size);
 const char *imd_string_data(const struct imd_header *imd, int index);
+const uint32_t *imd_uint32_data(const struct imd_header *imd);
+uint32_t *imd_uint32_flags(const struct imd_header *imd);
 const char *imd_type_to_name(uint32_t type);
 char *imd_concat_strings(const struct imd_header *imd);
 const char *imd_get_param(const struct imd_header *imd, const char *name);
@@ -90,6 +124,7 @@ const char *imd_get_param(const struct imd_header *imd, const char *name);
 extern int imd_command_verbose;
 int imd_command_setenv(const char *variable_name, const char *value);
 int imd_command(int argc, char *argv[]);
+int imd_verify_crc32(void *buf, size_t size);
 
 #ifdef __BAREBOX__
 
@@ -107,6 +142,13 @@ int imd_command(int argc, char *argv[]);
 		.data = _string,							\
 	}
 
+#define BAREBOX_IMD_CRC(_name, _crc, _keep_if_unused)					\
+	const struct imd_entry_uint32 __barebox_imd_##__name 				\
+  	__BAREBOX_IMD_SECTION(.barebox_imd_ ## _keep_if_unused ## _ ## _name) = {	\
+		.header.type = cpu_to_le32(IMD_TYPE_CHECKSUM),				\
+		.header.datalength = cpu_to_le32(sizeof(uint32_t) * 2),			\
+		.data = _crc,								\
+  }
 
 #ifdef CONFIG_IMD
 void imd_used(const void *);
diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index 5ef91831c457..b9056cdca7d9 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -33,6 +33,7 @@
 #include <errno.h>
 #include <stdarg.h>
 #include <linux/err.h>
+#include <linux/kernel.h>
 
 #include "../include/image-metadata.h"
 
@@ -57,6 +58,35 @@ int imd_command_setenv(const char *variable_name, const char *value)
 	return -EINVAL;
 }
 
+static int write_file(const char *filename, const void *buf, size_t size)
+{
+	int fd, ret;
+	int now;
+
+	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT);
+	if (fd < 0)
+		return fd;
+
+	while (size) {
+		now = write(fd, buf, size);
+		if (now == 0) {
+			errno = ENOSPC;
+			return -1;
+		}
+		if (now < 0)
+			return now;
+		size -= now;
+		buf += now;
+	}
+
+	close(fd);
+
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
 static int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_size)
 {
 	off_t fsize;
@@ -129,6 +159,8 @@ static unsigned long simple_strtoul(const char *cp, char **endp, unsigned int ba
 	return strtoul(cp, endp, base);
 }
 
+#include "../include/xfuncs.h"
+#include "../crypto/crc32.c"
 #include "../common/imd.c"
 
 static void usage(const char *prgname)
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
