Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YaL0J-0002MR-CL
 for barebox@lists.infradead.org; Tue, 24 Mar 2015 09:20:10 +0000
Received: from mail177.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 648F5FF9535
 for <barebox@lists.infradead.org>; Tue, 24 Mar 2015 10:19:44 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 24 Mar 2015 10:19:26 +0100
Message-Id: <1427188768-18012-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1427188768-18012-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150324091655.GA8125@ns203013.ovh.net>
 <1427188768-18012-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/4] crypto: prepare to allow multiple digest driver
To: barebox@lists.infradead.org

This will allow to have hw driver or asm optimised driver.

Use a priority level to determine which one to use at runtime.
The generic one will be 0.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/configs/at91rm9200ek_defconfig         |  4 +--
 arch/arm/configs/highbank_defconfig             |  4 +--
 arch/arm/configs/mioa701_defconfig              |  2 +-
 arch/arm/configs/module-mb7707_defconfig        |  4 +--
 arch/arm/configs/nhk8815_defconfig              |  2 +-
 arch/arm/configs/phytec-phycard-omap3_defconfig |  6 ++--
 arch/arm/configs/rpi_defconfig                  |  4 +--
 arch/arm/configs/versatilepb_arm1176_defconfig  |  4 +--
 arch/arm/configs/versatilepb_defconfig          |  4 +--
 arch/arm/configs/vexpress_ca9_defconfig         |  4 +--
 arch/arm/configs/vexpress_defconfig             |  4 +--
 arch/arm/configs/virt2real_defconfig            |  4 +--
 arch/arm/configs/zylonite310_defconfig          |  2 +-
 arch/mips/configs/img-ci20_defconfig            |  6 ++--
 arch/mips/configs/ritmix-rzx50_defconfig        |  6 ++--
 arch/mips/configs/tplink-mr3020_defconfig       |  4 +--
 crypto/Kconfig                                  | 40 +++++++++++++++++++++----
 crypto/Makefile                                 | 14 ++++-----
 crypto/digest.c                                 | 31 +++++++++++--------
 crypto/hmac.c                                   | 15 ++++++----
 crypto/md5.c                                    |  9 ++++--
 crypto/sha1.c                                   |  9 ++++--
 crypto/sha2.c                                   | 17 ++++++++---
 crypto/sha4.c                                   | 17 ++++++++---
 {crypto => include/crypto}/internal.h           |  0
 include/digest.h                                | 12 ++++++--
 26 files changed, 150 insertions(+), 78 deletions(-)
 rename {crypto => include/crypto}/internal.h (100%)

diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index 54e3b1d..03fca04 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -76,5 +76,5 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_FS_CRAMFS=y
-CONFIG_SHA1=y
-CONFIG_SHA256=y
+CONFIG_DIGEST_SHA1_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/highbank_defconfig b/arch/arm/configs/highbank_defconfig
index cf42d29..8c965c8 100644
--- a/arch/arm/configs/highbank_defconfig
+++ b/arch/arm/configs/highbank_defconfig
@@ -59,5 +59,5 @@ CONFIG_DISK=y
 CONFIG_DISK_AHCI=y
 CONFIG_GPIO_PL061=y
 CONFIG_FS_TFTP=y
-CONFIG_SHA1=y
-CONFIG_SHA256=y
+CONFIG_DIGEST_SHA1_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/mioa701_defconfig b/arch/arm/configs/mioa701_defconfig
index d405edf..cc4587c 100644
--- a/arch/arm/configs/mioa701_defconfig
+++ b/arch/arm/configs/mioa701_defconfig
@@ -104,4 +104,4 @@ CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y
 CONFIG_BZLIB=y
 CONFIG_BMP=y
 CONFIG_PNG=y
-CONFIG_SHA256=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/module-mb7707_defconfig b/arch/arm/configs/module-mb7707_defconfig
index 843dd59..83a798b 100644
--- a/arch/arm/configs/module-mb7707_defconfig
+++ b/arch/arm/configs/module-mb7707_defconfig
@@ -45,5 +45,5 @@ CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
 CONFIG_CLOCKSOURCE_DUMMY=y
-CONFIG_SHA1=y
-CONFIG_SHA256=y
+CONFIG_DIGEST_SHA1_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
index dcb00c0..46c3a68 100644
--- a/arch/arm/configs/nhk8815_defconfig
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -55,4 +55,4 @@ CONFIG_MTD_NAND_NOMADIK=y
 CONFIG_UBI=y
 CONFIG_FS_CRAMFS=y
 CONFIG_MD5=y
-CONFIG_SHA256=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/phytec-phycard-omap3_defconfig b/arch/arm/configs/phytec-phycard-omap3_defconfig
index aefc78d..a2564d4 100644
--- a/arch/arm/configs/phytec-phycard-omap3_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3_defconfig
@@ -173,6 +173,6 @@ CONFIG_CRC32=y
 CONFIG_CRC16=y
 CONFIG_DIGEST=y
 CONFIG_MD5=y
-CONFIG_SHA1=y
-CONFIG_SHA224=y
-CONFIG_SHA256=y
+CONFIG_DIGEST_SHA1_GENERIC=y
+CONFIG_DIGEST_SHA224_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index c6b2c50..25770a0 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -64,5 +64,5 @@ CONFIG_FS_EXT4=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_SHA1=y
-CONFIG_SHA256=y
+CONFIG_DIGEST_SHA1_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/versatilepb_arm1176_defconfig b/arch/arm/configs/versatilepb_arm1176_defconfig
index ca0ab36..cefdb29 100644
--- a/arch/arm/configs/versatilepb_arm1176_defconfig
+++ b/arch/arm/configs/versatilepb_arm1176_defconfig
@@ -95,5 +95,5 @@ CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_PNG=y
-CONFIG_SHA1=y
-CONFIG_SHA256=y
+CONFIG_DIGEST_SHA1_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
index 54a6fec..0876824 100644
--- a/arch/arm/configs/versatilepb_defconfig
+++ b/arch/arm/configs/versatilepb_defconfig
@@ -81,5 +81,5 @@ CONFIG_FS_CRAMFS=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
-CONFIG_SHA1=y
-CONFIG_SHA256=y
+CONFIG_DIGEST_SHA1_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/vexpress_ca9_defconfig b/arch/arm/configs/vexpress_ca9_defconfig
index 84171c4..c5ad315 100644
--- a/arch/arm/configs/vexpress_ca9_defconfig
+++ b/arch/arm/configs/vexpress_ca9_defconfig
@@ -58,5 +58,5 @@ CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
 CONFIG_FS_TFTP=y
-CONFIG_SHA1=y
-CONFIG_SHA256=y
+CONFIG_DIGEST_SHA1_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
index c7928c4..beea11a 100644
--- a/arch/arm/configs/vexpress_defconfig
+++ b/arch/arm/configs/vexpress_defconfig
@@ -57,5 +57,5 @@ CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
 CONFIG_FS_TFTP=y
-CONFIG_SHA1=y
-CONFIG_SHA256=y
+CONFIG_DIGEST_SHA1_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/virt2real_defconfig b/arch/arm/configs/virt2real_defconfig
index a81d18b..0c686ca 100644
--- a/arch/arm/configs/virt2real_defconfig
+++ b/arch/arm/configs/virt2real_defconfig
@@ -45,5 +45,5 @@ CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
-CONFIG_SHA1=y
-CONFIG_SHA256=y
+CONFIG_DIGEST_SHA1_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/zylonite310_defconfig b/arch/arm/configs/zylonite310_defconfig
index 77e4f84..fa6587c 100644
--- a/arch/arm/configs/zylonite310_defconfig
+++ b/arch/arm/configs/zylonite310_defconfig
@@ -114,4 +114,4 @@ CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y
 CONFIG_BZLIB=y
 CONFIG_BMP=y
 CONFIG_PNG=y
-CONFIG_SHA256=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/mips/configs/img-ci20_defconfig b/arch/mips/configs/img-ci20_defconfig
index 56235c4..6702c88 100644
--- a/arch/mips/configs/img-ci20_defconfig
+++ b/arch/mips/configs/img-ci20_defconfig
@@ -37,6 +37,6 @@ CONFIG_OFDEVICE=y
 # CONFIG_SPI is not set
 CONFIG_CLOCKSOURCE_DUMMY=y
 CONFIG_CLOCKSOURCE_DUMMY_RATE=3500
-CONFIG_SHA1=y
-CONFIG_SHA224=y
-CONFIG_SHA256=y
+CONFIG_DIGEST_SHA1_GENERIC=y
+CONFIG_DIGEST_SHA224_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/mips/configs/ritmix-rzx50_defconfig b/arch/mips/configs/ritmix-rzx50_defconfig
index 0814883..eedb329 100644
--- a/arch/mips/configs/ritmix-rzx50_defconfig
+++ b/arch/mips/configs/ritmix-rzx50_defconfig
@@ -46,6 +46,6 @@ CONFIG_LED_TRIGGERS=y
 CONFIG_GPIO_JZ4740=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_JZ4740=y
-CONFIG_SHA1=y
-CONFIG_SHA224=y
-CONFIG_SHA256=y
+CONFIG_DIGEST_SHA1_GENERIC=y
+CONFIG_DIGEST_SHA224_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/mips/configs/tplink-mr3020_defconfig b/arch/mips/configs/tplink-mr3020_defconfig
index d249919..9f81ce3 100644
--- a/arch/mips/configs/tplink-mr3020_defconfig
+++ b/arch/mips/configs/tplink-mr3020_defconfig
@@ -30,5 +30,5 @@ CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_MTD_M25P80=y
 CONFIG_MD5=y
-CONFIG_SHA224=y
-CONFIG_SHA256=y
+CONFIG_DIGEST_SHA224_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/crypto/Kconfig b/crypto/Kconfig
index b721e30..5a69236 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -13,25 +13,53 @@ menuconfig DIGEST
 if DIGEST
 
 config MD5
-	bool "MD5"
+	bool
 
 config SHA1
-	bool "SHA1"
+	bool
 
 config SHA224
-	bool "SHA224"
+	bool
 
 config SHA256
-	bool "SHA256"
+	bool
 
 config SHA384
-	bool "SHA384"
+	bool
 
 config SHA512
-	bool "SHA512"
+	bool
 
 config DIGEST_HMAC
+	bool
+
+config DIGEST_MD5_GENERIC
+	bool "MD5"
+	select MD5
+
+config DIGEST_SHA1_GENERIC
+	bool "SHA1"
+	select SHA1
+
+config DIGEST_SHA224_GENERIC
+	bool "SHA224"
+	select SHA224
+
+config DIGEST_SHA256_GENERIC
+	bool "SHA256"
+	select SHA256
+
+config DIGEST_SHA384_GENERIC
+	bool "SHA384"
+	select SHA384
+
+config DIGEST_SHA512_GENERIC
+	bool "SHA512"
+	select SHA512
+
+config DIGEST_HMAC_GENERIC
 	bool "HMAC"
+	select DIGEST_HMAC
 
 endif
 
diff --git a/crypto/Makefile b/crypto/Makefile
index 0bb67d5..f39de71 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -2,12 +2,12 @@ obj-$(CONFIG_CRC32)	+= crc32.o
 obj-$(CONFIG_CRC16)	+= crc16.o
 obj-$(CONFIG_CRC7)	+= crc7.o
 obj-$(CONFIG_DIGEST)	+= digest.o
-obj-$(CONFIG_DIGEST_HMAC)	+= hmac.o
-obj-$(CONFIG_MD5)	+= md5.o
-obj-$(CONFIG_SHA1)	+= sha1.o
-obj-$(CONFIG_SHA224)	+= sha2.o
-obj-$(CONFIG_SHA256)	+= sha2.o
-obj-$(CONFIG_SHA384)	+= sha4.o
-obj-$(CONFIG_SHA512)	+= sha4.o
+obj-$(CONFIG_DIGEST_HMAC_GENERIC)	+= hmac.o
+obj-$(CONFIG_DIGEST_MD5_GENERIC)	+= md5.o
+obj-$(CONFIG_DIGEST_SHA1_GENERIC)	+= sha1.o
+obj-$(CONFIG_DIGEST_SHA224_GENERIC)	+= sha2.o
+obj-$(CONFIG_DIGEST_SHA256_GENERIC)	+= sha2.o
+obj-$(CONFIG_DIGEST_SHA384_GENERIC)	+= sha4.o
+obj-$(CONFIG_DIGEST_SHA512_GENERIC)	+= sha4.o
 
 obj-$(CONFIG_CRYPTO_PBKDF2)	+= pbkdf2.o
diff --git a/crypto/digest.c b/crypto/digest.c
index 047131b..03dacab 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -25,8 +25,7 @@
 #include <errno.h>
 #include <module.h>
 #include <linux/err.h>
-
-#include "internal.h"
+#include <crypto/internal.h>
 
 static LIST_HEAD(digests);
 
@@ -78,7 +77,7 @@ int digest_generic_digest(struct digest *d, const void *data,
 
 int digest_algo_register(struct digest_algo *d)
 {
-	if (!d || !d->name || !d->update || !d->final || !d->verify ||
+	if (!d || !d->base.name || !d->update || !d->final || !d->verify ||
 	    d->length < 1)
 		return -EINVAL;
 
@@ -91,9 +90,6 @@ int digest_algo_register(struct digest_algo *d)
 	if (!d->free)
 		d->free = dummy_free;
 
-	if (digest_algo_get_by_name(d->name))
-		return -EEXIST;
-
 	list_add_tail(&d->list, &digests);
 
 	return 0;
@@ -111,25 +107,36 @@ EXPORT_SYMBOL(digest_algo_unregister);
 
 static struct digest_algo *digest_algo_get_by_name(const char *name)
 {
-	struct digest_algo *d;
+	struct digest_algo *d = NULL;
+	struct digest_algo *tmp;
+	int priority = -1;
 
 	if (!name)
 		return NULL;
 
-	list_for_each_entry(d, &digests, list) {
-		if(strcmp(d->name, name) == 0)
-			return d;
+	list_for_each_entry(tmp, &digests, list) {
+		if (strcmp(tmp->base.name, name) != 0)
+			continue;
+		
+		if (tmp->base.priority <= priority)
+			continue;
+
+		d = tmp;
+		priority = tmp->base.priority;
 	}
 
-	return NULL;
+	return d;
 }
 
 void digest_algo_prints(const char *prefix)
 {
 	struct digest_algo* d;
 
+	printf("%s%-15s\t%-20s\t%-15s\n", prefix, "name", "driver", "priority");
+	printf("%s--------------------------------------------------\n", prefix);
 	list_for_each_entry(d, &digests, list) {
-		printf("%s%s\n", prefix, d->name);
+		printf("%s%-15s\t%-20s\t%d\n", prefix, d->base.name,
+			d->base.driver_name, d->base.priority);
 	}
 }
 
diff --git a/crypto/hmac.c b/crypto/hmac.c
index 4c6a703..bad8bbf 100644
--- a/crypto/hmac.c
+++ b/crypto/hmac.c
@@ -7,8 +7,7 @@
 #include <common.h>
 #include <digest.h>
 #include <malloc.h>
-
-#include "internal.h"
+#include <crypto/internal.h>
 
 struct digest_hmac {
 	char *name;
@@ -145,7 +144,10 @@ err:
 }
 
 struct digest_algo hmac_algo = {
-	.flags = DIGEST_ALGO_NEED_KEY,
+	.base = {
+		.priority	= 0,
+		.flags		= DIGEST_ALGO_NEED_KEY,
+	},
 	.alloc = digest_hmac_alloc,
 	.init = digest_hmac_init,
 	.update = digest_hmac_update,
@@ -160,16 +162,19 @@ struct digest_algo hmac_algo = {
 int digest_hmac_register(struct digest_algo *algo, unsigned int pad_length)
 {
 	struct digest_hmac *dh;
+	char *name;
 
 	if (!algo || !pad_length)
 		return -EINVAL;
 
+	name = algo->base.name;
 	dh = xzalloc(sizeof(*dh));
-	dh->name = xstrdup(algo->name);
+	dh->name = xstrdup(name);
 	dh->pad_length = pad_length;
 	dh->algo = hmac_algo;
 	dh->algo.length = algo->length;
-	dh->algo.name = asprintf("hmac(%s)", algo->name);
+	dh->algo.base.name = asprintf("hmac(%s)", name);
+	dh->algo.base.driver_name = asprintf("hmac(%s)-generic", name);
 
 	return digest_algo_register(&dh->algo);
 }
diff --git a/crypto/md5.c b/crypto/md5.c
index b7ad6f2..74c9b70 100644
--- a/crypto/md5.c
+++ b/crypto/md5.c
@@ -28,8 +28,7 @@
 #include <common.h>
 #include <digest.h>
 #include <init.h>
-
-#include "internal.h"
+#include <crypto/internal.h>
 
 struct MD5Context {
 	__u32 buf[4];
@@ -290,7 +289,11 @@ static int digest_md5_final(struct digest *d, unsigned char *md)
 }
 
 static struct digest_algo md5 = {
-	.name = "md5",
+	.base = {
+		.name		= "md5",
+		.driver_name	= "md5-generic",
+		.priority	= 0,
+	},
 	.init = digest_md5_init,
 	.update = digest_md5_update,
 	.final = digest_md5_final,
diff --git a/crypto/sha1.c b/crypto/sha1.c
index b108f8a..a2ca191 100644
--- a/crypto/sha1.c
+++ b/crypto/sha1.c
@@ -26,7 +26,7 @@
 #include <linux/string.h>
 #include <asm/byteorder.h>
 
-#include "internal.h"
+#include <crypto/internal.h>
 
 #define SHA1_SUM_POS	-0x20
 #define SHA1_SUM_LEN	20
@@ -311,7 +311,12 @@ static int digest_sha1_final(struct digest *d, unsigned char *md)
 }
 
 static struct digest_algo m = {
-	.name = "sha1",
+	.base = {
+		.name		=	"sha1",
+		.driver_name	=	"sha1-generic",
+		.priority	=	0,
+	},
+
 	.init = digest_sha1_init,
 	.update = digest_sha1_update,
 	.final = digest_sha1_final,
diff --git a/crypto/sha2.c b/crypto/sha2.c
index 375a40e..42c40da 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -20,8 +20,7 @@
 #include <init.h>
 #include <linux/string.h>
 #include <asm/byteorder.h>
-
-#include "internal.h"
+#include <crypto/internal.h>
 
 #define SHA224_SUM_LEN	28
 #define SHA256_SUM_LEN	32
@@ -300,7 +299,12 @@ static int digest_sha224_init(struct digest *d)
 }
 
 static struct digest_algo m224 = {
-	.name = "sha224",
+	.base = {
+		.name		=	"sha224",
+		.driver_name	=	"sha224-generic",
+		.priority	=	0,
+	},
+
 	.init = digest_sha224_init,
 	.update = digest_sha2_update,
 	.final = digest_sha2_final,
@@ -332,7 +336,12 @@ static int digest_sha256_init(struct digest *d)
 }
 
 static struct digest_algo m256 = {
-	.name = "sha256",
+	.base = {
+		.name		=	"sha256",
+		.driver_name	=	"sha256-generic",
+		.priority	=	0,
+	},
+
 	.init = digest_sha256_init,
 	.update = digest_sha2_update,
 	.final = digest_sha2_final,
diff --git a/crypto/sha4.c b/crypto/sha4.c
index 1b91e7f..cb62d1d 100644
--- a/crypto/sha4.c
+++ b/crypto/sha4.c
@@ -28,8 +28,7 @@
 #include <init.h>
 #include <linux/string.h>
 #include <asm/byteorder.h>
-
-#include "internal.h"
+#include <crypto/internal.h>
 
 #define SHA384_SUM_LEN	48
 #define SHA512_SUM_LEN	64
@@ -305,7 +304,12 @@ static int digest_sha384_init(struct digest *d)
 }
 
 static struct digest_algo m384 = {
-	.name = "sha384",
+	.base = {
+		.name		=	"sha384",
+		.driver_name	=	"sha384-generic",
+		.priority	=	0,
+	},
+
 	.init = digest_sha384_init,
 	.update = digest_sha4_update,
 	.final = digest_sha4_final,
@@ -338,7 +342,12 @@ static int digest_sha512_init(struct digest *d)
 }
 
 static struct digest_algo m512 = {
-	.name = "sha512",
+	.base = {
+		.name		=	"sha512",
+		.driver_name	=	"sha512-generic",
+		.priority	=	0,
+	},
+
 	.init = digest_sha512_init,
 	.update = digest_sha4_update,
 	.final = digest_sha4_final,
diff --git a/crypto/internal.h b/include/crypto/internal.h
similarity index 100%
rename from crypto/internal.h
rename to include/crypto/internal.h
diff --git a/include/digest.h b/include/digest.h
index 85c4da3..c1221fc 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -23,10 +23,16 @@
 
 struct digest;
 
-struct digest_algo {
+struct crypto_alg {
 	char *name;
+	char *driver_name;
+	int priority;
 #define DIGEST_ALGO_NEED_KEY	(1 << 0)
 	unsigned int flags;
+};
+
+struct digest_algo {
+	struct crypto_alg base;
 
 	int (*alloc)(struct digest *d);
 	void (*free)(struct digest *d);
@@ -112,12 +118,12 @@ static inline int digest_set_key(struct digest *d, const unsigned char *key,
 
 static inline int digest_is_flags(struct digest *d, unsigned int flags)
 {
-	return d->algo->flags & flags;
+	return d->algo->base.flags & flags;
 }
 
 static inline const char *digest_name(struct digest *d)
 {
-	return d->algo->name;
+	return d->algo->base.name;
 }
 
 #endif /* __SH_ST_DEVICES_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
