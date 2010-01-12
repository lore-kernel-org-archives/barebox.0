Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NUdrz-0007H3-FN
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 10:21:07 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrs-0006WK-39
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:56 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrs-00072t-0m
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:56 +0100
Message-Id: <20100112102055.910948506@pengutronix.de>
References: <20100112101534.868276907@pengutronix.de>
Date: Tue, 12 Jan 2010 11:15:47 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Content-Disposition: inline; filename=add_linux16_command.diff
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
Subject: [PATCHv2 13/14] Add a special command to load and start a bzImage on
	x86
To: barebox@lists.infradead.org

Other architectures are supporting the uImage format used by barebox's 'bootm'
command. x86 does'nt. So, we need a special command to be able to boot the
x86 specific bzImage format.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 Documentation/commands.dox    |    2 
 arch/x86/include/asm/syslib.h |    4 
 arch/x86/lib/Makefile         |    1 
 arch/x86/lib/linux_start.S    |   75 ++++++++
 commands/Kconfig              |    8 
 commands/Makefile             |    1 
 commands/linux16.c            |  363 ++++++++++++++++++++++++++++++++++++++++++
 7 files changed, 453 insertions(+), 1 deletion(-)

Index: barebox-2009.12.0/commands/Kconfig
===================================================================
--- barebox-2009.12.0.orig/commands/Kconfig
+++ barebox-2009.12.0/commands/Kconfig
@@ -219,6 +219,14 @@ config CMD_BOOTU
 	   compile in the 'bootu' command to start raw (uncompressed)
 	   Linux images
 
+config CMD_LINUX16
+	tristate
+	default y if X86
+	prompt "linux16"
+	help
+	  Compile the linux16 command to be able to boot bzImages
+	  via real mode.
+
 config CMD_RESET
 	tristate
 	prompt "reset"
Index: barebox-2009.12.0/commands/Makefile
===================================================================
--- barebox-2009.12.0.orig/commands/Makefile
+++ barebox-2009.12.0/commands/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
+obj-$(CONFIG_CMD_LINUX16)	+= linux16.o
 obj-$(CONFIG_CMD_LOADB)		+= loadb.o xyzModem.o
 obj-$(CONFIG_CMD_LOADY)		+= loadb.o xyzModem.o
 obj-$(CONFIG_CMD_LOADS)		+= loads.o
Index: barebox-2009.12.0/commands/linux16.c
===================================================================
--- /dev/null
+++ barebox-2009.12.0/commands/linux16.c
@@ -0,0 +1,363 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
+ *
+ * In parts from the GRUB2 project:
+ *
+ *  GRUB  --  GRand Unified Bootloader
+ *  Copyright (C) 1999,2000,2001,2002,2003,2004,2005,2007,2008  Free Software Foundation, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <command.h>
+#include <environment.h>
+#include <fs.h>
+#include <errno.h>
+#include <malloc.h>
+#include <asm/syslib.h>
+
+/** FIXME */
+#define LINUX_MAGIC_SIGNATURE       0x53726448      /* "HdrS" */
+
+/** FIXME */
+#define LINUX_FLAG_BIG_KERNEL       0x1
+
+/** FIXME */
+#define LINUX_BOOT_LOADER_TYPE      0x72
+
+/** FIXME */
+#define LINUX_DEFAULT_SETUP_SECTS	4
+
+/** FIXME */
+#define LINUX_MAX_SETUP_SECTS		64
+
+/** FIXME */
+#define LINUX_OLD_REAL_MODE_SEGMT	0x9000
+
+/** FIXME */
+#define LINUX_OLD_REAL_MODE_ADDR	(LINUX_OLD_REAL_MODE_SEGMT << 4)
+
+/** FIXME */
+#define LINUX_HEAP_END_OFFSET		(LINUX_OLD_REAL_MODE_SEGMT - 0x200)
+
+/** FIXME */
+#define LINUX_FLAG_CAN_USE_HEAP		0x80
+
+/** Define kernel command lines's start offset in the setup segment */
+#define LINUX_CL_OFFSET			0x9000
+
+/** Define kernel command lines's end offset */
+#define LINUX_CL_END_OFFSET		0x90FF
+
+/** FIXME */
+#define LINUX_CL_MAGIC			0xA33F
+
+/** FIXME */
+#define LINUX_SETUP_MOVE_SIZE		0x9100
+
+/** Sector size */
+#define DISK_SECTOR_BITS		9
+#define DISK_SECTOR_SIZE		0x200
+
+/** Where to load a bzImage */
+#define LINUX_BZIMAGE_ADDR		0x100000
+
+struct linux_kernel_header {
+	/* first sector of the image */
+	uint8_t code1[0x0020];
+	uint16_t cl_magic;		/**< Magic number 0xA33F */
+	uint16_t cl_offset;		/**< The offset of command line */
+	uint8_t code2[0x01F1 - 0x0020 - 2 - 2];
+	uint8_t setup_sects;		/**< The size of the setup in sectors */
+	uint16_t root_flags;		/**< If the root is mounted readonly */
+	uint16_t syssize;		/**< obsolete */
+	uint16_t swap_dev;		/**< obsolete */
+	uint16_t ram_size;		/**< obsolete */
+	uint16_t vid_mode;		/**< Video mode control */
+	uint16_t root_dev;		/**< Default root device number */
+	uint16_t boot_flag;		/**< 0xAA55 magic number */
+
+	/* second sector of the image */
+	uint16_t jump;			/**< Jump instruction (this is code!) */
+	uint32_t header;		/**< Magic signature "HdrS" */
+	uint16_t version;		/**< Boot protocol version supported */
+	uint32_t realmode_swtch;	/**< Boot loader hook */
+	uint16_t start_sys;		/**< The load-low segment (obsolete) */
+	uint16_t kernel_version;	/**< Points to kernel version string */
+	uint8_t type_of_loader;		/**< Boot loader identifier */
+#define LINUX_LOADER_ID_LILO		0x0
+#define LINUX_LOADER_ID_LOADLIN		0x1
+#define LINUX_LOADER_ID_BOOTSECT	0x2
+#define LINUX_LOADER_ID_SYSLINUX	0x3
+#define LINUX_LOADER_ID_ETHERBOOT	0x4
+#define LINUX_LOADER_ID_ELILO		0x5
+#define LINUX_LOADER_ID_GRUB		0x7
+#define LINUX_LOADER_ID_UBOOT		0x8
+#define LINUX_LOADER_ID_XEN		0x9
+#define LINUX_LOADER_ID_GUJIN		0xa
+#define LINUX_LOADER_ID_QEMU		0xb
+	uint8_t loadflags;		/**< Boot protocol option flags */
+	uint16_t setup_move_size;	/**< Move to high memory size */
+	uint32_t code32_start;		/**< Boot loader hook */
+	uint32_t ramdisk_image;		/**< initrd load address */
+	uint32_t ramdisk_size;		/**< initrd size */
+	uint32_t bootsect_kludge;	/**< obsolete */
+	uint16_t heap_end_ptr;		/**< Free memory after setup end */
+	uint8_t ext_loader_ver;		/**< boot loader's extension of the version number */
+	uint8_t ext_loader_type;	/**< boot loader's extension of its type */
+	char *cmd_line_ptr;		/**< Points to the kernel command line */
+	uint32_t initrd_addr_max;	/**< Highest address for initrd */
+#if 0
+	/* for the records only. These members are defined in
+	 * more recent Linux kernels
+	 */
+	uint32_t kernel_alignment;	/**< Alignment unit required by the kernel */
+	uint8_t relocatable_kernel;	/** */
+	uint8_t min_alignment;		/** */
+	uint32_t cmdline_size;		/** */
+	uint32_t hardware_subarch;	/** */
+	uint64_t hardware_subarch_data;	/** */
+	uint32_t payload_offset;	/** */
+	uint32_t payload_length;	/** */
+	uint64_t setup_data;		/** */
+	uint64_t pref_address;		/** */
+	uint32_t init_size;		/** */
+#endif
+} __attribute__ ((packed));
+
+/**
+ * Load an x86 Linux kernel bzImage and start it
+ * @param cmdtp FIXME
+ * @param argc parameter count
+ * @param argv list of parameter
+ *
+ * Loads an x86 bzImage, checks for its integrity, stores the two parts
+ * (setup = 'real mode code' and kernel = 'protected mode code') to their
+ * default locations, switches back to real mode and runs the setup code.
+ */
+static int do_linux16(cmd_tbl_t *cmdtp, int argc, char *argv[])
+{
+	struct linux_kernel_header *lh = NULL;
+	int rc;
+	unsigned setup_sects;
+	unsigned real_mode_size;
+	size_t image_size;
+	const char *cmdline = getenv("bootargs");
+
+	if (argc < 2) {
+		perror("linux16");
+		return 1;
+	}
+
+	lh = read_file(argv[1], &image_size);
+	if (lh == NULL) {
+		printf("Cannot read file '%s'\n", argv[1]);
+		return 1;
+	}
+
+	if (lh->boot_flag != 0xaa55) {
+		printf("File '%s' has invalid magic number\n", argv[1]);
+		rc = 1;
+		goto on_error;
+	}
+
+	if (lh->setup_sects > LINUX_MAX_SETUP_SECTS) {
+		printf("File '%s' contains too many setup sectors\n", argv[1]);
+		rc = 1;
+		goto on_error;
+	}
+
+	setup_sects = lh->setup_sects;
+
+	printf("Found a %d.%d image header\n", lh->version >> 8, lh->version & 0xFF);
+
+	if (lh->header == LINUX_MAGIC_SIGNATURE && lh->version >= 0x0200) {
+		/* kernel is recent enough */
+		;
+		if (!(lh->loadflags & LINUX_FLAG_BIG_KERNEL)) {
+			printf("Cannot load a classic zImage. Use a bzImage instead\n");
+			goto on_error;
+		}
+		lh->type_of_loader = LINUX_BOOT_LOADER_TYPE;	/* TODO */
+
+		if (lh->version >= 0x0201) {
+			lh->heap_end_ptr = LINUX_HEAP_END_OFFSET;
+			lh->loadflags |= LINUX_FLAG_CAN_USE_HEAP;
+		}
+
+		if (lh->version >= 0x0202)
+			lh->cmd_line_ptr = (void*)(LINUX_OLD_REAL_MODE_ADDR + LINUX_CL_OFFSET);	/* FIXME */
+		else {
+			lh->cl_magic = LINUX_CL_MAGIC;
+			lh->cl_offset = LINUX_CL_OFFSET;
+			lh->setup_move_size = LINUX_SETUP_MOVE_SIZE;
+		}
+	} else {
+		printf("Kernel too old to handle\n");
+		rc = 1;
+		goto on_error;
+	}
+
+	if (strlen(cmdline) >= (LINUX_CL_END_OFFSET -  LINUX_CL_OFFSET)) {
+		printf("Kernel command line exceeds the available space\n");
+		rc = 1;
+		goto on_error;
+	}
+
+	/* If SETUP_SECTS is not set, set it to the default.  */
+	if (setup_sects == 0) {
+		printf("Fixing setup sector count\n");
+		setup_sects = LINUX_DEFAULT_SETUP_SECTS;
+	}
+
+	if (setup_sects >= 15) {
+		void *src = lh;
+		if (lh->kernel_version != 0)
+			printf("Kernel version: '%s'\n", src + lh->kernel_version + DISK_SECTOR_SIZE);
+	}
+
+	/*
+	 * Size of the real mode part to handle in a separate way
+	 */
+	real_mode_size = (setup_sects << DISK_SECTOR_BITS) + DISK_SECTOR_SIZE;
+
+	/*
+	 *                real mode space                     hole            extended memory
+	 * |---------------------------------------------->|----------->|------------------------------>
+	 * 0                                            0xa0000     0x100000
+	 *  <-1-|----------2-----------><-3-   |
+	 *    0x7e00                        0x90000
+	 *                                <-4--|-5-->                   |---------6------------->
+	 *
+	 * 1) real mode stack
+	 * 2) barebox code
+	 * 3) flat mode stack
+	 * 4) realmode stack when starting a Linux kernel
+	 * 5) Kernel's real mode setup code
+	 * 6) compressed kernel image
+	 */
+	/*
+	 * Parts of the image we know:
+	 * - real mode part
+	 * - kernel payload
+	 */
+	/*
+	 * NOTE: This part is dangerous, as it copies some image content to
+	 * various locations in the main memory. This could overwrite important
+	 * data of the running barebox (hopefully not)
+	 */
+	/* copy the real mode part of the image to the 9th segment */
+	memcpy((void*)LINUX_OLD_REAL_MODE_ADDR, lh, LINUX_SETUP_MOVE_SIZE);
+
+	/* TODO add 'BOOT_IMAGE=<file>' and 'auto' if no user intervention was done (in front of all other params) */
+	/* copy also the command line into this area */
+	memcpy((void*)(LINUX_OLD_REAL_MODE_ADDR + LINUX_CL_OFFSET), cmdline, strlen(cmdline) + 1);
+	printf("Using kernel command line: '%s'\n", cmdline);
+
+	/* copy the compressed image part to its final address the setup code expects it
+	 * Note: The protected mode part starts at offset (setup_sects + 1) * 512
+	 */
+	memcpy((void*)LINUX_BZIMAGE_ADDR, ((void*)lh) + real_mode_size, image_size - real_mode_size);
+
+	/*
+	 * switch back to real mode now and start the real mode part of the
+	 * image at address "(LINUX_OLD_REAL_MODE_ADDR >> 4) + 0x20:0x0000"
+	 * which means "0x9020:0x000" -> 0x90200
+	 */
+	bios_start_linux(LINUX_OLD_REAL_MODE_SEGMT);	/* does not return */
+
+on_error:
+	if (lh != NULL)
+		free(lh);
+
+	return rc;
+}
+
+static const __maybe_unused char cmd_linux16_help[] =
+"Usage: linux16 <file>\n"
+"Boot a linux kernel via real mode code\n";
+
+
+BAREBOX_CMD_START(linux16)
+	.cmd		= do_linux16,
+	.usage		= "boot linux kernel",
+	BAREBOX_CMD_HELP(cmd_linux16_help)
+BAREBOX_CMD_END
+
+/**
+ * @file
+ * @brief Boot support for Linux on x86
+ */
+
+/**
+ * @page linux16_command linux16: Boot a bzImage kernel on x86
+ *
+ * Usage is: linux16 \<file\>
+ *
+ * Boot a linux kernel via real mode code. Only kernel images in the
+ * @p bzImage format are supported.
+ */
+
+/**
+ * @page x86_boot_preparation Linux Preparation on x86
+ *
+ * Due to some real mode constraints, starting Linux is somehow tricky.
+ * Currently only @p bzImages are supported, because @p zImages would
+ * interfere with the @a barebox runtime.
+ * Also older load header versions than 2.00 aren't supported.
+ *
+ * The memory layout immediately before starting the Linux kernel:
+ *
+@verbatim
+                  real mode space                     hole            extended memory
+   |---------------------------------------------->|----------->|------------------------------>
+   0  0x7e00                        0x90000     0xa0000     0x100000
+    <-1-|----------2-----------><-3-   |
+                                  <-4--|-5-->                   |---------6------------->
+@endverbatim
+ *
+ * @li 1 = @a barebox's real mode stack
+ * @li 2 = @a barebox's code
+ * @li 3 = @a barebox's flat mode stack
+ * @li 4 = real mode stack, when starting the Linux kernel
+ * @li 5 = Kernel's real mode setup code
+ * @li 6 = compressed kernel image
+ *
+ * A more detailed memory layout for kernel's real mode setup code
+ *
+@verbatim
+
+   0x90000                                    0x97fff   0x99000              0x990ff
+   ---|------------------------------------------|----------------|--------------------|
+      |<-------- max setup code size ----------->|<--heap/stack-->|<-- command line -->|
+
+@endverbatim
+ *
+ * The regular entry point into the setup code is 0x90200 (2nd sector)
+ *
+ * To start the kernel, it's own setup code will be called. To do so, it
+ * must be called in real mode. So, @a barebox switches back to real mode
+ * a last time and does a jump to the setup code entry point. Now its up to
+ * the setup code to deflate the kernel, switching to its own protected mode
+ * setup and starting the kernel itself.
+ *
+ * @note This scenario only works, if a BIOS is still present. In this case
+ * there is no need for @a barebox to forward any system related information
+ * to the kernel. Everything is detected by kernel's setup code.
+ *
+ */
Index: barebox-2009.12.0/arch/x86/include/asm/syslib.h
===================================================================
--- barebox-2009.12.0.orig/arch/x86/include/asm/syslib.h
+++ barebox-2009.12.0/arch/x86/include/asm/syslib.h
@@ -27,3 +27,7 @@ extern int bios_disk_rw_int13_extensions
 extern uint16_t bios_get_memsize(void);
 
 #endif
+
+#ifdef CONFIG_CMD_LINUX16
+extern void bios_start_linux(unsigned) __attribute__((regparm(1)));
+#endif
Index: barebox-2009.12.0/arch/x86/lib/Makefile
===================================================================
--- barebox-2009.12.0.orig/arch/x86/lib/Makefile
+++ barebox-2009.12.0/arch/x86/lib/Makefile
@@ -6,3 +6,4 @@ obj-y += gdt.o
 obj-$(CONFIG_X86_BIOS_BRINGUP) += memory16.o
 obj-$(CONFIG_X86_BIOS_BRINGUP) += traveler.o
 obj-$(CONFIG_X86_BIOS_BRINGUP) += bios_disk.o
+obj-$(CONFIG_CMD_LINUX16) += linux_start.o
Index: barebox-2009.12.0/arch/x86/lib/linux_start.S
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/lib/linux_start.S
@@ -0,0 +1,75 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
+ *
+ * Mostly stolen from the GRUB2 project
+ *  Copyright (C) 1999,2000,2001,2002,2003,2004,2005,2006,2007,2008  Free Software Foundation, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/**
+ * @file
+ * @brief Start the Linux real mode setup code
+ *
+ * Note: These functions are running in flat and real mode. Due to some
+ * other restrictions these routines must running from an address
+ * space below 0x10000
+ */
+
+/*
+ *   void bios_start_linux(unsigned segment)
+ *
+ */
+#ifndef DOXYGEN_SHOULD_SKIP_THIS
+
+	.section .boot.text.bios_start_linux, "ax"
+	.code32
+	.globl bios_start_linux
+	.type bios_start_linux, @function
+
+	.extern prot_to_real
+
+bios_start_linux:
+	/* 'prot_to_real' eats our eax content */
+	movl %eax, %ebx
+	addl $0x20, %eax
+	movw %ax, setup_seg
+
+	call prot_to_real
+
+	.code16
+
+	cli
+	/* all segment registers are using the same segment */
+	movw %bx, %ss
+	movw %bx, %ds
+	movw %bx, %es
+	movw %bx, %fs
+	movw %bx, %gs
+
+	/* stack for the setup code (end of heap) */
+	movw $0x9000, %sp
+
+	/* do an 'ljmp' and never return */
+	.byte	0xea
+	.word	0
+setup_seg:
+	.word	0
+
+	.code32
+
+#endif
Index: barebox-2009.12.0/Documentation/commands.dox
===================================================================
--- barebox-2009.12.0.orig/Documentation/commands.dox
+++ barebox-2009.12.0/Documentation/commands.dox
@@ -20,5 +20,5 @@
 @li @subpage setenv_command
 @li @subpage sh_command
 @li @subpage unprotect_command
-
+@li @subpage linux16_command
 */

-- 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
