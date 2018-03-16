Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosI-0001qF-1c
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 24/78] ARM: aarch64: cache: no need to ifdef prototypes
Date: Fri, 16 Mar 2018 13:53:00 +0100
Message-Id: <20180316125354.23462-25-s.hauer@pengutronix.de>
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

There's no need to ifdef function prototypes, so remove the
ifdefs. While there also remove unnecessary "export" for functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/cache.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index 503bf8a0f7..0822cb78c3 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -1,13 +1,11 @@
 #ifndef __ASM_CACHE_H
 #define __ASM_CACHE_H
 
-#ifdef CONFIG_CPU_64v8
-extern void v8_invalidate_icache_all(void);
+void v8_invalidate_icache_all(void);
 void v8_flush_dcache_all(void);
 void v8_invalidate_dcache_all(void);
 void v8_flush_dcache_range(unsigned long start, unsigned long end);
 void v8_inv_dcache_range(unsigned long start, unsigned long end);
-#endif
 
 static inline void icache_invalidate(void)
 {
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
