Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YvgBL-0003Gx-6e
 for barebox@lists.infradead.org; Fri, 22 May 2015 06:11:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 May 2015 08:11:06 +0200
Message-Id: <1432275071-28554-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/14] openrisc: use generic posix_types.h
To: Barebox List <barebox@lists.infradead.org>

Use generic asm-generic/posix_types.h instead of repeating the
typedefs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/openrisc/include/asm/posix_types.h | 72 +--------------------------------
 1 file changed, 1 insertion(+), 71 deletions(-)

diff --git a/arch/openrisc/include/asm/posix_types.h b/arch/openrisc/include/asm/posix_types.h
index 7f4c942..22cae62 100644
--- a/arch/openrisc/include/asm/posix_types.h
+++ b/arch/openrisc/include/asm/posix_types.h
@@ -1,71 +1 @@
-/*
- * Based on microblaze implementation:
- *  Copyright (C) 2003       John Williams <jwilliams@itee.uq.edu.au>
- *  Copyright (C) 2001,2002  NEC Corporation
- *  Copyright (C) 2001,2002  Miles Bader <miles@gnu.org>
- *
- * This file is subject to the terms and conditions of the GNU General
- * Public License.  See the file COPYING in the main directory of this
- * archive for more details.
- *
- * Written by Miles Bader <miles@gnu.org>
- * Microblaze port by John Williams
- */
-
-#ifndef __ASM_OPENRISC_POSIX_TYPES_H
-#define __ASM_OPENRISC_POSIX_TYPES_H
-
-typedef unsigned long	__kernel_ino_t;
-typedef unsigned long long __kernel_ino64_t;
-typedef unsigned int	__kernel_mode_t;
-typedef unsigned int	__kernel_nlink_t;
-typedef long		__kernel_off_t;
-typedef long long	__kernel_loff_t;
-typedef int		__kernel_pid_t;
-typedef unsigned short	__kernel_ipc_pid_t;
-typedef unsigned int	__kernel_uid_t;
-typedef unsigned int	__kernel_gid_t;
-typedef unsigned int	__kernel_size_t;
-typedef int		__kernel_ssize_t;
-typedef int		__kernel_ptrdiff_t;
-typedef long		__kernel_time_t;
-typedef long		__kernel_suseconds_t;
-typedef long		__kernel_clock_t;
-typedef int		__kernel_daddr_t;
-typedef char		*__kernel_caddr_t;
-typedef unsigned short	__kernel_uid16_t;
-typedef unsigned short	__kernel_gid16_t;
-typedef unsigned int	__kernel_uid32_t;
-typedef unsigned int	__kernel_gid32_t;
-
-typedef unsigned short	__kernel_old_uid_t;
-typedef unsigned short	__kernel_old_gid_t;
-
-
-typedef struct {
-#if defined(__KERNEL__) || defined(__USE_ALL)
-	int	val[2];
-#else /* !defined(__KERNEL__) && !defined(__USE_ALL) */
-	int	__val[2];
-#endif /* !defined(__KERNEL__) && !defined(__USE_ALL) */
-} __kernel_fsid_t;
-
-
-#if defined(__KERNEL__) || !defined(__GLIBC__) || (__GLIBC__ < 2)
-
-#undef __FD_SET
-#define __FD_SET(fd, fd_set) \
-	__set_bit(fd, (void *)&((__kernel_fd_set *)fd_set)->fds_bits)
-#undef __FD_CLR
-#define __FD_CLR(fd, fd_set) \
-	__clear_bit(fd, (void *)&((__kernel_fd_set *)fd_set)->fds_bits)
-#undef __FD_ISSET
-#define __FD_ISSET(fd, fd_set) \
-	__test_bit(fd, (void *)&((__kernel_fd_set *)fd_set)->fds_bits)
-#undef __FD_ZERO
-#define __FD_ZERO(fd_set) \
-	memset(fd_set, 0, sizeof(*(fd_set *)fd_set))
-
-#endif /* defined(__KERNEL__) || !defined(__GLIBC__) || (__GLIBC__ < 2) */
-
-#endif /* __ASM_OPENRISC_POSIX_TYPES_H */
+#include <asm-generic/posix_types.h>
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
