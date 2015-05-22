Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YvgBD-0003Ge-Q5
 for barebox@lists.infradead.org; Fri, 22 May 2015 06:11:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 May 2015 08:11:00 +0200
Message-Id: <1432275071-28554-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/14] introduce bitsperlong.h for remaining architectures
To: Barebox List <barebox@lists.infradead.org>

This introduces the bitsperlong.h file for the remaining architectures.
It's purpose is to define BITS_PER_LONG which in the next step can be used
by a generic posix_types.h file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/bitsperlong.h      |  1 +
 arch/arm/include/asm/types.h            |  2 +-
 arch/blackfin/include/asm/types.h       |  2 +-
 arch/efi/include/asm/bitsperlong.h      | 10 ++++++++++
 arch/efi/include/asm/types.h            |  6 +-----
 arch/openrisc/include/asm/bitsperlong.h |  1 +
 arch/openrisc/include/asm/types.h       |  2 +-
 arch/ppc/include/asm/bitsperlong.h      |  1 +
 arch/ppc/include/asm/types.h            |  2 +-
 arch/sandbox/include/asm/bitsperlong.h  | 10 ++++++++++
 arch/sandbox/include/asm/types.h        |  2 +-
 arch/x86/include/asm/bitsperlong.h      |  1 +
 arch/x86/include/asm/types.h            |  2 +-
 13 files changed, 31 insertions(+), 11 deletions(-)
 create mode 100644 arch/arm/include/asm/bitsperlong.h
 create mode 100644 arch/efi/include/asm/bitsperlong.h
 create mode 100644 arch/openrisc/include/asm/bitsperlong.h
 create mode 100644 arch/ppc/include/asm/bitsperlong.h
 create mode 100644 arch/sandbox/include/asm/bitsperlong.h
 create mode 100644 arch/x86/include/asm/bitsperlong.h

diff --git a/arch/arm/include/asm/bitsperlong.h b/arch/arm/include/asm/bitsperlong.h
new file mode 100644
index 0000000..6dc0bb0
--- /dev/null
+++ b/arch/arm/include/asm/bitsperlong.h
@@ -0,0 +1 @@
+#include <asm-generic/bitsperlong.h>
diff --git a/arch/arm/include/asm/types.h b/arch/arm/include/asm/types.h
index 680e824..1a7f47a 100644
--- a/arch/arm/include/asm/types.h
+++ b/arch/arm/include/asm/types.h
@@ -31,7 +31,7 @@ typedef unsigned long long __u64;
  */
 #ifdef __KERNEL__
 
-#define BITS_PER_LONG 32
+#include <asm/bitsperlong.h>
 
 #ifndef __ASSEMBLY__
 
diff --git a/arch/blackfin/include/asm/types.h b/arch/blackfin/include/asm/types.h
index f1c2dc4..e9d7337 100644
--- a/arch/blackfin/include/asm/types.h
+++ b/arch/blackfin/include/asm/types.h
@@ -73,6 +73,6 @@ typedef unsigned long long u64;
 
 #endif /* __ASSEMBLY__ */
 
-#define BITS_PER_LONG 32
+#include <asm/bitsperlong.h>
 
 #endif
diff --git a/arch/efi/include/asm/bitsperlong.h b/arch/efi/include/asm/bitsperlong.h
new file mode 100644
index 0000000..00c1fc2
--- /dev/null
+++ b/arch/efi/include/asm/bitsperlong.h
@@ -0,0 +1,10 @@
+#ifndef __ASM_BITSPERLONG_H
+#define __ASM_BITSPERLONG_H
+
+#ifdef __x86_64__
+#define BITS_PER_LONG 64
+#else
+#define BITS_PER_LONG 32
+#endif
+
+#endif /* __ASM_BITSPERLONG_H */
diff --git a/arch/efi/include/asm/types.h b/arch/efi/include/asm/types.h
index 05122ea..3caac39 100644
--- a/arch/efi/include/asm/types.h
+++ b/arch/efi/include/asm/types.h
@@ -56,11 +56,7 @@ typedef unsigned int u32;
 typedef signed long long s64;
 typedef unsigned long long u64;
 
-#ifdef __x86_64__
-#define BITS_PER_LONG 64
-#else
-#define BITS_PER_LONG 32
-#endif
+#include <asm/bitsperlong.h>
 
 #endif /* __KERNEL__ */
 
diff --git a/arch/openrisc/include/asm/bitsperlong.h b/arch/openrisc/include/asm/bitsperlong.h
new file mode 100644
index 0000000..6dc0bb0
--- /dev/null
+++ b/arch/openrisc/include/asm/bitsperlong.h
@@ -0,0 +1 @@
+#include <asm-generic/bitsperlong.h>
diff --git a/arch/openrisc/include/asm/types.h b/arch/openrisc/include/asm/types.h
index cacda42..5b6391b 100644
--- a/arch/openrisc/include/asm/types.h
+++ b/arch/openrisc/include/asm/types.h
@@ -62,7 +62,7 @@ typedef unsigned int u32;
 typedef signed long long s64;
 typedef unsigned long long u64;
 
-#define BITS_PER_LONG 32
+#include <asm/bitsperlong.h>
 
 #endif /* __KERNEL__ */
 
diff --git a/arch/ppc/include/asm/bitsperlong.h b/arch/ppc/include/asm/bitsperlong.h
new file mode 100644
index 0000000..6dc0bb0
--- /dev/null
+++ b/arch/ppc/include/asm/bitsperlong.h
@@ -0,0 +1 @@
+#include <asm-generic/bitsperlong.h>
diff --git a/arch/ppc/include/asm/types.h b/arch/ppc/include/asm/types.h
index 37ef353..6eb3877 100644
--- a/arch/ppc/include/asm/types.h
+++ b/arch/ppc/include/asm/types.h
@@ -39,7 +39,7 @@ typedef unsigned int u32;
 typedef signed long long s64;
 typedef unsigned long long u64;
 
-#define BITS_PER_LONG 32
+#include <asm-generic/bitsperlong.h>
 
 #endif /* __KERNEL__ */
 #endif /* __ASSEMBLY__ */
diff --git a/arch/sandbox/include/asm/bitsperlong.h b/arch/sandbox/include/asm/bitsperlong.h
new file mode 100644
index 0000000..00c1fc2
--- /dev/null
+++ b/arch/sandbox/include/asm/bitsperlong.h
@@ -0,0 +1,10 @@
+#ifndef __ASM_BITSPERLONG_H
+#define __ASM_BITSPERLONG_H
+
+#ifdef __x86_64__
+#define BITS_PER_LONG 64
+#else
+#define BITS_PER_LONG 32
+#endif
+
+#endif /* __ASM_BITSPERLONG_H */
diff --git a/arch/sandbox/include/asm/types.h b/arch/sandbox/include/asm/types.h
index 8944b47..7590a39 100644
--- a/arch/sandbox/include/asm/types.h
+++ b/arch/sandbox/include/asm/types.h
@@ -54,7 +54,7 @@ typedef unsigned int u32;
 typedef signed long long s64;
 typedef unsigned long long u64;
 
-#define BITS_PER_LONG 32
+#include <asm-generic/bitsperlong.h>
 
 #endif /* __KERNEL__ */
 
diff --git a/arch/x86/include/asm/bitsperlong.h b/arch/x86/include/asm/bitsperlong.h
new file mode 100644
index 0000000..6dc0bb0
--- /dev/null
+++ b/arch/x86/include/asm/bitsperlong.h
@@ -0,0 +1 @@
+#include <asm-generic/bitsperlong.h>
diff --git a/arch/x86/include/asm/types.h b/arch/x86/include/asm/types.h
index b3fd1f6..d60612f 100644
--- a/arch/x86/include/asm/types.h
+++ b/arch/x86/include/asm/types.h
@@ -41,7 +41,7 @@ typedef unsigned int u32;
 typedef signed long long s64;
 typedef unsigned long long u64;
 
-#define BITS_PER_LONG 32
+#include <asm-generic/bitsperlong.h>
 
 #endif /* __ASSEMBLY__ */
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
