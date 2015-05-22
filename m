Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YvhaF-0005hU-MZ
 for barebox@lists.infradead.org; Fri, 22 May 2015 07:41:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 May 2015 09:41:06 +0200
Message-Id: <1432280466-7055-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] tlsf malloc: enable 64bit support on 64bit architectures
To: Barebox List <barebox@lists.infradead.org>

On 64bit architectures TLSF_64BIT should be defined. Decide that
depending on the CONFIG_64BIT symbol. When 64bit support is enabled
all allocations will be aligned to 8 byte boundaries which is necessary
for architectures that do not support unaligned accesses or have
a performance penalty for unaligned accesses.
Also changes the undefined tlsf_decl to 'static'.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/tlsfbits.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/tlsfbits.h b/common/tlsfbits.h
index 93466e4..edbac80 100644
--- a/common/tlsfbits.h
+++ b/common/tlsfbits.h
@@ -3,6 +3,10 @@
 
 #include <linux/bitops.h>
 
+#ifdef CONFIG_64BIT
+#define TLSF_64BIT
+#endif
+
 /*
 ** Architecture-specific bit manipulation routines.
 **
@@ -33,7 +37,7 @@ static int tlsf_fls(unsigned int word)
 
 /* Possibly 64-bit version of tlsf_fls. */
 #if defined (TLSF_64BIT)
-tlsf_decl int tlsf_fls_sizet(size_t size)
+static int tlsf_fls_sizet(size_t size)
 {
 	int high = (int)(size >> 32);
 	int bits = 0;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
