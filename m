Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjl-0000WD-JT
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:34:19 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id D3F81104E75B
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:14 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:30 +0100
Message-Id: <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130306092643.GF4401@game.jcrosoft.org>
References: <20130306092643.GF4401@game.jcrosoft.org>
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
Subject: [PATCH 01/20] Makefile: x_flags prepare for apps support
To: barebox@lists.infradead.org

only include barebox header for barebox flags

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile              |    5 +++--
 arch/arm/Makefile     |    7 ++++---
 arch/mips/Makefile    |    8 ++++----
 arch/ppc/Makefile     |    4 ++--
 arch/sandbox/Makefile |    4 ++--
 arch/x86/Makefile     |    4 ++--
 scripts/Makefile.lib  |   13 +++++++++----
 7 files changed, 26 insertions(+), 19 deletions(-)

diff --git a/Makefile b/Makefile
index b5819fc..4df6464 100644
--- a/Makefile
+++ b/Makefile
@@ -297,7 +297,7 @@ LINUXINCLUDE    := -Iinclude \
                    -include include/generated/autoconf.h \
                    -include $(srctree)/include/linux/kconfig.h
 
-CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
+CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ -fno-builtin -ffreestanding
 
 CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
                    -fno-strict-aliasing -fno-common -Os -pipe
@@ -315,6 +315,7 @@ export CPP AR NM STRIP OBJCOPY OBJDUMP MAKE AWK GENKSYMS PERL UTS_MACHINE
 export HOSTCXX HOSTCXXFLAGS LDFLAGS_MODULE CHECK CHECKFLAGS
 
 export CPPFLAGS NOSTDINC_FLAGS LINUXINCLUDE OBJCOPYFLAGS LDFLAGS
+export AFLAGS_LINUXINCLUDE
 export CFLAGS CFLAGS_KERNEL
 export AFLAGS AFLAGS_KERNEL
 
@@ -1212,7 +1213,7 @@ quiet_cmd_rmfiles = $(if $(wildcard $(rm-files)),CLEAN   $(wildcard $(rm-files))
 
 
 a_flags = -Wp,-MD,$(depfile) $(AFLAGS) $(AFLAGS_KERNEL) \
-	  $(NOSTDINC_FLAGS) $(CPPFLAGS) \
+	  $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(AFLAGS_LINUXINCLUDE) $(CPPFLAGS) \
 	  $(modkern_aflags) $(EXTRA_AFLAGS) $(AFLAGS_$(basetarget).o)
 
 quiet_cmd_as_o_S = AS      $@
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index b98d6b8..100a3c4 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -47,7 +47,8 @@ AFLAGS_THUMB2	:=$(CFLAGS_THUMB2) -Wa$(comma)-mthumb
 endif
 
 CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) -msoft-float $(CFLAGS_THUMB2)
-AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
+AFLAGS_LINUXINCLUDE += -include asm/unified.h
+AFLAGS   += -msoft-float $(AFLAGS_THUMB2)
 
 # Machine directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
@@ -166,9 +167,9 @@ board-$(CONFIG_MACH_SABRESD)			:= freescale-mx6-sabresd
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
-CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
+LINUXINCLUDE += $(patsubst %,-I%include,$(machdirs))
 else
-CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
+LINUXINCLUDE += $(patsubst %,-I$(srctree)/%include,$(machdirs))
 endif
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 3c565a4..cd83f06 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -81,9 +81,9 @@ board-$(CONFIG_BOARD_RZX50)	:= rzx50
 machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
-CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
+LINUXINCLUDE += $(patsubst %,-I%include,$(machdirs))
 else
-CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
+LINUXINCLUDE += $(patsubst %,-I$(srctree)/%include,$(machdirs))
 endif
 
 ifeq ($(incdir-y),)
@@ -98,9 +98,9 @@ BOARD :=
 endif
 
 ifeq ($(KBUILD_SRC),)
-CPPFLAGS += -I$(BOARD)/include
+LINUXINCLUDE += -I$(BOARD)/include
 else
-CPPFLAGS += -I$(srctree)/$(BOARD)/include
+LINUXINCLUDE += -I$(srctree)/$(BOARD)/include
 endif
 
 ifneq ($(machine-y),)
diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index f0322a2..0002bc7 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -31,9 +31,9 @@ endif
 machdirs := $(patsubst %,arch/ppc/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
-CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
+LINUXINCLUDE += $(patsubst %,-I%include,$(machdirs))
 else
-CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
+LINUXINCLUDE += $(patsubst %,-I$(srctree)/%include,$(machdirs))
 endif
 
 archprepare: maketools
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 596c8f8..061f2a0 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -25,9 +25,9 @@ CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
-CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
+LINUXINCLUDE += $(patsubst %,-I%include,$(machdirs))
 else
-CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
+LINUXINCLUDE += $(patsubst %,-I$(srctree)/%include,$(machdirs))
 endif
 
 SUBARCH := $(shell uname -m | sed -e s/i.86/i386/ -e s/sun4u/sparc64/ \
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 518b37f..1d933b8 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -17,9 +17,9 @@ endif
 machdirs := $(patsubst %,arch/x86/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
-CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
+LINUXINCLUDE += $(patsubst %,-I%include,$(machdirs))
 else
-CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
+LINUXINCLUDE += $(patsubst %,-I$(srctree)/%include,$(machdirs))
 endif
 
 ifneq ($(board-y),)
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 871c44b..7bb769b 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -130,16 +130,21 @@ __a_flags	=                          $(call flags,_a_flags)
 __cpp_flags     =                          $(call flags,_cpp_flags)
 endif
 
-c_flags        = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(CPPFLAGS) \
+___c_flags        = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(CPPFLAGS) \
 		 $(__c_flags) $(modkern_cflags) \
 		 -D"KBUILD_STR(s)=\#s" $(basename_flags) $(modname_flags)
 
-a_flags        = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(CPPFLAGS) \
+___a_flags        = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(CPPFLAGS) \
 		 $(__a_flags) $(modkern_aflags)
 
-cpp_flags      = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(__cpp_flags)
+___cpp_flags      = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(__cpp_flags)
 
-ld_flags       = $(LDFLAGS) $(EXTRA_LDFLAGS)
+___ld_flags       = $(LDFLAGS) $(EXTRA_LDFLAGS)
+
+c_flags        = $(LINUXINCLUDE) $(___c_flags)
+a_flags        = $(LINUXINCLUDE) $(AFLAGS_LINUXINCLUDE) $(___a_flags)
+cpp_flags      = $(LINUXINCLUDE) $(___cpp_flags)
+ld_flags       = $(___ld_flags)
 
 # Finds the multi-part object the current object will be linked into
 modname-multi = $(sort $(foreach m,$(multi-used),\
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
