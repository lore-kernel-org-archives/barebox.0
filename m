Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f43.google.com ([209.85.161.43])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QjI0d-0000Qy-4t
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 21:39:23 +0000
Received: by fxg17 with SMTP id 17so555823fxg.16
	for <barebox@lists.infradead.org>; Tue, 19 Jul 2011 14:39:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 20 Jul 2011 01:38:59 +0400
Message-Id: <1311111546-888-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1311111546-888-1-git-send-email-antonynpavlov@gmail.com>
References: <1311111546-888-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v7 08/15] MIPS: import header files from barebox-2011.06.0
	arch/x86
To: barebox@lists.infradead.org

Changes in header files:
 * s/X86/MIPS/
 * s/Linxu/Linux/

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/posix_types.h |   48 +++++++++++++++++++++++++++++++++++
 arch/mips/include/asm/sections.h    |    1 +
 2 files changed, 49 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/include/asm/posix_types.h
 create mode 100644 arch/mips/include/asm/sections.h

diff --git a/arch/mips/include/asm/posix_types.h b/arch/mips/include/asm/posix_types.h
new file mode 100644
index 0000000..60ea7a7
--- /dev/null
+++ b/arch/mips/include/asm/posix_types.h
@@ -0,0 +1,48 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/**
+ * @file
+ * @brief mips posix types
+ *
+ * Minimal set to make all the other header files copied from the Linux kernel happy
+ */
+
+#ifndef _ASM_MIPS_POSIX_TYPES_H
+#define _ASM_MIPS_POSIX_TYPES_H
+
+typedef unsigned long	__kernel_ino_t;
+typedef unsigned short	__kernel_mode_t;
+typedef unsigned short	__kernel_nlink_t;
+typedef long		__kernel_off_t;
+typedef int		__kernel_pid_t;
+typedef unsigned int	__kernel_size_t;
+typedef int		__kernel_ssize_t;
+typedef int		__kernel_ptrdiff_t;
+typedef long		__kernel_time_t;
+typedef long		__kernel_suseconds_t;
+typedef long		__kernel_clock_t;
+typedef int		__kernel_daddr_t;
+typedef char *		__kernel_caddr_t;
+typedef unsigned short	__kernel_uid16_t;
+typedef unsigned short	__kernel_gid16_t;
+typedef unsigned int	__kernel_uid32_t;
+typedef unsigned int	__kernel_gid32_t;
+typedef long long	__kernel_loff_t;
+
+#endif /* _ASM_MIPS_POSIX_TYPES_H */
diff --git a/arch/mips/include/asm/sections.h b/arch/mips/include/asm/sections.h
new file mode 100644
index 0000000..2b8c516
--- /dev/null
+++ b/arch/mips/include/asm/sections.h
@@ -0,0 +1 @@
+#include <asm-generic/sections.h>
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
