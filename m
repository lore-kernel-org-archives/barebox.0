Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUV-0003SD-T0
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:37 +0000
Received: by mail-ww0-f49.google.com with SMTP id 40so1440284wwj.18
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:27 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:59 +0100
Message-Id: <4d701d4f.9009d80a.2cd3.5ea3@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 45/54] Add arch/nios2/include/asm/posix_types.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/posix_types.h

---
 arch/nios2/include/asm/posix_types.h |   77 ++++++++++++++++++++++++++++++++++
 1 files changed, 77 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/posix_types.h

diff --git a/arch/nios2/include/asm/posix_types.h b/arch/nios2/include/asm/posix_types.h
new file mode 100644
index 0000000..2446d23
--- /dev/null
+++ b/arch/nios2/include/asm/posix_types.h
@@ -0,0 +1,77 @@
+/*
+ *  arch/arm/include/asm/posix_types.h
+ *
+ *  Copyright (C) 1996-1998 Russell King.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ *  Changelog:
+ *   27-06-1996	RMK	Created
+ */
+#ifndef __ARCH_ARM_POSIX_TYPES_H
+#define __ARCH_ARM_POSIX_TYPES_H
+
+/*
+ * This file is generally used by user-level software, so you need to
+ * be a little careful about namespace pollution etc.  Also, we cannot
+ * assume GCC is being used.
+ */
+
+typedef unsigned long		__kernel_ino_t;
+typedef unsigned short		__kernel_mode_t;
+typedef unsigned short		__kernel_nlink_t;
+typedef long			__kernel_off_t;
+typedef int			__kernel_pid_t;
+typedef unsigned short		__kernel_ipc_pid_t;
+typedef unsigned short		__kernel_uid_t;
+typedef unsigned short		__kernel_gid_t;
+typedef unsigned int		__kernel_size_t;
+typedef int			__kernel_ssize_t;
+typedef int			__kernel_ptrdiff_t;
+typedef long			__kernel_time_t;
+typedef long			__kernel_suseconds_t;
+typedef long			__kernel_clock_t;
+typedef int			__kernel_timer_t;
+typedef int			__kernel_clockid_t;
+typedef int			__kernel_daddr_t;
+typedef char *			__kernel_caddr_t;
+typedef unsigned short		__kernel_uid16_t;
+typedef unsigned short		__kernel_gid16_t;
+typedef unsigned int		__kernel_uid32_t;
+typedef unsigned int		__kernel_gid32_t;
+
+typedef unsigned short		__kernel_old_uid_t;
+typedef unsigned short		__kernel_old_gid_t;
+typedef unsigned short		__kernel_old_dev_t;
+
+#ifdef __GNUC__
+typedef long long		__kernel_loff_t;
+#endif
+
+typedef struct {
+	int	val[2];
+} __kernel_fsid_t;
+
+#if defined(__KERNEL__)
+
+#undef	__FD_SET
+#define __FD_SET(fd, fdsetp) \
+		(((fd_set *)(fdsetp))->fds_bits[(fd) >> 5] |= (1<<((fd) & 31)))
+
+#undef	__FD_CLR
+#define __FD_CLR(fd, fdsetp) \
+		(((fd_set *)(fdsetp))->fds_bits[(fd) >> 5] &= ~(1<<((fd) & 31)))
+
+#undef	__FD_ISSET
+#define __FD_ISSET(fd, fdsetp) \
+		((((fd_set *)(fdsetp))->fds_bits[(fd) >> 5] & (1<<((fd) & 31))) != 0)
+
+#undef	__FD_ZERO
+#define __FD_ZERO(fdsetp) \
+		(memset (fdsetp, 0, sizeof (*(fd_set *)(fdsetp))))
+
+#endif
+
+#endif
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
