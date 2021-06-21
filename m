Delivery-date: Mon, 21 Jun 2021 11:30:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvGFs-0000if-1c
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 11:30:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvGFp-00084r-K0
	for lore@pengutronix.de; Mon, 21 Jun 2021 11:30:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6nr+se1nsiYufaHdQb40DJumCAymBUSIEbfhJFTCak=; b=WKDTBXZE+ZjjmF
	2/E8nFlDUvo7SPWfj5bPzDeXaYNTvVTtCCh/PPBVftFas9in4ws1ekORGJRIhVvgDR6EYPbe3J/Wg
	JWkExbuHhVzSzsyUaKlyUv3e59DGHDhivyjHt599EcGAiffXS94f2VGflVp3/zhboErIsI4qW7Yzr
	rPndzVPtdRV48zg7WME1cYANJajLEQZjQfT+7/5BXzI1KFwDH8aT7VjEOKb/uWNbJl9/dmGf9Fuso
	ugcjPCK+37zPrhfRzemzRZTuAUm3yRB611WUut4QFhj/tGl3rjyzKPyf053JkpqSPU/7gBzD7Px16
	2B1IFqiulxd1y3F8037g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvGEW-002tXX-Dm; Mon, 21 Jun 2021 09:28:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvGDt-002tGf-N7
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 09:28:09 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvGDs-0007Zi-Am; Mon, 21 Jun 2021 11:28:04 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvGDr-0003da-KS; Mon, 21 Jun 2021 11:28:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 21 Jun 2021 11:27:54 +0200
Message-Id: <20210621092802.27275-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210621092802.27275-1-s.hauer@pengutronix.de>
References: <20210621092802.27275-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_022805_802692_3A28AF4B 
X-CRM114-Status: GOOD (  22.72  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/12] ARM: Rockchip: Add rkimage tool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds a tool for generating "RKNS" type booting image for newer
Rockchip SoCs. This image format is supported starting at least with
RK3568. Older image types are not (yet) supported.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Link: https://lore.barebox.org/20210615141641.31577-5-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile  |   3 +
 scripts/rkimage.c | 260 ++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 263 insertions(+)
 create mode 100644 scripts/rkimage.c

diff --git a/scripts/Makefile b/scripts/Makefile
index 2d322fd1c9..eb0f5c5805 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -25,6 +25,9 @@ hostprogs-always-$(CONFIG_ARCH_MXS)			+= mxsimage mxsboot
 hostprogs-always-$(CONFIG_ARCH_LAYERSCAPE)		+= pblimage
 hostprogs-always-$(CONFIG_ARCH_STM32MP)			+= stm32image
 hostprogs-always-$(CONFIG_RISCV)			+= prelink-riscv
+hostprogs-always-$(CONFIG_ARCH_ROCKCHIP)		+= rkimage
+HOSTCFLAGS_rkimage = `pkg-config --cflags openssl`
+HOSTLDLIBS_rkimage = `pkg-config --libs openssl`
 KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
 HOSTLDLIBS_mxsimage  = `pkg-config --libs openssl`
 HOSTCFLAGS_omap3-usb-loader.o = `pkg-config --cflags libusb-1.0`
diff --git a/scripts/rkimage.c b/scripts/rkimage.c
new file mode 100644
index 0000000000..dde9724886
--- /dev/null
+++ b/scripts/rkimage.c
@@ -0,0 +1,260 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <stdio.h>
+#include <unistd.h>
+#include <getopt.h>
+#include <sys/types.h>
+#include <sys/stat.h>
+#include <fcntl.h>
+#include <stdlib.h>
+#include <stdint.h>
+#include <string.h>
+#include <time.h>
+#include <openssl/sha.h>
+#include <errno.h>
+#include <stdbool.h>
+
+#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof(arr[0]))
+#define ALIGN(x, a)        (((x) + (a) - 1) & ~((a) - 1))
+
+static void sha256(const void *buf, int len, void *out)
+{
+	SHA256_CTX sha256;
+
+	SHA256_Init(&sha256);
+	SHA256_Update(&sha256, buf, len);
+	SHA256_Final(out, &sha256);
+}
+
+static void sha512(const void *buf, int len, void *out)
+{
+	SHA512_CTX sha512;
+
+	SHA512_Init(&sha512);
+	SHA512_Update(&sha512, buf, len);
+	SHA512_Final(out, &sha512);
+}
+
+#define NEWIDB_MAGIC 0x534e4b52 /* 'RKNS' */
+
+struct newidb_entry {
+	uint32_t sector;
+	uint32_t unknown_ffffffff;
+	uint32_t unknown1;
+	uint32_t image_number;
+	unsigned char unknown2[8];
+	unsigned char hash[64];
+};
+
+struct newidb {
+	uint32_t magic;
+	unsigned char unknown1[4];
+	uint32_t n_files;
+	uint32_t hashtype;
+	unsigned char unknown2[8];
+	unsigned char unknown3[8];
+	unsigned char unknown4[88];
+	struct newidb_entry entries[4];
+	unsigned char unknown5[40];
+	unsigned char unknown6[512];
+	unsigned char unknown7[16];
+	unsigned char unknown8[32];
+	unsigned char unknown9[464];
+	unsigned char hash[512];
+};
+
+#define SECTOR_SIZE 512
+#define PAGE_SIZE 2048
+
+typedef enum {
+	HASH_TYPE_SHA256 = 1,
+	HASH_TYPE_SHA512 = 2,
+} hash_type_t;
+
+struct rkcode {
+	const char *path;
+	size_t size;
+	void *buf;
+};
+
+static int n_code;
+struct rkcode *code;
+
+static int create_newidb(struct newidb *idb)
+{
+	hash_type_t hash_type = HASH_TYPE_SHA256;
+	bool keep_cert = false;
+	int image_offset;
+	int i;
+	unsigned char *idbu8 = (void *)idb;
+
+	idb->magic = NEWIDB_MAGIC;
+	idb->n_files = (n_code << 16) | (1 << 7) | (1 << 8);
+
+	if (hash_type == HASH_TYPE_SHA256)
+		idb->hashtype = (1 << 0);
+	else if (hash_type == HASH_TYPE_SHA512)
+		idb->hashtype = (1 << 1);
+
+	if (!keep_cert)
+		image_offset = 4;
+	else
+		image_offset = 8;
+
+	for (i = 0; i < n_code; i++) {
+		struct newidb_entry *entry = &idb->entries[i];
+		struct rkcode *c = &code[i];
+		unsigned int image_sector;
+
+		image_sector = c->size / SECTOR_SIZE;
+
+		entry->sector  = (image_sector << 16) + image_offset;
+		entry->unknown_ffffffff = 0xffffffff;
+		entry->image_number = i + 1;
+
+		if (hash_type == HASH_TYPE_SHA256)
+			sha256(c->buf, c->size, entry->hash); /* File size padded to sector size */
+		else if (hash_type == HASH_TYPE_SHA512)
+			sha512(c->buf, c->size, entry->hash);
+
+		image_offset += image_sector;
+
+	}
+
+	if (hash_type == HASH_TYPE_SHA256)
+		sha256(idbu8, 1535, idbu8 + 1536);
+	else if (hash_type == HASH_TYPE_SHA512)
+		sha512(idbu8, 1535, idbu8 + 1536);
+
+	return 0;
+}
+
+struct option cbootcmd[] = {
+	{"help", 0, NULL, 'h'},
+	{"o", 1, NULL, 'o'},
+	{0, 0, 0, 0},
+};
+
+static void usage(const char *prgname)
+{
+	printf(
+"Usage: %s [OPTIONS] <FILES>\n"
+"\n"
+"Generate a Rockchip boot image from <FILES>\n"
+"This tool is suitable for SoCs beginning with rk3568. Older SoCs\n"
+"have a different image format.\n"
+"\n"
+"Options:\n"
+"  -o <file>   Output image to <file>\n"
+"  -h          This help\n",
+	prgname);
+}
+
+static int read_full(int fd, void *buf, size_t size)
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
+
+static int write_full(int fd, void *buf, size_t size)
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
+
+int main(int argc, char *argv[])
+{
+	int opt, i, fd;
+	const char *outfile = NULL;
+	struct newidb idb = {};
+
+	while ((opt = getopt_long(argc, argv, "ho:", cbootcmd, NULL)) > 0) {
+		switch (opt) {
+		case 'o':
+			outfile = optarg;
+			break;
+		case 'h':
+			usage(argv[0]);
+			exit(0);
+		}
+	}
+
+	n_code = argc - optind;
+	if (!n_code) {
+		usage(argv[0]);
+		exit(1);
+	}
+
+	code = calloc(n_code, sizeof(*code));
+	if (!code)
+		exit(1);
+
+	for (i = 0; i < n_code; i++) {
+		struct stat s;
+		int fd, ret;
+		struct rkcode *c = &code[i];
+		const char *path = argv[i + optind];
+
+		fd = open(path, O_RDONLY);
+		if (fd < 0) {
+			fprintf(stderr, "Cannot open %s: %s\n", path, strerror(errno));
+			exit(1);
+		}
+
+		ret = fstat(fd, &s);
+		if (ret)
+			exit(1);
+
+		c->path = path;
+		c->size = ALIGN(s.st_size, PAGE_SIZE);
+		c->buf = calloc(c->size, 1);
+		if (!c->buf)
+			exit(1);
+
+		read_full(fd, c->buf, s.st_size);
+		close(fd);
+	}
+
+	create_newidb(&idb);
+
+	fd = creat(outfile, 0644);
+	if (fd < 0) {
+		fprintf(stderr, "Cannot open %s: %s\n", outfile, strerror(errno));
+		exit(1);
+	}
+
+	write_full(fd, &idb, sizeof(idb));
+
+	for (i = 0; i < n_code; i++) {
+		struct rkcode *c = &code[i];
+
+		write_full(fd, c->buf, c->size);
+	}
+
+	close(fd);
+
+	return 0;
+}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

