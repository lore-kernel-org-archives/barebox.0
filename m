Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOcvX-0002Yh-5l
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 07:57:45 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 15 Apr 2020 16:57:03 +0900
Message-Id: <20200415075705.54683-1-masahiroy@kernel.org>
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
Subject: [PATCH 1/3] kbuild: rename hostprogs-y/always to hostprogs/always-y
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

[ Linux commit 5f2fb52fac15a8a8e10ce020dd532504a8abfc4e ]

In old days, the "host-progs" syntax was used for specifying host
programs. It was renamed to the current "hostprogs-y" in 2004.

It is typically useful in scripts/Makefile because it allows Kbuild to
selectively compile host programs based on the kernel configuration.

This commit renames like follows:

  always       ->  always-y
  hostprogs-y  ->  hostprogs

So, scripts/Makefile will look like this:

  always-$(CONFIG_BUILD_BIN2C) += ...
  always-$(CONFIG_KALLSYMS)    += ...
      ...
  hostprogs := $(always-y) $(always-m)

I think this makes more sense because a host program is always a host
program, irrespective of the kernel configuration. We want to specify
which ones to compile by CONFIG options, so always-y will be handier.

The "always", "hostprogs-y", "hostprogs-m" will be kept for backward
compatibility for a while.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Makefile.build | 6 ++++--
 scripts/Makefile.clean | 4 ++--
 scripts/Makefile.host  | 8 ++++----
 scripts/Makefile.lib   | 9 ++++++++-
 4 files changed, 18 insertions(+), 9 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index db687d5f9..a6ed83e6d 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -16,6 +16,8 @@ lib-y :=
 lib-m :=
 pbl-y :=
 always :=
+always-y :=
+always-m :=
 targets :=
 subdir-y :=
 subdir-m :=
@@ -43,7 +45,7 @@ include $(if $(wildcard $(kbuild-dir)/Kbuild), $(kbuild-dir)/Kbuild, $(kbuild-di
 include scripts/Makefile.lib
 
 # Do not include host rules unless needed
-ifneq ($(hostprogs-y)$(hostprogs-m),)
+ifneq ($(hostprogs)$(hostprogs-y)$(hostprogs-m),)
 include scripts/Makefile.host
 endif
 
@@ -80,7 +82,7 @@ endif
 
 __build: $(if $(KBUILD_BUILTIN),$(builtin-target) $(lib-target) $(pbl-target) $(extra-y)) \
 	 $(if $(KBUILD_MODULES),$(obj-m)) \
-	 $(subdir-ym) $(always)
+	 $(subdir-ym) $(always-y)
 	@:
 
 # Linus' kernel sanity checking tool
diff --git a/scripts/Makefile.clean b/scripts/Makefile.clean
index d1e4a7800..6e6c9ef7c 100644
--- a/scripts/Makefile.clean
+++ b/scripts/Makefile.clean
@@ -36,8 +36,8 @@ subdir-ymn	:= $(addprefix $(obj)/,$(subdir-ymn))
 # directory
 
 __clean-files	:= $(extra-y) $(extra-m) $(extra-)       \
-		   $(always) $(targets) $(clean-files)   \
-		   $(hostprogs-y) $(hostprogs-m) $(hostprogs-)
+		   $(always) $(always-y) $(always-m) $(always-) $(targets) $(clean-files)   \
+		   $(hostprogs) $(hostprogs-y) $(hostprogs-m) $(hostprogs-)
 
 # as clean-files is given relative to the current directory, this adds
 # a $(obj) prefix, except for absolute paths
diff --git a/scripts/Makefile.host b/scripts/Makefile.host
index 170952f68..61f0a7714 100644
--- a/scripts/Makefile.host
+++ b/scripts/Makefile.host
@@ -6,21 +6,21 @@
 # Both C and C++ are supported, but preferred language is C for such utilities.
 #
 # Sample syntax (see Documentation/kbuild/makefiles.txt for reference)
-# hostprogs-y := bin2hex
+# hostprogs := bin2hex
 # Will compile bin2hex.c and create an executable named bin2hex
 #
-# hostprogs-y    := lxdialog
+# hostprogs     := lxdialog
 # lxdialog-objs := checklist.o lxdialog.o
 # Will compile lxdialog.c and checklist.c, and then link the executable
 # lxdialog, based on checklist.o and lxdialog.o
 #
-# hostprogs-y      := qconf
+# hostprogs       := qconf
 # qconf-cxxobjs   := qconf.o
 # qconf-objs      := menu.o
 # Will compile qconf as a C++ program, and menu as a C program.
 # They are linked as C++ code to the executable qconf
 
-__hostprogs := $(sort $(hostprogs-y) $(hostprogs-m))
+__hostprogs := $(sort $(hostprogs))
 
 # C code
 # Executables compiled from a single .c file
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index a94e16fe0..2b64b5432 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -1,3 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0
+# Backward compatibility
+always-y   += $(always)
+hostprogs  += $(hostprogs-y) $(hostprogs-m)
+
 # Figure out what we need to build from the various variables
 # ===========================================================================
 
@@ -85,10 +90,12 @@ obj-dirs := $(dir $(multi-objs) $(obj-y) $(pbl-y))
 real-objs-y := $(foreach m, $(filter-out $(subdir-obj-y), $(obj-y)), $(if $(strip $($(m:.o=-objs)) $($(m:.o=-y))),$($(m:.o=-objs)) $($(m:.o=-y)),$(m))) $(extra-y)
 real-objs-m := $(foreach m, $(obj-m), $(if $(strip $($(m:.o=-objs)) $($(m:.o=-y))),$($(m:.o=-objs)) $($(m:.o=-y)),$(m)))
 
+always-y += $(always-m)
+
 # Add subdir path
 
 extra-y		:= $(addprefix $(obj)/,$(extra-y))
-always		:= $(addprefix $(obj)/,$(always))
+always-y	:= $(addprefix $(obj)/,$(always-y))
 targets		:= $(addprefix $(obj)/,$(targets))
 obj-y		:= $(addprefix $(obj)/,$(obj-y))
 obj-m		:= $(addprefix $(obj)/,$(obj-m))
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
