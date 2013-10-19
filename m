Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VXVX1-0002nd-0Y
 for barebox@lists.infradead.org; Sat, 19 Oct 2013 12:21:23 +0000
Received: by mail-ee0-f45.google.com with SMTP id c50so2659348eek.32
 for <barebox@lists.infradead.org>; Sat, 19 Oct 2013 05:21:00 -0700 (PDT)
Received: from mamamia.internal (a89-182-1-5.net-htp.de. [89.182.1.5])
 by mx.google.com with ESMTPSA id b42sm17147502eem.9.2013.10.19.05.20.58
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Sat, 19 Oct 2013 05:20:59 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Sat, 19 Oct 2013 14:20:47 +0200
Message-Id: <1382185254-29183-1-git-send-email-a.heider@gmail.com>
In-Reply-To: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
References: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH 02/10] ARM: cache: do not crash when the MMU isn't yet setup
To: barebox@lists.infradead.org

Drivers currently cannot implement explicit cache handling and rely on
running the same code before and after mmu_initcall() without crashing.

Depending on the chosen config options, the cache functions are not yet
setup and using them early on ends in a null pointer dereference.

The RPi's mailbox driver is such a case; it requires cache handling once
the MMU is fully set up and yet the RPi setup needs to use the driver to
get the memory size before mem_initcall() and hence mmu_initcall().

Fix this by checking the cache_fns pointer before dereferencing it.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 arch/arm/cpu/cache.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/cache.c b/arch/arm/cpu/cache.c
index 7aab55b..223e308 100644
--- a/arch/arm/cpu/cache.c
+++ b/arch/arm/cpu/cache.c
@@ -41,32 +41,38 @@ DEFINE_CPU_FNS(v7)
 
 void __dma_clean_range(unsigned long start, unsigned long end)
 {
-	cache_fns->dma_clean_range(start, end);
+	if (cache_fns)
+		cache_fns->dma_clean_range(start, end);
 }
 
 void __dma_flush_range(unsigned long start, unsigned long end)
 {
-	cache_fns->dma_flush_range(start, end);
+	if (cache_fns)
+		cache_fns->dma_flush_range(start, end);
 }
 
 void __dma_inv_range(unsigned long start, unsigned long end)
 {
-	cache_fns->dma_inv_range(start, end);
+	if (cache_fns)
+		cache_fns->dma_inv_range(start, end);
 }
 
 void __mmu_cache_on(void)
 {
-	cache_fns->mmu_cache_on();
+	if (cache_fns)
+		cache_fns->mmu_cache_on();
 }
 
 void __mmu_cache_off(void)
 {
-	cache_fns->mmu_cache_off();
+	if (cache_fns)
+		cache_fns->mmu_cache_off();
 }
 
 void __mmu_cache_flush(void)
 {
-	cache_fns->mmu_cache_flush();
+	if (cache_fns)
+		cache_fns->mmu_cache_flush();
 }
 
 int arm_set_cache_functions(void)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
