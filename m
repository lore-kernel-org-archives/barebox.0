Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb7n9-0006c7-3F
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 08:35:31 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1Pb7n5-0001hZ-6x
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 09:35:19 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1Pb7n5-0001u8-5L
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 09:35:19 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri,  7 Jan 2011 09:35:08 +0100
Message-Id: <1294389316-6569-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1294389316-6569-1-git-send-email-jbe@pengutronix.de>
References: <1294389316-6569-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 02/10] x86: Use the generic linker script initializing
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/x86/Makefile                             |    6 ++
 arch/x86/include/asm/barebox.lds.h            |  113 -------------------------
 arch/x86/lib/barebox.lds.S                    |    2 +-
 arch/x86/mach-i386/include/mach/barebox.lds.h |   99 ++++++++++++++++++++++
 include/asm-generic/barebox.lds.h             |    2 +-
 scripts/setupmbr/setupmbr.c                   |    2 +-
 6 files changed, 108 insertions(+), 116 deletions(-)
 delete mode 100644 arch/x86/include/asm/barebox.lds.h
 create mode 100644 arch/x86/mach-i386/include/mach/barebox.lds.h

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index e607b89..3b034c0 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -19,7 +19,13 @@ all: $(KBUILD_IMAGE)
 
 
 
+machdirs := $(patsubst %,arch/x86/mach-%/,$(machine-y))
 
+ifeq ($(KBUILD_SRC),)
+CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
+else
+CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
+endif
 
 ifneq ($(board-y),)
 BOARD  := arch/x86/boards/$(board-y)/
diff --git a/arch/x86/include/asm/barebox.lds.h b/arch/x86/include/asm/barebox.lds.h
deleted file mode 100644
index 6cbf15f..0000000
--- a/arch/x86/include/asm/barebox.lds.h
+++ /dev/null
@@ -1,113 +0,0 @@
-/*
- * Copyright (C) 2009 Juergen Beisert, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- *
- */
-
-/**
- * @file
- * @brief Adapt linker script content in accordance to Kconfig settings
- */
-
-#define INITCALLS			\
-	KEEP(*(.initcall.0))			\
-	KEEP(*(.initcall.1))			\
-	KEEP(*(.initcall.2))			\
-	KEEP(*(.initcall.3))			\
-	KEEP(*(.initcall.4))			\
-	KEEP(*(.initcall.5))			\
-	KEEP(*(.initcall.6))			\
-	KEEP(*(.initcall.7))
-
-#define BAREBOX_CMDS	KEEP(*(SORT_BY_NAME(.barebox_cmd*)))
-
-#define BAREBOX_SYMS	KEEP(*(__usymtab))
-
-/**
- * Area in the MBR of the barebox basic boot code. This offset must be in
- * accordance to the 'indirect_sector_lba' label.
- */
-#define PATCH_AREA 400
-
-/**
- * Offset where to store the boot drive number (BIOS number, 1 byte)
- */
-#define PATCH_AREA_BOOT_DEV 16
-
-/**
- * Offset where to store information about the persistant environment storage
- * It points to an LBA number (8 bytes) and defines the first sector of this
- * storage on disk.
- */
-#define PATCH_AREA_PERS_START 20
-
-/**
- * Offset where to store information about the persistant environment storage
- * It points to a short number (2 bytes) and defines the sector count of this
- * storage on disk.
- */
-#define PATCH_AREA_PERS_SIZE 28
-
-/**
- * Offset where to store information about the persistant environment storage
- * drive number (BIOS number, 1 byte)
- */
-#define PATCH_AREA_PERS_DRIVE 30
-
-/**
- * Mark the persistant environment as not used
- */
-#define PATCH_AREA_PERS_SIZE_UNUSED 0x000
-
-/**
- * Mark a DAPS as unused/invalid
- */
-#define MARK_DAPS_INVALID 0x0000
-
-/**
- * Offset of the partition table in an MBR
- */
-#define OFFSET_OF_PARTITION_TABLE 446
-
-/**
- * Offset of the signature in an MBR
- */
-#define OFFSET_OF_SIGNATURE 510
-
-/**
- * Area where to store indirect sector to loop through. Keep this value
- * in accordance to the 'indirect_area' label. Note: .
- *
- * @attention These addresses are real mode ones (seg:offset)
- */
-#define INDIRECT_AREA 0x7A00
-#define INDIRECT_SEGMENT 0x0000
-
-/**
- * Area where to load sectors from disk to. They should start after the
- * MBR area and must be in accordance to the offset of the '.bootstrapping'
- * section in the linker file.
- *
- * @attention The address must be a multiple of 512.
- */
-#define LOAD_AREA 0x7e00
-#define LOAD_SEGMENT 0x0000
-
-/**
- * Size of one sector.
- */
-#define SECTOR_SIZE 512
diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
index 2917d2f..ca71369 100644
--- a/arch/x86/lib/barebox.lds.S
+++ b/arch/x86/lib/barebox.lds.S
@@ -20,7 +20,7 @@
  */
 
 #undef i386
-#include <asm/barebox.lds.h>
+#include <asm-generic/barebox.lds.h>
 
 OUTPUT_FORMAT("elf32-i386", "elf32-i386", "elf32-i386")
 OUTPUT_ARCH(i386)
diff --git a/arch/x86/mach-i386/include/mach/barebox.lds.h b/arch/x86/mach-i386/include/mach/barebox.lds.h
new file mode 100644
index 0000000..81c326e
--- /dev/null
+++ b/arch/x86/mach-i386/include/mach/barebox.lds.h
@@ -0,0 +1,99 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
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
+ * @brief Adapt linker script content in accordance to Kconfig settings
+ */
+
+/**
+ * Area in the MBR of the barebox basic boot code. This offset must be in
+ * accordance to the 'indirect_sector_lba' label.
+ */
+#define PATCH_AREA 400
+
+/**
+ * Offset where to store the boot drive number (BIOS number, 1 byte)
+ */
+#define PATCH_AREA_BOOT_DEV 16
+
+/**
+ * Offset where to store information about the persistant environment storage
+ * It points to an LBA number (8 bytes) and defines the first sector of this
+ * storage on disk.
+ */
+#define PATCH_AREA_PERS_START 20
+
+/**
+ * Offset where to store information about the persistant environment storage
+ * It points to a short number (2 bytes) and defines the sector count of this
+ * storage on disk.
+ */
+#define PATCH_AREA_PERS_SIZE 28
+
+/**
+ * Offset where to store information about the persistant environment storage
+ * drive number (BIOS number, 1 byte)
+ */
+#define PATCH_AREA_PERS_DRIVE 30
+
+/**
+ * Mark the persistant environment as not used
+ */
+#define PATCH_AREA_PERS_SIZE_UNUSED 0x000
+
+/**
+ * Mark a DAPS as unused/invalid
+ */
+#define MARK_DAPS_INVALID 0x0000
+
+/**
+ * Offset of the partition table in an MBR
+ */
+#define OFFSET_OF_PARTITION_TABLE 446
+
+/**
+ * Offset of the signature in an MBR
+ */
+#define OFFSET_OF_SIGNATURE 510
+
+/**
+ * Area where to store indirect sector to loop through. Keep this value
+ * in accordance to the 'indirect_area' label. Note: .
+ *
+ * @attention These addresses are real mode ones (seg:offset)
+ */
+#define INDIRECT_AREA 0x7A00
+#define INDIRECT_SEGMENT 0x0000
+
+/**
+ * Area where to load sectors from disk to. They should start after the
+ * MBR area and must be in accordance to the offset of the '.bootstrapping'
+ * section in the linker file.
+ *
+ * @attention The address must be a multiple of 512.
+ */
+#define LOAD_AREA 0x7e00
+#define LOAD_SEGMENT 0x0000
+
+/**
+ * Size of one sector.
+ */
+#define SECTOR_SIZE 512
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index fc141a4..2d1dc41 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -1,5 +1,5 @@
 
-#if defined CONFIG_ARCH_IMX25 || defined CONFIG_ARCH_IMX35 || defined CONFIG_ARCH_IMX51
+#if defined CONFIG_ARCH_IMX25 || defined CONFIG_ARCH_IMX35 || defined CONFIG_ARCH_IMX51 || defined CONFIG_X86
 #include <mach/barebox.lds.h>
 #endif
 
diff --git a/scripts/setupmbr/setupmbr.c b/scripts/setupmbr/setupmbr.c
index dd7f38c..74ede94 100644
--- a/scripts/setupmbr/setupmbr.c
+++ b/scripts/setupmbr/setupmbr.c
@@ -43,7 +43,7 @@
 
 /* include the info from this barebox release */
 #include "../../include/generated/utsrelease.h"
-#include "../../arch/x86/include/asm/barebox.lds.h"
+#include "../../arch/x86/mach-i386/include/mach/barebox.lds.h"
 
 /** define to disable integrity tests and debug messages */
 #define NDEBUG
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
