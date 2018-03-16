Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos9-00068O-3H
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 18/78] ARM: bitops: remove unnecessary #ifdef
Date: Fri, 16 Mar 2018 13:52:54 +0100
Message-Id: <20180316125354.23462-19-s.hauer@pengutronix.de>
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

__fls() must always be provided, not only for aarch64, so remove
unnecessary #ifdef. This didn't show up because nobody directly uses
__fls() in barebox. Only aarch64 indirectly uses __fls() for
implementing fls64().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/bitops.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/include/asm/bitops.h b/arch/arm/include/asm/bitops.h
index 344e288bae..cd356c5e3d 100644
--- a/arch/arm/include/asm/bitops.h
+++ b/arch/arm/include/asm/bitops.h
@@ -162,9 +162,7 @@ static inline int constant_fls(int x)
 #include <asm-generic/bitops/fls.h>
 #endif		/* __ARM__USE_GENERIC_FF */
 
-#if __LINUX_ARM_ARCH__ == 8
 #include <asm-generic/bitops/__fls.h>
-#endif
 
 #include <asm-generic/bitops/fls64.h>
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
