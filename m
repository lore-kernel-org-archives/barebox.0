Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5TdC-0007FV-39
 for barebox@lists.infradead.org; Wed, 25 May 2016 07:53:31 +0000
Received: by mail-wm0-x243.google.com with SMTP id 67so12822252wmg.0
 for <barebox@lists.infradead.org>; Wed, 25 May 2016 00:53:09 -0700 (PDT)
From: yegorslists@googlemail.com
Date: Wed, 25 May 2016 09:51:13 +0200
Message-Id: <1464162673-23037-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH] crypto: add CRC32 digest
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

CRC32 digest can be used to check CRC32 hashes in FIT images etc.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 crypto/Kconfig        |  4 +++
 crypto/Makefile       |  1 +
 crypto/crc32_digest.c | 90 +++++++++++++++++++++++++++++++++++++++++++++++++++
 include/crypto/crc.h  | 16 +++++++++
 include/digest.h      |  1 +
 5 files changed, 112 insertions(+)
 create mode 100644 crypto/crc32_digest.c
 create mode 100644 include/crypto/crc.h

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 9b347f8..6d65c24 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -36,6 +36,10 @@ config SHA512
 config DIGEST_HMAC
 	bool
 
+config DIGEST_CRC32_GENERIC
+	bool "CRC32"
+	select CRC32
+
 config DIGEST_MD5_GENERIC
 	bool "MD5"
 	select MD5
diff --git a/crypto/Makefile b/crypto/Makefile
index b4fb3d8..a7240d1 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -2,6 +2,7 @@ obj-$(CONFIG_CRC32)	+= crc32.o
 obj-$(CONFIG_CRC16)	+= crc16.o
 obj-$(CONFIG_CRC7)	+= crc7.o
 obj-$(CONFIG_DIGEST)	+= digest.o
+obj-$(CONFIG_DIGEST_CRC32_GENERIC)	+= crc32_digest.o
 obj-$(CONFIG_DIGEST_HMAC_GENERIC)	+= hmac.o
 obj-$(CONFIG_DIGEST_MD5_GENERIC)	+= md5.o
 obj-$(CONFIG_DIGEST_SHA1_GENERIC)	+= sha1.o
diff --git a/crypto/crc32_digest.c b/crypto/crc32_digest.c
new file mode 100644
index 0000000..d322900
--- /dev/null
+++ b/crypto/crc32_digest.c
@@ -0,0 +1,90 @@
+/*
+ * Cryptographic API.
+ *
+ * CRC32.
+ *
+ * Derived from cryptoapi implementation, adapted for in-place
+ * scatterlist interface.
+ *
+ * Copyright (c) Alan Smithee.
+ * Copyright (c) Andrew McDonald <andrew@mcdonald.org.uk>
+ * Copyright (c) Jean-Francois Dive <jef@linuxbe.org>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms of the GNU General Public License as published by the Free
+ * Software Foundation; either version 2 of the License, or (at your option)
+ * any later version.
+ *
+ */
+
+#include <common.h>
+#include <digest.h>
+#include <init.h>
+#include <linux/string.h>
+#include <crc.h>
+#include <asm/unaligned.h>
+#include <asm/byteorder.h>
+
+#include <crypto/crc.h>
+#include <crypto/internal.h>
+
+static int crc32_init(struct digest *desc)
+{
+	struct crc32_state *ctx = digest_ctx(desc);
+
+	ctx->crc = 0;
+
+	return 0;
+}
+
+static int crc32_update(struct digest *desc, const void *data,
+			     unsigned long len)
+{
+	struct crc32_state *ctx = digest_ctx(desc);
+
+	while (len) {
+		int now = min((ulong)4096, len);
+		ctx->crc = crc32(ctx->crc, data, now);
+		len -= now;
+		data += now;
+	}
+
+	return 0;
+}
+
+static int crc32_final(struct digest *desc, unsigned char *md)
+{
+	struct crc32_state *ctx = digest_ctx(desc);
+	__be32 *dst = (__be32 *)md;
+
+	/* Store state in digest */
+	dst[0] = cpu_to_be32(ctx->crc);
+
+	/* Wipe context */
+	memset(ctx, 0, sizeof *ctx);
+
+	return 0;
+}
+
+static struct digest_algo m = {
+	.base = {
+		.name		=	"crc32",
+		.driver_name	=	"crc32-generic",
+		.priority	=	0,
+		.algo		=	HASH_ALGO_CRC32,
+	},
+
+	.init		= crc32_init,
+	.update		= crc32_update,
+	.final		= crc32_final,
+	.digest		= digest_generic_digest,
+	.verify		= digest_generic_verify,
+	.length		= CRC32_DIGEST_SIZE,
+	.ctx_length = sizeof(struct crc32_state),
+};
+
+static int crc32_digest_register(void)
+{
+	return digest_algo_register(&m);
+}
+device_initcall(crc32_digest_register);
diff --git a/include/crypto/crc.h b/include/crypto/crc.h
new file mode 100644
index 0000000..6428634
--- /dev/null
+++ b/include/crypto/crc.h
@@ -0,0 +1,16 @@
+/*
+ * Common values for CRC algorithms
+ */
+
+#ifndef _CRYPTO_CRC_H
+#define _CRYPTO_CRC_H
+
+#include <linux/types.h>
+
+#define CRC32_DIGEST_SIZE        4
+
+struct crc32_state {
+	ulong crc;
+};
+
+#endif
diff --git a/include/digest.h b/include/digest.h
index fe30cc2..4552e58 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -41,6 +41,7 @@ enum hash_algo {
 	HASH_ALGO_TGR_128,
 	HASH_ALGO_TGR_160,
 	HASH_ALGO_TGR_192,
+	HASH_ALGO_CRC32,
 	HASH_ALGO__LAST
 };
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
