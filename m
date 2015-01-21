Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDmqP-0003Pn-4K
 for barebox@lists.infradead.org; Wed, 21 Jan 2015 04:24:42 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
 t0L4OIcb003302
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 13:24:18 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili15) with ESMTP id t0L4OIB32323
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 13:24:18 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Wed, 21 Jan 2015 13:24:14 +0900
Message-Id: <1421814254-13282-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] ARM: remove unused code from __v7_mmu_cache_flush_invalidate
To: barebox@lists.infradead.org

This code is unnecessary (wrong) for the following reasons.

[1] As ARM ARM clearly says, the entire Level 1 cache maintenance
    operations are not supported for ARMv7, i.e. the bit19-16 of
    the ID_MMFR1 is always 0b0000.  The code always jumps to the
    "hierarchical" label.

[2] The value of "r0" is supposed to determine which cache operation
    should be done, invalidate or clean+invalidate.  The line
    "mcr     p15, 0, r12, c7, c14, 0" tries to clean+invalidate
    regardless of the value of "r0", this is weird.
    Anyway, as mentioned above, this line cannot be reached.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 arch/arm/cpu/cache-armv7.S | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index c19618b..f3f6bbb 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -68,15 +68,9 @@ ENTRY(v7_mmu_cache_flush)
 ENDPROC(v7_mmu_cache_flush)
 
 ENTRY(__v7_mmu_cache_flush_invalidate)
-		mrc	p15, 0, r12, c0, c1, 5	@ read ID_MMFR1
-		tst	r12, #0xf << 16		@ hierarchical cache (ARMv7)
-		mov	r12, #0
-		beq	hierarchical
-		mcr	p15, 0, r12, c7, c14, 0	@ clean+invalidate D
-		b	iflush
-hierarchical:
 		stmfd	sp!, {r4-r11}
 		mov	r8, r0
+		mov	r12, #0
 		mcr	p15, 0, r12, c7, c10, 5	@ DMB
 		mrc	p15, 1, r0, c0, c0, 1	@ read clidr
 		ands	r3, r0, #0x7000000	@ extract loc from clidr
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
