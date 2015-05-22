Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YvgBD-0003Gf-Q4
 for barebox@lists.infradead.org; Fri, 22 May 2015 06:11:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 May 2015 08:11:01 +0200
Message-Id: <1432275071-28554-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/14] introduce generic posix_types.h
To: Barebox List <barebox@lists.infradead.org>

Most types defined in posix_types.h are architecture independent,
so instead of repeating this for each architecture add a generic
file that can be used by architecture code. To use it an architecture
must define BITS_PER_LONG properly in asm/bitsperlong.h.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/asm-generic/posix_types.h | 90 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 90 insertions(+)
 create mode 100644 include/asm-generic/posix_types.h

diff --git a/include/asm-generic/posix_types.h b/include/asm-generic/posix_types.h
new file mode 100644
index 0000000..136f161
--- /dev/null
+++ b/include/asm-generic/posix_types.h
@@ -0,0 +1,90 @@
+#ifndef __ASM_GENERIC_POSIX_TYPES_H
+#define __ASM_GENERIC_POSIX_TYPES_H
+
+#include <asm/bitsperlong.h>
+/*
+ * This file is generally used by user-level software, so you need to
+ * be a little careful about namespace pollution etc.
+ *
+ * First the types that are often defined in different ways across
+ * architectures, so that you can override them.
+ */
+
+#ifndef __kernel_long_t
+typedef long		__kernel_long_t;
+typedef unsigned long	__kernel_ulong_t;
+#endif
+
+#ifndef __kernel_ino_t
+typedef __kernel_ulong_t __kernel_ino_t;
+#endif
+
+#ifndef __kernel_mode_t
+typedef unsigned int	__kernel_mode_t;
+#endif
+
+#ifndef __kernel_pid_t
+typedef int		__kernel_pid_t;
+#endif
+
+#ifndef __kernel_ipc_pid_t
+typedef int		__kernel_ipc_pid_t;
+#endif
+
+#ifndef __kernel_uid_t
+typedef unsigned int	__kernel_uid_t;
+typedef unsigned int	__kernel_gid_t;
+#endif
+
+#ifndef __kernel_suseconds_t
+typedef __kernel_long_t		__kernel_suseconds_t;
+#endif
+
+#ifndef __kernel_daddr_t
+typedef int		__kernel_daddr_t;
+#endif
+
+#ifndef __kernel_uid32_t
+typedef unsigned int	__kernel_uid32_t;
+typedef unsigned int	__kernel_gid32_t;
+#endif
+
+#ifndef __kernel_old_uid_t
+typedef __kernel_uid_t	__kernel_old_uid_t;
+typedef __kernel_gid_t	__kernel_old_gid_t;
+#endif
+
+#ifndef __kernel_old_dev_t
+typedef unsigned int	__kernel_old_dev_t;
+#endif
+
+/*
+ * Most 32 bit architectures use "unsigned int" size_t,
+ * and all 64 bit architectures use "unsigned long" size_t.
+ */
+#ifndef __kernel_size_t
+#if BITS_PER_LONG != 64
+typedef unsigned int	__kernel_size_t;
+typedef int		__kernel_ssize_t;
+typedef int		__kernel_ptrdiff_t;
+#else
+typedef __kernel_ulong_t __kernel_size_t;
+typedef __kernel_long_t	__kernel_ssize_t;
+typedef __kernel_long_t	__kernel_ptrdiff_t;
+#endif
+#endif
+
+/*
+ * anything below here should be completely generic
+ */
+typedef __kernel_long_t	__kernel_off_t;
+typedef long long	__kernel_loff_t;
+typedef __kernel_long_t	__kernel_time_t;
+typedef __kernel_long_t	__kernel_clock_t;
+typedef int		__kernel_timer_t;
+typedef int		__kernel_clockid_t;
+typedef char *		__kernel_caddr_t;
+typedef unsigned short	__kernel_uid16_t;
+typedef unsigned short	__kernel_gid16_t;
+
+#endif /* __ASM_GENERIC_POSIX_TYPES_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
