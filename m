Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YvgBD-0003Gj-Q9
 for barebox@lists.infradead.org; Fri, 22 May 2015 06:11:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 May 2015 08:11:04 +0200
Message-Id: <1432275071-28554-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/14] blackfin: use generic posix_types.h
To: Barebox List <barebox@lists.infradead.org>

Use generic asm-generic/posix_types.h instead of repeating the
typedefs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/blackfin/include/asm/posix_types.h | 86 +--------------------------------
 1 file changed, 1 insertion(+), 85 deletions(-)

diff --git a/arch/blackfin/include/asm/posix_types.h b/arch/blackfin/include/asm/posix_types.h
index 9992929..22cae62 100644
--- a/arch/blackfin/include/asm/posix_types.h
+++ b/arch/blackfin/include/asm/posix_types.h
@@ -1,85 +1 @@
-/*
- * barebox - posix_types.h
- *
- * Copyright (c) 2005 blackfin.uclinux.org
- *
- * (C) Copyright 2000-2004
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __ARCH_BLACKFIN_POSIX_TYPES_H
-#define __ARCH_BLACKFIN_POSIX_TYPES_H
-
-/*
- * This file is generally used by user-level software, so you need to
- * be a little careful about namespace pollution etc.  Also, we cannot
- * assume GCC is being used.
- */
-
-typedef unsigned long __kernel_ino_t;
-typedef unsigned short __kernel_mode_t;
-typedef unsigned short __kernel_nlink_t;
-typedef long __kernel_off_t;
-typedef int __kernel_pid_t;
-typedef unsigned short __kernel_ipc_pid_t;
-typedef unsigned short __kernel_uid_t;
-typedef unsigned short __kernel_gid_t;
-typedef unsigned long __kernel_size_t;
-typedef int __kernel_ssize_t;
-typedef int __kernel_ptrdiff_t;
-typedef long __kernel_time_t;
-typedef long __kernel_suseconds_t;
-typedef long __kernel_clock_t;
-typedef int __kernel_daddr_t;
-typedef char *__kernel_caddr_t;
-typedef unsigned short __kernel_uid16_t;
-typedef unsigned short __kernel_gid16_t;
-typedef unsigned int __kernel_uid32_t;
-typedef unsigned int __kernel_gid32_t;
-
-typedef unsigned short __kernel_old_uid_t;
-typedef unsigned short __kernel_old_gid_t;
-
-#ifdef __GNUC__
-typedef long long __kernel_loff_t;
-#endif
-
-typedef struct {
-#if defined(__KERNEL__) || defined(__USE_ALL)
-	int val[2];
-#else				/* !defined(__KERNEL__) && !defined(__USE_ALL) */
-	int __val[2];
-#endif				/* !defined(__KERNEL__) && !defined(__USE_ALL) */
-} __kernel_fsid_t;
-
-#if defined(__KERNEL__) || !defined(__GLIBC__) || (__GLIBC__ < 2)
-
-#undef	__FD_SET
-#define	__FD_SET(d, set)	((set)->fds_bits[__FDELT(d)] |= __FDMASK(d))
-
-#undef	__FD_CLR
-#define	__FD_CLR(d, set)	((set)->fds_bits[__FDELT(d)] &= ~__FDMASK(d))
-
-#undef	__FD_ISSET
-#define	__FD_ISSET(d, set)	((set)->fds_bits[__FDELT(d)] & __FDMASK(d))
-
-#undef	__FD_ZERO
-#define __FD_ZERO(fdsetp) (memset (fdsetp, 0, sizeof(*(fd_set *)fdsetp)))
-
-#endif	/* defined(__KERNEL__) || !defined(__GLIBC__) || (__GLIBC__ < 2) */
-
-#endif
+#include <asm-generic/posix_types.h>
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
