Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YvgBa-0003KI-6R
 for barebox@lists.infradead.org; Fri, 22 May 2015 06:11:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 May 2015 08:11:10 +0200
Message-Id: <1432275071-28554-14-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/14] efi: use generic posix_types.h
To: Barebox List <barebox@lists.infradead.org>

Use generic asm-generic/posix_types.h instead of repeating the
typedefs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/efi/include/asm/posix_types.h | 94 +-------------------------------------
 1 file changed, 1 insertion(+), 93 deletions(-)

diff --git a/arch/efi/include/asm/posix_types.h b/arch/efi/include/asm/posix_types.h
index 6985b8e..22cae62 100644
--- a/arch/efi/include/asm/posix_types.h
+++ b/arch/efi/include/asm/posix_types.h
@@ -1,93 +1 @@
-#ifndef __ARCH_I386_POSIX_TYPES_H
-#define __ARCH_I386_POSIX_TYPES_H
-
-/*
- * This file is generally used by user-level software, so you need to
- * be a little careful about namespace pollution etc.  Also, we cannot
- * assume GCC is being used.
- */
-
-typedef unsigned long	__kernel_ino_t;
-typedef unsigned short	__kernel_mode_t;
-typedef unsigned short	__kernel_nlink_t;
-typedef long		__kernel_off_t;
-typedef int		__kernel_pid_t;
-typedef unsigned short	__kernel_ipc_pid_t;
-typedef unsigned short	__kernel_uid_t;
-typedef unsigned short	__kernel_gid_t;
-/*
- * Most 32 bit architectures use "unsigned int" size_t,
- * and all 64 bit architectures use "unsigned long" size_t.
- *
- * TODO: It's not clean to use __x86_64__ here. It's better
- * to check on __BITS_PER_LONG here. But this is wrong set in
- * arch/sandbox/include/asm/types.h.
- */
-#ifdef __x86_64__
-typedef unsigned long	__kernel_size_t;
-typedef long		__kernel_ssize_t;
-typedef long		__kernel_ptrdiff_t;
-#else
-typedef unsigned int	__kernel_size_t;
-typedef int		__kernel_ssize_t;
-typedef int		__kernel_ptrdiff_t;
-#endif
-typedef long		__kernel_time_t;
-typedef long		__kernel_suseconds_t;
-typedef long		__kernel_clock_t;
-typedef int		__kernel_daddr_t;
-typedef char *		__kernel_caddr_t;
-typedef unsigned short	__kernel_uid16_t;
-typedef unsigned short	__kernel_gid16_t;
-typedef unsigned int	__kernel_uid32_t;
-typedef unsigned int	__kernel_gid32_t;
-
-typedef unsigned short	__kernel_old_uid_t;
-typedef unsigned short	__kernel_old_gid_t;
-
-#ifdef __GNUC__
-typedef long long	__kernel_loff_t;
-#endif
-
-typedef struct {
-#if defined(__KERNEL__) || defined(__USE_ALL)
-	int	val[2];
-#else /* !defined(__KERNEL__) && !defined(__USE_ALL) */
-	int	__val[2];
-#endif /* !defined(__KERNEL__) && !defined(__USE_ALL) */
-} __kernel_fsid_t;
-
-#if defined(__KERNEL__) || !defined(__GLIBC__) || (__GLIBC__ < 2)
-
-#undef	__FD_SET
-#define __FD_SET(fd,fdsetp) \
-		__asm__ __volatile__("btsl %1,%0": \
-			"=m" (*(__kernel_fd_set *) (fdsetp)):"r" ((int) (fd)))
-
-#undef	__FD_CLR
-#define __FD_CLR(fd,fdsetp) \
-		__asm__ __volatile__("btrl %1,%0": \
-			"=m" (*(__kernel_fd_set *) (fdsetp)):"r" ((int) (fd)))
-
-#undef	__FD_ISSET
-#define __FD_ISSET(fd,fdsetp) (__extension__ ({ \
-		unsigned char __result; \
-		__asm__ __volatile__("btl %1,%2 ; setb %0" \
-			:"=q" (__result) :"r" ((int) (fd)), \
-			"m" (*(__kernel_fd_set *) (fdsetp))); \
-		__result; }))
-
-#undef	__FD_ZERO
-#define __FD_ZERO(fdsetp) \
-do { \
-	int __d0, __d1; \
-	__asm__ __volatile__("cld ; rep ; stosl" \
-			:"=m" (*(__kernel_fd_set *) (fdsetp)), \
-			  "=&c" (__d0), "=&D" (__d1) \
-			:"a" (0), "1" (__FDSET_LONGS), \
-			"2" ((__kernel_fd_set *) (fdsetp)) : "memory"); \
-} while (0)
-
-#endif /* defined(__KERNEL__) || !defined(__GLIBC__) || (__GLIBC__ < 2) */
-
-#endif
+#include <asm-generic/posix_types.h>
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
