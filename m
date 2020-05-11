Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXxQv-0002dW-4N
 for barebox@lists.infradead.org; Mon, 11 May 2020 01:40:42 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 11 May 2020 10:40:14 +0900
Message-Id: <20200511014016.1610102-1-masahiroy@kernel.org>
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
Subject: [PATCH 1/2] arch: remove KBUILD_SRC checks from arch Makefile
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

You can always add $(srctree)/ to the mach include path.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/arm/Makefile        | 4 ----
 arch/mips/Makefile       | 4 ----
 arch/powerpc/Makefile    | 4 ----
 arch/riscv/Makefile      | 4 ----
 arch/sandbox/Makefile    | 4 ----
 arch/sandbox/os/Makefile | 4 ----
 arch/x86/Makefile        | 4 ----
 7 files changed, 28 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 62b397a73..6c7373c20 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -127,11 +127,7 @@ board-$(CONFIG_MACH_TINY6410)			+= friendlyarm-tiny6410
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
-ifeq ($(KBUILD_SRC),)
-KBUILD_CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
-else
 KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
-endif
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index abfa82504..5604a0a10 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -82,11 +82,7 @@ machine-$(CONFIG_MACH_MIPS_LOONGSON)	:= loongson
 machine-$(CONFIG_MACH_MIPS_XBURST)	:= xburst
 machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
 
-ifeq ($(KBUILD_SRC),)
-KBUILD_CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
-else
 KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
-endif
 
 ifneq ($(machine-y),)
 MACH  := arch/mips/mach-$(machine-y)/
diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index 148377791..aa7626049 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -36,11 +36,7 @@ endif
 
 machdirs := $(patsubst %,arch/powerpc/mach-%/,$(machine-y))
 
-ifeq ($(KBUILD_SRC),)
-KBUILD_CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
-else
 KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
-endif
 
 archprepare: maketools
 
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 5096bde0d..c71319507 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -27,11 +27,7 @@ KBUILD_BINARY := barebox.bin
 
 machdirs := $(patsubst %,arch/riscv/mach-%/,$(machine-y))
 
-ifeq ($(KBUILD_SRC),)
-KBUILD_CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
-else
 KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
-endif
 
 archprepare: maketools
 
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index c205f47ff..3d2eb5bc1 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -29,11 +29,7 @@ KBUILD_CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 
 machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
-ifeq ($(KBUILD_SRC),)
-KBUILD_CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
-else
 KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
-endif
 
 archprepare: maketools
 
diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index 40306b5ff..c012c9cf0 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -2,11 +2,7 @@ machine-y := sandbox
 
 machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
-ifeq ($(KBUILD_SRC),)
-KBUILD_CPPFLAGS := $(patsubst %,-I%include,$(machdirs))
-else
 KBUILD_CPPFLAGS = $(patsubst %,-I$(srctree)/%include,$(machdirs))
-endif
 
 KBUILD_CPPFLAGS += -DCONFIG_MALLOC_SIZE=$(CONFIG_MALLOC_SIZE)
 
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index c93a680e4..97f6d85f2 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -46,11 +46,7 @@ endif
 
 machdirs := $(patsubst %,arch/x86/mach-%/,$(machine-y))
 
-ifeq ($(KBUILD_SRC),)
-KBUILD_CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
-else
 KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
-endif
 
 ifneq ($(board-y),)
 BOARD  := arch/x86/boards/$(board-y)/
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
