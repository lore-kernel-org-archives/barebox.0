Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFEAE-0007Xs-84
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 09:09:47 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Oct 2019 11:09:39 +0200
Message-Id: <20191001090939.11941-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191001090939.11941-1-a.fatoum@pengutronix.de>
References: <20191001090939.11941-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: cache_64: invalidate dcache in
 arm_early_mmu_cache_invalidate
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com, lst@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>

On some ARM cores, cache contents are indeterminate after a Power-On
Reset. Turning on the MMU on such cores risks interpreting random cache
lines as valid, causing hard-to-debug errors.

For this reason, we always invalidate the dcache on <= ARMv7. Let's do
likewise for ARM64. Newer ARM cores tend to come up with their dcaches
invalidated already, but for some, like the Cortex-A72, L2 caches are
invalidated dependent on a signal sampled at reset, so better play
it safe.

The icache invalidate here seems to serve no useful purpose. It's kept
for now for symmetry with ARM32.

Note that this is wrong should barebox be entered with the MMU enabled,
but this is so far not the case with any ARM64 platform we support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/cache_64.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/cpu/cache_64.c b/arch/arm/cpu/cache_64.c
index 847323525424..6e18d981a434 100644
--- a/arch/arm/cpu/cache_64.c
+++ b/arch/arm/cpu/cache_64.c
@@ -32,5 +32,6 @@ void arm_early_mmu_cache_flush(void)
 
 void arm_early_mmu_cache_invalidate(void)
 {
+	v8_invalidate_dcache_all();
 	v8_invalidate_icache_all();
 }
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
