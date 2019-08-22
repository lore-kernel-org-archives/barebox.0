Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gRu-0005Zn-4M
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:19:57 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 08:19:38 +0200
Message-Id: <20190822061941.6093-3-ahmad@a3f.at>
In-Reply-To: <20190822061941.6093-1-ahmad@a3f.at>
References: <20190822061941.6093-1-ahmad@a3f.at>
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
Subject: [PATCH 2/5] common: add generic CONFIG_UBSAN_SANITIZE_ALL plumbing
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de

-fsanitize=undefined allows compile-time instrumentation of code to detect
some classes of runtime undefined behavior.

In preparation for allowing arches to provide infrastructure in support
of this feature, add some generic UBSAN options and associated plumbing.

These are only shown in the debug menu when the arch selects the
appropriate symbol. The option is named equally to their Linux counterparts.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Makefile               |  5 +++++
 common/Kconfig         | 25 +++++++++++++++++++++++++
 scripts/Makefile.lib   |  5 +++++
 scripts/Makefile.ubsan | 19 +++++++++++++++++++
 4 files changed, 54 insertions(+)
 create mode 100644 scripts/Makefile.ubsan

diff --git a/Makefile b/Makefile
index 0d6fc5f6beca..2117a332aa6f 100644
--- a/Makefile
+++ b/Makefile
@@ -262,6 +262,9 @@ MAKEFLAGS += --include-dir=$(srctree)
 include $(srctree)/scripts/Kbuild.include
 include $(srctree)/scripts/Makefile.lib
 
+# Populate Sanitizer CFLAGS
+include $(srctree)/scripts/Makefile.ubsan
+
 # Make variables (CC, etc...)
 
 AS		= $(CROSS_COMPILE)as
@@ -329,6 +332,8 @@ export CFLAGS CFLAGS_KERNEL
 export AFLAGS AFLAGS_KERNEL
 export LDFLAGS_barebox
 
+export CFLAGS_UBSAN
+
 # Files to ignore in find ... statements
 
 RCS_FIND_IGNORE := \( -name SCCS -o -name BitKeeper -o -name .svn -o -name CVS -o -name .pc -o -name .hg -o -name .git \) -prune -o
diff --git a/common/Kconfig b/common/Kconfig
index 8aad5baecdda..0db7b21a3b30 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1288,6 +1288,7 @@ config DEBUG_INITCALLS
 	  If enabled this will print initcall traces.
 
 
+
 config PBL_BREAK
 	bool "Execute software break on pbl start"
 	depends on ARM
@@ -1295,6 +1296,26 @@ config PBL_BREAK
 	  If this enabled, barebox will be compiled with BKPT instruction
 	  on early pbl init. This option should be used only with JTAG debugger!
 
+config UBSAN_SANITIZE_ALL
+	bool "Undefined behaviour sanity checker"
+	depends on ARCH_HAS_UBSAN_SANITIZE_ALL
+	help
+	  This option enables the UBSan compile-time instrumentation
+	  for detecting various undefined behaviours during barebox
+	  runtime.
+
+config UBSAN_NO_ALIGNMENT
+	bool "Disable checking of pointers alignment"
+	depends on UBSAN
+	default y if HAVE_EFFICIENT_UNALIGNED_ACCESS
+	help
+	  This option disables the check of unaligned memory accesses.
+	  Disabling this option on architectures that support unaligned
+	  accesses may produce a lot of false positives.
+
+config UBSAN_ALIGNMENT
+	def_bool !UBSAN_NO_ALIGNMENT
+
 endmenu
 
 config HAS_DEBUG_LL
@@ -1303,3 +1324,7 @@ config HAS_DEBUG_LL
 config DDR_SPD
 	bool
 	select CRC_ITU_T
+
+config ARCH_HAS_UBSAN_SANITIZE_ALL
+	bool
+
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index fc5fe3d7e8bc..21feb07dcd9a 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -120,6 +120,11 @@ _c_flags       = $(CFLAGS) $(EXTRA_CFLAGS) $(CFLAGS_$(basetarget).o)
 _a_flags       = $(AFLAGS) $(EXTRA_AFLAGS) $(AFLAGS_$(basetarget).o)
 _cpp_flags     = $(CPPFLAGS) $(EXTRA_CPPFLAGS) $(CPPFLAGS_$(@F))
 
+ifeq ($(CONFIG_UBSAN),y)
+_c_flags += $(CFLAGS_UBSAN)
+LDFLAGS  += $(LDFLAGS_UBSAN)
+endif
+
 # If building barebox in a separate objtree expand all occurrences
 # of -Idir to -I$(srctree)/dir except for absolute paths (starting with '/').
 
diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
new file mode 100644
index 000000000000..019771b845c5
--- /dev/null
+++ b/scripts/Makefile.ubsan
@@ -0,0 +1,19 @@
+# SPDX-License-Identifier: GPL-2.0
+ifdef CONFIG_UBSAN
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=shift)
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=integer-divide-by-zero)
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=unreachable)
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=signed-integer-overflow)
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=object-size)
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bool)
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=enum)
+
+ifdef CONFIG_UBSAN_ALIGNMENT
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=alignment)
+endif
+
+      # -fsanitize=* options makes GCC less smart than usual and
+      # increase number of 'maybe-uninitialized false-positives
+      CFLAGS_UBSAN += $(call cc-option, -Wno-maybe-uninitialized)
+endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
