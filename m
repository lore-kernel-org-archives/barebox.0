Delivery-date: Thu, 09 Jan 2025 12:25:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVqfZ-0018tR-16
	for lore@lore.pengutronix.de;
	Thu, 09 Jan 2025 12:25:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVqfX-0006Dx-Ap
	for lore@pengutronix.de; Thu, 09 Jan 2025 12:25:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TQ+32NaFidcB9aIFE6oRTrhxRoyVUJX/Ej3EEtxupGs=; b=3g1zxocYI8DEYrBsVDpTQR4IUC
	XzNdlvesP0pWUGEnwTHCUAexKN9U4zAa/JO8uNV6RloxZaC/fow6Jle42XqBGzOTjezHCeijrMGe2
	4ENLvhQ9OvVx8/WK0wixfYDzb1fo+sDp9umhsm8AdJPiOdZexJE0sTtbA7P+W147uMFIYdyw4bTuV
	kBf2dpLmKOZtaGlR5ELLxESWgMk7twFHk61nKqGxxFcsPHowwtkZxsujDomz/76iaFPEUU4cqqtLR
	Jt8QYEvuLl63mUo923iGoiJsx2agBr7+2FFTjTM40ANFRf/KToNkretKa52rY0Hr4GLSdrrKkq6kO
	j8FNtjbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVqey-0000000Bhrh-2SNK;
	Thu, 09 Jan 2025 11:25:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVqeu-0000000Bhq7-0ysQ
	for barebox@lists.infradead.org;
	Thu, 09 Jan 2025 11:25:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVqes-00060D-Uc; Thu, 09 Jan 2025 12:25:02 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVqer-007gUl-3A;
	Thu, 09 Jan 2025 12:25:02 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVqes-00DK2B-26;
	Thu, 09 Jan 2025 12:25:02 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jan 2025 12:25:01 +0100
Message-Id: <20250109112501.3175213-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_032504_752974_5A1D5D78 
X-CRM114-Status: GOOD (  24.86  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Import ARM Trusted Firmware fiptool utility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On some platforms like the STM32MP, barebox is located in a FIP binary.
For network booting, interacting with the FIP can be quite useful,
so as first step port fiptool(1) to barebox.

Later, we can build a bootm handler or maybe a file system on top.

For now, the command is sufficient to unpack the FIP and manually boot
the artifacts.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig   |  18 ++
 commands/Makefile  |   1 +
 commands/fiptool.c | 644 +++++++++++++++++++++++++++++++++++++++++++++
 include/fip.h      | 111 ++++++++
 include/fiptool.h  |  87 ++++++
 lib/Kconfig        |   3 +
 lib/Makefile       |   1 +
 lib/fip.c          | 426 ++++++++++++++++++++++++++++++
 lib/tbbr_config.c  | 204 ++++++++++++++
 9 files changed, 1495 insertions(+)
 create mode 100644 commands/fiptool.c
 create mode 100644 include/fip.h
 create mode 100644 include/fiptool.h
 create mode 100644 lib/fip.c
 create mode 100644 lib/tbbr_config.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 5e4116c90f2f..84d1b629f0c1 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1163,6 +1163,24 @@ config CMD_SHA512SUM
 
 	  Calculate a SHA512 digest over a FILE or a memory area.
 
+config CMD_FIPTOOL
+	bool
+	select FIP
+	prompt "fiptool"
+	help
+	  Manipulate and inspect TF-A Firmware Image Packages.
+
+config CMD_FIPTOOL_WRITE
+	bool
+	depends on CMD_FIPTOOL
+	prompt "support create/update/remove subcommands to fiptool"
+	help
+	  Adds following subcommands that manipulate FIP files:
+
+	  fiptool create # Create a new FIP with the given images
+	  fiptool update # Update an existing FIP with the given images
+	  fiptool remove # Remove images from FIP
+
 config CMD_UNCOMPRESS
 	bool
 	select UNCOMPRESS
diff --git a/commands/Makefile b/commands/Makefile
index 6957d78295ec..2bc5ab8bfe9f 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -68,6 +68,7 @@ obj-$(CONFIG_USB_GADGET_DFU)	+= dfu.o
 obj-$(CONFIG_USB_GADGET_SERIAL)	+= usbserial.o
 obj-$(CONFIG_CMD_GPIO)		+= gpio.o
 obj-$(CONFIG_CMD_UNCOMPRESS)	+= uncompress.o
+obj-$(CONFIG_CMD_FIPTOOL)	+= fiptool.o
 obj-$(CONFIG_CMD_I2C)		+= i2c.o
 obj-$(CONFIG_CMD_SPI)		+= spi.o
 obj-$(CONFIG_CMD_PWM)		+= pwm.o
diff --git a/commands/fiptool.c b/commands/fiptool.c
new file mode 100644
index 000000000000..2d766f895bc1
--- /dev/null
+++ b/commands/fiptool.c
@@ -0,0 +1,644 @@
+/*
+ * Copyright (c) 2016-2023, ARM Limited and Contributors. All rights reserved.
+ *
+ * SPDX-License-Identifier: BSD-3-Clause
+ *
+ * Imported from TF-A v2.10.0
+ */
+
+#include <linux/kernel.h>
+#include <linux/printk.h>
+#include <linux/log2.h>
+#include <linux/stat.h>
+#include <getopt.h>
+#include <fcntl.h>
+#include <libfile.h>
+#include <unistd.h>
+#include <command.h>
+#include <malloc.h>
+#include <crypto/sha.h>
+#include <linux/kstrtox.h>
+#include <digest.h>
+#include <stdio.h>
+
+#include <fip.h>
+#include <fiptool.h>
+
+typedef struct cmd {
+	char              *name;
+	int              (*handler)(struct fip_state *fip, int, char **);
+	void             (*usage)(int);
+} cmd_t;
+
+
+static int write_image_to_file(const image_t *image, const char *filename)
+{
+	int fd;
+
+	fd = creat(filename, 0777);
+	if (fd < 0) {
+		pr_err("creat %s: %m\n", filename);
+		return -errno;
+	}
+
+	if (write_full(fd, image->buffer, image->toc_e.size) < 0) {
+		pr_err("Failed to write %s: %m\n", filename);
+		return -errno;
+	}
+
+	close(fd);
+	return 0;
+}
+
+
+static int info_cmd(struct fip_state *fip, int argc, char *argv[])
+{
+	image_desc_t *desc;
+	fip_toc_header_t toc_header;
+	int ret;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	argc--, argv++;
+
+	ret = parse_fip(fip, argv[0], &toc_header);
+	if (ret)
+		return ret;
+
+	pr_verbose("toc_header[name]: 0x%llX\n",
+	    (unsigned long long)toc_header.name);
+	pr_verbose("toc_header[serial_number]: 0x%llX\n",
+	    (unsigned long long)toc_header.serial_number);
+	pr_verbose("toc_header[flags]: 0x%llX\n",
+	    (unsigned long long)toc_header.flags);
+
+	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
+		image_t *image = desc->image;
+
+		if (image == NULL)
+			continue;
+		printf("%s: offset=0x%llX, size=0x%llX, cmdline=\"-e %s\"",
+		       desc->name,
+		       (unsigned long long)image->toc_e.offset_address,
+		       (unsigned long long)image->toc_e.size,
+		       desc->cmdline_name);
+
+		/*
+		 * Omit this informative code portion for:
+		 * Visual Studio missing SHA256.
+		 * Statically linked builds.
+		 */
+		if (IS_ENABLED(CONFIG_HAVE_DIGEST_SHA256) && fip->verbose) {
+			struct digest *sha256;
+			unsigned char md[SHA256_DIGEST_SIZE];
+			int err;
+
+			sha256 = digest_alloc("sha256");
+			if (!sha256)
+				continue;
+
+			err = digest_digest(sha256, image->buffer, image->toc_e.size, md);
+			if (err)
+				continue;
+
+			digest_free(sha256);
+
+			printf(", sha256=%*phN", (int)sizeof(md), md);
+		}
+		putchar('\n');
+	}
+
+	return 0;
+}
+
+
+static int uuid_cmd(struct fip_state *fip, int argc, char *argv[])
+{
+	for (toc_entry_t *t = toc_entries; t->cmdline_name != NULL; t++)
+		printf("%pU\t%-16s\t%s\n", &t->uuid, t->cmdline_name, t->name);
+	for (toc_entry_t *t = plat_def_toc_entries; t->cmdline_name != NULL; t++)
+		printf("%pU\t%-16s\t%s\n", &t->uuid, t->cmdline_name, t->name);
+	return 0;
+}
+
+
+static int parse_plat_toc_flags(const char *arg, unsigned long long *toc_flags)
+{
+	unsigned long long flags;
+	char *endptr;
+
+	errno = 0;
+	flags = simple_strtoull(arg, &endptr, 16);
+	if (*endptr != '\0' || flags > U16_MAX) {
+		pr_err("Invalid platform ToC flags: %s\n", arg);
+		return -1;
+	}
+	/* Platform ToC flags is a 16-bit field occupying bits [32-47]. */
+	*toc_flags |= flags << 32;
+
+	return 0;
+}
+
+static long get_image_align(char *arg)
+{
+	char *endptr;
+	long align;
+
+	errno = 0;
+	align = simple_strtol(arg, &endptr, 0);
+	if (*endptr != '\0' || align < 0 || !is_power_of_2(align)) {
+		pr_err("Invalid alignment: %s\n", arg);
+		return -1;
+	}
+
+	return align;
+}
+
+static void parse_blob_opt(char *arg, uuid_t *uuid, char *filename, size_t len)
+{
+	char *p, *val;
+
+	while ((p = strsep(&arg, ",")) != NULL) {
+		val = p + str_has_prefix(p, "uuid=");
+		if (val != p) {
+			uuid_parse(val, uuid);
+			continue;
+		}
+
+		val = p + str_has_prefix(p, "file=");
+		if (val != p) {
+			snprintf(filename, len, "%s", val);
+			continue;
+		}
+	}
+}
+
+static inline bool file_exists(const char *filename)
+{
+	struct stat st;
+
+	return stat(filename, &st) == 0;
+}
+
+static __maybe_unused int create_cmd(struct fip_state *fip, int argc, char *argv[])
+{
+	unsigned long long toc_flags = 0;
+	long align = 1;
+	int opt;
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	while ((opt = getopt(argc, argv, "e:p:a:b:")) > 0) {
+		switch (opt) {
+		case 'e': {
+			image_desc_t *desc;
+
+			desc = lookup_image_desc_from_opt(fip, &optarg);
+			if (!desc)
+				return COMMAND_ERROR;
+			set_image_desc_action(desc, DO_PACK, optarg);
+			break;
+		}
+		case 'p':
+			if (parse_plat_toc_flags(optarg, &toc_flags))
+				return COMMAND_ERROR;
+			break;
+		case 'a':
+			align = get_image_align(optarg);
+			if (align < 0)
+				return COMMAND_ERROR;
+			break;
+		case 'b': {
+			char name[UUID_STRING_LEN + 1];
+			char filename[PATH_MAX] = { 0 };
+			uuid_t uuid = uuid_null;
+			image_desc_t *desc;
+
+			parse_blob_opt(optarg, &uuid,
+			    filename, sizeof(filename));
+
+			if (memcmp(&uuid, &uuid_null, sizeof(uuid_t)) == 0 ||
+			    filename[0] == '\0')
+				return COMMAND_ERROR_USAGE;
+
+			desc = lookup_image_desc_from_uuid(fip, &uuid);
+			if (desc == NULL) {
+				snprintf(name, sizeof(name), "%pU", &uuid);
+				desc = new_image_desc(&uuid, name, "blob");
+				add_image_desc(fip, desc);
+			}
+			set_image_desc_action(desc, DO_PACK, filename);
+			break;
+		}
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+	argc -= optind;
+	argv += optind;
+
+	if (argc == 0)
+		return COMMAND_ERROR_USAGE;
+
+	if (update_fip(fip))
+		return COMMAND_ERROR;
+
+	return pack_images(fip, argv[0], toc_flags, align);
+}
+
+
+static __maybe_unused int update_cmd(struct fip_state *fip, int argc, char *argv[])
+{
+	char outfile[PATH_MAX] = { 0 };
+	fip_toc_header_t toc_header = { 0 };
+	unsigned long long toc_flags = 0;
+	long align = 1;
+	int pflag = 0;
+	int ret, opt;
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	while ((opt = getopt(argc, argv, "e:p:b:a:o:")) > 0) {
+		switch (opt) {
+		case 'e': {
+			image_desc_t *desc;
+
+			desc = lookup_image_desc_from_opt(fip, &optarg);
+			if (!desc)
+				return COMMAND_ERROR;
+			set_image_desc_action(desc, DO_PACK, optarg);
+			break;
+		}
+		case 'p':
+			if (parse_plat_toc_flags(optarg, &toc_flags))
+				return COMMAND_ERROR;
+			pflag = 1;
+			break;
+		case 'b': {
+			char name[UUID_STRING_LEN + 1];
+			char filename[PATH_MAX] = { 0 };
+			uuid_t uuid = uuid_null;
+			image_desc_t *desc;
+
+			parse_blob_opt(optarg, &uuid,
+			    filename, sizeof(filename));
+
+			if (memcmp(&uuid, &uuid_null, sizeof(uuid_t)) == 0 ||
+			    filename[0] == '\0')
+				return COMMAND_ERROR_USAGE;
+
+			desc = lookup_image_desc_from_uuid(fip, &uuid);
+			if (desc == NULL) {
+				snprintf(name, sizeof(name), "%pU", &uuid);
+				desc = new_image_desc(&uuid, name, "blob");
+				add_image_desc(fip, desc);
+			}
+			set_image_desc_action(desc, DO_PACK, filename);
+			break;
+		}
+		case 'a':
+			align = get_image_align(optarg);
+			if (align < 0)
+				return COMMAND_ERROR;
+			break;
+		case 'o':
+			snprintf(outfile, sizeof(outfile), "%s", optarg);
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+	argc -= optind;
+	argv += optind;
+
+	if (argc == 0)
+		return COMMAND_ERROR_USAGE;
+
+	if (outfile[0] == '\0')
+		snprintf(outfile, sizeof(outfile), "%s", argv[0]);
+
+	if (file_exists(argv[0])) {
+		ret = parse_fip(fip, argv[0], &toc_header);
+		if (ret)
+			return ret;
+	}
+
+	if (pflag)
+		toc_header.flags &= ~(0xffffULL << 32);
+	toc_flags = (toc_header.flags |= toc_flags);
+
+	if (update_fip(fip))
+		return COMMAND_ERROR;
+
+	return pack_images(fip, outfile, toc_flags, align);
+}
+
+static int unpack_cmd(struct fip_state *fip, int argc, char *argv[])
+{
+	char outdir[PATH_MAX] = { 0 };
+	image_desc_t *desc;
+	int fflag = 0;
+	int unpack_all = 1;
+	int ret, opt;
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	while ((opt = getopt(argc, argv, "e:b:fo:")) > 0) {
+		switch (opt) {
+		case 'e': {
+			image_desc_t *desc;
+
+			desc = lookup_image_desc_from_opt(fip, &optarg);
+			if (!desc)
+				return COMMAND_ERROR;
+			set_image_desc_action(desc, DO_UNPACK, optarg);
+			unpack_all = 0;
+			break;
+		}
+		case 'b': {
+			char name[UUID_STRING_LEN + 1];
+			char filename[PATH_MAX] = { 0 };
+			uuid_t uuid = uuid_null;
+			image_desc_t *desc;
+
+			parse_blob_opt(optarg, &uuid,
+			    filename, sizeof(filename));
+
+			if (memcmp(&uuid, &uuid_null, sizeof(uuid_t)) == 0 ||
+			    filename[0] == '\0')
+				return COMMAND_ERROR_USAGE;
+
+			desc = lookup_image_desc_from_uuid(fip, &uuid);
+			if (desc == NULL) {
+				snprintf(name, sizeof(name), "%pU", &uuid);
+				desc = new_image_desc(&uuid, name, "blob");
+				add_image_desc(fip, desc);
+			}
+			set_image_desc_action(desc, DO_UNPACK, filename);
+			unpack_all = 0;
+			break;
+		}
+		case 'f':
+			fflag = 1;
+			break;
+		case 'o':
+			snprintf(outdir, sizeof(outdir), "%s", optarg);
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+	argc -= optind;
+	argv += optind;
+
+	if (argc == 0)
+		return COMMAND_ERROR_USAGE;
+
+	ret = parse_fip(fip, argv[0], NULL);
+	if (ret)
+		return ret;
+
+	if (outdir[0] != '\0')
+		if (chdir(outdir) == -1) {
+			pr_err("chdir %s: %m\n", outdir);
+			return COMMAND_ERROR;
+		}
+
+	/* Unpack all specified images. */
+	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
+		char file[PATH_MAX];
+		image_t *image = desc->image;
+
+		if (!unpack_all && desc->action != DO_UNPACK)
+			continue;
+
+		/* Build filename. */
+		if (desc->action_arg == NULL)
+			snprintf(file, sizeof(file), "%s.bin",
+			    desc->cmdline_name);
+		else
+			snprintf(file, sizeof(file), "%s",
+			    desc->action_arg);
+
+		if (image == NULL) {
+			if (!unpack_all)
+				pr_warn("%s does not exist in %s\n", file, argv[0]);
+			continue;
+		}
+
+		if (!file_exists(file) || fflag) {
+			pr_verbose("Unpacking %s\n", file);
+			ret = write_image_to_file(image, file);
+			if (ret)
+				return ret;
+		} else {
+			pr_warn("File %s already exists, use -f to overwrite it\n", file);
+		}
+	}
+
+	return 0;
+}
+
+static __maybe_unused int remove_cmd(struct fip_state *fip, int argc, char *argv[])
+{
+	char outfile[PATH_MAX] = { 0 };
+	fip_toc_header_t toc_header;
+	image_desc_t *desc;
+	long align = 1;
+	int ret, opt, fflag = 0;
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	while ((opt = getopt(argc, argv, "e:a:b:fo:")) > 0) {
+		switch (opt) {
+		case 'e': {
+			image_desc_t *desc;
+
+			desc = lookup_image_desc_from_opt(fip, &optarg);
+			if (!desc)
+				return COMMAND_ERROR;
+			set_image_desc_action(desc, DO_REMOVE, NULL);
+			break;
+		}
+		case 'a':
+			align = get_image_align(optarg);
+			if (align < 0)
+				return COMMAND_ERROR;
+			break;
+		case 'b': {
+			char name[UUID_STRING_LEN + 1], filename[PATH_MAX];
+			uuid_t uuid = uuid_null;
+			image_desc_t *desc;
+
+			parse_blob_opt(optarg, &uuid,
+			    filename, sizeof(filename));
+
+			if (memcmp(&uuid, &uuid_null, sizeof(uuid_t)) == 0)
+				return COMMAND_ERROR_USAGE;
+
+			desc = lookup_image_desc_from_uuid(fip, &uuid);
+			if (desc == NULL) {
+				snprintf(name, sizeof(name), "%pU", &uuid);
+				desc = new_image_desc(&uuid, name, "blob");
+				add_image_desc(fip, desc);
+			}
+			set_image_desc_action(desc, DO_REMOVE, NULL);
+			break;
+		}
+		case 'f':
+			fflag = 1;
+			break;
+		case 'o':
+			snprintf(outfile, sizeof(outfile), "%s", optarg);
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+	argc -= optind;
+	argv += optind;
+
+	if (argc == 0)
+		return COMMAND_ERROR_USAGE;
+
+	if (outfile[0] != '\0' && file_exists(outfile) && !fflag)
+		pr_err("File %s already exists, use -f to overwrite it\n",
+		    outfile);
+
+	if (outfile[0] == '\0')
+		snprintf(outfile, sizeof(outfile), "%s", argv[0]);
+
+	ret = parse_fip(fip, argv[0], &toc_header);
+	if (ret)
+		return ret;
+
+	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
+		if (desc->action != DO_REMOVE)
+			continue;
+
+		if (desc->image != NULL) {
+			pr_verbose("Removing %s\n", desc->cmdline_name);
+			free(desc->image);
+			desc->image = NULL;
+		} else {
+			pr_warn("%s does not exist in %s\n", desc->cmdline_name, argv[0]);
+		}
+	}
+
+	return pack_images(fip, outfile, toc_header.flags, align);
+}
+
+/* Available subcommands. */
+static cmd_t cmds[] = {
+	{ .name = "info",    .handler = info_cmd,    },
+	{ .name = "uuid",    .handler = uuid_cmd,    },
+	{ .name = "unpack",  .handler = unpack_cmd,  },
+#ifdef CONFIG_CMD_FIPTOOL_WRITE
+	{ .name = "create",  .handler = create_cmd,  },
+	{ .name = "update",  .handler = update_cmd,  },
+	{ .name = "remove",  .handler = remove_cmd,  },
+#endif
+};
+
+static int do_fiptool(int argc, char *argv[])
+{
+	int i, opt, ret = 0;
+	struct fip_state fip = {};
+
+	/*
+	 * Set POSIX mode so getopt stops at the first non-option
+	 * which is the subcommand.
+	 */
+	while ((opt = getopt(argc, argv, "+v")) > 0) {
+		switch (opt) {
+		case 'v':
+			fip.verbose = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+	argc -= optind;
+	argv += optind;
+
+	if (argc == 0)
+		return COMMAND_ERROR_USAGE;
+
+	fill_image_descs(&fip);
+	for (i = 0; i < ARRAY_SIZE(cmds); i++) {
+		if (strcmp(cmds[i].name, argv[0]) == 0) {
+			struct getopt_context gc;
+
+			getopt_context_store(&gc);
+
+			ret = cmds[i].handler(&fip, argc, argv);
+
+			getopt_context_restore(&gc);
+			break;
+		}
+	}
+
+	if (i == ARRAY_SIZE(cmds))
+		return COMMAND_ERROR_USAGE;
+	free_image_descs(&fip);
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(fiptool)
+BAREBOX_CMD_HELP_TEXT("List information about the specified files or directories")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Global options:")
+BAREBOX_CMD_HELP_OPT ("-v",  "verbose output")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Commands:")
+BAREBOX_CMD_HELP_OPT("info",   "List images contained in FIP")
+BAREBOX_CMD_HELP_OPT("uuid",   "List possible FIP image types and their UUIDs")
+BAREBOX_CMD_HELP_OPT("unpack", "Unpack images from FIP")
+#ifdef CONFIG_CMD_FIPTOOL_WRITE
+BAREBOX_CMD_HELP_OPT("create", "Create a new FIP with the given images")
+BAREBOX_CMD_HELP_OPT("update", "Update an existing FIP with the given images")
+BAREBOX_CMD_HELP_OPT("remove", "Remove images from FIP")
+#endif
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("fiptool unpack [OPTS] FIP_FILENAME")
+BAREBOX_CMD_HELP_OPT("-a VALUE", "Each image is aligned to VALUE (default: 1)")
+BAREBOX_CMD_HELP_OPT("-b uuid=UUID,file=FILE", "Unpack an image with the given UUID into FILE")
+BAREBOX_CMD_HELP_OPT("-f", "force overwrite of the output FIP file if it already exists")
+BAREBOX_CMD_HELP_OPT("-o", "Set an alternative output FIP file")
+BAREBOX_CMD_HELP_OPT("-e TYPE[=FILE]", "unpack only TYPE entry")
+#ifdef CONFIG_CMD_FIPTOOL_WRITE
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("fiptool create [OPTS] FIP_FILENAME")
+BAREBOX_CMD_HELP_OPT("-a VALUE", "Each image is aligned to VALUE (default: 1)")
+BAREBOX_CMD_HELP_OPT("-b uuid=UUID,file=FILE", "Add an image with the given UUID pointed to by FILE")
+BAREBOX_CMD_HELP_OPT("-p", "16-bit platform specific flag field occupying bits 32-47 in 64-bit ToC header")
+BAREBOX_CMD_HELP_OPT("-e TYPE[=FILE]", "add TYPE entry from FILE")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("fiptool update [OPTS] FIP_FILENAME")
+BAREBOX_CMD_HELP_OPT("-a VALUE", "Each image is aligned to VALUE (default: 1)")
+BAREBOX_CMD_HELP_OPT("-b uuid=UUID,file=FILE", "Add an image with the given UUID pointed to by FILE")
+BAREBOX_CMD_HELP_OPT("-o", "Set an alternative output FIP file")
+BAREBOX_CMD_HELP_OPT("-p", "16-bit platform specific flag field occupying bits 32-47 in 64-bit ToC header")
+BAREBOX_CMD_HELP_OPT("-e TYPE[=FILE]", "update TYPE entry with FILE")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("fiptool remove [OPTS] FIP_FILENAME")
+BAREBOX_CMD_HELP_OPT("-a VALUE", "Each image is aligned to VALUE (default: 1)")
+BAREBOX_CMD_HELP_OPT("-b uuid=UUID", "Remove an image with the given UUID")
+BAREBOX_CMD_HELP_OPT("-f", "force overwrit of the output FIP file if it already exists")
+BAREBOX_CMD_HELP_OPT("-o", "Set an alternative output FIP file")
+BAREBOX_CMD_HELP_OPT("-e TYPE", "remove TYPE entry")
+#endif
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(fiptool)
+	.cmd		= do_fiptool,
+	BAREBOX_CMD_DESC("inspect and manipulate TF-A firmware image packages")
+	BAREBOX_CMD_OPTS("[-v] COMMAND [ARGS...]")
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
+	BAREBOX_CMD_HELP(cmd_fiptool_help)
+BAREBOX_CMD_END
diff --git a/include/fip.h b/include/fip.h
new file mode 100644
index 000000000000..a5d3e507fb34
--- /dev/null
+++ b/include/fip.h
@@ -0,0 +1,111 @@
+/*
+ * Copyright (c) 2014-2022, ARM Limited and Contributors. All rights reserved.
+ *
+ * SPDX-License-Identifier: BSD-3-Clause
+ */
+
+#ifndef FIRMWARE_IMAGE_PACKAGE_H
+#define FIRMWARE_IMAGE_PACKAGE_H
+
+#include <linux/uuid.h>
+#include <linux/types.h>
+
+/* This is used as a signature to validate the blob header */
+#define TOC_HEADER_NAME	0xAA640001
+
+
+/* ToC Entry UUIDs */
+#define UUID_TRUSTED_UPDATE_FIRMWARE_SCP_BL2U \
+	UUID_INIT(0x65922703, 0x2f74, 0xe644, 0x8d, 0xff, 0x57, 0x9a, 0xc1, 0xff, 0x06, 0x10)
+#define UUID_TRUSTED_UPDATE_FIRMWARE_BL2U \
+	UUID_INIT(0x60b3eb37, 0xc1e5, 0xea41, 0x9d, 0xf3, 0x19, 0xed, 0xa1, 0x1f, 0x68, 0x01)
+#define UUID_TRUSTED_UPDATE_FIRMWARE_NS_BL2U \
+	UUID_INIT(0x4f511d11, 0x2be5, 0x4e49, 0xb4, 0xc5, 0x83, 0xc2, 0xf7, 0x15, 0x84, 0x0a)
+#define UUID_TRUSTED_FWU_CERT \
+	UUID_INIT(0x71408ab2, 0x18d6, 0x874c, 0x8b, 0x2e, 0xc6, 0xdc, 0xcd, 0x50, 0xf0, 0x96)
+#define UUID_CCA_CONTENT_CERT \
+	UUID_INIT(0x36d83d85, 0x761d, 0x4daf, 0x96, 0xf1, 0xcd, 0x99, 0xd6, 0x56, 0x9b, 0x00)
+#define UUID_CORE_SWD_KEY_CERT \
+	UUID_INIT(0x52222d31, 0x820f, 0x494d, 0x8b, 0xbc, 0xea, 0x68, 0x25, 0xd3, 0xc3, 0x5a)
+#define UUID_PLAT_KEY_CERT \
+	UUID_INIT(0xd43cd902, 0x5b9f, 0x412e, 0x8a, 0xc6, 0x92, 0xb6, 0xd1, 0x8b, 0xe6, 0x0d)
+#define UUID_TRUSTED_BOOT_FIRMWARE_BL2 \
+	UUID_INIT(0x5ff9ec0b, 0x4d22, 0x3e4d, 0xa5, 0x44, 0xc3, 0x9d, 0x81, 0xc7, 0x3f, 0x0a)
+#define UUID_SCP_FIRMWARE_SCP_BL2 \
+	UUID_INIT(0x9766fd3d, 0x89be, 0xe849, 0xae, 0x5d, 0x78, 0xa1, 0x40, 0x60, 0x82, 0x13)
+#define UUID_EL3_RUNTIME_FIRMWARE_BL31 \
+	UUID_INIT(0x47d4086d, 0x4cfe, 0x9846, 0x9b, 0x95, 0x29, 0x50, 0xcb, 0xbd, 0x5a, 0x00)
+#define UUID_SECURE_PAYLOAD_BL32 \
+	UUID_INIT(0x05d0e189, 0x53dc, 0x1347, 0x8d, 0x2b, 0x50, 0x0a, 0x4b, 0x7a, 0x3e, 0x38)
+#define UUID_SECURE_PAYLOAD_BL32_EXTRA1 \
+	UUID_INIT(0x0b70c29b, 0x2a5a, 0x7840, 0x9f, 0x65, 0x0a, 0x56, 0x82, 0x73, 0x82, 0x88)
+#define UUID_SECURE_PAYLOAD_BL32_EXTRA2 \
+	UUID_INIT(0x8ea87bb1, 0xcfa2, 0x3f4d, 0x85, 0xfd, 0xe7, 0xbb, 0xa5, 0x02, 0x20, 0xd9)
+#define UUID_NON_TRUSTED_FIRMWARE_BL33 \
+	UUID_INIT(0xd6d0eea7, 0xfcea, 0xd54b, 0x97, 0x82, 0x99, 0x34, 0xf2, 0x34, 0xb6, 0xe4)
+#define UUID_REALM_MONITOR_MGMT_FIRMWARE \
+	UUID_INIT(0x6c0762a6, 0x12f2, 0x4b56, 0x92, 0xcb, 0xba, 0x8f, 0x63, 0x36, 0x06, 0xd9)
+
+/* Key certificates */
+#define UUID_ROT_KEY_CERT \
+	UUID_INIT(0x862d1d72, 0xf860, 0xe411, 0x92, 0x0b, 0x8b, 0xe7, 0x62, 0x16, 0x0f, 0x24)
+#define UUID_TRUSTED_KEY_CERT \
+	UUID_INIT(0x827ee890, 0xf860, 0xe411, 0xa1, 0xb4, 0x77, 0x7a, 0x21, 0xb4, 0xf9, 0x4c)
+#define UUID_NON_TRUSTED_WORLD_KEY_CERT \
+	UUID_INIT(0x1c67873d, 0x5f63, 0xe411, 0x97, 0x8d, 0x27, 0xc0, 0xc7, 0x14, 0x8a, 0xbd)
+#define UUID_SCP_FW_KEY_CERT \
+	UUID_INIT(0x024221a1, 0xf860, 0xe411, 0x8d, 0x9b, 0xf3, 0x3c, 0x0e, 0x15, 0xa0, 0x14)
+#define UUID_SOC_FW_KEY_CERT \
+	UUID_INIT(0x8ab8becc, 0xf960, 0xe411, 0x9a, 0xd0, 0xeb, 0x48, 0x22, 0xd8, 0xdc, 0xf8)
+#define UUID_TRUSTED_OS_FW_KEY_CERT \
+	UUID_INIT(0x9477d603, 0xfb60, 0xe411, 0x85, 0xdd, 0xb7, 0x10, 0x5b, 0x8c, 0xee, 0x04)
+#define UUID_NON_TRUSTED_FW_KEY_CERT \
+	UUID_INIT(0x8ad5832a, 0xfb60, 0xe411, 0x8a, 0xaf, 0xdf, 0x30, 0xbb, 0xc4, 0x98, 0x59)
+
+/* Content certificates */
+#define UUID_TRUSTED_BOOT_FW_CERT \
+	UUID_INIT(0xd6e269ea, 0x5d63, 0xe411, 0x8d, 0x8c, 0x9f, 0xba, 0xbe, 0x99, 0x56, 0xa5)
+#define UUID_SCP_FW_CONTENT_CERT \
+	UUID_INIT(0x44be6f04, 0x5e63, 0xe411, 0xb2, 0x8b, 0x73, 0xd8, 0xea, 0xae, 0x96, 0x56)
+#define UUID_SOC_FW_CONTENT_CERT \
+	UUID_INIT(0xe2b20c20, 0x5e63, 0xe411, 0x9c, 0xe8, 0xab, 0xcc, 0xf9, 0x2b, 0xb6, 0x66)
+#define UUID_TRUSTED_OS_FW_CONTENT_CERT \
+	UUID_INIT(0xa49f4411, 0x5e63, 0xe411, 0x87, 0x28, 0x3f, 0x05, 0x72, 0x2a, 0xf3, 0x3d)
+#define UUID_NON_TRUSTED_FW_CONTENT_CERT \
+	UUID_INIT(0x8ec4c1f3, 0x5d63, 0xe411, 0xa7, 0xa9, 0x87, 0xee, 0x40, 0xb2, 0x3f, 0xa7)
+#define UUID_SIP_SECURE_PARTITION_CONTENT_CERT \
+	UUID_INIT(0x776dfd44, 0x8697, 0x4c3b, 0x91, 0xeb, 0xc1, 0x3e, 0x02, 0x5a, 0x2a, 0x6f)
+#define UUID_PLAT_SECURE_PARTITION_CONTENT_CERT \
+	UUID_INIT(0xddcbbf4a, 0xcad6, 0x11ea, 0x87, 0xd0, 0x02, 0x42, 0xac, 0x13, 0x00, 0x03)
+
+/* Dynamic configs */
+#define UUID_HW_CONFIG \
+	UUID_INIT(0x08b8f1d9, 0xc9cf, 0x9349, 0xa9, 0x62, 0x6f, 0xbc, 0x6b, 0x72, 0x65, 0xcc)
+#define UUID_TB_FW_CONFIG \
+	UUID_INIT(0x6c0458ff, 0xaf6b, 0x7d4f, 0x82, 0xed, 0xaa, 0x27, 0xbc, 0x69, 0xbf, 0xd2)
+#define UUID_SOC_FW_CONFIG \
+	UUID_INIT(0x9979814b, 0x0376, 0xfb46, 0x8c, 0x8e, 0x8d, 0x26, 0x7f, 0x78, 0x59, 0xe0)
+#define UUID_TOS_FW_CONFIG \
+	UUID_INIT(0x26257c1a, 0xdbc6, 0x7f47, 0x8d, 0x96, 0xc4, 0xc4, 0xb0, 0x24, 0x80, 0x21)
+#define UUID_NT_FW_CONFIG \
+	UUID_INIT(0x28da9815, 0x93e8, 0x7e44, 0xac, 0x66, 0x1a, 0xaf, 0x80, 0x15, 0x50, 0xf9)
+#define UUID_FW_CONFIG \
+	UUID_INIT(0x5807e16a, 0x8459, 0x47be, 0x8e, 0xd5, 0x64, 0x8e, 0x8d, 0xdd, 0xab, 0x0e)
+
+#define UUID_STM32MP_CONFIG_CERT \
+	UUID_INIT(0x501d8dd2, 0x8bce, 0x49a5, 0x84, 0xeb, 0x55, 0x9a, 0x9f, 0x2e, 0xae, 0xaf)
+
+typedef struct fip_toc_header {
+	uint32_t	name;
+	uint32_t	serial_number;
+	uint64_t	flags;
+} fip_toc_header_t;
+
+typedef struct fip_toc_entry {
+	uuid_t		uuid;
+	uint64_t	offset_address;
+	uint64_t	size;
+	uint64_t	flags;
+} fip_toc_entry_t;
+
+#endif /* FIRMWARE_IMAGE_PACKAGE_H */
diff --git a/include/fiptool.h b/include/fiptool.h
new file mode 100644
index 000000000000..704845f45664
--- /dev/null
+++ b/include/fiptool.h
@@ -0,0 +1,87 @@
+/*
+ * Copyright (c) 2014-2022, ARM Limited and Contributors. All rights reserved.
+ *
+ * SPDX-License-Identifier: BSD-3-Clause
+ */
+#ifndef FIPTOOL_H
+#define FIPTOOL_H
+
+#include <linux/uuid.h>
+#include <fip.h>
+
+enum {
+	DO_UNSPEC = 0,
+	DO_PACK   = 1,
+	DO_UNPACK = 2,
+	DO_REMOVE = 3
+};
+
+typedef struct image_desc {
+	uuid_t             uuid;
+	char              *name;
+	char              *cmdline_name;
+	int                action;
+	char              *action_arg;
+	struct image      *image;
+	struct image_desc *next;
+} image_desc_t;
+
+typedef struct image {
+	struct fip_toc_entry toc_e;
+	void                *buffer;
+} image_t;
+
+struct fip_state {
+	image_desc_t *image_desc_head;
+	size_t nr_image_descs;
+	int verbose;
+};
+
+#define pr_verbose(...) do { \
+	if (fip->verbose) { \
+		pr_info(__VA_ARGS__); \
+	} else { \
+		pr_debug(__VA_ARGS__); \
+	} \
+} while (0)
+
+image_desc_t *new_image_desc(const uuid_t *uuid,
+			     const char *name, const char *cmdline_name);
+
+void set_image_desc_action(image_desc_t *desc, int action,
+    const char *arg);
+
+void free_image_desc(image_desc_t *desc);
+
+void add_image_desc(struct fip_state *fip, image_desc_t *desc);
+
+void free_image_descs(struct fip_state *fip);
+
+void fill_image_descs(struct fip_state *fip);
+
+image_desc_t *lookup_image_desc_from_uuid(struct fip_state *fip,
+						 const uuid_t *uuid);
+
+image_desc_t *lookup_image_desc_from_opt(struct fip_state *fip, char **arg);
+
+int parse_fip(struct fip_state *fip,
+		     const char *filename, fip_toc_header_t *toc_header_out);
+
+int pack_images(struct fip_state *fip,
+		const char *filename,
+		uint64_t toc_flags, unsigned long align);
+
+int update_fip(struct fip_state *fip);
+
+#define TOC_HEADER_SERIAL_NUMBER 0x12345678
+
+typedef struct toc_entry {
+	char         *name;
+	uuid_t        uuid;
+	char         *cmdline_name;
+} toc_entry_t;
+
+extern toc_entry_t toc_entries[];
+extern toc_entry_t plat_def_toc_entries[];
+
+#endif /* FIPTOOL_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index 44133a54f31f..40c7b2cb5d65 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -111,6 +111,9 @@ config LIBUBIGEN
 config IMAGE_SPARSE
 	bool
 
+config FIP
+	bool
+
 config STMP_DEVICE
 	bool "STMP device support" if COMPILE_TEST
 
diff --git a/lib/Makefile b/lib/Makefile
index 1cf311ebcdb8..46b42146cbc9 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -22,6 +22,7 @@ obj-y			+= readkey.o
 obj-y			+= kfifo.o
 obj-y			+= libbb.o
 obj-y			+= libgen.o
+obj-$(CONFIG_FIP)	+= fip.o tbbr_config.o
 obj-$(CONFIG_JSMN)	+= jsmn.o
 obj-$(CONFIG_BLOBGEN)	+= blobgen.o
 obj-y			+= stringlist.o
diff --git a/lib/fip.c b/lib/fip.c
new file mode 100644
index 000000000000..ae7ff8b3ad00
--- /dev/null
+++ b/lib/fip.c
@@ -0,0 +1,426 @@
+/*
+ * Copyright (c) 2016-2023, ARM Limited and Contributors. All rights reserved.
+ *
+ * SPDX-License-Identifier: BSD-3-Clause
+ *
+ * Imported from TF-A v2.10.0
+ */
+
+#define pr_fmt(fmt) "fip: " fmt
+
+#include <unistd.h>
+#include <linux/fs.h>
+#include <linux/types.h>
+#include <linux/stat.h>
+#include <linux/bug.h>
+#include <linux/log2.h>
+#include <malloc.h>
+#include <errno.h>
+#include <linux/limits.h>
+#include <linux/uuid.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <libfile.h>
+
+#include <fip.h>
+#include <fiptool.h>
+
+image_desc_t *new_image_desc(const uuid_t *uuid,
+			     const char *name, const char *cmdline_name)
+{
+	image_desc_t *desc;
+
+	desc = xzalloc(sizeof(*desc));
+	memcpy(&desc->uuid, uuid, sizeof(uuid_t));
+	desc->name = xstrdup(name);
+	desc->cmdline_name = xstrdup(cmdline_name);
+	desc->action = DO_UNSPEC;
+	return desc;
+}
+
+void set_image_desc_action(image_desc_t *desc, int action,
+    const char *arg)
+{
+	ASSERT(desc != NULL);
+
+	if (desc->action_arg != (char *)DO_UNSPEC)
+		free(desc->action_arg);
+	desc->action = action;
+	desc->action_arg = NULL;
+	if (arg != NULL)
+		desc->action_arg = xstrdup(arg);
+}
+
+void free_image_desc(image_desc_t *desc)
+{
+	free(desc->name);
+	free(desc->cmdline_name);
+	free(desc->action_arg);
+	if (desc->image) {
+		free(desc->image->buffer);
+		free(desc->image);
+	}
+	free(desc);
+}
+
+void add_image_desc(struct fip_state *fip, image_desc_t *desc)
+{
+	image_desc_t **p = &fip->image_desc_head;
+
+	while (*p)
+		p = &(*p)->next;
+
+	ASSERT(*p == NULL);
+	*p = desc;
+	fip->nr_image_descs++;
+}
+
+void free_image_descs(struct fip_state *fip)
+{
+	image_desc_t *desc = fip->image_desc_head, *tmp;
+
+	while (desc != NULL) {
+		tmp = desc->next;
+		free_image_desc(desc);
+		desc = tmp;
+		fip->nr_image_descs--;
+	}
+	ASSERT(fip->nr_image_descs == 0);
+}
+
+void fill_image_descs(struct fip_state *fip)
+{
+	toc_entry_t *toc_entry;
+
+	for (toc_entry = toc_entries;
+	     toc_entry->cmdline_name != NULL;
+	     toc_entry++) {
+		image_desc_t *desc;
+
+		desc = new_image_desc(&toc_entry->uuid,
+		    toc_entry->name,
+		    toc_entry->cmdline_name);
+		add_image_desc(fip, desc);
+	}
+	for (toc_entry = plat_def_toc_entries;
+	     toc_entry->cmdline_name != NULL;
+	     toc_entry++) {
+		image_desc_t *desc;
+
+		desc = new_image_desc(&toc_entry->uuid,
+		    toc_entry->name,
+		    toc_entry->cmdline_name);
+		add_image_desc(fip, desc);
+	}
+}
+
+image_desc_t *lookup_image_desc_from_uuid(struct fip_state *fip,
+						 const uuid_t *uuid)
+{
+	image_desc_t *desc;
+
+	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next)
+		if (memcmp(&desc->uuid, uuid, sizeof(uuid_t)) == 0)
+			return desc;
+	return NULL;
+}
+
+image_desc_t *lookup_image_desc_from_opt(struct fip_state *fip, char **arg)
+{
+	int len = 0;
+	image_desc_t *desc;
+	char *eq;
+
+	eq = strchrnul(*arg, '=');
+	len = eq - *arg;
+
+	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
+		if (strncmp(desc->cmdline_name, *arg, len) == 0) {
+			if (*eq)
+				*arg = eq + 1;
+			return desc;
+		}
+	}
+
+	printf("unknown image type '%.*s'\n", len, *arg);
+	return NULL;
+}
+
+int parse_fip(struct fip_state *fip,
+		     const char *filename, fip_toc_header_t *toc_header_out)
+{
+	struct stat st;
+	int fd;
+	char *buf, *bufend;
+	fip_toc_header_t *toc_header;
+	fip_toc_entry_t *toc_entry;
+	int terminated = 0;
+	size_t st_size;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0) {
+		pr_err("open %s: %m\n", filename);
+		return -errno;
+	}
+
+	if (fstat(fd, &st) == -1) {
+		pr_err("fstat %s: %m\n", filename);
+		return -errno;
+	}
+
+	st_size = st.st_size;
+
+	buf = xmalloc(st_size);
+	if (read_full(fd, buf, st_size) != st_size) {
+		pr_err("Failed to read %s: %m\n", filename);
+		return -errno;
+	}
+
+	bufend = buf + st_size;
+	close(fd);
+
+	if (st_size < sizeof(fip_toc_header_t)) {
+		pr_err("FIP %s is truncated\n", filename);
+		return -ENODATA;
+	}
+
+	toc_header = (fip_toc_header_t *)buf;
+	toc_entry = (fip_toc_entry_t *)(toc_header + 1);
+
+	if (toc_header->name != TOC_HEADER_NAME) {
+		pr_err("%s is not a FIP file: unknown magic = 0x%08x\n",
+		       filename, toc_header->name);
+		return -EINVAL;
+	}
+
+	/* Return the ToC header if the caller wants it. */
+	if (toc_header_out != NULL)
+		*toc_header_out = *toc_header;
+
+	/* Walk through each ToC entry in the file. */
+	while ((char *)toc_entry + sizeof(*toc_entry) - 1 < bufend) {
+		image_t *image;
+		image_desc_t *desc;
+
+		/* Found the ToC terminator, we are done. */
+		if (memcmp(&toc_entry->uuid, &uuid_null, sizeof(uuid_t)) == 0) {
+			terminated = 1;
+			break;
+		}
+
+		/*
+		 * Build a new image out of the ToC entry and add it to the
+		 * table of images.
+		 */
+		image = xzalloc(sizeof(*image));
+		image->toc_e = *toc_entry;
+		image->buffer = xmalloc(toc_entry->size);
+		/* Overflow checks before memory copy. */
+		if (toc_entry->size > (uint64_t)-1 - toc_entry->offset_address) {
+			pr_err("FIP %s is corrupted: entry size exceeds 64 bit address space\n",
+			       filename);
+			return -EINVAL;
+		}
+		if (toc_entry->size + toc_entry->offset_address > st_size) {
+			pr_err("FIP %s is corrupted: entry size (0x%llx) exceeds FIP file size (0x%zx)\n",
+				filename, toc_entry->size + toc_entry->offset_address, st_size);
+			return -EINVAL;
+		}
+
+		memcpy(image->buffer, buf + toc_entry->offset_address,
+		    toc_entry->size);
+
+		/* If this is an unknown image, create a descriptor for it. */
+		desc = lookup_image_desc_from_uuid(fip, &toc_entry->uuid);
+		if (desc == NULL) {
+			char name[UUID_STRING_LEN + 1], filename[PATH_MAX];
+
+			snprintf(name, sizeof(name), "%pU", &toc_entry->uuid);
+			snprintf(filename, sizeof(filename), "%s%s",
+			    name, ".bin");
+			desc = new_image_desc(&toc_entry->uuid, name, "blob");
+			desc->action = DO_UNPACK;
+			desc->action_arg = xstrdup(filename);
+			add_image_desc(fip, desc);
+		}
+
+		ASSERT(desc->image == NULL);
+		desc->image = image;
+
+		toc_entry++;
+	}
+
+	if (terminated == 0) {
+		pr_err("FIP %s does not have a ToC terminator entry\n",
+		    filename);
+		return -EINVAL;
+	}
+	free(buf);
+	return 0;
+}
+
+static image_t *read_image_from_file(const uuid_t *uuid, const char *filename)
+{
+	struct stat st;
+	image_t *image;
+	int fd;
+
+	ASSERT(uuid != NULL);
+	ASSERT(filename != NULL);
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0) {
+		pr_err("open %s: %m\n", filename);
+		return NULL;
+	}
+
+	if (fstat(fd, &st) == -1) {
+		pr_err("fstat %s: %m\n", filename);
+		return NULL;
+	}
+
+	image = xzalloc(sizeof(*image));
+	image->toc_e.uuid = *uuid;
+	image->buffer = xmalloc(st.st_size);
+	if (read_full(fd, image->buffer, st.st_size) != st.st_size) {
+		pr_err("Failed to read %s: %m\n", filename);
+		return NULL;
+	}
+	image->toc_e.size = st.st_size;
+
+	close(fd);
+	return image;
+}
+
+int pack_images(struct fip_state *fip,
+		const char *filename,
+		uint64_t toc_flags, unsigned long align)
+{
+	int fd;
+	image_desc_t *desc;
+	fip_toc_header_t *toc_header;
+	fip_toc_entry_t *toc_entry;
+	char *buf;
+	uint64_t entry_offset, buf_size, payload_size = 0, pad_size;
+	size_t nr_images = 0;
+
+	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next)
+		if (desc->image != NULL)
+			nr_images++;
+
+	buf_size = sizeof(fip_toc_header_t) +
+	    sizeof(fip_toc_entry_t) * (nr_images + 1);
+	buf = calloc(1, buf_size);
+	if (buf == NULL)
+		return -ENOMEM;
+
+	/* Build up header and ToC entries from the image table. */
+	toc_header = (fip_toc_header_t *)buf;
+	toc_header->name = TOC_HEADER_NAME;
+	toc_header->serial_number = TOC_HEADER_SERIAL_NUMBER;
+	toc_header->flags = toc_flags;
+
+	toc_entry = (fip_toc_entry_t *)(toc_header + 1);
+
+	entry_offset = buf_size;
+	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
+		image_t *image = desc->image;
+
+		if (image == NULL || (image->toc_e.size == 0ULL))
+			continue;
+		payload_size += image->toc_e.size;
+		entry_offset = (entry_offset + align - 1) & ~(align - 1);
+		image->toc_e.offset_address = entry_offset;
+		*toc_entry++ = image->toc_e;
+		entry_offset += image->toc_e.size;
+	}
+
+	/*
+	 * Append a null uuid entry to mark the end of ToC entries.
+	 * NOTE the offset address for the last toc_entry must match the fip
+	 * size.
+	 */
+	memset(toc_entry, 0, sizeof(*toc_entry));
+	toc_entry->offset_address = (entry_offset + align - 1) & ~(align - 1);
+
+	/* Generate the FIP file. */
+	fd = creat(filename, 0777);
+	if (fd < 0) {
+		pr_err("creat %s: %m\n", filename);
+		return -errno;
+	}
+
+	pr_verbose("Metadata size: %llu bytes\n", buf_size);
+
+	if (write_full(fd, buf, buf_size) < 0) {
+		pr_err("Failed to write %s: %m\n", filename);
+		return -errno;
+	}
+
+	pr_verbose("Payload size: %llu bytes\n", payload_size);
+
+	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
+		image_t *image = desc->image;
+
+		if (image == NULL)
+			continue;
+		if (pwrite_full(fd, image->buffer, image->toc_e.size, image->toc_e.offset_address) < 0) {
+			pr_err("Failed to write %s: %m\n", filename);
+			return -errno;
+		}
+	}
+
+	if (lseek(fd, entry_offset, SEEK_SET) < 0) {
+		pr_err("Failed to set file position: %m\n");
+		return -errno;
+	}
+
+	pad_size = toc_entry->offset_address - entry_offset;
+	while (pad_size--) {
+		uint8_t zero = 0x00;
+		write(fd, &zero, sizeof(zero));
+	}
+
+	free(buf);
+	close(fd);
+	return 0;
+}
+
+/*
+ * This function is shared between the create and update subcommands.
+ * The difference between the two subcommands is that when the FIP file
+ * is created, the parsing of an existing FIP is skipped.  This results
+ * in update_fip() creating the new FIP file from scratch because the
+ * internal image table is not populated.
+ */
+int update_fip(struct fip_state *fip)
+{
+	image_desc_t *desc;
+
+	/* Add or replace images in the FIP file. */
+	for (desc = fip->image_desc_head; desc != NULL; desc = desc->next) {
+		image_t *image;
+
+		if (desc->action != DO_PACK)
+			continue;
+
+		image = read_image_from_file(&desc->uuid,
+		    desc->action_arg);
+		if (!image)
+			return -1;
+
+		if (desc->image != NULL) {
+			pr_verbose("Replacing %s with %s\n",
+				   desc->cmdline_name,
+				   desc->action_arg);
+			free(desc->image);
+			desc->image = image;
+		} else {
+			pr_verbose("Adding image %s\n", desc->action_arg);
+			desc->image = image;
+		}
+	}
+
+	return 0;
+}
diff --git a/lib/tbbr_config.c b/lib/tbbr_config.c
new file mode 100644
index 000000000000..3d777e5648a9
--- /dev/null
+++ b/lib/tbbr_config.c
@@ -0,0 +1,204 @@
+// SPDX-License-Identifier: BSD-3-Clause
+// SPDX-FileCopyrightText: (c) 2016-2022, ARM Limited and Contributors. All rights reserved.
+
+#include <stddef.h>
+#include <fiptool.h>
+
+/* The images used depends on the platform. */
+toc_entry_t toc_entries[] = {
+	{
+		.name = "SCP Firmware Updater Configuration FWU SCP_BL2U",
+		.uuid = UUID_TRUSTED_UPDATE_FIRMWARE_SCP_BL2U,
+		.cmdline_name = "scp-fwu-cfg"
+	},
+	{
+		.name = "AP Firmware Updater Configuration BL2U",
+		.uuid = UUID_TRUSTED_UPDATE_FIRMWARE_BL2U,
+		.cmdline_name = "ap-fwu-cfg"
+	},
+	{
+		.name = "Firmware Updater NS_BL2U",
+		.uuid = UUID_TRUSTED_UPDATE_FIRMWARE_NS_BL2U,
+		.cmdline_name = "fwu"
+	},
+	{
+		.name = "Non-Trusted Firmware Updater certificate",
+		.uuid = UUID_TRUSTED_FWU_CERT,
+		.cmdline_name = "fwu-cert"
+	},
+	{
+		.name = "Trusted Boot Firmware BL2",
+		.uuid = UUID_TRUSTED_BOOT_FIRMWARE_BL2,
+		.cmdline_name = "tb-fw"
+	},
+	{
+		.name = "SCP Firmware SCP_BL2",
+		.uuid = UUID_SCP_FIRMWARE_SCP_BL2,
+		.cmdline_name = "scp-fw"
+	},
+	{
+		.name = "EL3 Runtime Firmware BL31",
+		.uuid = UUID_EL3_RUNTIME_FIRMWARE_BL31,
+		.cmdline_name = "soc-fw"
+	},
+	{
+		.name = "Secure Payload BL32 (Trusted OS)",
+		.uuid = UUID_SECURE_PAYLOAD_BL32,
+		.cmdline_name = "tos-fw"
+	},
+	{
+		.name = "Secure Payload BL32 Extra1 (Trusted OS Extra1)",
+		.uuid = UUID_SECURE_PAYLOAD_BL32_EXTRA1,
+		.cmdline_name = "tos-fw-extra1"
+	},
+	{
+		.name = "Secure Payload BL32 Extra2 (Trusted OS Extra2)",
+		.uuid = UUID_SECURE_PAYLOAD_BL32_EXTRA2,
+		.cmdline_name = "tos-fw-extra2"
+	},
+	{
+		.name = "Non-Trusted Firmware BL33",
+		.uuid = UUID_NON_TRUSTED_FIRMWARE_BL33,
+		.cmdline_name = "nt-fw"
+	},
+	{
+		.name = "Realm Monitor Management Firmware",
+		.uuid = UUID_REALM_MONITOR_MGMT_FIRMWARE,
+		.cmdline_name = "rmm-fw"
+	},
+	/* Dynamic Configs */
+	{
+		.name = "FW_CONFIG",
+		.uuid = UUID_FW_CONFIG,
+		.cmdline_name = "fw-config"
+	},
+	{
+		.name = "HW_CONFIG",
+		.uuid = UUID_HW_CONFIG,
+		.cmdline_name = "hw-config"
+	},
+	{
+		.name = "TB_FW_CONFIG",
+		.uuid = UUID_TB_FW_CONFIG,
+		.cmdline_name = "tb-fw-config"
+	},
+	{
+		.name = "SOC_FW_CONFIG",
+		.uuid = UUID_SOC_FW_CONFIG,
+		.cmdline_name = "soc-fw-config"
+	},
+	{
+		.name = "TOS_FW_CONFIG",
+		.uuid = UUID_TOS_FW_CONFIG,
+		.cmdline_name = "tos-fw-config"
+	},
+	{
+		.name = "NT_FW_CONFIG",
+		.uuid = UUID_NT_FW_CONFIG,
+		.cmdline_name = "nt-fw-config"
+	},
+	/* Key Certificates */
+	{
+		.name = "Root Of Trust key certificate",
+		.uuid = UUID_ROT_KEY_CERT,
+		.cmdline_name = "rot-cert"
+	},
+	{
+		.name = "Trusted key certificate",
+		.uuid = UUID_TRUSTED_KEY_CERT,
+		.cmdline_name = "trusted-key-cert"
+	},
+	{
+		.name = "SCP Firmware key certificate",
+		.uuid = UUID_SCP_FW_KEY_CERT,
+		.cmdline_name = "scp-fw-key-cert"
+	},
+	{
+		.name = "SoC Firmware key certificate",
+		.uuid = UUID_SOC_FW_KEY_CERT,
+		.cmdline_name = "soc-fw-key-cert"
+	},
+	{
+		.name = "Trusted OS Firmware key certificate",
+		.uuid = UUID_TRUSTED_OS_FW_KEY_CERT,
+		.cmdline_name = "tos-fw-key-cert"
+	},
+	{
+		.name = "Non-Trusted Firmware key certificate",
+		.uuid = UUID_NON_TRUSTED_FW_KEY_CERT,
+		.cmdline_name = "nt-fw-key-cert"
+	},
+
+	/* Content certificates */
+	{
+		.name = "Trusted Boot Firmware BL2 certificate",
+		.uuid = UUID_TRUSTED_BOOT_FW_CERT,
+		.cmdline_name = "tb-fw-cert"
+	},
+	{
+		.name = "SCP Firmware content certificate",
+		.uuid = UUID_SCP_FW_CONTENT_CERT,
+		.cmdline_name = "scp-fw-cert"
+	},
+	{
+		.name = "SoC Firmware content certificate",
+		.uuid = UUID_SOC_FW_CONTENT_CERT,
+		.cmdline_name = "soc-fw-cert"
+	},
+	{
+		.name = "Trusted OS Firmware content certificate",
+		.uuid = UUID_TRUSTED_OS_FW_CONTENT_CERT,
+		.cmdline_name = "tos-fw-cert"
+	},
+	{
+		.name = "Non-Trusted Firmware content certificate",
+		.uuid = UUID_NON_TRUSTED_FW_CONTENT_CERT,
+		.cmdline_name = "nt-fw-cert"
+	},
+	{
+		.name = "SiP owned Secure Partition content certificate",
+		.uuid = UUID_SIP_SECURE_PARTITION_CONTENT_CERT,
+		.cmdline_name = "sip-sp-cert"
+	},
+	{
+		.name = "Platform owned Secure Partition content certificate",
+		.uuid = UUID_PLAT_SECURE_PARTITION_CONTENT_CERT,
+		.cmdline_name = "plat-sp-cert"
+	},
+	{
+		.name = "CCA Content Certificate",
+		.uuid = UUID_CCA_CONTENT_CERT,
+		.cmdline_name = "cca-cert"
+	},
+	{
+		.name = "Core Secure World Key Certificate",
+		.uuid = UUID_CORE_SWD_KEY_CERT,
+		.cmdline_name = "core-swd-cert"
+	},
+	{
+		.name = "Platform Key Certificate",
+		.uuid = UUID_PLAT_KEY_CERT,
+		.cmdline_name = "plat-key-cert"
+	},
+	{
+		.name = NULL,
+		.uuid = { {0} },
+		.cmdline_name = NULL,
+	}
+};
+
+toc_entry_t plat_def_toc_entries[] = {
+#ifdef CONFIG_ARCH_STM32MP
+	{
+		.name = "STM32MP CONFIG CERT",
+		.uuid = UUID_STM32MP_CONFIG_CERT,
+		.cmdline_name = "stm32mp-cfg-cert"
+	},
+#endif
+
+	{
+		.name = NULL,
+		.uuid = { {0} },
+		.cmdline_name = NULL,
+	}
+};
-- 
2.39.5



