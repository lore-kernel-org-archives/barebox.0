Delivery-date: Mon, 10 Nov 2025 14:40:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIS7n-00HOeo-0G
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 14:40:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIS7l-0008J2-Ld
	for lore@pengutronix.de; Mon, 10 Nov 2025 14:40:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xkT3RuTZ8U++ARY/a8bG5PXa2G6C/3KAQjdu1UYwalo=; b=0Og2fujt6FvaKaJqVISLS9MQM0
	P6wcV+OzjuKxQqBXRh5k/UaxKNP1ESiOCVgHya/nqdWudHMu2vGMKSD6l4iFNJR1+lL+fcZ25P5e2
	oNhaf+7LzrcDXqjrU1x78jIrGhgovqwu6WjsjXTsdAzL6y7tGIAJaVyeaNrvGUM6gQiI930KwaBLV
	Wpqh/X0rFjMfTfU3VNmzvFZF908Lv/yGXN0qf5j3T3vJrZCYKECiigv5u6D+e2QKoTGUDRN4tkdVm
	h650lz5pJa+I1cUai8ZdfNmObp/xQKzXgm6tx54rsnfYLU5mGeJEtZDMss4jfEOg+8nWjB0u44/Km
	B+tKONfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIS7B-00000005VLl-3cIA;
	Mon, 10 Nov 2025 13:39:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIS79-00000005VLC-2i8g
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 13:39:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIS78-0008Dl-4a; Mon, 10 Nov 2025 14:39:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIS77-0082HB-35;
	Mon, 10 Nov 2025 14:39:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIS78-0000000GMtK-1Di5;
	Mon, 10 Nov 2025 14:39:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 10 Nov 2025 14:39:20 +0100
Message-ID: <20251110133920.3900948-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_053924_016930_D17D93A2 
X-CRM114-Status: GOOD (  25.35  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] k3: add keywriter lite support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a command for turning a AM62L SoC from HS-FS (High Security -
Field Securable) to HS-SE (High Security - Security Enforced) mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig                |   8 +
 commands/Makefile               |   1 +
 commands/k3-keywriter.c         | 172 +++++++++++++++++++
 common/Kconfig                  |   6 +
 common/Makefile                 |   1 +
 common/k3-keywriter-lite.c      | 293 ++++++++++++++++++++++++++++++++
 include/soc/k3/keywriter-lite.h | 177 +++++++++++++++++++
 7 files changed, 658 insertions(+)
 create mode 100644 commands/k3-keywriter.c
 create mode 100644 common/k3-keywriter-lite.c
 create mode 100644 include/soc/k3/keywriter-lite.h

diff --git a/commands/Kconfig b/commands/Kconfig
index 78b1e69dd3..4188405e3b 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2307,6 +2307,14 @@ config CMD_HAB
 	depends on HAB
 	prompt "High Assurance boot (hab)"
 
+config CMD_K3_KEYWRITER
+	bool
+	depends on MACH_AM62LX
+	select K3_KEYWRITER_LITE
+	prompt "K3 keywriter support"
+	help
+	  The K3 keywriter command provides support for fusing TI AM62Lx SoCs
+
 # end Hardware manipulation commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 858e0c257e..85ba357708 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -110,6 +110,7 @@ obj-$(CONFIG_CMD_DMESG)		+= dmesg.o
 obj-$(CONFIG_CMD_BLOBGEN)	+= blobgen.o
 obj-$(CONFIG_CMD_BASENAME)	+= basename.o
 obj-$(CONFIG_CMD_HAB)		+= hab.o
+obj-$(CONFIG_CMD_K3_KEYWRITER)	+= k3-keywriter.o
 obj-$(CONFIG_CMD_DIRNAME)	+= dirname.o
 obj-$(CONFIG_CMD_READLINK)	+= readlink.o
 obj-$(CONFIG_CMD_LET)		+= let.o
diff --git a/commands/k3-keywriter.c b/commands/k3-keywriter.c
new file mode 100644
index 0000000000..5243d8a11e
--- /dev/null
+++ b/commands/k3-keywriter.c
@@ -0,0 +1,172 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <stdio.h>
+#include <malloc.h>
+#include <command.h>
+#include <getopt.h>
+#include <libfile.h>
+#include <linux/kstrtox.h>
+#include <soc/k3/keywriter-lite.h>
+
+static void *read_sha512(const char *filename)
+{
+	size_t size;
+	int ret;
+	void *hash;
+
+	ret = read_file_2(filename, &size, &hash, SHA512_DIGEST_SIZE + 1);
+	if (ret) {
+		printf("Cannot read %s: %pe\n", filename, ERR_PTR(ret));
+		return NULL;
+	}
+
+	if (size != SHA512_DIGEST_SIZE) {
+		printf("unexpected file size in hash file. Should be %u\n",
+		       SHA512_DIGEST_SIZE);
+		free(hash);
+		return NULL;
+	}
+
+	return hash;
+}
+
+static int do_k3_keywriter(int argc, char *argv[])
+{
+	struct keywriter_lite_packet p;
+	struct keywriter_lite_blob *blob;
+	int opt, ret;
+	const char *smpkh_file = NULL;
+	const char *bmpkh_file = NULL;
+	const char *outfile = NULL;
+	int key_count = -1;
+	int key_rev = -1;
+	bool doit = false;
+
+	blob = &p.blob;
+
+	while ((opt = getopt(argc, argv, "s:b:o:c:r:x")) > 0) {
+		switch (opt) {
+		case 's':
+			smpkh_file = optarg;
+			break;
+		case 'b':
+			bmpkh_file = optarg;
+			break;
+		case 'o':
+			outfile = optarg;
+			break;
+		case 'c':
+			ret = kstrtouint(optarg, 0, &key_count);
+			if (ret)
+				goto err;
+			break;
+		case 'r':
+			ret = kstrtouint(optarg, 0, &key_rev);
+			if (ret)
+				goto err;
+			break;
+		case 'x':
+			doit = true;
+			break;
+		}
+	}
+
+	k3_kwl_prepare(&p);
+
+	if (smpkh_file) {
+		unsigned char *hash = read_sha512(smpkh_file);
+
+		if (!hash) {
+			ret = COMMAND_ERROR;
+			goto err;
+		}
+
+		k3_kwl_set_smpkh(&blob->payload.smpkh, hash, FLAG_ACTIVE);
+		free(hash);
+	}
+
+	if (bmpkh_file) {
+		unsigned char *hash = read_sha512(bmpkh_file);
+
+		if (!hash) {
+			ret = COMMAND_ERROR;
+			goto err;
+		}
+
+		k3_kwl_set_bmpkh(&blob->payload.bmpkh, hash, FLAG_ACTIVE);
+		free(hash);
+	}
+
+	if (key_count >= 0) {
+		ret = k3_kwl_set_keycnt(&blob->payload.key_count, key_count,
+					FLAG_ACTIVE);
+		if (ret)
+			goto err;
+	}
+
+	if (key_rev >= 0) {
+		ret = k3_kwl_set_key_revision(&blob->payload.key_revision, key_rev,
+					      FLAG_ACTIVE);
+		if (ret)
+			goto err;
+	}
+
+	ret = k3_kwl_finalize(&p);
+	if (ret) {
+		ret = COMMAND_ERROR;
+		printf("Cannot finalize keywriter lite structure: %pe\n", ERR_PTR(ret));
+		goto err;
+	}
+
+	if (outfile) {
+		ret = write_file(outfile, &p, sizeof(p));
+		if (ret) {
+			ret = COMMAND_ERROR;
+			printf("Failed to write %s: %pe\n", outfile, ERR_PTR(ret));
+			goto err;
+		}
+	}
+
+	if (!smpkh_file && !bmpkh_file && key_count < 0 && key_rev < 0) {
+		printf("Nothing to do\n");
+		ret = COMMAND_ERROR_USAGE;
+	}
+
+	if (doit) {
+		printf("Writing fuses...\n");
+		ret = k3_kwl_fuse_writebuff(&p);
+		if (ret) {
+			printf("Failed to write fuses: %pe\n", ERR_PTR(ret));
+			goto err;
+		} else {
+			printf("Fuses written successfully\n");
+		}
+	} else {
+		printf("Not writing fuses as requested. "
+		       "Pass -x to actually write fuses\n");
+		ret = 0;
+	}
+
+err:
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(k3_keywriter)
+BAREBOX_CMD_HELP_TEXT("K3 keywriter support")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-s <FILE>", "Read SMPK hash from <FILE>")
+BAREBOX_CMD_HELP_OPT ("-b <FILE>", "Read BMPK hash from <FILE>")
+BAREBOX_CMD_HELP_OPT ("-o <FILE>", "write data structure for ROM to <FILE> (for debug)")
+BAREBOX_CMD_HELP_OPT ("-c <NKEYS>","set key count to <NKEYS>")
+BAREBOX_CMD_HELP_OPT ("-r <REV>",  "set key revision to <REV>")
+BAREBOX_CMD_HELP_OPT ("-x",        "Do it! actually write fuses")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(k3_keywriter)
+	.cmd = do_k3_keywriter,
+	BAREBOX_CMD_DESC("K3 keywriter support")
+	BAREBOX_CMD_OPTS("-sbocrx")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_k3_keywriter_help)
+BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index d923d4c4b6..59fafb462a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1327,3 +1327,9 @@ source "common/Kconfig.debug"
 config DDR_SPD
 	bool
 	select CRC_ITU_T
+
+config K3_KEYWRITER_LITE
+	bool
+	select DIGEST
+	select DIGEST_SHA512_GENERIC
+	depends on MACH_AM62LX
diff --git a/common/Makefile b/common/Makefile
index d501a6a275..8769d04d04 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -85,6 +85,7 @@ obj-$(CONFIG_SERIAL_DEV_BUS)	+= serdev.o
 obj-$(CONFIG_USB_GADGET)	+= usbgadget.o
 obj-$(CONFIG_FASTBOOT_BASE)	+= fastboot.o
 obj-$(CONFIG_CDEV_ALIAS)	+= cdev-alias.o
+obj-$(CONFIG_K3_KEYWRITER_LITE)	+= k3-keywriter-lite.o
 
 # dependencies on generated files need to be listed explicitly
 $(obj)/version.o: include/generated/compile.h
diff --git a/common/k3-keywriter-lite.c b/common/k3-keywriter-lite.c
new file mode 100644
index 0000000000..0919372c1b
--- /dev/null
+++ b/common/k3-keywriter-lite.c
@@ -0,0 +1,293 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "k3-keywriter: " fmt
+
+#include <digest.h>
+#include <string.h>
+#include <stdio.h>
+#include <dma.h>
+#include <memory.h>
+#include <linux/arm-smccc.h>
+#include <linux/bits.h>
+#include <linux/bitfield.h>
+#include <crypto/sha.h>
+#include <soc/k3/keywriter-lite.h>
+
+/* from https://software-dl.ti.com/tisci/esd/latest/6_topic_user_guides/key_writer_lite.html */
+
+#define PROGRAMMING_MODE_ONESHOT 	0 /* all supported fields at once */
+#define PROGRAMMING_MODE_MULTISHOT 	1 /* a subset of supported fields at once */
+#define PROGRAMMING_MODE_SMPKH	 	2 /* ust SMPKH */
+#define PROGRAMMING_MODE_BMPKH 		3 /* just BMPKH */
+#define PROGRAMMING_MODE_KEY_COUNT 	4 /* just key count */
+#define PROGRAMMING_MODE_KEY_REVISION 	5 /* just key revision */
+#define PROGRAMMING_MODE_SBL_SWREV 	6 /* just SBL swrev */
+#define PROGRAMMING_MODE_SYSFW_SWREV 	7 /* just SYSFW swrev */
+#define PROGRAMMING_MODE_BRDCFG_SWREV 	8 /* just BRDCFG swrev */
+#define PROGRAMMING_MODE_MSV 		9 /* just MSV */
+#define PROGRAMMING_MODE_JTAG 		10 /* just JTAG unlock disable */
+#define PROGRAMMING_MODE_BOOT_MODE 	11 /* just efuse boot modes */
+#define PROGRAMMING_MODE_EXTENDED_OTP 	12 /* just extended otp */
+
+/*
+ * action_flags
+ * see gen_keywr_cert_helpers.sh:
+ * 16#${wp_flag}${rp_flag}${ovrd_flag}${active_flag}
+ */
+#define ACTION_FLAG_ENABLE 0x5a
+#define ACTION_FLAG_DISABLE 0xa5
+
+#define ACTION_FLAG_WP		GENMASK(31, 24)
+#define ACTION_FLAG_RP		GENMASK(23, 16)
+#define ACTION_FLAG_OVRD	GENMASK(15, 8)
+#define ACTION_FLAG_ACTIVE	GENMASK(7, 0)
+
+static unsigned int k3_kwl_set_flags(unsigned int f)
+{
+	unsigned int en = ACTION_FLAG_ENABLE;
+	unsigned int dis = ACTION_FLAG_DISABLE;
+
+	return FIELD_PREP(ACTION_FLAG_WP, f & FLAG_WP ? en : dis) |
+		FIELD_PREP(ACTION_FLAG_RP, f & FLAG_RP ? en : dis) |
+		FIELD_PREP(ACTION_FLAG_OVRD, f & FLAG_OVRD ? en : dis) |
+		FIELD_PREP(ACTION_FLAG_ACTIVE, f & FLAG_ACTIVE ? en : dis);
+}
+
+int k3_kwl_set_smpkh(struct mpkh *mpkh, const char *sha, unsigned int flags)
+{
+	mpkh->field_header = SMPKH_MAGIC;
+	mpkh->action_flags = k3_kwl_set_flags(flags);
+	memcpy(mpkh->mpkh, sha, SHA512_DIGEST_SIZE);
+
+	return 0;
+}
+
+int k3_kwl_set_bmpkh(struct mpkh *mpkh, const char *sha, unsigned int flags)
+{
+	mpkh->field_header = BMPKH_MAGIC;
+	mpkh->action_flags = k3_kwl_set_flags(flags);
+	memcpy(mpkh->mpkh, sha, SHA512_DIGEST_SIZE);
+
+	return 0;
+}
+
+int k3_kwl_set_keycnt(struct key_cnt *k, unsigned int count, unsigned int flags)
+{
+	if (count < 1 || count > 2) {
+		pr_err("Only 1 or 2 allowed for key count\n");
+		return -EINVAL;
+	}
+
+	k->field_header = KEY_CNT_MAGIC;
+	k->action_flags = k3_kwl_set_flags(flags);
+	k->count = BIT(count) - 1;
+
+	return 0;
+}
+
+int k3_kwl_set_key_revision(struct key_revision *k, unsigned int revision,
+			   unsigned int flags)
+{
+	if (revision < 1 || revision > 2) {
+		pr_err("Only 1 or 2 allowed for key revision\n");
+		return -EINVAL;
+	}
+
+	k->field_header = KEY_REVISION_MAGIC;
+	k->action_flags = k3_kwl_set_flags(flags);
+	k->revision = BIT(revision) - 1;
+
+	return 0;
+}
+
+int k3_kwl_set_sbl_revision(struct sbl_revision *k, unsigned int revision,
+			   unsigned int flags)
+{
+	k->field_header = SBL_REVISION_MAGIC;
+	k->action_flags = k3_kwl_set_flags(flags);
+	k->revision = BIT(revision) - 1;
+
+	return 0;
+}
+
+int k3_kwl_set_brdcfg_revision(struct brdcfg_revision *k, unsigned int revision,
+			   unsigned int flags)
+{
+	k->field_header = BRDCFG_REVISION_MAGIC;
+	k->action_flags = k3_kwl_set_flags(flags);
+	k->revision = BIT(revision) - 1;
+
+	return 0;
+}
+
+int k3_kwl_set_msv(struct msv *k, unsigned int msv, unsigned int flags)
+{
+	k->field_header = MSV_MAGIC;
+	k->action_flags = k3_kwl_set_flags(flags);
+	k->msv = msv;
+
+	return 0;
+}
+
+int k3_kwl_set_jtag_disable(struct jtag_disable *k, unsigned int jtag,
+				 unsigned int flags)
+{
+	k->field_header = JTAG_DISABLE_MAGIC;
+	k->action_flags = k3_kwl_set_flags(flags);
+	k->jtag = jtag;
+
+	return 0;
+}
+
+int k3_kwl_set_bootmode(struct boot_mode *k, unsigned int fuse_id,
+				 unsigned int boot_mode, unsigned int flags)
+{
+	if (fuse_id < 1 || fuse_id > 2) {
+		pr_err("Only 1 or 2 allowed for fuse_id\n");
+		return -EINVAL;
+	}
+
+	k->field_header = BOOT_MODE_MAGIC;
+	k->action_flags = k3_kwl_set_flags(flags);
+	k->fuse_id = fuse_id;
+	k->boot_mode = boot_mode;
+
+	return 0;
+}
+
+int k3_kwl_set_ext_otp(struct ext_otp *k, unsigned int bits, unsigned int index,
+			    uint8_t *wprp, uint8_t *otp, unsigned int flags)
+{
+	k->field_header = EXT_OTP_MAGIC;
+	k->action_flags = k3_kwl_set_flags(flags);
+	k->size = bits;
+	k->index = index;
+	memcpy(k->wprp, wprp, sizeof(k->wprp));
+	memcpy(k->otp, otp, sizeof(k->otp));
+
+	return 0;
+}
+
+#define FD FIELD_PREP_CONST(ACTION_FLAG_ACTIVE, ACTION_FLAG_DISABLE)
+
+static struct keywriter_lite_packet keywrite_lite_template = {
+	.tisci_id = TISCI_MSG_KEY_WRITER_LITE,
+	.blob = {
+		.hdr = {
+			.magic = KEYWRITER_LITE_HEADER_MAGIC,
+			.size = sizeof(struct keywriter_lite_payload),
+			.abi_major = 0x0,
+			.abi_minor = 0x1,
+			.cmd_id = PROGRAMMING_MODE_MULTISHOT,
+		},
+
+		.payload = {
+			.mpk_options = {
+				.field_header = MPK_OPTS_MAGIC,
+				.action_flags = FD,
+			},
+			.smpkh = {
+				.field_header = SMPKH_MAGIC,
+				.action_flags = FD,
+			},
+			.bmpkh = {
+				.field_header = BMPKH_MAGIC,
+				.action_flags = FD,
+			},
+			.key_count = {
+				.field_header = KEY_CNT_MAGIC,
+				.action_flags = FD,
+			},
+			.key_revision = {
+				.field_header = KEY_REVISION_MAGIC,
+				.action_flags = FD,
+			},
+			.sbl_rev = {
+				.field_header = SBL_REVISION_MAGIC,
+				.action_flags = FD,
+			},
+			.sysfw_rev = {
+				.field_header = SYSFW_REVISION_MAGIC,
+				.action_flags = FD,
+			},
+			.brdcfg_rev = {
+				.field_header = BRDCFG_REVISION_MAGIC,
+				.action_flags = FD,
+			},
+			.msv_val = {
+				.field_header = MSV_MAGIC,
+				.action_flags = FD,
+			},
+			.jtag_disable = {
+				.field_header = JTAG_DISABLE_MAGIC,
+				.action_flags = FD,
+			},
+			.boot_mode = {
+				.field_header = BOOT_MODE_MAGIC,
+				.action_flags = FD,
+			},
+			.ext_otp = {
+				.field_header = EXT_OTP_MAGIC,
+				.action_flags = FD,
+			},
+		},
+	},
+};
+#undef FD
+
+void k3_kwl_prepare(struct keywriter_lite_packet *p)
+{
+	memcpy(p, &keywrite_lite_template, sizeof(keywrite_lite_template));
+}
+
+int k3_kwl_finalize(struct keywriter_lite_packet *p)
+{
+	struct digest *sha512;
+	int ret;
+
+	sha512 = digest_alloc("sha512");
+	if (!sha512)
+		return -ENOENT;
+
+	ret = digest_digest(sha512, &p->blob, offsetof(typeof(p->blob), hash),
+			    p->blob.hash);
+	if (ret)
+		return ret;
+
+	digest_free(sha512);
+
+	return 0;
+}
+
+#define K3_SIP_OTP_WRITEBUFF 0xC2000000
+
+int k3_kwl_fuse_writebuff(struct keywriter_lite_packet *p)
+{
+	struct resource *resource;
+	unsigned long keywriter_lite_data = 0x82000000;
+	struct arm_smccc_res res;
+
+	resource = request_sdram_region("keywriter-lite", keywriter_lite_data,
+					4096, MEMTYPE_LOADER_DATA, MEMATTRS_RW);
+	if (!resource)
+		return -ENOMEM;
+
+	/*
+	 * Yes, we are passing the memory address of the buffer along with
+	 * the SMC call, but TF-A will crash when it is different from this
+	 * address on AM62L.
+	 */
+
+	memcpy((void *)keywriter_lite_data, p, sizeof(keywrite_lite_template));
+
+	/* Make SiP SMC call and send the addr in the parameter register */
+	arm_smccc_smc(K3_SIP_OTP_WRITEBUFF, (unsigned long)keywriter_lite_data,
+		      0, 0, 0, 0, 0, 0, &res);
+
+	if (res.a0 != 0)
+		printf("SMC call failed: Error code %ld\n", res.a0);
+
+	release_sdram_region(resource);
+
+	return res.a0;
+}
diff --git a/include/soc/k3/keywriter-lite.h b/include/soc/k3/keywriter-lite.h
new file mode 100644
index 0000000000..4bf3788ee4
--- /dev/null
+++ b/include/soc/k3/keywriter-lite.h
@@ -0,0 +1,177 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#ifndef __SOC_K3_KEYWRITER_LITE_H
+#define __SOC_K3_KEYWRITER_LITE_H
+
+#include <crypto/sha.h>
+
+/*
+ * structure layout and magic values are from:
+ * https://software-dl.ti.com/tisci/esd/latest/6_topic_user_guides/key_writer_lite.html
+ * with corrections from:
+ * https://e2e.ti.com/support/processors-group/processors/f/processors-forum/1578568/am62l-am62l-secure-boot-keywriter-lite
+ */
+
+#define KEYWRITER_LITE_HEADER_MAGIC	0x9012
+struct keywriter_lite_header {
+	uint16_t magic;
+	uint16_t size;
+	uint8_t abi_major;	/* 0x00 */
+	uint8_t abi_minor;	/* 0x01 */
+	uint16_t reserved0;
+	uint32_t cmd_id;	/* PROGRAMMING_MODE_* */
+	uint32_t reserved1[2];
+} __attribute__((packed));
+
+#define MPK_OPTS_MAGIC	0x4a7e
+struct mpk_opts {
+	uint32_t field_header;
+	uint32_t action_flags;
+	uint16_t options;	/* 0x0 */
+	uint8_t resv_field[2];	/* 0x0 */
+	uint32_t reserved[2];	/* 0x0 */
+} __attribute__((packed));
+
+#define SMPKH_MAGIC	0x1234
+#define BMPKH_MAGIC	0x9FFC
+struct mpkh {
+	uint32_t field_header;
+	uint32_t action_flags;
+	uint8_t mpkh[64];
+	uint32_t reserved[2];
+} __attribute__((packed));
+
+#define KEY_CNT_MAGIC	0x5678
+struct key_cnt {
+	uint32_t field_header;
+	uint32_t action_flags;
+	uint32_t count;
+	uint32_t reserved[2];
+} __attribute__((packed));
+
+#define KEY_REVISION_MAGIC	0x62c8
+struct key_revision {
+	uint32_t field_header;
+	uint32_t action_flags;
+	uint32_t revision; /* The key revision value encoded in bit-position format */
+	uint32_t reserved[2];
+} __attribute__((packed));
+
+#define SBL_REVISION_MAGIC	0x8bad
+struct sbl_revision {
+	uint32_t field_header;
+	uint32_t action_flags;
+	uint64_t revision; /* The SBL software revision value encoded in bit-position format */
+	uint32_t reserved[3];
+} __attribute__((packed));
+
+#define SYSFW_REVISION_MAGIC	0x45a9	/* must be typo: same as in struct sbl_revision */
+struct sysfw_revision {
+	uint32_t field_header;
+	uint32_t action_flags;
+	uint64_t revision; /* The SYSFW software revision value encoded in bit-position format */
+	uint32_t reserved[3];
+} __attribute__((packed));
+
+#define BRDCFG_REVISION_MAGIC	0x98dc
+struct brdcfg_revision {
+	uint32_t field_header;
+	uint32_t action_flags;
+	uint64_t revision; /* The BRDCFG software revision value encoded in bit-position format */
+	uint32_t reserved[4];
+} __attribute__((packed));
+
+#define MSV_MAGIC		0x1337
+struct msv {
+	uint32_t field_header;
+	uint32_t action_flags;
+	uint32_t msv;		/* The 20-bit MSV value */
+	uint32_t reserved[2];
+} __attribute__((packed));
+
+#define JTAG_DISABLE_MAGIC	0x7421
+struct jtag_disable {
+	uint32_t field_header;
+	uint32_t action_flags;
+	uint32_t jtag;		/* The 4-bit jtag unlock disable value */
+	uint32_t reserved[2];
+} __attribute__((packed));
+
+#define BOOT_MODE_MAGIC		0xa1b2
+struct boot_mode {
+	uint32_t field_header;
+	uint32_t action_flags;
+	uint32_t fuse_id;	/* The index of the fuse to program currently accepts only 1,2 */
+	uint32_t boot_mode;	/* The 25-bit boot mode value to program */
+	uint32_t reserved[2];
+} __attribute__((packed));
+
+#define EXT_OTP_MAGIC		0xd0e5
+struct ext_otp {
+	uint32_t field_header;
+	uint32_t action_flags;
+	uint16_t size;		/* The number of bits to program */
+	uint16_t index;		/* The index in the 1024-bits space to start programming from */
+	uint8_t wprp[16];	/* Read protect/write protect array */
+	uint8_t otp[128];	/* The 1024 bits extended otp data */
+	uint32_t reserved[4];
+} __attribute__((packed));
+
+struct keywriter_lite_payload {
+	struct mpk_opts mpk_options;
+	struct mpkh smpkh;
+	struct mpkh bmpkh;
+	struct key_cnt key_count;
+	struct key_revision key_revision;
+	struct sbl_revision sbl_rev;
+	struct sysfw_revision sysfw_rev;
+	struct brdcfg_revision brdcfg_rev;
+	struct msv msv_val;
+	struct jtag_disable jtag_disable;
+	struct boot_mode boot_mode;
+	struct ext_otp ext_otp;
+} __attribute__((packed));
+
+#define TISCI_MSG_KEY_WRITER_LITE 0x9045
+
+struct keywriter_lite_blob {
+	struct keywriter_lite_header hdr;
+	struct keywriter_lite_payload payload;
+	unsigned char hash[SHA512_DIGEST_SIZE];
+} __attribute__((packed));
+
+struct keywriter_lite_packet {
+	uint32_t ver_info_unused;
+	uint32_t tisci_id;
+	struct keywriter_lite_blob blob;
+};
+
+enum action_flags {
+	FLAG_WP =	BIT(0),
+	FLAG_RP =	BIT(1),
+	FLAG_OVRD =	BIT(2),
+	FLAG_ACTIVE =	BIT(3),
+};
+
+int k3_kwl_set_smpkh(struct mpkh *mpkh, const char *sha, unsigned int flags);
+int k3_kwl_set_bmpkh(struct mpkh *mpkh, const char *sha, unsigned int flags);
+int k3_kwl_set_keycnt(struct key_cnt *k, unsigned int count, unsigned int flags);
+int k3_kwl_set_key_revision(struct key_revision *k, unsigned int revision,
+			   unsigned int flags);
+int k3_kwl_set_sbl_revision(struct sbl_revision *k, unsigned int revision,
+			   unsigned int flags);
+int k3_kwl_set_brdcfg_revision(struct brdcfg_revision *k, unsigned int revision,
+			   unsigned int flags);
+int k3_kwl_set_msv(struct msv *k, unsigned int msv, unsigned int flags);
+int k3_kwl_set_jtag_disable(struct jtag_disable *k, unsigned int jtag,
+				 unsigned int flags);
+int k3_kwl_set_bootmode(struct boot_mode *k, unsigned int fuse_id,
+				 unsigned int boot_mode, unsigned int flags);
+int k3_kwl_set_ext_otp(struct ext_otp *k, unsigned int bits, unsigned int index,
+			    uint8_t *wprp, uint8_t *otp, unsigned int flags);
+
+void k3_kwl_prepare(struct keywriter_lite_packet *p);
+int k3_kwl_finalize(struct keywriter_lite_packet *p);
+int k3_kwl_fuse_writebuff(struct keywriter_lite_packet *p);
+
+
+#endif /* __SOC_K3_KEYWRITER_LITE_H */
-- 
2.47.3



