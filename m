Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFZWH-0004JH-O8
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 07:57:58 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Oct 2019 09:57:54 +0200
Message-Id: <20191002075754.9257-1-a.fatoum@pengutronix.de>
In-Reply-To: <6809ed13f6444459cccef85cddc5714d9ea5b22b.camel@pengutronix.de>
References: <6809ed13f6444459cccef85cddc5714d9ea5b22b.camel@pengutronix.de>
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
Subject: [PATCH] ARM: aarch64: save clobbered registers in __barebox_arm_entry
To: rcz@pengutronix.de
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

arm_early_mmu_cache_invalidate now clobbers x0, x1, x2, which might be
passed by a previous stage bootloader. Have the caller save them.
---
Rouven, does this work for you?
---
 arch/arm/cpu/entry_ll_64.S | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/entry_ll_64.S b/arch/arm/cpu/entry_ll_64.S
index 37e0cb66b549..41d6cfb6a851 100644
--- a/arch/arm/cpu/entry_ll_64.S
+++ b/arch/arm/cpu/entry_ll_64.S
@@ -10,14 +10,16 @@
 .section .text.__barebox_arm_entry
 ENTRY(__barebox_arm_entry)
 	mov	sp, x3
-	/*
-	 * arm_early_mmu_cache_invalidate is jsut a call to
-	 * v8_invalidate_icache_all() which doesn't clobber x0, x1 or x2
- 	 */
+	mov	x4, x0
+	mov	x5, x1
+	mov	x6, x2
 	bl	arm_early_mmu_cache_invalidate
+	mov	x0, x4
+	mov	x1, x5
+	mov	x2, x6
 #if IS_ENABLED(CONFIG_PBL_IMAGE)
 	b	barebox_pbl_start
 #else
 	b	barebox_non_pbl_start
 #endif
-ENDPROC(__barebox_arm_entry)
\ No newline at end of file
+ENDPROC(__barebox_arm_entry)
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
