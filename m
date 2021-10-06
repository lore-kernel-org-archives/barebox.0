Delivery-date: Wed, 06 Oct 2021 16:25:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY7r3-00051K-UA
	for lore@lore.pengutronix.de; Wed, 06 Oct 2021 16:25:09 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY7r1-0000i7-RZ
	for lore@pengutronix.de; Wed, 06 Oct 2021 16:25:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYxQPNS1NhVKS5VVrCbcAfbiw1oiPd/FUWHillMY4HM=; b=p9gFM91FVrHR68
	ohT2Rcdj65AZ4bFrNWsUUxI0aoQ+6eyuDhB8sL1udJOp2wv655NmcZzGsaOCuvJnfhiyykpwkgkoi
	8rBzO2El/D9Cm3hLW8OmNFQ8qTBhZM2zdEHiuZmpdxiYSQoeWJfDT/CFwRl6mKd9+5x6eLILbJzuM
	lqi8oyqhkHxDuD4/bzqwjs590iHcqjOWcGMYotrsl82i/Z/R9NKMTV2NMHCyvUEnwLnQAfs16ztEt
	5vA6Z1TLnkLJ9/1Fe3IoWX+7cbZovUYMyTQJd4F8ycI5mb4/PgP79qAbIt9XyA+URyPUGUUga1jw+
	qzVJq8Xk1T0yPaUwF2og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY7pP-00Ect5-UG; Wed, 06 Oct 2021 14:23:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY7pC-00EcmO-Jk
 for barebox@lists.infradead.org; Wed, 06 Oct 2021 14:23:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mY7ov-0000IC-CO; Wed, 06 Oct 2021 16:22:57 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mY7ou-0089Sc-R7; Wed, 06 Oct 2021 16:22:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  6 Oct 2021 16:22:54 +0200
Message-Id: <20211006142254.1751864-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211006142254.1751864-1-s.hauer@pengutronix.de>
References: <20211006142254.1751864-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_072314_899198_0280DF50 
X-CRM114-Status: GOOD (  30.94  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/5] scripts: Add rk-usb-loader tool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds a tool suitable for bootstrapping barebox on Rockchip RK3568
SoCs. It has been tested on this SoC only. It might or might not work
with minor adjustments on other SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Kconfig         |   8 +
 scripts/Makefile        |   3 +
 scripts/rk-usb-loader.c | 324 ++++++++++++++++++++++++++++++++++++++++
 scripts/rkimage.c       |  32 +---
 scripts/rockchip.h      |  35 +++++
 5 files changed, 371 insertions(+), 31 deletions(-)
 create mode 100644 scripts/rk-usb-loader.c
 create mode 100644 scripts/rockchip.h

diff --git a/scripts/Kconfig b/scripts/Kconfig
index 5cba520f4b..5118269c2d 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -102,4 +102,12 @@ config OMAP4_HOSTTOOL_USBBOOT
 
 	  You need libusb-1.0 to compile this tool.
 
+config RK_USB_LOADER
+	bool "Rockchip USB loader"
+	depends on ARCH_ROCKCHIP || COMPILE_HOST_TOOLS
+	help
+	  Say Y here to build the rockchip usb loader tool.
+
+	  You need libusb-1.0 to compile this tool.
+
 endmenu
diff --git a/scripts/Makefile b/scripts/Makefile
index 53568573a3..db2168bfab 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -36,6 +36,9 @@ hostprogs-always-$(CONFIG_OMAP3_USB_LOADER)		+= omap3-usb-loader
 HOSTCFLAGS_omap4_usbboot.o = `pkg-config --cflags libusb-1.0`
 HOSTLDLIBS_omap4_usbboot = -lpthread `pkg-config --libs libusb-1.0`
 hostprogs-always-$(CONFIG_OMAP4_HOSTTOOL_USBBOOT)	+= omap4_usbboot
+HOSTCFLAGS_rk-usb-loader.o = `pkg-config --cflags libusb-1.0`
+HOSTLDLIBS_rk-usb-loader  = `pkg-config --libs libusb-1.0`
+hostprogs-always-$(CONFIG_RK_USB_LOADER)		+= rk-usb-loader
 
 userprogs-always-$(CONFIG_BAREBOXENV_TARGET)		+= bareboxenv-target
 userprogs-always-$(CONFIG_KERNEL_INSTALL_TARGET)	+= kernel-install-target
diff --git a/scripts/rk-usb-loader.c b/scripts/rk-usb-loader.c
new file mode 100644
index 0000000000..87bc7b94a9
--- /dev/null
+++ b/scripts/rk-usb-loader.c
@@ -0,0 +1,324 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+/*
+ * rk-usb-loader: A tool to USB Bootstrap RK3568 SoCs
+ *
+ * This tool bootstraps Rockchip RK3568 SoCs via USB. It currently
+ * works for this SoC only. It takes the barebox images the barebox
+ * build process generates as input. The upload protocol has been
+ * taken from the rkdevelop tool, but it's not a full replacement
+ * of that tool.
+ */
+#include <stdio.h>
+#include <stdlib.h>
+#include <stdint.h>
+#include <stdarg.h>
+#include <string.h>
+#include <stdbool.h>
+#include <unistd.h>
+#include <getopt.h>
+#include <errno.h>
+#include <sys/types.h>
+#include <sys/stat.h>
+#include <fcntl.h>
+#include <libusb-1.0/libusb.h>
+
+#include "../common.h"
+#include "../common.c"
+#include "rockchip.h"
+
+static void log_error(char *fmt, ...)
+{
+	va_list va;
+
+	va_start(va, fmt);
+	fprintf(stdout, "[-] ");
+	vfprintf(stdout, fmt, va);
+	va_end(va);
+}
+
+static void log_info(char *fmt, ...)
+{
+	va_list va;
+
+	va_start(va, fmt);
+	fprintf(stdout, "[+] ");
+	vfprintf(stdout, fmt, va);
+	va_end(va);
+}
+
+static int debug;
+
+static void log_debug(char *fmt, ...)
+{
+	va_list va;
+
+	if (!debug)
+		return;
+
+	va_start(va, fmt);
+	fprintf(stdout, "[D] ");
+	vfprintf(stdout, fmt, va);
+	va_end(va);
+}
+
+static libusb_device_handle *rk_usb_open(libusb_context *ctx, uint16_t vendor, uint16_t product)
+{
+	libusb_device **devlist;
+	libusb_device_handle *handle;
+	struct libusb_device_descriptor desc;
+	ssize_t count, i;
+	int ret;
+
+	log_info("scanning for USB device matching %04hx:%04hx...\n",
+		 vendor, product);
+
+	while (1) {
+		if ((count = libusb_get_device_list(ctx, &devlist)) < 0) {
+			log_error("failed to gather USB device list: %s\n",
+				  libusb_error_name(count));
+			return NULL;
+		}
+
+		for (i = 0; i < count; i++) {
+			ret = libusb_get_device_descriptor(devlist[i], &desc);
+			if (ret < 0) {
+				log_error("failed to get USB device descriptor: %s\n",
+						libusb_error_name(ret));
+				libusb_free_device_list(devlist, 1);
+				return NULL;
+			}
+
+			if (desc.idVendor != vendor)
+				continue;
+
+			if (product) {
+				if (desc.idProduct != product)
+					continue;
+				goto found;
+			}
+		}
+
+		libusb_free_device_list(devlist, 1);
+
+		/* nothing found yet. have a 10ms nap */
+		usleep(10000);
+	}
+found:
+
+	ret = libusb_open(devlist[i], &handle);
+	if (ret < 0) {
+		log_error("failed to open USB device %04hx:%04hx: %s\n",
+				vendor, product, libusb_error_name(ret));
+		libusb_free_device_list(devlist, 1);
+		return NULL;
+	}
+
+	ret = libusb_claim_interface(handle, 0);
+	if (ret) {
+		printf("Claim failed\n");
+		return NULL;
+	}
+
+	log_info("successfully opened %04hx:%04hx\n", vendor, product);
+
+	return handle;
+}
+
+#define poly16_CCITT    0x1021          /* crc-ccitt mask */
+
+static uint16_t crc_calculate(uint16_t crc, unsigned char ch)
+{
+	unsigned int i;
+
+	for (i = 0x80; i != 0; i >>= 1) {
+		if (crc & 0x8000) {
+			crc <<= 1;
+			crc ^= poly16_CCITT;
+		} else {
+			crc <<= 1;
+		}
+
+		if (ch & i)
+			crc ^= poly16_CCITT;
+	}
+	return crc;
+}
+
+static uint16_t crc_ccitt(unsigned char *p, int n)
+{
+	uint16_t crc = 0xffff;
+
+	while (n--) {
+		crc = crc_calculate(crc, *p);
+		p++;
+	}
+
+	return crc;
+}
+
+static int upload(libusb_device_handle *dev, unsigned int dwRequest, void *buf, int n_bytes)
+{
+	uint16_t crc;
+	uint8_t *data;
+	int sent = 0, ret;
+
+	data = calloc(n_bytes + 5, 1);
+	memcpy(data, buf, n_bytes);
+
+	crc = crc_ccitt(data, n_bytes);
+	data[n_bytes] = (crc & 0xff00) >> 8;
+	data[n_bytes + 1] = crc & 0x00ff;
+	n_bytes += 2;
+
+	while (sent < n_bytes) {
+		int now;
+
+		if (n_bytes - sent > 4096)
+			now = 4096;
+		else
+			now = n_bytes - sent;
+
+		ret = libusb_control_transfer(dev, 0x40, 0xC, 0, dwRequest,
+					      data + sent, now, 0);
+		if (ret != now) {
+			log_error("DeviceRequest 0x%x failed, err=%d",
+				  dwRequest, ret);
+
+			ret = -EIO;
+			goto err;
+		}
+		sent += now;
+	}
+
+	ret = 0;
+err:
+	free(data);
+
+	return ret;
+}
+
+static int upload_image(const char *filename)
+{
+	libusb_context *ctx;
+	libusb_device_handle *dev;
+	int ret;
+	void *buf;
+	struct newidb *hdr;
+	int i, n_files;
+	size_t size;
+
+	buf = read_file(filename, &size);
+	if (!buf)
+		exit(1);
+
+	hdr = buf;
+
+	if (hdr->magic != NEWIDB_MAGIC) {
+		log_error("%s has invalid magic 0x%08x ( != 0x%08x )\n", filename,
+			  hdr->magic, NEWIDB_MAGIC);
+		exit(1);
+	}
+
+	ret = libusb_init(&ctx);
+	if (ret < 0) {
+		log_error("failed to initialize libusb context: %s\n",
+			  libusb_error_name(ret));
+		return ret;
+	}
+
+	dev = rk_usb_open(ctx, 0x2207, 0x350a);
+	if (!dev) {
+		libusb_exit(ctx);
+		return 1;
+	}
+
+	n_files = hdr->n_files >> 16;
+
+	if (n_files > 2) {
+		/*
+		 * This tool is designed for barebox images generated with rkimage.
+		 * These have one blob containing the SDRAM setup sent with the
+		 * CODE471_OPTION and one blob containing the barebox image sent with
+		 * the CODE472_OPTION.
+		 */
+		log_error("Invalid image with %d blobs\n", n_files);
+		ret = -EINVAL;
+		goto err;
+	}
+
+	for (i = 0; i < n_files; i++) {
+		struct newidb_entry *entry = &hdr->entries[i];
+		int foffset, fsize, wIndex;
+
+		if (i)
+			wIndex = 0x472;
+		else
+			wIndex = 0x471;
+
+		log_info("Uploading %d/%d\n", i + 1, n_files);
+
+		foffset = (entry->sector & 0xffff) * SECTOR_SIZE;
+		fsize = (entry->sector >> 16) * SECTOR_SIZE;
+
+		log_debug("image starting at offset 0x%08x, size 0x%08x\n", foffset, fsize);
+
+		ret = upload(dev, wIndex, buf + foffset, fsize);
+		if (ret)
+			goto err;
+	}
+
+	ret = 0;
+err:
+	libusb_close(dev);
+	libusb_exit(ctx);
+
+	return ret;
+}
+
+static void usage(const char *prgname)
+{
+	printf(
+"Usage: %s [OPTIONS] <IMAGE>\n"
+"\n"
+"Options:\n"
+"  -d          Enable debugging output\n"
+"  -h          This help\n",
+	prgname);
+}
+
+static struct option cbootcmd[] = {
+	{"debug", 0, NULL, 'd'},
+	{"help", 0, NULL, 'h'},
+	{0, 0, 0, 0},
+};
+
+int main(int argc, char **argv)
+{
+	int opt, ret;
+	const char *filename;
+
+	while ((opt = getopt_long(argc, argv, "hd", cbootcmd, NULL)) > 0) {
+		switch (opt) {
+		case 'h':
+			usage(argv[0]);
+			exit(0);
+		case 'd':
+			debug = 1;
+			break;
+		}
+	}
+
+	if (argc == optind) {
+		usage(argv[0]);
+		exit(1);
+	}
+
+	filename = argv[optind];
+
+	ret = upload_image(filename);
+	if (ret)
+		exit(1);
+
+	exit(0);
+}
diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index be89c1ad34..7262f320eb 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -15,6 +15,7 @@
 
 #include "../common.h"
 #include "../common.c"
+#include "rockchip.h"
 
 #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof(arr[0]))
 #define ALIGN(x, a)        (((x) + (a) - 1) & ~((a) - 1))
@@ -37,37 +38,6 @@ static void sha512(const void *buf, int len, void *out)
 	SHA512_Final(out, &sha512);
 }
 
-#define NEWIDB_MAGIC 0x534e4b52 /* 'RKNS' */
-
-struct newidb_entry {
-	uint32_t sector;
-	uint32_t unknown_ffffffff;
-	uint32_t unknown1;
-	uint32_t image_number;
-	unsigned char unknown2[8];
-	unsigned char hash[64];
-};
-
-struct newidb {
-	uint32_t magic;
-	unsigned char unknown1[4];
-	uint32_t n_files;
-	uint32_t hashtype;
-	unsigned char unknown2[8];
-	unsigned char unknown3[8];
-	unsigned char unknown4[88];
-	struct newidb_entry entries[4];
-	unsigned char unknown5[40];
-	unsigned char unknown6[512];
-	unsigned char unknown7[16];
-	unsigned char unknown8[32];
-	unsigned char unknown9[464];
-	unsigned char hash[512];
-};
-
-#define SECTOR_SIZE 512
-#define PAGE_SIZE 2048
-
 typedef enum {
 	HASH_TYPE_SHA256 = 1,
 	HASH_TYPE_SHA512 = 2,
diff --git a/scripts/rockchip.h b/scripts/rockchip.h
new file mode 100644
index 0000000000..8cc14f8f2f
--- /dev/null
+++ b/scripts/rockchip.h
@@ -0,0 +1,35 @@
+#ifndef __ROCKCHIP_H
+#define __ROCKCHIP_H
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
+#endif /* __ROCKCHIP_H */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

