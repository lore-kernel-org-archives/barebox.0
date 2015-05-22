Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YvgBZ-0003ZX-3d
 for barebox@lists.infradead.org; Fri, 22 May 2015 06:11:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 May 2015 08:11:11 +0200
Message-Id: <1432275071-28554-15-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/14] nios2: use generic posix_types.h
To: Barebox List <barebox@lists.infradead.org>

Use generic asm-generic/posix_types.h instead of repeating the
typedefs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/nios2/include/asm/posix_types.h | 78 +-----------------------------------
 1 file changed, 1 insertion(+), 77 deletions(-)

diff --git a/arch/nios2/include/asm/posix_types.h b/arch/nios2/include/asm/posix_types.h
index 5a901ff..22cae62 100644
--- a/arch/nios2/include/asm/posix_types.h
+++ b/arch/nios2/include/asm/posix_types.h
@@ -1,77 +1 @@
-/*
- *  arch/arm/include/asm/posix_types.h
- *
- *  Copyright (C) 1996-1998 Russell King.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- *  Changelog:
- *   27-06-1996	RMK	Created
- */
-#ifndef __ARCH_ARM_POSIX_TYPES_H
-#define __ARCH_ARM_POSIX_TYPES_H
-
-/*
- * This file is generally used by user-level software, so you need to
- * be a little careful about namespace pollution etc.  Also, we cannot
- * assume GCC is being used.
- */
-
-typedef unsigned long		__kernel_ino_t;
-typedef unsigned short		__kernel_mode_t;
-typedef unsigned short		__kernel_nlink_t;
-typedef long			__kernel_off_t;
-typedef int			__kernel_pid_t;
-typedef unsigned short		__kernel_ipc_pid_t;
-typedef unsigned short		__kernel_uid_t;
-typedef unsigned short		__kernel_gid_t;
-typedef unsigned long		__kernel_size_t;
-typedef int			__kernel_ssize_t;
-typedef int			__kernel_ptrdiff_t;
-typedef long			__kernel_time_t;
-typedef long			__kernel_suseconds_t;
-typedef long			__kernel_clock_t;
-typedef int			__kernel_timer_t;
-typedef int			__kernel_clockid_t;
-typedef int			__kernel_daddr_t;
-typedef char *			__kernel_caddr_t;
-typedef unsigned short		__kernel_uid16_t;
-typedef unsigned short		__kernel_gid16_t;
-typedef unsigned int		__kernel_uid32_t;
-typedef unsigned int		__kernel_gid32_t;
-
-typedef unsigned short		__kernel_old_uid_t;
-typedef unsigned short		__kernel_old_gid_t;
-typedef unsigned short		__kernel_old_dev_t;
-
-#ifdef __GNUC__
-typedef long long		__kernel_loff_t;
-#endif
-
-typedef struct {
-	int	val[2];
-} __kernel_fsid_t;
-
-#if defined(__KERNEL__)
-
-#undef	__FD_SET
-#define __FD_SET(fd, fdsetp) \
-		(((fd_set *)(fdsetp))->fds_bits[(fd) >> 5] |= (1<<((fd) & 31)))
-
-#undef	__FD_CLR
-#define __FD_CLR(fd, fdsetp) \
-		(((fd_set *)(fdsetp))->fds_bits[(fd) >> 5] &= ~(1<<((fd) & 31)))
-
-#undef	__FD_ISSET
-#define __FD_ISSET(fd, fdsetp) \
-		((((fd_set *)(fdsetp))->fds_bits[(fd) >> 5] & (1<<((fd) & 31))) != 0)
-
-#undef	__FD_ZERO
-#define __FD_ZERO(fdsetp) \
-		(memset(fdsetp, 0, sizeof(*(fd_set *)(fdsetp))))
-
-#endif
-
-#endif
+#include <asm-generic/posix_types.h>
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
