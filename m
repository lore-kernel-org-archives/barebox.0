Delivery-date: Thu, 05 Jun 2025 13:37:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uP-003zmR-2W
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:37:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uM-0000lW-G4
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:37:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=avEJXgPBgTb+gX6IM9Z/EIZIgBdSxPEQVO2CGPye+8E=; b=o/PtA8WvadHhLADuwuPCAU3hw6
	3MALzBNf3HQsGoQtpAUW4M3evqUZA7Df8vDVaCPWmyEEVT3pzWRepSC9MKQSJ2QJFzsE8nso/XEcP
	RlHsU+bVJTaO8a6tXZIZT66NKaBQYDsbaRPvIxLB1OFOwYDj9AYNL3qHjlt69dM+vnEoASEgk3nb5
	EMQMX32Bd0F2kVSh7PZjoVjbOC5gZnSIhOrquaO7PFnA5U3kBMfmhX+7eLTRm0IMPLecJgY4Y/xui
	ImwWja1mg8MMdSyjVmR5NXBtK6Yu4SHQ3Bq8EcbasjoV0y90aCtCcLlBFDbL++BSbTPddLimtVYil
	qnK/1N7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8td-0000000FNQW-3wnA;
	Thu, 05 Jun 2025 11:36:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8sg-0000000FN84-2cN2
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:35:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-0007NC-Cy; Thu, 05 Jun 2025 13:35:33 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-001wzn-0d;
	Thu, 05 Jun 2025 13:35:33 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-008mT4-2M;
	Thu, 05 Jun 2025 13:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:17 +0200
Message-Id: <20250605113530.2076990-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043534_975162_F81F476D 
X-CRM114-Status: GOOD (  22.56  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/21] sandbox: switch to using PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The approach we inherited from Linux um doesn't scale well, because it
requires us to mask via macro every symbol that we define that clashes
with an external library and there are a lot of them in barebox due to
the minimal UNIX-like libc we have.

This clashing symbols are all in barebox proper, so by enabling PBL, we
can just leave PBL access to external symbols and link barebox proper,
so it has no references to external symbols.

That way we only need to list functions that are called between PBL and
proper and if we don't we get an error message.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile                                      | 16 ++++-
 arch/sandbox/Kconfig                          |  4 ++
 arch/sandbox/Makefile                         | 70 +++++++++----------
 arch/sandbox/board/.gitignore                 |  3 -
 arch/sandbox/board/Makefile                   |  2 -
 arch/sandbox/include/asm/barebox-sandbox.h    | 10 +++
 arch/sandbox/lib/.gitignore                   |  3 +
 arch/sandbox/lib/Makefile                     |  2 +-
 .../{board/barebox.lds.S => lib/pbl.lds.S}    |  0
 arch/sandbox/os/Makefile                      | 18 ++---
 arch/sandbox/os/common.c                      |  3 +-
 arch/sandbox/{lib => os}/unwind.c             |  3 +-
 arch/x86/um/Makefile                          |  4 +-
 common/Kconfig                                |  2 +-
 images/.gitignore                             |  1 +
 images/Makefile                               |  1 +
 images/Makefile.sandbox                       | 14 ++++
 pbl/Kconfig                                   |  2 +-
 18 files changed, 99 insertions(+), 59 deletions(-)
 create mode 100644 arch/sandbox/include/asm/barebox-sandbox.h
 create mode 100644 arch/sandbox/lib/.gitignore
 rename arch/sandbox/{board/barebox.lds.S => lib/pbl.lds.S} (100%)
 rename arch/sandbox/{lib => os}/unwind.c (88%)
 create mode 100644 images/Makefile.sandbox

diff --git a/Makefile b/Makefile
index 8fbe9e9622c2..6f8e1a312060 100644
--- a/Makefile
+++ b/Makefile
@@ -929,6 +929,7 @@ quiet_cmd_sysmap = SYSMAP  System.map
 # If CONFIG_KALLSYMS is set .version is already updated
 # Generate System.map and verify that the content is consistent
 # Use + in front of the barebox_version rule to silent warning with make -j2
+ifndef rule_barebox__
 define rule_barebox__
 	$(if $(CONFIG_KALLSYMS),,+$(call cmd,barebox_version))
 	$(call cmd,barebox__)
@@ -936,6 +937,7 @@ define rule_barebox__
 	$(call cmd,prelink__)
 	$(call cmd,sysmap)
 endef
+endif
 
 ifdef CONFIG_KALLSYMS
 # Generate section listing all symbols and add it into barebox $(kallsyms.o)
@@ -1050,6 +1052,18 @@ barebox.fit: images/barebox-$(CONFIG_ARCH_LINUX_NAME).fit
 barebox.srec: barebox
 	$(OBJCOPY) -O srec $< $@
 
+quiet_cmd_barebox_proper__ = CC      $@
+      cmd_barebox_proper__ = $(CC) -r -o $@ -Wl,--whole-archive $(BAREBOX_OBJS)
+
+.tmp_barebox.o: $(BAREBOX_OBJS) $(kallsyms.o) FORCE
+	$(if $(CONFIG_KALLSYMS),,+$(call cmd,barebox_version))
+	$(call cmd,barebox_proper__)
+	$(Q)echo 'savedcmd_$@ := $(cmd_barebox_proper__)' > $(@D)/.$(@F).cmd
+	$(Q)rm -f .old_version
+
+barebox.o: .tmp_barebox.o FORCE
+	$(call if_changed,objcopy)
+
 # The actual objects are generated when descending,
 # make sure no implicit rule kicks in
 $(sort $(BAREBOX_OBJS)) $(BAREBOX_LDS) $(BAREBOX_PBL_OBJS): $(barebox-dirs) ;
@@ -1269,7 +1283,7 @@ CLEAN_DIRS  += $(MODVERDIR)
 CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map \
 		.tmp_kallsyms* barebox.ldr compile_commands.json \
-		barebox-flash-image \
+		.tmp_barebox.o barebox.o barebox-flash-image \
 		barebox.srec barebox.s5p barebox.ubl \
 		barebox.uimage \
 		barebox.efi barebox.canon-a1100.bin
diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index b48eb29c7db4..4eebca6748b3 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -21,6 +21,10 @@ config SANDBOX
 	select ARCH_WANT_FRAME_POINTERS
 	select BAREBOX_CMDLINE
 	select HAVE_ARCH_BOOTM_OFTREE
+	select HAVE_PBL_IMAGE
+	select HAVE_PBL_MULTI_IMAGES
+	select PBL_IMAGE_NO_PIGGY
+	select PBL_CLOCKSOURCE if COMPILE_TEST
 	default y
 
 config ARCH_LINUX_NAME
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index dbdf8a6e8117..2db1cb648a2b 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -17,7 +17,6 @@ machine-y := sandbox
 
 board-y := arch/sandbox/board
 BOARD	:= $(board-y)/
-lds-y   := $(BOARD)/barebox.lds
 
 HEADER_ARCH 	:= $(SUBARCH)
 HOST_DIR := arch/$(HEADER_ARCH)
@@ -29,28 +28,12 @@ common-y += $(HOST_DIR)/um/
 KBUILD_CPPFLAGS += -I$(srctree)/$(HOST_DIR)/include
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
-KBUILD_CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
-		-Dmalloc_stats=barebox_malloc_stats -Dmemalign=barebox_memalign \
-		-Dmalloc_usable_size=barebox_malloc_usable_size \
-		-Dfree=barebox_free -Drealloc=barebox_realloc \
-		-Dbrk=barebox_brk -Dsbrk=barebox_sbrk \
-		-Dread=barebox_read -Dwrite=barebox_write \
-		-Dopen=barebox_open -Dclose=barebox_close \
-		-Dlseek=barebox_lseek -Dperror=barebox_perror \
-		-Derrno=barebox_errno -Dgetc=barebox_getc \
-		-Dputc=barebox_putc -Dfgetc=barebox_fgetc \
-		-Dfputc=barebox_fputc -Dfgets=barebox_fgets \
-		-Dfputs=barebox_fputs -Dsetenv=barebox_setenv \
-		-Dgetenv=barebox_getenv -Dprintf=barebox_printf \
-		-Dglob=barebox_glob -Dglobfree=barebox_globfree \
-		-Dioctl=barebox_ioctl -Dfstat=barebox_fstat \
-		-Dftruncate=barebox_ftruncate -Dasprintf=barebox_asprintf \
-		-Dopendir=barebox_opendir -Dreaddir=barebox_readdir \
-		-Dclosedir=barebox_closedir -Dreadlink=barebox_readlink \
-		-Doptarg=barebox_optarg -Doptind=barebox_optind \
-		-Dsetjmp=barebox_setjmp -Dlongjmp=barebox_longjmp \
-		-Dmkdir=barebox_mkdir -Ddirname=barebox_dirname \
-		-Dremove=barebox_remove -Dputchar=barebox_putchar
+
+SANDBOX_PBL2PROPER_GLUE_SYMS := \
+	putchar errno setjmp longjmp \
+	malloc_stats memalign malloc free realloc calloc brk sbrk
+
+KBUILD_CFLAGS += $(foreach s,$(SANDBOX_PBL2PROPER_GLUE_SYMS),-D$(s)=barebox_$(s))
 
 machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
@@ -61,25 +44,27 @@ archprepare: maketools
 
 PHONY += maketools
 
+export SANDBOX_LIBS BAREBOX_LDFLAGS
+
 ifeq ($(CONFIG_SDL),y)
-SDL_LIBS := $(shell $(CROSS_PKG_CONFIG) sdl2 --libs)
+SANDBOX_LIBS += $(shell $(CROSS_PKG_CONFIG) sdl2 --libs)
 endif
 
 ifeq ($(CONFIG_GPIO_LIBFTDI1),y)
-FTDI1_LIBS := $(shell $(CROSS_PKG_CONFIG) libftdi1 --libs)
+SANDBOX_LIBS += $(shell $(CROSS_PKG_CONFIG) libftdi1 --libs)
 endif
 
 ifeq ($(CONFIG_ASAN),y)
 KBUILD_CPPFLAGS += -fsanitize=address
-SANITIZER_LIBS += -fsanitize=address
+SANDBOX_LIBS += -fsanitize=address
 ifeq ($(CONFIG_CC_IS_CLANG),y)
 KBUILD_CPPFLAGS += -fno-sanitize-address-globals-dead-stripping
-BAREBOX_LDFLAGS += -fno-sanitize-address-globals-dead-stripping
+SANDBOX_LIBS += -fno-sanitize-address-globals-dead-stripping
 endif
 endif
 
 ifeq ($(CONFIG_UBSAN),y)
-SANITIZER_LIBS += -fsanitize=undefined
+SANDBOX_LIBS += -fsanitize=undefined
 endif
 
 ifeq ($(CONFIG_SANDBOX_LINUX_I386),y)
@@ -89,17 +74,28 @@ KBUILD_AFLAGS += -m32
 BAREBOX_LDFLAGS += -m32
 endif
 
-BAREBOX_LDFLAGS += \
-	-Wl,-T,$(BAREBOX_LDS) \
-	-Wl,--whole-archive $(BAREBOX_OBJS) -Wl,--no-whole-archive \
-	-lrt -pthread $(SDL_LIBS) $(FTDI1_LIBS) \
-	$(SANITIZER_LIBS)
-
-cmd_barebox__ = $(CC) -o $@ $(BAREBOX_LDFLAGS)
-
 common-y += $(BOARD) arch/sandbox/os/ arch/sandbox/lib/
 
-KBUILD_IMAGE := barebox
+SANDBOX_PROPER2PBL_GLUE_SYMS := \
+	strsep_unescaped start_barebox linux_get_stickypage_path \
+	stickypage mem_malloc_init \
+	barebox_register_filedev barebox_register_dtb barebox_register_console \
+	barebox_errno barebox_loglevel
+
+OBJCOPYFLAGS_barebox.o := $(addprefix --keep-global-symbol=, $(SANDBOX_PROPER2PBL_GLUE_SYMS))
+
+quiet_cmd_barebox__ = $(quiet_cmd_symlink)
+      cmd_barebox__ = ln -fsn --relative $(objtree)/images/barebox $(objtree)/barebox
+
+define rule_barebox__
+	$(call cmd,barebox__)
+	$(Q)echo 'savedcmd_$@ := $(cmd_barebox__)' > $(@D)/.$(@F).cmd
+endef
+
+all: barebox
+
+KBUILD_IMAGE := barebox.o
+BAREBOX_PROPER := $(KBUILD_IMAGE)
 
 common-$(CONFIG_OFTREE) += arch/sandbox/dts/
 
diff --git a/arch/sandbox/board/.gitignore b/arch/sandbox/board/.gitignore
index 03987a700942..e69de29bb2d1 100644
--- a/arch/sandbox/board/.gitignore
+++ b/arch/sandbox/board/.gitignore
@@ -1,3 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-barebox.lds
diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
index 2b6346f6098d..b351504f11dd 100644
--- a/arch/sandbox/board/Makefile
+++ b/arch/sandbox/board/Makefile
@@ -14,6 +14,4 @@ obj-$(CONFIG_CMD_SANDBOX_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_LED) += led.o
 bbenv-y += defaultenv-sandbox
 
-extra-y += barebox.lds
-
 obj-y += stickypage.o
diff --git a/arch/sandbox/include/asm/barebox-sandbox.h b/arch/sandbox/include/asm/barebox-sandbox.h
new file mode 100644
index 000000000000..c029f9ea0086
--- /dev/null
+++ b/arch/sandbox/include/asm/barebox-sandbox.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef __ASM_BAREBOX_SANDBOX_H__
+#define __ASM_BAREBOX_SANDBOX_H__
+
+#define ENTRY_FUNCTION(name, argc, argv) \
+	int name(int argc, char *argv[]); \
+	int name(int argc, char *argv[])
+
+#endif
diff --git a/arch/sandbox/lib/.gitignore b/arch/sandbox/lib/.gitignore
new file mode 100644
index 000000000000..03987a700942
--- /dev/null
+++ b/arch/sandbox/lib/.gitignore
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+barebox.lds
diff --git a/arch/sandbox/lib/Makefile b/arch/sandbox/lib/Makefile
index 9535305d5bfa..1c2b374603ce 100644
--- a/arch/sandbox/lib/Makefile
+++ b/arch/sandbox/lib/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-obj-$(CONFIG_ARCH_HAS_STACK_DUMP) += unwind.o
+obj- := __dummy__.o
diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/lib/pbl.lds.S
similarity index 100%
rename from arch/sandbox/board/barebox.lds.S
rename to arch/sandbox/lib/pbl.lds.S
diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index 9fb2a2ce864d..b305a142379e 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -4,7 +4,8 @@ machine-y := sandbox
 
 machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
-KBUILD_CPPFLAGS = $(patsubst %,-I$(srctree)/%include,$(machdirs))
+KBUILD_CPPFLAGS = $(patsubst %,-I$(srctree)/%include,$(machdirs)) \
+		  -I$(srctree)/arch/sandbox/include
 
 KBUILD_CPPFLAGS += -D_FILE_OFFSET_BITS=64 -include $(objtree)/include/generated/autoconf.h
 
@@ -16,12 +17,13 @@ ifeq ($(CONFIG_SANDBOX_LINUX_I386),y)
 KBUILD_CFLAGS += -m32
 endif
 
-obj-y = common.o setjmp.o
-obj-$(CONFIG_DRIVER_NET_TAP) += tap.o
-obj-$(CONFIG_MALLOC_LIBC) += libc_malloc.o
+pbl-y = common.o setjmp.o
+pbl-$(CONFIG_DRIVER_NET_TAP) += tap.o
+pbl-$(CONFIG_MALLOC_LIBC) += libc_malloc.o
+pbl-$(CONFIG_ARCH_HAS_STACK_DUMP) += unwind.o
 
-CFLAGS_sdl.o = $(shell $(CROSS_PKG_CONFIG) sdl2 --cflags)
-obj-$(CONFIG_SDL) += sdl.o
+CFLAGS_sdl.pbl.o = $(shell $(CROSS_PKG_CONFIG) sdl2 --cflags)
+pbl-$(CONFIG_SDL) += sdl.o
 
-CFLAGS_ftdi.o = $(shell $(CROSS_PKG_CONFIG) libftdi1 --cflags)
-obj-$(CONFIG_GPIO_LIBFTDI1) += ftdi.o
+CFLAGS_ftdi.pbl.o = $(shell $(CROSS_PKG_CONFIG) libftdi1 --cflags)
+pbl-$(CONFIG_GPIO_LIBFTDI1) += ftdi.o
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index ef39f5336d60..3dbe61791ccd 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -46,6 +46,7 @@
  */
 #include <mach/linux.h>
 #include <mach/hostfile.h>
+#include <asm/barebox-sandbox.h>
 
 #ifdef CONFIG_CONSOLE_NONE
 int __attribute__((unused)) barebox_loglevel;
@@ -534,7 +535,7 @@ static struct option long_options[] = {
 
 static const char optstring[] = "hm:i:c:e:d:O:I:B:x:y:";
 
-int main(int argc, char *argv[])
+ENTRY_FUNCTION(sandbox_main, argc, argv)
 {
 	void *ram;
 	int opt, ret, fd, fd2;
diff --git a/arch/sandbox/lib/unwind.c b/arch/sandbox/os/unwind.c
similarity index 88%
rename from arch/sandbox/lib/unwind.c
rename to arch/sandbox/os/unwind.c
index f46365ac2b3b..d1608d075889 100644
--- a/arch/sandbox/lib/unwind.c
+++ b/arch/sandbox/os/unwind.c
@@ -1,10 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-only
 // Copyright 2019 Ahmad Fatoum
 
-#include <common.h>
-
 void __sanitizer_print_stack_trace(void);
 
+void dump_stack(void);
 void dump_stack(void)
 {
 	__sanitizer_print_stack_trace();
diff --git a/arch/x86/um/Makefile b/arch/x86/um/Makefile
index d3764221a4c6..fc0442b78916 100644
--- a/arch/x86/um/Makefile
+++ b/arch/x86/um/Makefile
@@ -8,5 +8,5 @@ else
 	BITS := 64
 endif
 
-AFLAGS_../lib/setjmp_$(BITS).o := -Dsetjmp=barebox_setjmp -Dlongjmp=barebox_longjmp
-obj-$(CONFIG_SANDBOX_SJLJ_ASM) += ../lib/setjmp_$(BITS).o
+AFLAGS_../lib/setjmp_$(BITS).pbl.o := -Dsetjmp=barebox_setjmp -Dlongjmp=barebox_longjmp
+pbl-$(CONFIG_SANDBOX_SJLJ_ASM) += ../lib/setjmp_$(BITS).o
diff --git a/common/Kconfig b/common/Kconfig
index fba6db3ab869..6d41b7048a32 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -965,7 +965,7 @@ config CONSOLE_DISABLE_INPUT
 	  registered as consoles.
 
 config PBL_CONSOLE
-	depends on PBL_IMAGE
+	depends on PBL_IMAGE && !SANDBOX
 	depends on !CONSOLE_NONE
 	bool "Enable console support in PBL"
 	help
diff --git a/images/.gitignore b/images/.gitignore
index 8d5bd4a410cf..20133074bf87 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -23,6 +23,7 @@
 *.mxssd
 *.csfbin
 pbl.lds
+barebox
 barebox.x
 barebox.z
 barebox.sha.bin
diff --git a/images/Makefile b/images/Makefile
index 40400a95a935..e20d11e1501a 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -176,6 +176,7 @@ include $(srctree)/images/Makefile.mvebu
 include $(srctree)/images/Makefile.mxs
 include $(srctree)/images/Makefile.omap3
 include $(srctree)/images/Makefile.rockchip
+include $(srctree)/images/Makefile.sandbox
 include $(srctree)/images/Makefile.socfpga
 include $(srctree)/images/Makefile.stm32mp
 include $(srctree)/images/Makefile.tegra
diff --git a/images/Makefile.sandbox b/images/Makefile.sandbox
new file mode 100644
index 000000000000..0699a52663ef
--- /dev/null
+++ b/images/Makefile.sandbox
@@ -0,0 +1,14 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+SYMLINK_TARGET_barebox = sandbox_main.elf
+symlink-$(CONFIG_SANDBOX) += barebox
+
+ifeq ($(CONFIG_SANDBOX),y)
+
+quiet_cmd_elf__ = LD      $@
+      cmd_elf__ = $(CC) -o $@ $(BAREBOX_LDFLAGS) \
+	-Wl,-T,$(pbl-lds) -Wl,--defsym=main=$(2) -Wl,--whole-archive \
+	$(obj)/../$(BAREBOX_PROPER) $(BAREBOX_PBL_OBJS) -Wl,--no-whole-archive \
+	-lrt -pthread $(SANDBOX_LIBS) $(LDFLAGS_$(@F))
+
+endif
diff --git a/pbl/Kconfig b/pbl/Kconfig
index e9fa35e29b19..cab9325d16e8 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -45,7 +45,7 @@ config USE_COMPRESSED_DTB
 	select XZ_DECOMPRESS if IMAGE_COMPRESSION_XZKERN
 
 config PBL_RELOCATABLE
-	depends on ARM || MIPS || RISCV
+	depends on ARM || MIPS || RISCV || SANDBOX
 	bool "relocatable pbl image"
 	help
 	  Generate a pbl binary which can relocate itself during startup to run
-- 
2.39.5



