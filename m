Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurku-0007dQ-MZ
 for barebox@lists.infradead.org; Tue, 06 Aug 2019 05:11:32 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  6 Aug 2019 07:11:00 +0200
Message-Id: <95c1fb0aa5ab2d3d81fb7405537f7d8b34dd939d.1565068235.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
References: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v3 10/16] pbl: add sha256 and piggy verification to PBL
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Extract the necessary functions from sha256 into a PBL headder and add a
verification function to the PBL. The function will be called before the
individual architectures decompress functions is run.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 crypto/Makefile          |  2 ++
 crypto/sha2.c            | 11 +++++++----
 include/crypto/pbl-sha.h | 13 +++++++++++++
 include/pbl.h            |  2 ++
 pbl/Kconfig              |  9 +++++++++
 pbl/decomp.c             | 39 +++++++++++++++++++++++++++++++++++++++
 6 files changed, 72 insertions(+), 4 deletions(-)
 create mode 100644 include/crypto/pbl-sha.h

diff --git a/crypto/Makefile b/crypto/Makefile
index 3402f57..d6fb74a 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -8,6 +8,8 @@ obj-$(CONFIG_DIGEST_MD5_GENERIC)	+= md5.o
 obj-$(CONFIG_DIGEST_SHA1_GENERIC)	+= sha1.o
 obj-$(CONFIG_DIGEST_SHA224_GENERIC)	+= sha2.o
 obj-$(CONFIG_DIGEST_SHA256_GENERIC)	+= sha2.o
+pbl-$(CONFIG_PBL_VERIFY_PIGGY)		+= sha2.o
+pbl-$(CONFIG_PBL_VERIFY_PIGGY)		+= digest.o
 obj-$(CONFIG_DIGEST_SHA384_GENERIC)	+= sha4.o
 obj-$(CONFIG_DIGEST_SHA512_GENERIC)	+= sha4.o
 
diff --git a/crypto/sha2.c b/crypto/sha2.c
index c62ddb8..3947a09 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -27,6 +27,7 @@
 
 #include <crypto/sha.h>
 #include <crypto/internal.h>
+#include <crypto/pbl-sha.h>
 
 static inline u32 Ch(u32 x, u32 y, u32 z)
 {
@@ -232,7 +233,7 @@ static int sha224_init(struct digest *desc)
 	return 0;
 }
 
-static int sha256_init(struct digest *desc)
+int sha256_init(struct digest *desc)
 {
 	struct sha256_state *sctx = digest_ctx(desc);
 	sctx->state[0] = SHA256_H0;
@@ -248,7 +249,7 @@ static int sha256_init(struct digest *desc)
 	return 0;
 }
 
-static int sha256_update(struct digest *desc, const void *data,
+int sha256_update(struct digest *desc, const void *data,
 				unsigned long len)
 {
 	struct sha256_state *sctx = digest_ctx(desc);
@@ -280,7 +281,7 @@ static int sha256_update(struct digest *desc, const void *data,
 	return 0;
 }
 
-static int sha256_final(struct digest *desc, u8 *out)
+int sha256_final(struct digest *desc, u8 *out)
 {
 	struct sha256_state *sctx = digest_ctx(desc);
 	__be32 *dst = (__be32 *)out;
@@ -348,7 +349,7 @@ static int sha224_digest_register(void)
 }
 device_initcall(sha224_digest_register);
 
-static struct digest_algo m256 = {
+struct digest_algo m256 = {
 	.base = {
 		.name		=	"sha256",
 		.driver_name	=	"sha256-generic",
@@ -365,6 +366,7 @@ static struct digest_algo m256 = {
 	.ctx_length	= sizeof(struct sha256_state),
 };
 
+#ifndef __PBL__
 static int sha256_digest_register(void)
 {
 	if (!IS_ENABLED(CONFIG_SHA256))
@@ -373,3 +375,4 @@ static int sha256_digest_register(void)
 	return digest_algo_register(&m256);
 }
 coredevice_initcall(sha256_digest_register);
+#endif /* __PBL__ */
diff --git a/include/crypto/pbl-sha.h b/include/crypto/pbl-sha.h
new file mode 100644
index 0000000..7d323ab
--- /dev/null
+++ b/include/crypto/pbl-sha.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __PBL_SHA_H_
+
+#define __PBL_SHA_H_
+
+#include <digest.h>
+#include <types.h>
+
+int sha256_init(struct digest *desc);
+int sha256_update(struct digest *desc, const void *data, unsigned long len);
+int sha256_final(struct digest *desc, u8 *out);
+
+#endif /* __PBL-SHA_H_ */
diff --git a/include/pbl.h b/include/pbl.h
index 787bd82..1917a76 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -11,6 +11,8 @@ extern unsigned long free_mem_ptr;
 extern unsigned long free_mem_end_ptr;
 
 void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len);
+int pbl_barebox_verify(void *compressed_start, unsigned int len, void *hash,
+		       unsigned int hash_len);
 
 #ifdef __PBL__
 #define IN_PBL	1
diff --git a/pbl/Kconfig b/pbl/Kconfig
index f2250dd..5e7ee06 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -44,6 +44,15 @@ config PBL_RELOCATABLE
 	  This option only inflluences the PBL image. See RELOCATABLE to also make
 	  the real image relocatable.
 
+config PBL_VERIFY_PIGGY
+	depends on ARM
+	bool
+	help
+	  Use a PBL builtin sha256sum to verify the piggydata before decompression.
+	  WARNING: your board will not boot if a mismatch is detected, enable DEBUG_LL
+	  to see the builtin and calculated hash.
+	  This effectively locks a given PBL to the matching main barebox.
+
 config IMAGE_COMPRESSION
 	bool
 	depends on HAVE_IMAGE_COMPRESSION
diff --git a/pbl/decomp.c b/pbl/decomp.c
index 72a1623..ef713a6 100644
--- a/pbl/decomp.c
+++ b/pbl/decomp.c
@@ -6,6 +6,10 @@
  */
 
 #include <common.h>
+#include <crypto/sha.h>
+#include <crypto/pbl-sha.h>
+#include <digest.h>
+#include <asm/sections.h>
 #include <pbl.h>
 #include <debug_ll.h>
 
@@ -54,3 +58,38 @@ void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len
 			NULL, NULL,
 			dest, NULL, errorfn);
 }
+
+int pbl_barebox_verify(void *compressed_start, unsigned int len, void *hash,
+		       unsigned int hash_len)
+{
+	struct sha256_state sha_state = { 0 };
+	struct digest d = { .ctx = &sha_state };
+	char computed_hash[SHA256_DIGEST_SIZE];
+	int i;
+	char *char_hash = hash;
+
+	if (hash_len != SHA256_DIGEST_SIZE)
+		return -1;
+
+	sha256_init(&d);
+	sha256_update(&d, compressed_start, len);
+	sha256_final(&d, computed_hash);
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		putc_ll('C');
+		putc_ll('H');
+		putc_ll('\n');
+		for (i = 0; i < SHA256_DIGEST_SIZE; i++) {
+			puthex_ll(computed_hash[i]);
+			putc_ll('\n');
+		}
+		putc_ll('I');
+		putc_ll('H');
+		putc_ll('\n');
+		for (i = 0; i < SHA256_DIGEST_SIZE; i++) {
+			puthex_ll(char_hash[i]);
+			putc_ll('\n');
+		}
+	}
+
+	return memcmp(hash, computed_hash, SHA256_DIGEST_SIZE);
+}
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
