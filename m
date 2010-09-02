Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OrFgA-0004yy-75
	for barebox@lists.infradead.org; Thu, 02 Sep 2010 19:42:35 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  2 Sep 2010 21:41:42 +0200
Message-Id: <1283456510-28086-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100902194046.GA21449@game.jcrosoft.org>
References: <20100902194046.GA21449@game.jcrosoft.org>
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
Subject: [PATCH 1/9 V2] types.h: move __kernel_dev_t to include/linux/types.h
To: barebox@lists.infradead.org

no need to have a arch specific type

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/include/asm/posix_types.h      |    1 -
 arch/blackfin/include/asm/posix_types.h |    1 -
 arch/m68k/include/asm/posix_types.h     |    1 -
 arch/ppc/include/asm/posix_types.h      |    1 -
 arch/sandbox/include/asm/posix_types.h  |    1 -
 arch/x86/include/asm/posix_types.h      |    1 -
 include/linux/types.h                   |    2 ++
 7 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm/include/asm/posix_types.h b/arch/arm/include/asm/posix_types.h
index c412486..aee050e 100644
--- a/arch/arm/include/asm/posix_types.h
+++ b/arch/arm/include/asm/posix_types.h
@@ -19,7 +19,6 @@
  * assume GCC is being used.
  */
 
-typedef unsigned short		__kernel_dev_t;
 typedef unsigned long		__kernel_ino_t;
 typedef unsigned short		__kernel_mode_t;
 typedef unsigned short		__kernel_nlink_t;
diff --git a/arch/blackfin/include/asm/posix_types.h b/arch/blackfin/include/asm/posix_types.h
index 98397ca..bbf6e9c 100644
--- a/arch/blackfin/include/asm/posix_types.h
+++ b/arch/blackfin/include/asm/posix_types.h
@@ -34,7 +34,6 @@
  * assume GCC is being used.
  */
 
-typedef unsigned short __kernel_dev_t;
 typedef unsigned long __kernel_ino_t;
 typedef unsigned short __kernel_mode_t;
 typedef unsigned short __kernel_nlink_t;
diff --git a/arch/m68k/include/asm/posix_types.h b/arch/m68k/include/asm/posix_types.h
index c40c41d..d83afe9 100644
--- a/arch/m68k/include/asm/posix_types.h
+++ b/arch/m68k/include/asm/posix_types.h
@@ -27,7 +27,6 @@
 #define __ARCH_M68K_POSIX_TYPES_H
 
 
-typedef unsigned short		__kernel_dev_t;
 typedef unsigned long		__kernel_ino_t;
 typedef unsigned short		__kernel_mode_t;
 typedef unsigned short		__kernel_nlink_t;
diff --git a/arch/ppc/include/asm/posix_types.h b/arch/ppc/include/asm/posix_types.h
index 9170728..a7af406 100644
--- a/arch/ppc/include/asm/posix_types.h
+++ b/arch/ppc/include/asm/posix_types.h
@@ -7,7 +7,6 @@
  * assume GCC is being used.
  */
 
-typedef unsigned int	__kernel_dev_t;
 typedef unsigned int	__kernel_ino_t;
 typedef unsigned int	__kernel_mode_t;
 typedef unsigned short	__kernel_nlink_t;
diff --git a/arch/sandbox/include/asm/posix_types.h b/arch/sandbox/include/asm/posix_types.h
index 5dcc842..4345141 100644
--- a/arch/sandbox/include/asm/posix_types.h
+++ b/arch/sandbox/include/asm/posix_types.h
@@ -7,7 +7,6 @@
  * assume GCC is being used.
  */
 
-typedef unsigned short	__kernel_dev_t;
 typedef unsigned long	__kernel_ino_t;
 typedef unsigned short	__kernel_mode_t;
 typedef unsigned short	__kernel_nlink_t;
diff --git a/arch/x86/include/asm/posix_types.h b/arch/x86/include/asm/posix_types.h
index a22f301..9278681 100644
--- a/arch/x86/include/asm/posix_types.h
+++ b/arch/x86/include/asm/posix_types.h
@@ -27,7 +27,6 @@
 #define _ASM_X86_POSIX_TYPES_H
 
 typedef unsigned long	__kernel_ino_t;
-typedef unsigned short	__kernel_dev_t;
 typedef unsigned short	__kernel_mode_t;
 typedef unsigned short	__kernel_nlink_t;
 typedef long		__kernel_off_t;
diff --git a/include/linux/types.h b/include/linux/types.h
index 96e5708..2145b6d 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -6,6 +6,8 @@
 
 #ifndef __KERNEL_STRICT_NAMES
 
+typedef __u32 __kernel_dev_t;
+
 typedef __kernel_fd_set		fd_set;
 typedef __kernel_dev_t		dev_t;
 typedef __kernel_ino_t		ino_t;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
