Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosH-0008BJ-NH
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:52:58 +0100
Message-Id: <20180316125354.23462-23-s.hauer@pengutronix.de>
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
Subject: [PATCH 22/78] ARM: aarch64: fix early cache flushing
To: Barebox List <barebox@lists.infradead.org>

v8_dcache_all() should not be used directly, but only called from
v8_flush_dcache_all() and v8_invalidate_dcache_all() which set
pass the type of operation in x0. While at it add the missing prototype
for v8_invalidate_dcache_all().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache.c         | 2 +-
 arch/arm/include/asm/cache.h | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/cache.c b/arch/arm/cpu/cache.c
index 929c385df5..1a8f49d301 100644
--- a/arch/arm/cpu/cache.c
+++ b/arch/arm/cpu/cache.c
@@ -146,7 +146,7 @@ void arm_early_mmu_cache_flush(void)
 #endif
 #ifdef CONFIG_CPU_64v8
 	case CPU_ARCH_ARMv8:
-		v8_dcache_all();
+		v8_flush_dcache_all();
 		return;
 #endif
 	}
diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index b5460a7876..406a9d5d99 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -3,7 +3,8 @@
 
 #ifdef CONFIG_CPU_64v8
 extern void v8_invalidate_icache_all(void);
-extern void v8_dcache_all(void);
+void v8_flush_dcache_all(void);
+void v8_invalidate_dcache_all(void);
 #endif
 
 static inline void icache_invalidate(void)
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
