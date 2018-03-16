Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos8-00068M-N8
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 17/78] ARM: Use generic ffz()
Date: Fri, 16 Mar 2018 13:52:53 +0100
Message-Id: <20180316125354.23462-18-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

The generic ffz() from <asm-generic/bitops/ffz.h> works like our
ARM specific variant except that the generic variant has 64bit word size
support. Use the generic variant to fix ffz() for aarch64.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/bitops.h | 18 +-----------------
 1 file changed, 1 insertion(+), 17 deletions(-)

diff --git a/arch/arm/include/asm/bitops.h b/arch/arm/include/asm/bitops.h
index b51225efe5..344e288bae 100644
--- a/arch/arm/include/asm/bitops.h
+++ b/arch/arm/include/asm/bitops.h
@@ -156,23 +156,7 @@ static inline int constant_fls(int x)
 #define __ffs(x) (ffs(x) - 1)
 #define ffz(x) __ffs(~(x))
 #else		/* ! __ARM__USE_GENERIC_FF */
-/*
- * ffz = Find First Zero in word. Undefined if no zero exists,
- * so code should check against ~0UL first..
- */
-static inline unsigned long ffz(unsigned long word)
-{
-	int k;
-
-	word = ~word;
-	k = 31;
-	if (word & 0x0000ffff) { k -= 16; word <<= 16; }
-	if (word & 0x00ff0000) { k -= 8;  word <<= 8;  }
-	if (word & 0x0f000000) { k -= 4;  word <<= 4;  }
-	if (word & 0x30000000) { k -= 2;  word <<= 2;  }
-	if (word & 0x40000000) { k -= 1; }
-	return k;
-}
+#include <asm-generic/bitops/ffz.h>
 #include <asm-generic/bitops/__ffs.h>
 #include <asm-generic/bitops/ffs.h>
 #include <asm-generic/bitops/fls.h>
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
