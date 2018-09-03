Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwnTZ-0008B1-71
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 11:57:07 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Mon,  3 Sep 2018 13:24:06 +0200
Message-Id: <20180903112408.2086-17-m.niestroj@grinn-global.com>
In-Reply-To: <20180903112408.2086-1-m.niestroj@grinn-global.com>
References: <20180903112408.2086-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH 16/18] crypto: caam - sync desc.h with Linux
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

Get rid of all differences between our and Linux content of desc.h, so
we prevent running into issues when porting new features in future.

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
 drivers/crypto/caam/desc.h | 32 +++++++++-----------------------
 1 file changed, 9 insertions(+), 23 deletions(-)

diff --git a/drivers/crypto/caam/desc.h b/drivers/crypto/caam/desc.h
index 2b5f49967..ee873c07f 100644
--- a/drivers/crypto/caam/desc.h
+++ b/drivers/crypto/caam/desc.h
@@ -20,18 +20,7 @@
 #define SEC4_SG_BPID_MASK	0x000000ff
 #define SEC4_SG_BPID_SHIFT	16
 #define SEC4_SG_LEN_MASK	0x3fffffff	/* Excludes EXT and FINAL */
-#define SEC4_SG_OFFS_MASK	0x00001fff
-
-struct sec4_sg_entry {
-#ifdef CONFIG_64BIT
-	u64 ptr;
-#else
-	u32 reserved;
-	u32 ptr;
-#endif
-	u32 len;
-	u32 bpid_offset;
-};
+#define SEC4_SG_OFFSET_MASK	0x00001fff
 
 /* Max size of any CAAM descriptor in 32-bit words, inclusive of header */
 #define MAX_CAAM_DESCSIZE	64
@@ -95,8 +84,8 @@ struct sec4_sg_entry {
 #define HDR_ZRO			0x00008000
 
 /* Start Index or SharedDesc Length */
-#define HDR_START_IDX_MASK	0x3f
 #define HDR_START_IDX_SHIFT	16
+#define HDR_START_IDX_MASK	(0x3f << HDR_START_IDX_SHIFT)
 
 /* If shared descriptor header, 6-bit length */
 #define HDR_DESCLEN_SHR_MASK	0x3f
@@ -126,10 +115,10 @@ struct sec4_sg_entry {
 #define HDR_PROP_DNR		0x00000800
 
 /* JobDesc/SharedDesc share property */
-#define HDR_SD_SHARE_MASK	0x03
 #define HDR_SD_SHARE_SHIFT	8
-#define HDR_JD_SHARE_MASK	0x07
+#define HDR_SD_SHARE_MASK	(0x03 << HDR_SD_SHARE_SHIFT)
 #define HDR_JD_SHARE_SHIFT	8
+#define HDR_JD_SHARE_MASK	(0x07 << HDR_JD_SHARE_SHIFT)
 
 #define HDR_SHARE_NEVER		(0x00 << HDR_SD_SHARE_SHIFT)
 #define HDR_SHARE_WAIT		(0x01 << HDR_SD_SHARE_SHIFT)
@@ -240,7 +229,7 @@ struct sec4_sg_entry {
 #define LDST_SRCDST_WORD_DECO_MATH2	(0x0a << LDST_SRCDST_SHIFT)
 #define LDST_SRCDST_WORD_DECO_AAD_SZ	(0x0b << LDST_SRCDST_SHIFT)
 #define LDST_SRCDST_WORD_DECO_MATH3	(0x0b << LDST_SRCDST_SHIFT)
-#define LDST_SRCDST_WORD_CLASS1_ICV_SZ	(0x0c << LDST_SRCDST_SHIFT)
+#define LDST_SRCDST_WORD_CLASS1_IV_SZ	(0x0c << LDST_SRCDST_SHIFT)
 #define LDST_SRCDST_WORD_ALTDS_CLASS1	(0x0f << LDST_SRCDST_SHIFT)
 #define LDST_SRCDST_WORD_PKHA_A_SZ	(0x10 << LDST_SRCDST_SHIFT)
 #define LDST_SRCDST_WORD_PKHA_B_SZ	(0x11 << LDST_SRCDST_SHIFT)
@@ -405,10 +394,7 @@ struct sec4_sg_entry {
 #define FIFOST_TYPE_PKHA_N	 (0x08 << FIFOST_TYPE_SHIFT)
 #define FIFOST_TYPE_PKHA_A	 (0x0c << FIFOST_TYPE_SHIFT)
 #define FIFOST_TYPE_PKHA_B	 (0x0d << FIFOST_TYPE_SHIFT)
-#define FIFOST_TYPE_AF_SBOX_CCM_JKEK	(0x10 << FIFOST_TYPE_SHIFT)
-#define FIFOST_TYPE_AF_SBOX_CCM_TKEK	(0x11 << FIFOST_TYPE_SHIFT)
-#define FIFOST_TYPE_KEY_CCM_JKEK	(0x14 << FIFOST_TYPE_SHIFT)
-#define FIFOST_TYPE_KEY_CCM_TKEK	(0x15 << FIFOST_TYPE_SHIFT)
+#define FIFOST_TYPE_AF_SBOX_JKEK (0x20 << FIFOST_TYPE_SHIFT)
 #define FIFOST_TYPE_AF_SBOX_TKEK (0x21 << FIFOST_TYPE_SHIFT)
 #define FIFOST_TYPE_PKHA_E_JKEK	 (0x22 << FIFOST_TYPE_SHIFT)
 #define FIFOST_TYPE_PKHA_E_TKEK	 (0x23 << FIFOST_TYPE_SHIFT)
@@ -1130,8 +1116,8 @@ struct sec4_sg_entry {
 /* For non-protocol/alg-only op commands */
 #define OP_ALG_TYPE_SHIFT	24
 #define OP_ALG_TYPE_MASK	(0x7 << OP_ALG_TYPE_SHIFT)
-#define OP_ALG_TYPE_CLASS1	2
-#define OP_ALG_TYPE_CLASS2	4
+#define OP_ALG_TYPE_CLASS1	(2 << OP_ALG_TYPE_SHIFT)
+#define OP_ALG_TYPE_CLASS2	(4 << OP_ALG_TYPE_SHIFT)
 
 #define OP_ALG_ALGSEL_SHIFT	16
 #define OP_ALG_ALGSEL_MASK	(0xff << OP_ALG_ALGSEL_SHIFT)
@@ -1272,7 +1258,7 @@ struct sec4_sg_entry {
 #define OP_ALG_PKMODE_MOD_PRIMALITY	0x00f
 
 /* PKHA mode copy-memory functions */
-#define OP_ALG_PKMODE_SRC_REG_SHIFT	13
+#define OP_ALG_PKMODE_SRC_REG_SHIFT	17
 #define OP_ALG_PKMODE_SRC_REG_MASK	(7 << OP_ALG_PKMODE_SRC_REG_SHIFT)
 #define OP_ALG_PKMODE_DST_REG_SHIFT	10
 #define OP_ALG_PKMODE_DST_REG_MASK	(7 << OP_ALG_PKMODE_DST_REG_SHIFT)
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
