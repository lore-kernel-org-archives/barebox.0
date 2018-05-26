Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMg6A-00072A-9d
 for barebox@lists.infradead.org; Sat, 26 May 2018 20:47:35 +0000
Received: by mail-pl0-x241.google.com with SMTP id z9-v6so1666958plk.11
 for <barebox@lists.infradead.org>; Sat, 26 May 2018 13:47:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 26 May 2018 13:44:41 -0700
Message-Id: <20180526204451.16530-39-andrew.smirnov@gmail.com>
In-Reply-To: <20180526204451.16530-1-andrew.smirnov@gmail.com>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 38/48] ARM: lib64: Make string functions aware of MMU
 configuration
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Optimized version of memset() in memset.S if called as:

    memset(foo, 0, size)

will try to explicitly zero out data cache with:

    dc	zva, dst

which will result in Alignement Exception (DABT) if MMU is not
enabled.

For more info see:

    - C4.4.8 "DC ZVA, Data Cache Zero by VA"
    - D5.2.8 "The effects of disabling a stage of address translation"

in "ARM Architecture Reference Manual. ARMv8, for ARMv8-A architecture
profile"

In similar vein, using optimized version of memcpy() could lead to a
unaligned 16-byte write (using 'stp'), which is not allowed for
Device-nGnRnE type of memory (see D5.2.8) and would liead to
Alignement Exception.

To fix both problems expose non-optimized and optimzied versions of
the function and created a wrapper to dispatch the call to either one
based on if MMU is enabled or not.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/Kconfig        |  7 +++++++
 arch/arm/lib64/Makefile |  2 +-
 arch/arm/lib64/memcpy.S |  6 +++---
 arch/arm/lib64/memset.S |  4 ++--
 arch/arm/lib64/string.c | 22 ++++++++++++++++++++++
 include/string.h        |  3 +++
 lib/string.c            | 18 ++++++++++++------
 7 files changed, 50 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm/lib64/string.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 37cde0c0c..c6a4cadb3 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -353,6 +353,13 @@ menu "ARM specific settings"
 
 config ARM_OPTIMZED_STRING_FUNCTIONS
 	bool "use assembler optimized string functions"
+	#
+	# memset() and memcpy() in arm/lib64/mem[set|cpy].S are
+	# written with assumption of enabled MMU and cache. Depending
+	# on the inputs in may fail with Alignement exception if used
+	# without MMU
+	#
+	depends on !CPU_V8 || MMU
 	help
 	  Say yes here to use assembler optimized memcpy / memset functions.
 	  These functions work much faster than the normal versions but
diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
index 77647128a..4c0019fab 100644
--- a/arch/arm/lib64/Makefile
+++ b/arch/arm/lib64/Makefile
@@ -2,7 +2,7 @@ obj-y += stacktrace.o
 obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
 obj-y	+= div0.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
-obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
+obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o string.o
 extra-y += barebox.lds
 obj-pbl-y   += runtime-offset.o
 
diff --git a/arch/arm/lib64/memcpy.S b/arch/arm/lib64/memcpy.S
index cfed3191c..a70e96ca2 100644
--- a/arch/arm/lib64/memcpy.S
+++ b/arch/arm/lib64/memcpy.S
@@ -67,8 +67,8 @@
 	stp \ptr, \regB, [\regC], \val
 	.endm
 
-	.weak memcpy
-ENTRY(memcpy)
+	.weak __arch_memcpy
+ENTRY(__arch_memcpy)
 #include "copy_template.S"
 	ret
-ENDPROC(memcpy)
+ENDPROC(__arch_memcpy)
diff --git a/arch/arm/lib64/memset.S b/arch/arm/lib64/memset.S
index 380a54097..d17bcc612 100644
--- a/arch/arm/lib64/memset.S
+++ b/arch/arm/lib64/memset.S
@@ -54,7 +54,7 @@ tmp3w		.req	w9
 tmp3		.req	x9
 
 	.weak memset
-ENTRY(memset)
+ENTRY(__arch_memset)
 	mov	dst, dstin	/* Preserve return value.  */
 	and	A_lw, val, #255
 	orr	A_lw, A_lw, A_lw, lsl #8
@@ -212,4 +212,4 @@ ENTRY(memset)
 	ands	count, count, zva_bits_x
 	b.ne	.Ltail_maybe_long
 	ret
-ENDPROC(memset)
+ENDPROC(__arch_memset)
diff --git a/arch/arm/lib64/string.c b/arch/arm/lib64/string.c
new file mode 100644
index 000000000..cb2633152
--- /dev/null
+++ b/arch/arm/lib64/string.c
@@ -0,0 +1,22 @@
+#include <common.h>
+#include <asm/system.h>
+#include <string.h>
+
+void *__arch_memset(void *dst, int c, __kernel_size_t size);
+void *__arch_memcpy(void * dest, const void *src, size_t count);
+
+void *memset(void *dst, int c, __kernel_size_t size)
+{
+	if (likely(get_cr() & CR_M))
+		return __arch_memset(dst, c, size);
+
+	return __default_memset(dst, c, size);
+}
+
+void *memcpy(void * dest, const void *src, size_t count)
+{
+	if (likely(get_cr() & CR_M))
+		return __arch_memcpy(dest, src, count);
+
+	return __default_memcpy(dest, src, count);
+}
\ No newline at end of file
diff --git a/include/string.h b/include/string.h
index 0c557d6f1..6ceb33224 100644
--- a/include/string.h
+++ b/include/string.h
@@ -6,4 +6,7 @@
 void *memdup(const void *, size_t);
 int strtobool(const char *str, int *val);
 
+void *__default_memset(void *, int, __kernel_size_t);
+void *__default_memcpy(void * dest,const void *src,size_t count);
+
 #endif /* __STRING_H */
diff --git a/lib/string.c b/lib/string.c
index f588933e8..717b59aa5 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -479,7 +479,6 @@ char *strswab(const char *s)
 }
 #endif
 
-#ifndef __HAVE_ARCH_MEMSET
 /**
  * memset - Fill a region of memory with the given value
  * @s: Pointer to the start of the area.
@@ -488,7 +487,7 @@ char *strswab(const char *s)
  *
  * Do not use memset() to access IO space, use memset_io() instead.
  */
-void * memset(void * s,int c,size_t count)
+void *__default_memset(void * s,int c,size_t count)
 {
 	char *xs = (char *) s;
 
@@ -497,10 +496,12 @@ void * memset(void * s,int c,size_t count)
 
 	return s;
 }
+EXPORT_SYMBOL(__default_memset);
+
+#ifndef __HAVE_ARCH_MEMSET
+void *memset(void *s, int c, size_t count) __alias(__default_memset);
 #endif
-EXPORT_SYMBOL(memset);
 
-#ifndef __HAVE_ARCH_MEMCPY
 /**
  * memcpy - Copy one area of memory to another
  * @dest: Where to copy to
@@ -510,7 +511,7 @@ EXPORT_SYMBOL(memset);
  * You should not use this function to access IO space, use memcpy_toio()
  * or memcpy_fromio() instead.
  */
-void * memcpy(void * dest,const void *src,size_t count)
+void *__default_memcpy(void * dest,const void *src,size_t count)
 {
 	char *tmp = (char *) dest, *s = (char *) src;
 
@@ -519,9 +520,14 @@ void * memcpy(void * dest,const void *src,size_t count)
 
 	return dest;
 }
-#endif
 EXPORT_SYMBOL(memcpy);
 
+#ifndef __HAVE_ARCH_MEMCPY
+void *memcpy(void * dest, const void *src, size_t count)
+	__alias(__default_memcpy);
+#endif
+
+
 #ifndef __HAVE_ARCH_MEMMOVE
 /**
  * memmove - Copy one area of memory to another
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
