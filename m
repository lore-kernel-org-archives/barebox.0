Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NUdrz-0007H9-M3
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 10:21:05 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrs-0006WN-8n
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:56 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrs-00073K-6k
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:56 +0100
Message-Id: <20100112102056.083255566@pengutronix.de>
References: <20100112101534.868276907@pengutronix.de>
Date: Tue, 12 Jan 2010 11:15:48 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Content-Disposition: inline; filename=add_x86_architecture.diff
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
Subject: [PATCHv2 14/14] Add the whole x86 architecture to the build system
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 arch/x86/Kconfig  |   67 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/x86/Makefile |   50 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 117 insertions(+)

Index: barebox-2009.12.0/arch/x86/Kconfig
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/Kconfig
@@ -0,0 +1,67 @@
+#
+#
+#
+config ARCH_TEXT_BASE
+	hex
+	default 0x00007c00 if MACH_X86_GENERIC
+
+config BOARDINFO
+	default "Generic x86 bootloader" if MACH_X86_GENERIC
+
+config BOARD_LINKER_SCRIPT
+	bool
+	default n
+
+config GENERIC_LINKER_SCRIPT
+	bool
+	default y
+	depends on !BOARD_LINKER_SCRIPT
+
+config X86
+	bool
+	select HAS_KALLSYMS
+	select HAS_MODULES
+	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
+	select HAVE_CONFIGURABLE_TEXT_BASE
+	default y
+
+choice
+	prompt "Select your board"
+
+config MACH_X86_GENERIC
+	bool "Generic x86"
+	select X86_BOOTLOADER
+	help
+	  Say Y here if you want barebox to be your BIOS based bootloader
+
+endchoice
+
+choice
+	prompt "Bring up type"
+
+	config X86_BIOS_BRINGUP
+		prompt "16 bit BIOS"
+		bool
+		help
+		   Barebox will act as a BIOS based bootloader. This includes
+		   some 16 bit real mode code and some restrictions everyone knows
+		   from BIOS based systems.
+
+	config X86_NATIVE_BRINGUP
+		bool "native"
+		help
+		   Barebox will act as a native bootloader. This includes all the
+		   required initialization needed to bring up a piece of hardware.
+		   Note: Not implemented yet
+
+endchoice
+
+source arch/x86/boot/Kconfig
+source arch/x86/mach-i386/Kconfig
+
+source common/Kconfig
+source commands/Kconfig
+source net/Kconfig
+source drivers/Kconfig
+source fs/Kconfig
+source lib/Kconfig
Index: barebox-2009.12.0/arch/x86/Makefile
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/Makefile
@@ -0,0 +1,50 @@
+CPPFLAGS += -D__X86__ -fno-strict-aliasing
+
+board-y := x86_generic
+machine-y := i386
+
+TEXT_BASE = $(CONFIG_TEXT_BASE)
+
+CPPFLAGS += -march=i386 -DTEXT_BASE=$(TEXT_BASE) -P
+
+ifndef CONFIG_MODULES
+# Add cleanup flags
+CPPFLAGS += -fdata-sections -ffunction-sections
+LDFLAGS_uboot += -static --gc-sections
+endif
+
+ifeq ($(incdir-y),)
+incdir-y := $(machine-y)
+endif
+INCDIR   := arch-$(incdir-y)
+
+all: $(KBUILD_IMAGE)
+
+
+
+
+
+
+ifneq ($(board-y),)
+BOARD  := board/$(board-y)/
+else
+BOARD  :=
+endif
+
+ifneq ($(machine-y),)
+MACH  := arch/x86/mach-$(machine-y)/
+else
+MACH  :=
+endif
+
+common-y += $(BOARD) $(MACH)
+common-y += arch/x86/lib/
+common-y += arch/x86/boot/
+
+# arch/x86/cpu/
+
+lds-$(CONFIG_GENERIC_LINKER_SCRIPT)   := arch/x86/lib/barebox.lds
+lds-$(CONFIG_BOARD_LINKER_SCRIPT)     := $(BOARD)/barebox.lds
+
+CLEAN_FILES    += arch/x86/lib/barebox.lds barebox.map barebox.S
+

-- 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
