Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oy2ua-0006yA-UP
	for barebox@lists.infradead.org; Tue, 21 Sep 2010 13:29:34 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 21 Sep 2010 15:28:08 +0200
Message-Id: <1285075689-11071-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] sha1: use unit32_t and uint8_t
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 lib/sha1.c |   52 ++++++++++++++++++++++++++--------------------------
 1 files changed, 26 insertions(+), 26 deletions(-)

diff --git a/lib/sha1.c b/lib/sha1.c
index 00dcc78..0e8aed1 100644
--- a/lib/sha1.c
+++ b/lib/sha1.c
@@ -35,9 +35,9 @@
 
 typedef struct
 {
-    unsigned long total[2];	/*!< number of bytes processed	*/
-    unsigned long state[5];	/*!< intermediate digest state	*/
-    unsigned char buffer[64];	/*!< data block being processed */
+	uint32_t total[2];	/*!< number of bytes processed	*/
+	uint32_t state[5];	/*!< intermediate digest state	*/
+	uint8_t buffer[64];	/*!< data block being processed */
 }
 sha1_context;
 
@@ -46,12 +46,13 @@ sha1_context;
  */
 #ifndef GET_UINT32_BE
 #define GET_UINT32_BE(n,b,i) {				\
-	(n) = ( (unsigned long) (b)[(i)    ] << 24 )	\
-	    | ( (unsigned long) (b)[(i) + 1] << 16 )	\
-	    | ( (unsigned long) (b)[(i) + 2] <<  8 )	\
-	    | ( (unsigned long) (b)[(i) + 3]       );	\
+	(n) = ( (uint32_t) (b)[(i)    ] << 24 )	\
+	    | ( (uint32_t) (b)[(i) + 1] << 16 )	\
+	    | ( (uint32_t) (b)[(i) + 2] <<  8 )	\
+	    | ( (uint32_t) (b)[(i) + 3]       );	\
 }
 #endif
+
 #ifndef PUT_UINT32_BE
 #define PUT_UINT32_BE(n,b,i) {				\
 	(b)[(i)    ] = (unsigned char) ( (n) >> 24 );	\
@@ -76,9 +77,9 @@ static void sha1_starts (sha1_context * ctx)
 	ctx->state[4] = 0xC3D2E1F0;
 }
 
-static void sha1_process (sha1_context * ctx, unsigned char data[64])
+static void sha1_process (sha1_context * ctx, uint8_t data[64])
 {
-	unsigned long temp, W[16], A, B, C, D, E;
+	uint32_t temp, W[16], A, B, C, D, E;
 
 	GET_UINT32_BE (W[0], data, 0);
 	GET_UINT32_BE (W[1], data, 4);
@@ -233,10 +234,9 @@ static void sha1_process (sha1_context * ctx, unsigned char data[64])
 /*
  * SHA-1 process buffer
  */
-static void sha1_update (sha1_context * ctx, unsigned char *input, int ilen)
+static void sha1_update (sha1_context * ctx, uint8_t *input, uint32_t ilen)
 {
-	int fill;
-	unsigned long left;
+	uint32_t fill, left;
 
 	if (ilen <= 0)
 		return;
@@ -247,7 +247,7 @@ static void sha1_update (sha1_context * ctx, unsigned char *input, int ilen)
 	ctx->total[0] += ilen;
 	ctx->total[0] &= 0xFFFFFFFF;
 
-	if (ctx->total[0] < (unsigned long) ilen)
+	if (ctx->total[0] < ilen)
 		ctx->total[1]++;
 
 	if (left && ilen >= fill) {
@@ -269,7 +269,7 @@ static void sha1_update (sha1_context * ctx, unsigned char *input, int ilen)
 	}
 }
 
-static const unsigned char sha1_padding[64] = {
+static uint8_t sha1_padding[64] = {
 	0x80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 	   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 	   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
@@ -279,11 +279,11 @@ static const unsigned char sha1_padding[64] = {
 /*
  * SHA-1 final digest
  */
-static void sha1_finish (sha1_context * ctx, unsigned char output[20])
+static void sha1_finish (sha1_context * ctx, uint8_t output[20])
 {
-	unsigned long last, padn;
-	unsigned long high, low;
-	unsigned char msglen[8];
+	uint32_t last, padn;
+	uint32_t high, low;
+	uint8_t msglen[8];
 
 	high = (ctx->total[0] >> 29)
 		| (ctx->total[1] << 3);
@@ -295,7 +295,7 @@ static void sha1_finish (sha1_context * ctx, unsigned char output[20])
 	last = ctx->total[0] & 0x3F;
 	padn = (last < 56) ? (56 - last) : (120 - last);
 
-	sha1_update (ctx, (unsigned char *) sha1_padding, padn);
+	sha1_update (ctx, sha1_padding, padn);
 	sha1_update (ctx, msglen, 8);
 
 	PUT_UINT32_BE (ctx->state[0], output, 0);
@@ -308,14 +308,14 @@ static void sha1_finish (sha1_context * ctx, unsigned char output[20])
 /*
  * Output = HMAC-SHA-1( input buffer, hmac key )
  */
-void sha1_hmac (unsigned char *key, int keylen,
-		unsigned char *input, int ilen, unsigned char output[20])
+void sha1_hmac (uint8_t *key, uint32_t keylen,
+		uint8_t *input, uint32_t ilen, uint8_t output[20])
 {
-	int i;
+	uint32_t i;
 	sha1_context ctx;
-	unsigned char k_ipad[64];
-	unsigned char k_opad[64];
-	unsigned char tmpbuf[20];
+	uint8_t k_ipad[64];
+	uint8_t k_opad[64];
+	uint8_t tmpbuf[20];
 
 	memset (k_ipad, 0x36, 64);
 	memset (k_opad, 0x5C, 64);
@@ -363,7 +363,7 @@ static int digest_sha1_update(struct digest *d, const void *data,
 {
 	struct sha1 *m = container_of(d, struct sha1, d);
 
-	sha1_update(&m->context, (unsigned char*)data, len);
+	sha1_update(&m->context, (uint8_t*)data, len);
 
 	return 0;
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
