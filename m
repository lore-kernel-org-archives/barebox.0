Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqky-0002gA-7P
 for barebox@lists.infradead.org; Tue, 08 Oct 2019 14:46:33 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  8 Oct 2019 16:46:28 +0200
Message-Id: <20191008144628.7991-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] ARM: cache-armv7: remove superfluous instruction
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

There are two tst r11, #0xf with nothing in between them that changes
r11. This a left over from the kernel code that checks for VMSA twice,
once to check if the page table should be setup and once to more to
flush the TLB. We do the setup in the caller already, so the tst serves
no useful purpose. Delete one.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/cache-armv7.S | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 6a8aff8bb12c..43ec9021330e 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -7,7 +7,6 @@ ENTRY(v7_mmu_cache_on)
 		mov	r12, lr
 #ifdef CONFIG_MMU
 		mrc	p15, 0, r11, c0, c1, 4	@ read ID_MMFR0
-		tst	r11, #0xf		@ VMSA
 		mov	r0, #0
 		dsb				@ drain write buffer
 		tst	r11, #0xf		@ VMSA
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
