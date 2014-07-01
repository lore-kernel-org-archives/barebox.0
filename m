Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22f.google.com ([2a00:1450:400c:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X25Ve-0001xz-P9
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 21:22:39 +0000
Received: by mail-wg0-f47.google.com with SMTP id k14so10396493wgh.30
 for <barebox@lists.infradead.org>; Tue, 01 Jul 2014 14:22:16 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue,  1 Jul 2014 23:22:04 +0200
Message-Id: <1404249726-7663-1-git-send-email-holgerschurig@gmail.de>
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
Subject: [PATCH 1/3] lzo: properly check for overruns
To: barebox@lists.infradead.org
Cc: Holger Schurig <holgerschurig@gmail.de>

Note: this is the same as 206a81c18401c0cde6e579164f752c4b147324ce in
linux-git.

The lzo decompressor can, if given some really crazy data, possibly
overrun some variable types.  Modify the checking logic to properly
detect overruns before they happen.

Reported-by: "Don A. Bailey" <donb@securitymouse.com>
Tested-by: "Don A. Bailey" <donb@securitymouse.com>
Signed-off-by: Holger Schurig <holgerschurig@gmail.de>
---
 lib/lzo/lzo1x_decompress_safe.c | 64 +++++++++++++++++++++++++++--------------
 1 file changed, 42 insertions(+), 22 deletions(-)

diff --git a/lib/lzo/lzo1x_decompress_safe.c b/lib/lzo/lzo1x_decompress_safe.c
index de795a3..48bedba 100644
--- a/lib/lzo/lzo1x_decompress_safe.c
+++ b/lib/lzo/lzo1x_decompress_safe.c
@@ -16,14 +16,34 @@
 #include <lzo.h>
 #include "lzodefs.h"
 
-#define HAVE_IP(x)      ((size_t)(ip_end - ip) >= (size_t)(x))
-#define HAVE_OP(x)      ((size_t)(op_end - op) >= (size_t)(x))
-#define NEED_IP(x)      if (!HAVE_IP(x)) goto input_overrun
-#define NEED_OP(x)      if (!HAVE_OP(x)) goto output_overrun
-#define TEST_LB(m_pos)  if ((m_pos) < out) goto lookbehind_overrun
+#define HAVE_IP(t, x)					\
+	(((size_t)(ip_end - ip) >= (size_t)(t + x)) &&	\
+	 (((t + x) >= t) && ((t + x) >= x)))
+
+#define HAVE_OP(t, x)					\
+	(((size_t)(op_end - op) >= (size_t)(t + x)) &&	\
+	 (((t + x) >= t) && ((t + x) >= x)))
+
+#define NEED_IP(t, x)					\
+	do {						\
+		if (!HAVE_IP(t, x))			\
+			goto input_overrun;		\
+	} while (0)
+
+#define NEED_OP(t, x)					\
+	do {						\
+		if (!HAVE_OP(t, x))			\
+			goto output_overrun;		\
+	} while (0)
+
+#define TEST_LB(m_pos)					\
+	do {						\
+		if ((m_pos) < out)			\
+			goto lookbehind_overrun;	\
+	} while (0)
 
 int lzo1x_decompress_safe(const unsigned char *in, size_t in_len,
-			unsigned char *out, size_t *out_len)
+			  unsigned char *out, size_t *out_len)
 {
 	unsigned char *op;
 	const unsigned char *ip;
@@ -55,14 +75,14 @@ int lzo1x_decompress_safe(const unsigned char *in, size_t in_len,
 					while (unlikely(*ip == 0)) {
 						t += 255;
 						ip++;
-						NEED_IP(1);
+						NEED_IP(1, 0);
 					}
 					t += 15 + *ip++;
 				}
 				t += 3;
 copy_literal_run:
 #if defined(CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS)
-				if (likely(HAVE_IP(t + 15) && HAVE_OP(t + 15))) {
+				if (likely(HAVE_IP(t, 15) && HAVE_OP(t, 15))) {
 					const unsigned char *ie = ip + t;
 					unsigned char *oe = op + t;
 					do {
@@ -78,8 +98,8 @@ copy_literal_run:
 				} else
 #endif
 				{
-					NEED_OP(t);
-					NEED_IP(t + 3);
+					NEED_OP(t, 0);
+					NEED_IP(t, 3);
 					do {
 						*op++ = *ip++;
 					} while (--t > 0);
@@ -92,7 +112,7 @@ copy_literal_run:
 				m_pos -= t >> 2;
 				m_pos -= *ip++ << 2;
 				TEST_LB(m_pos);
-				NEED_OP(2);
+				NEED_OP(2, 0);
 				op[0] = m_pos[0];
 				op[1] = m_pos[1];
 				op += 2;
@@ -116,10 +136,10 @@ copy_literal_run:
 				while (unlikely(*ip == 0)) {
 					t += 255;
 					ip++;
-					NEED_IP(1);
+					NEED_IP(1, 0);
 				}
 				t += 31 + *ip++;
-				NEED_IP(2);
+				NEED_IP(2, 0);
 			}
 			m_pos = op - 1;
 			next = get_unaligned_le16(ip);
@@ -134,10 +154,10 @@ copy_literal_run:
 				while (unlikely(*ip == 0)) {
 					t += 255;
 					ip++;
-					NEED_IP(1);
+					NEED_IP(1, 0);
 				}
 				t += 7 + *ip++;
-				NEED_IP(2);
+				NEED_IP(2, 0);
 			}
 			next = get_unaligned_le16(ip);
 			ip += 2;
@@ -151,7 +171,7 @@ copy_literal_run:
 #if defined(CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS)
 		if (op - m_pos >= 8) {
 			unsigned char *oe = op + t;
-			if (likely(HAVE_OP(t + 15))) {
+			if (likely(HAVE_OP(t, 15))) {
 				do {
 					COPY8(op, m_pos);
 					op += 8;
@@ -161,7 +181,7 @@ copy_literal_run:
 					m_pos += 8;
 				} while (op < oe);
 				op = oe;
-				if (HAVE_IP(6)) {
+				if (HAVE_IP(6, 0)) {
 					state = next;
 					COPY4(op, ip);
 					op += next;
@@ -169,7 +189,7 @@ copy_literal_run:
 					continue;
 				}
 			} else {
-				NEED_OP(t);
+				NEED_OP(t, 0);
 				do {
 					*op++ = *m_pos++;
 				} while (op < oe);
@@ -178,7 +198,7 @@ copy_literal_run:
 #endif
 		{
 			unsigned char *oe = op + t;
-			NEED_OP(t);
+			NEED_OP(t, 0);
 			op[0] = m_pos[0];
 			op[1] = m_pos[1];
 			op += 2;
@@ -191,15 +211,15 @@ match_next:
 		state = next;
 		t = next;
 #if defined(CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS)
-		if (likely(HAVE_IP(6) && HAVE_OP(4))) {
+		if (likely(HAVE_IP(6, 0) && HAVE_OP(4, 0))) {
 			COPY4(op, ip);
 			op += t;
 			ip += t;
 		} else
 #endif
 		{
-			NEED_IP(t + 3);
-			NEED_OP(t);
+			NEED_IP(t, 3);
+			NEED_OP(t, 0);
 			while (t > 0) {
 				*op++ = *ip++;
 				t--;
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
