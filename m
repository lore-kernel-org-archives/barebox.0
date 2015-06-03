Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z04GP-0006t6-AR
 for barebox@lists.infradead.org; Wed, 03 Jun 2015 08:43:06 +0000
Received: by lbcmx3 with SMTP id mx3so2223298lbc.1
 for <barebox@lists.infradead.org>; Wed, 03 Jun 2015 01:42:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  3 Jun 2015 11:44:49 +0300
Message-Id: <1433321089-32451-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH RESEND] PPC: asm/bitops.h: drop unused ext2* and minix* stuff
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/ppc/include/asm/bitops.h | 63 -------------------------------------------
 1 file changed, 63 deletions(-)

diff --git a/arch/ppc/include/asm/bitops.h b/arch/ppc/include/asm/bitops.h
index c4ed2de..e4572bc 100644
--- a/arch/ppc/include/asm/bitops.h
+++ b/arch/ppc/include/asm/bitops.h
@@ -189,67 +189,4 @@ extern __inline__ int ffs(int x)
 
 #include <asm-generic/bitops/find.h>
 
-#define _EXT2_HAVE_ASM_BITOPS_
-
-#ifdef __KERNEL__
-/*
- * test_and_{set,clear}_bit guarantee atomicity without
- * disabling interrupts.
- */
-#define ext2_set_bit(nr, addr)		test_and_set_bit((nr) ^ 0x18, addr)
-#define ext2_clear_bit(nr, addr)	test_and_clear_bit((nr) ^ 0x18, addr)
-
-#else
-extern __inline__ int ext2_set_bit(int nr, void * addr)
-{
-	int		mask;
-	unsigned char	*ADDR = (unsigned char *) addr;
-	int oldbit;
-
-	ADDR += nr >> 3;
-	mask = 1 << (nr & 0x07);
-	oldbit = (*ADDR & mask) ? 1 : 0;
-	*ADDR |= mask;
-	return oldbit;
-}
-
-extern __inline__ int ext2_clear_bit(int nr, void * addr)
-{
-	int		mask;
-	unsigned char	*ADDR = (unsigned char *) addr;
-	int oldbit;
-
-	ADDR += nr >> 3;
-	mask = 1 << (nr & 0x07);
-	oldbit = (*ADDR & mask) ? 1 : 0;
-	*ADDR = *ADDR & ~mask;
-	return oldbit;
-}
-#endif	/* __KERNEL__ */
-
-extern __inline__ int ext2_test_bit(int nr, __const__ void * addr)
-{
-	__const__ unsigned char	*ADDR = (__const__ unsigned char *) addr;
-
-	return (ADDR[nr >> 3] >> (nr & 7)) & 1;
-}
-
-/*
- * This implementation of ext2_find_{first,next}_zero_bit was stolen from
- * Linus' asm-alpha/bitops.h and modified for a big-endian machine.
- */
-
-#define ext2_find_first_zero_bit(addr, size) \
-	ext2_find_next_zero_bit((addr), (size), 0)
-
-#define ext2_find_next_zero_bit(addr, size, off) \
-	generic_find_next_zero_le_bit((unsigned long*)addr, size, off)
-
-/* Bitmap functions for the minix filesystem.  */
-#define minix_test_and_set_bit(nr,addr) ext2_set_bit(nr,addr)
-#define minix_set_bit(nr,addr) ((void)ext2_set_bit(nr,addr))
-#define minix_test_and_clear_bit(nr,addr) ext2_clear_bit(nr,addr)
-#define minix_test_bit(nr,addr) ext2_test_bit(nr,addr)
-#define minix_find_first_zero_bit(addr,size) ext2_find_first_zero_bit(addr,size)
-
 #endif /* _PPC_BITOPS_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
