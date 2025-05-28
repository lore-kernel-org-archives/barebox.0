Delivery-date: Wed, 28 May 2025 16:36:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHsw-001DeB-34
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 16:36:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHsv-0001yT-6g
	for lore@pengutronix.de; Wed, 28 May 2025 16:36:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TQkGakq/+eQtqXRxLY78QTtyOOqvdZn4p9rDUd4y2rE=; b=fT/Y/6K3A9d68yYHF41BixXKM6
	AD9hgbCOYtIF05yvVO43fTyIoBNSkRQ6OktK/c9Eb0z/wek8GTOPVEtY4bPuOGTh+0Z+juU+8o6kx
	n0amcKBMcDhU7BJJOLaHOgjvG5uUfz9NwdoFPw4b3/DPn7CzGvuI9sG2GezMIjGxeMsEQCOt1+teC
	PvnTSO5YWNk2QMnhXWx5e+8V1o1mke8nnEFgTx33PvlDnfnRzFvRfbPzuPXZlgnPO0/iH4mOTkyZY
	K9VTA9B0gg80VeqzB9fEscMH5GOqj3DfgpshhQqHJqSF4AlkO7Zh1p0tCB9Bq7Oagl1Ti/yi7Lp7L
	uWtXxnQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHsO-0000000DQFl-2ADp;
	Wed, 28 May 2025 14:35:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHns-0000000DPDy-1xGh
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 14:30:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-0006FI-LK; Wed, 28 May 2025 16:30:45 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-000bXt-1E;
	Wed, 28 May 2025 16:30:45 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-001qOC-0w;
	Wed, 28 May 2025 16:30:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 16:30:39 +0200
Message-Id: <20250528143043.434446-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528143043.434446-1-a.fatoum@pengutronix.de>
References: <20250528143043.434446-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_073048_660066_4790AA55 
X-CRM114-Status: GOOD (  23.39  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/10] scripts: add bareboxtlv host/target tool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In its simplest form, a barebox TLV has a 12-byte header, a sequence of
TLV entries, where each of tags and length are 2 bytes each (in big
endian), followed by a CRC.

The TLVs are easily generated. Add a tool to allow adding, removing and
verifying the header. A full fledged python-based tool is added in the
follow up commit.

Example uses:

  hex2bin tlvs | ./scripts/bareboxtlv -m 0xcfe01001 >tlv.blob
  ./scripts/bareboxtlv -m 0xcfe01001 -v tlv.blob && echo CRC correct

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/.gitignore                |   2 +
 scripts/Makefile                  |   2 +
 scripts/bareboxtlv-target.c       |   1 +
 scripts/bareboxtlv.c              | 183 ++++++++++++++++++++++++++++++
 scripts/include/asm/unaligned.h   |  21 ++++
 scripts/include/linux/build_bug.h |   8 ++
 scripts/include/linux/stringify.h |  14 +++
 7 files changed, 231 insertions(+)
 create mode 100644 scripts/bareboxtlv-target.c
 create mode 100644 scripts/bareboxtlv.c
 create mode 100644 scripts/include/asm/unaligned.h
 create mode 100644 scripts/include/linux/build_bug.h
 create mode 100644 scripts/include/linux/stringify.h

diff --git a/scripts/.gitignore b/scripts/.gitignore
index 1b760309583b..8c74d7c9f001 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -20,6 +20,8 @@ bareboxenv-target
 kernel-install-target
 bareboxcrc32-target
 bareboximd-target
+bareboxtlv
+bareboxtlv-target
 mk-am35xx-spi-image
 mkimage
 mxsimage
diff --git a/scripts/Makefile b/scripts/Makefile
index eb3884471bc9..85e081544553 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -10,6 +10,7 @@ hostprogs-always-y					+= bareboxenv
 hostprogs-always-y					+= bareboxcrc32
 hostprogs-always-y					+= kernel-install
 hostprogs-always-$(CONFIG_QOICONV)			+= qoiconv
+hostprogs-always-$(CONFIG_TLV)				+= bareboxtlv
 hostprogs-always-$(CONFIG_KEYTOC)			+= keytoc
 HOSTCFLAGS_keytoc.o = `$(PKG_CONFIG) --cflags openssl`
 HOSTLDLIBS_keytoc = `$(PKG_CONFIG) --libs openssl`
@@ -42,6 +43,7 @@ HOSTLDLIBS_rk-usb-loader  = `$(PKG_CONFIG) --libs libusb-1.0`
 hostprogs-always-$(CONFIG_RK_USB_LOADER)		+= rk-usb-loader
 
 userprogs-always-$(CONFIG_BAREBOXENV_TARGET)		+= bareboxenv-target
+userprogs-always-$(CONFIG_BAREBOXTLV_TARGET)		+= bareboxtlv-target
 userprogs-always-$(CONFIG_KERNEL_INSTALL_TARGET)	+= kernel-install-target
 userprogs-always-$(CONFIG_BAREBOXCRC32_TARGET)		+= bareboxcrc32-target
 userprogs-always-$(CONFIG_IMD_TARGET)			+= bareboximd-target
diff --git a/scripts/bareboxtlv-target.c b/scripts/bareboxtlv-target.c
new file mode 100644
index 000000000000..52437edef634
--- /dev/null
+++ b/scripts/bareboxtlv-target.c
@@ -0,0 +1 @@
+#include "bareboxtlv.c"
diff --git a/scripts/bareboxtlv.c b/scripts/bareboxtlv.c
new file mode 100644
index 000000000000..7b8dbfc1e845
--- /dev/null
+++ b/scripts/bareboxtlv.c
@@ -0,0 +1,183 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2021 Ahmad Fatoum, Pengutronix
+
+/* bareboxtlv.c - generate a barebox TLV header */
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <getopt.h>
+#include <unistd.h>
+
+#include "compiler.h"
+#include <linux/stringify.h>
+
+#define debug(...)
+#define printk_once(...)
+
+#include "../include/tlv/format.h"
+#include "../crypto/crc32.c"
+
+#include "common.h"
+#include "common.c"
+
+static void usage(char *prgname)
+{
+	fprintf(stderr,
+		"USAGE: %s [FILE]\n"
+		"Manipulate barebox TLV blobs\n"
+		"\n"
+		"options:\n"
+		"  -m        TLV magic to use (default: " __stringify(TLV_MAGIC_BAREBOX_V1) " or input magic for -s)\n"
+		"  -s        strip input TLV header from output\n"
+		"            (default is adding header to headerless input)\n"
+		"  -@        offset to start reading at\n"
+		"  -v        verify CRC\n",
+		prgname);
+}
+
+static inline ssize_t write_full_verbose(int fd, const void *buf, size_t len)
+{
+	ssize_t ret;
+
+	ret = write_full(fd, buf, len);
+	if (ret < 0)
+		perror("write");
+	return ret;
+}
+
+int main(int argc, char *argv[])
+{
+	u32 magic = 0;
+	struct tlv_header *inhdr = NULL;
+	struct tlv_header hdr;
+	size_t offset = 0, size = 0;
+	ssize_t ret;
+	bool strip_header = false, verify = false;
+	int opt, ecode = EXIT_FAILURE;
+	int infd = STDIN_FILENO;
+	const u8 *p;
+	char *endptr;
+	void *buf;
+	u32 crc = ~0;
+
+	while((opt = getopt(argc, argv, "svm:@:h")) != -1) {
+		switch (opt) {
+		case 'v':
+			verify = true;
+			/* fallthrough; */
+		case 's':
+			strip_header = true;
+			break;
+		case 'm':
+			magic = strtoul(optarg, NULL, 16);
+			if (!magic) {
+				fprintf(stderr, "invalid magic: %s\n", optarg);
+				return EXIT_FAILURE;
+			}
+			break;
+		case '@':
+			offset = strtoul(optarg, &endptr, 0);
+			if (endptr == optarg) {
+				fprintf(stderr, "invalid offset: %s\n", optarg);
+				return EXIT_FAILURE;
+			}
+			break;
+		case 'h':
+			usage(argv[0]);
+			return 0;
+		}
+	}
+
+	if (argc - optind > 1) {
+		usage(argv[0]);
+		return EXIT_FAILURE;
+	}
+
+	if (argv[optind]) {
+		infd = open(argv[optind], O_RDONLY);
+		if (infd < 0) {
+			perror("open");
+			return EXIT_FAILURE;
+		}
+		lseek(infd, offset, SEEK_SET);
+	} else if (offset) {
+		fprintf(stderr, "can't combine -@ with stdin\n");
+		return EXIT_FAILURE;
+	}
+
+	p = buf = read_fd(infd, &size);
+	if (!buf) {
+		perror("read_fd");
+		goto out;
+	}
+
+	/* validate, but skip, if header given */
+	if (strip_header) {
+		inhdr = buf;
+
+		if (size < tlv_total_len(inhdr)) {
+			fprintf(stderr, "short input: got %zu bytes, but header claims %zu\n",
+			       size, tlv_total_len(inhdr));
+			goto out;
+		}
+
+		if (!magic)
+			magic = get_unaligned_be32(p);
+
+		p += sizeof(struct tlv_header);
+		size = cpu_to_be32(inhdr->length_tlv);
+
+		if (cpu_to_be32(inhdr->length_sig) != 0) {
+			fprintf(stderr, "Signatures not yet supported\n");
+			goto out;
+		}
+
+	}
+
+	if (!magic)
+		magic = TLV_MAGIC_BAREBOX_V1;
+
+	hdr.magic = cpu_to_be32(magic);
+	hdr.length_tlv = cpu_to_be32(size);
+	hdr.length_sig = cpu_to_be32(0);
+
+	if (!verify) {
+		if (!strip_header) {
+			ret = write_full_verbose(1, &hdr, sizeof(hdr));
+			if (ret < 0)
+				goto out;
+		}
+		ret = write_full_verbose(1, p, size);
+		if (ret < 0)
+			goto out;
+	}
+
+	crc = crc32_be(crc, &hdr, sizeof(hdr));
+	crc = crc32_be(crc, p, size);
+
+	if (verify) {
+		u32 oldcrc;
+
+		oldcrc = get_unaligned_be32(p + size);
+		if (oldcrc != crc) {
+			fprintf(stderr, "CRC mismatch: expected %08x, but calculated %08x\n",
+			       oldcrc, crc);
+			goto out;
+		}
+	}
+
+	if (!strip_header) {
+		crc = cpu_to_be32(crc);
+
+		ret = write_full_verbose(1, &crc, sizeof(crc));
+		if (ret < 0)
+			goto out;
+	}
+
+	ecode = 0;
+out:
+	free(buf);
+	if (argv[optind])
+		close(infd);
+	return ecode;
+}
diff --git a/scripts/include/asm/unaligned.h b/scripts/include/asm/unaligned.h
new file mode 100644
index 000000000000..af6ccbc1bcf5
--- /dev/null
+++ b/scripts/include/asm/unaligned.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _ASM_ARM_UNALIGNED_H
+#define _ASM_ARM_UNALIGNED_H
+
+#include "../../../include/linux/unaligned/le_byteshift.h"
+#include "../../../include/linux/unaligned/be_byteshift.h"
+#include "../../../include/linux/unaligned/generic.h"
+
+/*
+ * Select endianness
+ */
+#ifdef CONFIG_CPU_BIG_ENDIAN
+#define get_unaligned	__get_unaligned_be
+#define put_unaligned	__put_unaligned_be
+#else
+#define get_unaligned	__get_unaligned_le
+#define put_unaligned	__put_unaligned_le
+#endif
+
+#endif /* _ASM_ARM_UNALIGNED_H */
diff --git a/scripts/include/linux/build_bug.h b/scripts/include/linux/build_bug.h
new file mode 100644
index 000000000000..e9bc857b15e8
--- /dev/null
+++ b/scripts/include/linux/build_bug.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_BUILD_BUG_H
+#define _LINUX_BUILD_BUG_H
+
+#define static_assert(expr, ...) __static_assert(expr, ##__VA_ARGS__, #expr)
+#define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
+
+#endif	/* _LINUX_BUILD_BUG_H */
diff --git a/scripts/include/linux/stringify.h b/scripts/include/linux/stringify.h
new file mode 100644
index 000000000000..55f6d04d48b1
--- /dev/null
+++ b/scripts/include/linux/stringify.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __LINUX_STRINGIFY_H
+#define __LINUX_STRINGIFY_H
+
+/* Indirect stringification.  Doing two levels allows the parameter to be a
+ * macro itself.  For example, compile with -DFOO=bar, __stringify(FOO)
+ * converts to "bar".
+ */
+
+#define __stringify_1(x...)	#x
+#define __stringify(x...)	__stringify_1(x)
+
+#endif	/* !__LINUX_STRINGIFY_H */
-- 
2.39.5



