Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YvgBD-0003Gk-QC
 for barebox@lists.infradead.org; Fri, 22 May 2015 06:11:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 May 2015 08:11:07 +0200
Message-Id: <1432275071-28554-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1432275071-28554-1-git-send-email-s.hauer@pengutronix.de>
References: <1432275071-28554-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/14] mips: use generic posix_types.h
To: Barebox List <barebox@lists.infradead.org>

Use generic asm-generic/posix_types.h instead of repeating the
typedefs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/mips/include/asm/posix_types.h | 130 +-----------------------------------
 1 file changed, 1 insertion(+), 129 deletions(-)

diff --git a/arch/mips/include/asm/posix_types.h b/arch/mips/include/asm/posix_types.h
index bbeb721..c38e24a 100644
--- a/arch/mips/include/asm/posix_types.h
+++ b/arch/mips/include/asm/posix_types.h
@@ -11,134 +11,6 @@
 
 #include <asm/sgidefs.h>
 
-/*
- * This file is generally used by user-level software, so you need to
- * be a little careful about namespace pollution etc.  Also, we cannot
- * assume GCC is being used.
- */
-
-typedef unsigned long	__kernel_ino_t;
-typedef unsigned int	__kernel_mode_t;
-#if (_MIPS_SZLONG == 32)
-typedef unsigned long	__kernel_nlink_t;
-#endif
-#if (_MIPS_SZLONG == 64)
-typedef unsigned int	__kernel_nlink_t;
-#endif
-typedef long		__kernel_off_t;
-typedef int		__kernel_pid_t;
-typedef int		__kernel_ipc_pid_t;
-typedef unsigned int	__kernel_uid_t;
-typedef unsigned int	__kernel_gid_t;
-#if (_MIPS_SZLONG == 32)
-typedef unsigned int	__kernel_size_t;
-typedef int		__kernel_ssize_t;
-typedef int		__kernel_ptrdiff_t;
-#endif
-#if (_MIPS_SZLONG == 64)
-typedef unsigned long	__kernel_size_t;
-typedef long		__kernel_ssize_t;
-typedef long		__kernel_ptrdiff_t;
-#endif
-typedef long		__kernel_time_t;
-typedef long		__kernel_suseconds_t;
-typedef long		__kernel_clock_t;
-typedef int		__kernel_timer_t;
-typedef int		__kernel_clockid_t;
-typedef long		__kernel_daddr_t;
-typedef char *		__kernel_caddr_t;
-
-typedef unsigned short	__kernel_uid16_t;
-typedef unsigned short	__kernel_gid16_t;
-typedef unsigned int	__kernel_uid32_t;
-typedef unsigned int	__kernel_gid32_t;
-typedef __kernel_uid_t	__kernel_old_uid_t;
-typedef __kernel_gid_t	__kernel_old_gid_t;
-typedef unsigned int	__kernel_old_dev_t;
-
-#ifdef __GNUC__
-typedef long long      __kernel_loff_t;
-#endif
-
-typedef struct {
-#if (_MIPS_SZLONG == 32)
-	long	val[2];
-#endif
-#if (_MIPS_SZLONG == 64)
-	int	val[2];
-#endif
-} __kernel_fsid_t;
-
-#if defined(__KERNEL__)
-
-#undef __FD_SET
-static __inline__ void __FD_SET(unsigned long __fd, __kernel_fd_set *__fdsetp)
-{
-	unsigned long __tmp = __fd / __NFDBITS;
-	unsigned long __rem = __fd % __NFDBITS;
-	__fdsetp->fds_bits[__tmp] |= (1UL<<__rem);
-}
-
-#undef __FD_CLR
-static __inline__ void __FD_CLR(unsigned long __fd, __kernel_fd_set *__fdsetp)
-{
-	unsigned long __tmp = __fd / __NFDBITS;
-	unsigned long __rem = __fd % __NFDBITS;
-	__fdsetp->fds_bits[__tmp] &= ~(1UL<<__rem);
-}
-
-#undef __FD_ISSET
-static __inline__ int __FD_ISSET(unsigned long __fd, const __kernel_fd_set *__p)
-{
-	unsigned long __tmp = __fd / __NFDBITS;
-	unsigned long __rem = __fd % __NFDBITS;
-	return (__p->fds_bits[__tmp] & (1UL<<__rem)) != 0;
-}
-
-/*
- * This will unroll the loop for the normal constant case (8 ints,
- * for a 256-bit fd_set)
- */
-#undef __FD_ZERO
-static __inline__ void __FD_ZERO(__kernel_fd_set *__p)
-{
-	unsigned long *__tmp = __p->fds_bits;
-	int __i;
-
-	if (__builtin_constant_p(__FDSET_LONGS)) {
-		switch (__FDSET_LONGS) {
-		case 16:
-			__tmp[0] = 0; __tmp[1] = 0;
-			__tmp[2] = 0; __tmp[3] = 0;
-			__tmp[4] = 0; __tmp[5] = 0;
-			__tmp[6] = 0; __tmp[7] = 0;
-			__tmp[8] = 0; __tmp[9] = 0;
-			__tmp[10] = 0; __tmp[11] = 0;
-			__tmp[12] = 0; __tmp[13] = 0;
-			__tmp[14] = 0; __tmp[15] = 0;
-			return;
-
-		case 8:
-			__tmp[0] = 0; __tmp[1] = 0;
-			__tmp[2] = 0; __tmp[3] = 0;
-			__tmp[4] = 0; __tmp[5] = 0;
-			__tmp[6] = 0; __tmp[7] = 0;
-			return;
-
-		case 4:
-			__tmp[0] = 0; __tmp[1] = 0;
-			__tmp[2] = 0; __tmp[3] = 0;
-			return;
-		}
-	}
-	__i = __FDSET_LONGS;
-	while (__i) {
-		__i--;
-		*__tmp = 0;
-		__tmp++;
-	}
-}
-
-#endif /* defined(__KERNEL__) */
+#include <asm-generic/posix_types.h>
 
 #endif /* _ASM_POSIX_TYPES_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
