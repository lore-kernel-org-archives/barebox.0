Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3DvJ-0001m7-8H
 for barebox@lists.infradead.org; Wed, 05 Aug 2020 07:33:18 +0000
Received: by mail-lf1-x144.google.com with SMTP id x24so6416145lfe.11
 for <barebox@lists.infradead.org>; Wed, 05 Aug 2020 00:33:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  5 Aug 2020 10:32:57 +0300
Message-Id: <20200805073258.10973-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] image: Convert the IH_... values to enums
To: barebox@lists.infradead.org

Adoption of U-Boot commit:

  | commit 555f45d8f9168b09b406a241e7cee7980104d902
  | Author: Simon Glass <sjg@chromium.org>
  | Date:   Thu Jun 30 10:52:13 2016 -0600
  |
  |     image: Convert the IH_... values to enums

As a side effect, several new architecture macros
are introduced, especially IH_ARCH_RISCV.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/image.h | 188 +++++++++++++++++++++++++++++++++---------------
 1 file changed, 132 insertions(+), 56 deletions(-)

diff --git a/include/image.h b/include/image.h
index 0a7832f139..963ea96863 100644
--- a/include/image.h
+++ b/include/image.h
@@ -23,55 +23,83 @@
 
 /*
  * Operating System Codes
+ *
+ * The following are exposed to uImage header.
+ * New IDs *MUST* be appended at the end of the list and *NEVER*
+ * inserted for backward compatibility.
  */
-#define IH_OS_INVALID		0	/* Invalid OS	*/
-#define IH_OS_OPENBSD		1	/* OpenBSD	*/
-#define IH_OS_NETBSD		2	/* NetBSD	*/
-#define IH_OS_FREEBSD		3	/* FreeBSD	*/
-#define IH_OS_4_4BSD		4	/* 4.4BSD	*/
-#define IH_OS_LINUX		5	/* Linux	*/
-#define IH_OS_SVR4		6	/* SVR4		*/
-#define IH_OS_ESIX		7	/* Esix		*/
-#define IH_OS_SOLARIS		8	/* Solaris	*/
-#define IH_OS_IRIX		9	/* Irix		*/
-#define IH_OS_SCO		10	/* SCO		*/
-#define IH_OS_DELL		11	/* Dell		*/
-#define IH_OS_NCR		12	/* NCR		*/
-#define IH_OS_LYNXOS		13	/* LynxOS	*/
-#define IH_OS_VXWORKS		14	/* VxWorks	*/
-#define IH_OS_PSOS		15	/* pSOS		*/
-#define IH_OS_QNX		16	/* QNX		*/
-#define IH_OS_BAREBOX		17	/* Firmware	*/
-#define IH_OS_RTEMS		18	/* RTEMS	*/
-#define IH_OS_ARTOS		19	/* ARTOS	*/
-#define IH_OS_UNITY		20	/* Unity OS	*/
+enum {
+	IH_OS_INVALID		= 0,	/* Invalid OS	*/
+	IH_OS_OPENBSD,			/* OpenBSD	*/
+	IH_OS_NETBSD,			/* NetBSD	*/
+	IH_OS_FREEBSD,			/* FreeBSD	*/
+	IH_OS_4_4BSD,			/* 4.4BSD	*/
+	IH_OS_LINUX,			/* Linux	*/
+	IH_OS_SVR4,			/* SVR4		*/
+	IH_OS_ESIX,			/* Esix		*/
+	IH_OS_SOLARIS,			/* Solaris	*/
+	IH_OS_IRIX,			/* Irix		*/
+	IH_OS_SCO,			/* SCO		*/
+	IH_OS_DELL,			/* Dell		*/
+	IH_OS_NCR,			/* NCR		*/
+	IH_OS_LYNXOS,			/* LynxOS	*/
+	IH_OS_VXWORKS,			/* VxWorks	*/
+	IH_OS_PSOS,			/* pSOS		*/
+	IH_OS_QNX,			/* QNX		*/
+	IH_OS_BAREBOX,			/* Firmware	*/
+	IH_OS_RTEMS,			/* RTEMS	*/
+	IH_OS_ARTOS,			/* ARTOS	*/
+	IH_OS_UNITY,			/* Unity OS	*/
+	IH_OS_INTEGRITY,		/* INTEGRITY	*/
+	IH_OS_OSE,			/* OSE		*/
+	IH_OS_PLAN9,			/* Plan 9	*/
+	IH_OS_OPENRTOS,		/* OpenRTOS	*/
+	IH_OS_ARM_TRUSTED_FIRMWARE,     /* ARM Trusted Firmware */
+	IH_OS_TEE,			/* Trusted Execution Environment */
+	IH_OS_OPENSBI,			/* RISC-V OpenSBI */
+	IH_OS_EFI,			/* EFI Firmware (e.g. GRUB2) */
+
+	IH_OS_COUNT,
+};
 
 /*
  * CPU Architecture Codes (supported by Linux)
+ *
+ * The following are exposed to uImage header.
+ * New IDs *MUST* be appended at the end of the list and *NEVER*
+ * inserted for backward compatibility.
  */
-#define IH_ARCH_INVALID		0	/* Invalid CPU	*/
-#define IH_ARCH_ALPHA		1	/* Alpha	*/
-#define IH_ARCH_ARM		2	/* ARM		*/
-#define IH_ARCH_I386		3	/* Intel x86	*/
-#define IH_ARCH_IA64		4	/* IA64		*/
-#define IH_ARCH_MIPS		5	/* MIPS		*/
-#define IH_ARCH_MIPS64		6	/* MIPS	 64 Bit */
-#define IH_ARCH_PPC		7	/* PowerPC	*/
-#define IH_ARCH_S390		8	/* IBM S390	*/
-#define IH_ARCH_SH		9	/* SuperH	*/
-#define IH_ARCH_SPARC		10	/* Sparc	*/
-#define IH_ARCH_SPARC64		11	/* Sparc 64 Bit */
-#define IH_ARCH_M68K		12	/* M68K		*/
-#define IH_ARCH_NIOS		13	/* Nios-32	*/
-#define IH_ARCH_MICROBLAZE	14	/* MicroBlaze   */
-#define IH_ARCH_NIOS2		15	/* Nios-II	*/
-#define IH_ARCH_BLACKFIN	16	/* Blackfin	*/
-#define IH_ARCH_AVR32		17	/* AVR32	*/
-#define IH_ARCH_LINUX		18	/* Linux	*/
-#define IH_ARCH_SANDBOX		19	/* Sandbox architecture (test only) */
-#define IH_ARCH_NDS32		20	/* ANDES Technology - NDS32  */
-#define IH_ARCH_OPENRISC	21	/* OpenRISC 1000  */
-#define IH_ARCH_ARM64		22	/* ARM64	*/
+enum {
+	IH_ARCH_INVALID		= 0,	/* Invalid CPU	*/
+	IH_ARCH_ALPHA,			/* Alpha	*/
+	IH_ARCH_ARM,			/* ARM		*/
+	IH_ARCH_I386,			/* Intel x86	*/
+	IH_ARCH_IA64,			/* IA64		*/
+	IH_ARCH_MIPS,			/* MIPS		*/
+	IH_ARCH_MIPS64,			/* MIPS	 64 Bit */
+	IH_ARCH_PPC,			/* PowerPC	*/
+	IH_ARCH_S390,			/* IBM S390	*/
+	IH_ARCH_SH,			/* SuperH	*/
+	IH_ARCH_SPARC,			/* Sparc	*/
+	IH_ARCH_SPARC64,		/* Sparc 64 Bit */
+	IH_ARCH_M68K,			/* M68K		*/
+	IH_ARCH_NIOS,			/* Nios-32	*/
+	IH_ARCH_MICROBLAZE,		/* MicroBlaze   */
+	IH_ARCH_NIOS2,			/* Nios-II	*/
+	IH_ARCH_BLACKFIN,		/* Blackfin	*/
+	IH_ARCH_AVR32,			/* AVR32	*/
+	IH_ARCH_ST200,			/* STMicroelectronics ST200  */
+	IH_ARCH_SANDBOX,		/* Sandbox architecture (test only) */
+	IH_ARCH_NDS32,			/* ANDES Technology - NDS32  */
+	IH_ARCH_OPENRISC,		/* OpenRISC 1000  */
+	IH_ARCH_ARM64,			/* ARM64	*/
+	IH_ARCH_ARC,			/* Synopsys DesignWare ARC */
+	IH_ARCH_X86_64,			/* AMD x86_64, Intel and Via */
+	IH_ARCH_XTENSA,			/* Xtensa	*/
+	IH_ARCH_RISCV,			/* RISC-V */
+
+	IH_ARCH_COUNT,
+};
 
 #if defined(__PPC__)
 #define IH_ARCH IH_ARCH_PPC
@@ -142,24 +170,72 @@
  *	barebox's command interpreter; this feature is especially
  *	useful when you configure barebox to use a real shell (hush)
  *	as command interpreter (=> Shell Scripts).
+ *
+ * The following are exposed to uImage header.
+ * New IDs *MUST* be appended at the end of the list and *NEVER*
+ * inserted for backward compatibility.
  */
 
-#define IH_TYPE_INVALID		0	/* Invalid Image		*/
-#define IH_TYPE_STANDALONE	1	/* Standalone Program		*/
-#define IH_TYPE_KERNEL		2	/* OS Kernel Image		*/
-#define IH_TYPE_RAMDISK		3	/* RAMDisk Image		*/
-#define IH_TYPE_MULTI		4	/* Multi-File Image		*/
-#define IH_TYPE_FIRMWARE	5	/* Firmware Image		*/
-#define IH_TYPE_SCRIPT		6	/* Script file			*/
-#define IH_TYPE_FILESYSTEM	7	/* Filesystem Image (any type)	*/
-#define IH_TYPE_FLATDT		8	/* Binary Flat Device Tree Blob	*/
+enum {
+	IH_TYPE_INVALID		= 0,	/* Invalid Image		*/
+	IH_TYPE_STANDALONE,		/* Standalone Program		*/
+	IH_TYPE_KERNEL,			/* OS Kernel Image		*/
+	IH_TYPE_RAMDISK,		/* RAMDisk Image		*/
+	IH_TYPE_MULTI,			/* Multi-File Image		*/
+	IH_TYPE_FIRMWARE,		/* Firmware Image		*/
+	IH_TYPE_SCRIPT,			/* Script file			*/
+	IH_TYPE_FILESYSTEM,		/* Filesystem Image (any type)	*/
+	IH_TYPE_FLATDT,			/* Binary Flat Device Tree Blob	*/
+	IH_TYPE_KWBIMAGE,		/* Kirkwood Boot Image		*/
+	IH_TYPE_IMXIMAGE,		/* Freescale IMXBoot Image	*/
+	IH_TYPE_UBLIMAGE,		/* Davinci UBL Image		*/
+	IH_TYPE_OMAPIMAGE,		/* TI OMAP Config Header Image	*/
+	IH_TYPE_AISIMAGE,		/* TI Davinci AIS Image		*/
+	/* OS Kernel Image, can run from any load address */
+	IH_TYPE_KERNEL_NOLOAD,
+	IH_TYPE_PBLIMAGE,		/* Freescale PBL Boot Image	*/
+	IH_TYPE_MXSIMAGE,		/* Freescale MXSBoot Image	*/
+	IH_TYPE_GPIMAGE,		/* TI Keystone GPHeader Image	*/
+	IH_TYPE_ATMELIMAGE,		/* ATMEL ROM bootable Image	*/
+	IH_TYPE_SOCFPGAIMAGE,		/* Altera SOCFPGA CV/AV Preloader */
+	IH_TYPE_X86_SETUP,		/* x86 setup.bin Image		*/
+	IH_TYPE_LPC32XXIMAGE,		/* x86 setup.bin Image		*/
+	IH_TYPE_LOADABLE,		/* A list of typeless images	*/
+	IH_TYPE_RKIMAGE,		/* Rockchip Boot Image		*/
+	IH_TYPE_RKSD,			/* Rockchip SD card		*/
+	IH_TYPE_RKSPI,			/* Rockchip SPI image		*/
+	IH_TYPE_ZYNQIMAGE,		/* Xilinx Zynq Boot Image */
+	IH_TYPE_ZYNQMPIMAGE,		/* Xilinx ZynqMP Boot Image */
+	IH_TYPE_ZYNQMPBIF,		/* Xilinx ZynqMP Boot Image (bif) */
+	IH_TYPE_FPGA,			/* FPGA Image */
+	IH_TYPE_VYBRIDIMAGE,	/* VYBRID .vyb Image */
+	IH_TYPE_TEE,            /* Trusted Execution Environment OS Image */
+	IH_TYPE_FIRMWARE_IVT,		/* Firmware Image with HABv4 IVT */
+	IH_TYPE_PMMC,            /* TI Power Management Micro-Controller Firmware */
+	IH_TYPE_STM32IMAGE,		/* STMicroelectronics STM32 Image */
+	IH_TYPE_SOCFPGAIMAGE_V1,	/* Altera SOCFPGA A10 Preloader	*/
+	IH_TYPE_MTKIMAGE,		/* MediaTek BootROM loadable Image */
+	IH_TYPE_IMX8MIMAGE,		/* Freescale IMX8MBoot Image	*/
+	IH_TYPE_IMX8IMAGE,		/* Freescale IMX8Boot Image	*/
+	IH_TYPE_COPRO,			/* Coprocessor Image for remoteproc*/
+
+	IH_TYPE_COUNT,			/* Number of image types */
+};
 
 /*
  * Compression Types
+ *
+ * The following are exposed to uImage header.
+ * New IDs *MUST* be appended at the end of the list and *NEVER*
+ * inserted for backward compatibility.
  */
-#define IH_COMP_NONE		0	/*  No	 Compression Used	*/
-#define IH_COMP_GZIP		1	/* gzip	 Compression Used	*/
-#define IH_COMP_BZIP2		2	/* bzip2 Compression Used	*/
+enum {
+	IH_COMP_NONE		= 0,	/*  No	 Compression Used	*/
+	IH_COMP_GZIP,			/* gzip	 Compression Used	*/
+	IH_COMP_BZIP2,			/* bzip2 Compression Used	*/
+
+	IH_COMP_COUNT,
+};
 
 #define IH_MAGIC	0x27051956	/* Image Magic Number		*/
 #define IH_NMLEN		32	/* Image Name Length		*/
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
