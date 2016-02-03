Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aR0AV-0004ID-L3
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 16:20:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Feb 2016 17:20:08 +0100
Message-Id: <1454516411-22858-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454516411-22858-1-git-send-email-s.hauer@pengutronix.de>
References: <1454516411-22858-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] bitops: Fix shift overflow in GENMASK macros
To: Barebox List <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Based on the original patch for linux:

	commit 00b4d9a14125f1e51874def2b9de6092e007412d
	Author: Maxime COQUELIN <maxime.coquelin@st.com>
	Date:   Thu Nov 6 10:54:19 2014

	On some 32 bits architectures, including x86, GENMASK(31, 0) returns 0
	instead of the expected ~0UL.

	This is the same on some 64 bits architectures with GENMASK_ULL(63, 0).

	This is due to an overflow in the shift operand, 1 << 32 for GENMASK,
	1 << 64 for GENMASK_ULL.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/linux/bitops.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index f3a740c..31345c2 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -18,8 +18,11 @@
  * position @h. For example
  * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
  */
-#define GENMASK(h, l)		(((U32_C(1) << ((h) - (l) + 1)) - 1) << (l))
-#define GENMASK_ULL(h, l)	(((U64_C(1) << ((h) - (l) + 1)) - 1) << (l))
+#define GENMASK(h, l) \
+	(((~0UL) << (l)) & (~0UL >> (BITS_PER_LONG - 1 - (h))))
+
+#define GENMASK_ULL(h, l) \
+	(((~0ULL) << (l)) & (~0ULL >> (BITS_PER_LONG_LONG - 1 - (h))))
 
 extern unsigned int __sw_hweight8(unsigned int w);
 extern unsigned int __sw_hweight16(unsigned int w);
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
