Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gj8VW-0006yX-Se
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 20:06:53 +0000
Received: by mail-lf1-x141.google.com with SMTP id e26so238886lfc.2
 for <barebox@lists.infradead.org>; Mon, 14 Jan 2019 12:06:50 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 14 Jan 2019 23:06:40 +0300
Message-Id: <20190114200641.4242-3-antonynpavlov@gmail.com>
In-Reply-To: <20190114200641.4242-1-antonynpavlov@gmail.com>
References: <20190114200641.4242-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH-for-next 2/2] move umode_t typedef from asm/types.h to
 linux/types.h
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/include/asm/types.h      | 2 --
 arch/blackfin/include/asm/types.h | 2 --
 arch/mips/include/asm/types.h     | 6 ------
 arch/nios2/include/asm/types.h    | 2 --
 arch/openrisc/include/asm/types.h | 2 --
 arch/ppc/include/asm/types.h      | 2 --
 arch/riscv/include/asm/types.h    | 2 --
 arch/sandbox/include/asm/types.h  | 2 --
 arch/x86/include/asm/types.h      | 2 --
 include/linux/types.h             | 1 +
 10 files changed, 1 insertion(+), 22 deletions(-)

diff --git a/arch/arm/include/asm/types.h b/arch/arm/include/asm/types.h
index 1a7f47add0..9c21066882 100644
--- a/arch/arm/include/asm/types.h
+++ b/arch/arm/include/asm/types.h
@@ -3,8 +3,6 @@
 
 #ifndef __ASSEMBLY__
 
-typedef unsigned short umode_t;
-
 /*
  * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
  * header files exported to user space
diff --git a/arch/blackfin/include/asm/types.h b/arch/blackfin/include/asm/types.h
index e9d73377eb..086da34d7f 100644
--- a/arch/blackfin/include/asm/types.h
+++ b/arch/blackfin/include/asm/types.h
@@ -30,8 +30,6 @@
  */
 #ifndef __ASSEMBLY__
 
-typedef unsigned short umode_t;
-
 /*
  * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
  * header files exported to user space
diff --git a/arch/mips/include/asm/types.h b/arch/mips/include/asm/types.h
index 78068e4113..c635c1aac1 100644
--- a/arch/mips/include/asm/types.h
+++ b/arch/mips/include/asm/types.h
@@ -10,10 +10,4 @@
 
 #include <asm-generic/int-ll64.h>
 
-#ifndef __ASSEMBLY__
-
-typedef unsigned short umode_t;
-
-#endif /* __ASSEMBLY__ */
-
 #endif /* _ASM_TYPES_H */
diff --git a/arch/nios2/include/asm/types.h b/arch/nios2/include/asm/types.h
index 710ee55796..0067ea83c1 100644
--- a/arch/nios2/include/asm/types.h
+++ b/arch/nios2/include/asm/types.h
@@ -3,6 +3,4 @@
 
 #include <asm/int-ll64.h>
 
-typedef unsigned short umode_t;
-
 #endif
diff --git a/arch/openrisc/include/asm/types.h b/arch/openrisc/include/asm/types.h
index 5b6391baf0..8ee6bb00f9 100644
--- a/arch/openrisc/include/asm/types.h
+++ b/arch/openrisc/include/asm/types.h
@@ -24,8 +24,6 @@
  * need to be careful to avoid a name clashes.
  */
 
-typedef unsigned short umode_t;
-
 /*
  * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
  * header files exported to user space
diff --git a/arch/ppc/include/asm/types.h b/arch/ppc/include/asm/types.h
index 6eb3877032..2d3ce0a283 100644
--- a/arch/ppc/include/asm/types.h
+++ b/arch/ppc/include/asm/types.h
@@ -3,8 +3,6 @@
 
 #ifndef __ASSEMBLY__
 
-typedef unsigned short umode_t;
-
 typedef __signed__ char __s8;
 typedef unsigned char __u8;
 
diff --git a/arch/riscv/include/asm/types.h b/arch/riscv/include/asm/types.h
index ba386ab4c5..8200a03349 100644
--- a/arch/riscv/include/asm/types.h
+++ b/arch/riscv/include/asm/types.h
@@ -15,8 +15,6 @@
 
 #endif
 
-typedef unsigned short umode_t;
-
 /*
  * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
  * header files exported to user space
diff --git a/arch/sandbox/include/asm/types.h b/arch/sandbox/include/asm/types.h
index 501883f5aa..8426de4cc2 100644
--- a/arch/sandbox/include/asm/types.h
+++ b/arch/sandbox/include/asm/types.h
@@ -16,8 +16,6 @@
 
 #endif
 
-typedef unsigned short umode_t;
-
 /*
  * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
  * header files exported to user space
diff --git a/arch/x86/include/asm/types.h b/arch/x86/include/asm/types.h
index 3caac398d8..e57ae2c8cf 100644
--- a/arch/x86/include/asm/types.h
+++ b/arch/x86/include/asm/types.h
@@ -18,8 +18,6 @@
 
 #endif
 
-typedef unsigned short umode_t;
-
 /*
  * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
  * header files exported to user space
diff --git a/include/linux/types.h b/include/linux/types.h
index ed3a5b6e81..c19d1dc053 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -15,6 +15,7 @@ typedef __kernel_fd_set		fd_set;
 typedef __kernel_dev_t		dev_t;
 typedef __kernel_ino_t		ino_t;
 typedef __kernel_mode_t		mode_t;
+typedef unsigned short		umode_t;
 typedef __kernel_off_t		off_t;
 typedef __kernel_pid_t		pid_t;
 typedef __kernel_daddr_t	daddr_t;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
