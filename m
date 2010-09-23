Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oydl2-0003S9-W9
	for barebox@lists.infradead.org; Thu, 23 Sep 2010 04:50:14 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 23 Sep 2010 06:48:41 +0200
Message-Id: <1285217322-5715-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] image: factorise string helper
To: barebox@lists.infradead.org

before we duplicate it between common/bootm.c and scripts/mkimage.c

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c  |   93 ++-----------------------------------
 common/Makefile   |    1 +
 common/image.c    |  134 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/image.h   |   27 +++++++++++
 scripts/mkimage.c |  121 +++--------------------------------------------
 5 files changed, 175 insertions(+), 201 deletions(-)
 create mode 100644 common/image.c

diff --git a/commands/bootm.c b/commands/bootm.c
index 11325dc..604f5cc 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -95,92 +95,6 @@ fixup_silent_linux ()
 }
 #endif /* CONFIG_SILENT_CONSOLE */
 
-#ifdef CONFIG_CMD_BOOTM_SHOW_TYPE
-static const char *image_os(image_header_t *hdr)
-{
-	char *os;
-
-	switch (hdr->ih_os) {
-	case IH_OS_INVALID:	os = "Invalid OS";		break;
-	case IH_OS_NETBSD:	os = "NetBSD";			break;
-	case IH_OS_LINUX:	os = "Linux";			break;
-	case IH_OS_VXWORKS:	os = "VxWorks";			break;
-	case IH_OS_QNX:		os = "QNX";			break;
-	case IH_OS_BAREBOX:	os = "barebox";			break;
-	case IH_OS_RTEMS:	os = "RTEMS";			break;
-#ifdef CONFIG_ARTOS
-	case IH_OS_ARTOS:	os = "ARTOS";			break;
-#endif
-#ifdef CONFIG_LYNXKDI
-	case IH_OS_LYNXOS:	os = "LynxOS";			break;
-#endif
-	default:		os = "Unknown OS";		break;
-	}
-
-	return os;
-}
-
-static const char *image_arch(image_header_t *hdr)
-{
-	char *arch;
-
-	switch (hdr->ih_arch) {
-	case IH_CPU_INVALID:	arch = "Invalid CPU";		break;
-	case IH_CPU_ALPHA:	arch = "Alpha";			break;
-	case IH_CPU_ARM:	arch = "ARM";			break;
-	case IH_CPU_AVR32:	arch = "AVR32";			break;
-	case IH_CPU_I386:	arch = "Intel x86";		break;
-	case IH_CPU_IA64:	arch = "IA64";			break;
-	case IH_CPU_MIPS:	arch = "MIPS";			break;
-	case IH_CPU_MIPS64:	arch = "MIPS 64 Bit";		break;
-	case IH_CPU_PPC:	arch = "PowerPC";		break;
-	case IH_CPU_S390:	arch = "IBM S390";		break;
-	case IH_CPU_SH:		arch = "SuperH";		break;
-	case IH_CPU_SPARC:	arch = "SPARC";			break;
-	case IH_CPU_SPARC64:	arch = "SPARC 64 Bit";		break;
-	case IH_CPU_M68K:	arch = "M68K"; 			break;
-	case IH_CPU_MICROBLAZE:	arch = "Microblaze"; 		break;
-	case IH_CPU_NIOS:	arch = "Nios";			break;
-	case IH_CPU_NIOS2:	arch = "Nios-II";		break;
-	default:		arch = "Unknown Architecture";	break;
-	}
-
-	return arch;
-}
-
-static const char *image_type(image_header_t *hdr)
-{
-	char *type;
-
-	switch (hdr->ih_type) {
-	case IH_TYPE_INVALID:	type = "Invalid Image";		break;
-	case IH_TYPE_STANDALONE:type = "Standalone Program";	break;
-	case IH_TYPE_KERNEL:	type = "Kernel Image";		break;
-	case IH_TYPE_RAMDISK:	type = "RAMDisk Image";		break;
-	case IH_TYPE_MULTI:	type = "Multi-File Image";	break;
-	case IH_TYPE_FIRMWARE:	type = "Firmware";		break;
-	case IH_TYPE_SCRIPT:	type = "Script";		break;
-	case IH_TYPE_FLATDT:	type = "Flat Device Tree";	break;
-	default:		type = "Unknown Image";		break;
-	}
-	return type;
-}
-
-static const char *image_compression(image_header_t *hdr)
-{
-	char *comp;
-
-	switch (hdr->ih_comp) {
-	case IH_COMP_NONE:	comp = "uncompressed";		break;
-	case IH_COMP_GZIP:	comp = "gzip compressed";	break;
-	case IH_COMP_BZIP2:	comp = "bzip2 compressed";	break;
-	default:		comp = "unknown compression";	break;
-	}
-
-	return comp;
-}
-#endif
-
 int relocate_image(struct image_handle *handle, void *load_address)
 {
 	image_header_t *hdr = &handle->header;
@@ -549,8 +463,11 @@ print_image_hdr (image_header_t *hdr)
 		tm.tm_hour, tm.tm_min, tm.tm_sec);
 #endif	/* CONFIG_CMD_DATE, CONFIG_TIMESTAMP */
 #ifdef CONFIG_CMD_BOOTM_SHOW_TYPE
-	printf ("   Image Type:   %s %s %s (%s)\n", image_arch(hdr), image_os(hdr),
-			image_type(hdr), image_compression(hdr));
+	printf ("   Image Type:   %s %s %s (%s)\n",
+			image_arch(hdr->ih_arch),
+			image_os(hdr->ih_os),
+			image_type(hdr->ih_type),
+			image_compression(hdr->ih_comp));
 #endif
 	printf ("   Data Size:    %d Bytes = %s\n"
 		"   Load Address: %08x\n"
diff --git a/common/Makefile b/common/Makefile
index 6ca3d98..94b1387 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_CONSOLE_FULL) += console.o
 obj-$(CONFIG_CONSOLE_SIMPLE) += console_simple.o
 obj-$(CONFIG_DIGEST) += digest.o
 obj-y += env.o
+obj-$(CONFIG_CMD_BOOTM_SHOW_TYPE) += image.o
 obj-y += startup.o
 obj-y += misc.o
 obj-y += memsize.o
diff --git a/common/image.c b/common/image.c
new file mode 100644
index 0000000..d7ffe41
--- /dev/null
+++ b/common/image.c
@@ -0,0 +1,134 @@
+/*
+ * (C) Copyright 2000-2006
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ */
+
+#ifdef __BAREBOX__
+#include <image.h>
+#endif
+
+typedef struct table_entry {
+	int	id;		/* as defined in image.h	*/
+	char	*sname;		/* short (input) name		*/
+	char	*lname;		/* long (output) name		*/
+} table_entry_t;
+
+static table_entry_t arch_name[] = {
+	{ IH_CPU_INVALID,	NULL,		"Invalid CPU",	},
+	{ IH_CPU_ALPHA,		"alpha",	"Alpha",	},
+	{ IH_CPU_ARM,		"arm",		"ARM",		},
+	{ IH_CPU_I386,		"x86",		"Intel x86",	},
+	{ IH_CPU_IA64,		"ia64",		"IA64",		},
+	{ IH_CPU_M68K,		"m68k",		"MC68000",	},
+	{ IH_CPU_MICROBLAZE,	"microblaze",	"MicroBlaze",	},
+	{ IH_CPU_MIPS,		"mips",		"MIPS",		},
+	{ IH_CPU_MIPS64,	"mips64",	"MIPS 64 Bit",	},
+	{ IH_CPU_NIOS,		"nios",		"NIOS",		},
+	{ IH_CPU_NIOS2,		"nios2",	"NIOS II",	},
+	{ IH_CPU_PPC,		"ppc",		"PowerPC",	},
+	{ IH_CPU_S390,		"s390",		"IBM S390",	},
+	{ IH_CPU_SH,		"sh",		"SuperH",	},
+	{ IH_CPU_SPARC,		"sparc",	"SPARC",	},
+	{ IH_CPU_SPARC64,	"sparc64",	"SPARC 64 Bit",	},
+	{ IH_CPU_BLACKFIN,	"blackfin",	"Blackfin",	},
+	{ IH_CPU_AVR32,		"avr32",	"AVR32",	},
+	{ -1,			"",		"",		},
+};
+
+static table_entry_t os_name[] = {
+	{ IH_OS_INVALID,	NULL,		"Invalid OS",	},
+#ifndef __BAREBOX__
+	{ IH_OS_4_4BSD,		"4_4bsd",	"4_4BSD",	},
+	{ IH_OS_ARTOS,		"artos",	"ARTOS",	},
+	{ IH_OS_DELL,		"dell",		"Dell",		},
+	{ IH_OS_ESIX,		"esix",		"Esix",		},
+	{ IH_OS_FREEBSD,	"freebsd",	"FreeBSD",	},
+	{ IH_OS_IRIX,		"irix",		"Irix",		},
+#endif
+	{ IH_OS_LINUX,		"linux",	"Linux",	},
+#ifndef __BAREBOX__
+	{ IH_OS_LYNXOS,		"lynxos",	"LynxOS",	},
+	{ IH_OS_NCR,		"ncr",		"NCR",		},
+	{ IH_OS_NETBSD,		"netbsd",	"NetBSD",	},
+	{ IH_OS_OPENBSD,	"openbsd",	"OpenBSD",	},
+	{ IH_OS_PSOS,		"psos",		"pSOS",		},
+	{ IH_OS_QNX,		"qnx",		"QNX",		},
+	{ IH_OS_RTEMS,		"rtems",	"RTEMS",	},
+	{ IH_OS_SCO,		"sco",		"SCO",		},
+	{ IH_OS_SOLARIS,	"solaris",	"Solaris",	},
+	{ IH_OS_SVR4,		"svr4",		"SVR4",		},
+#endif
+	{ IH_OS_BAREBOX,	"barebox",	"barebox",	},
+#ifndef __BAREBOX__
+	{ IH_OS_VXWORKS,	"vxworks",	"VxWorks",	},
+#endif
+	{ -1,			"",		"",		},
+};
+
+static table_entry_t type_name[] = {
+	{ IH_TYPE_INVALID,	NULL,		"Invalid Image",	},
+	{ IH_TYPE_FILESYSTEM,	"filesystem",	"Filesystem Image",	},
+	{ IH_TYPE_FIRMWARE,	"firmware",	"Firmware",		},
+	{ IH_TYPE_KERNEL,	"kernel",	"Kernel Image",		},
+	{ IH_TYPE_MULTI,	"multi",	"Multi-File Image",	},
+	{ IH_TYPE_RAMDISK,	"ramdisk",	"RAMDisk Image",	},
+	{ IH_TYPE_SCRIPT,	 "script",	"Script",		},
+	{ IH_TYPE_STANDALONE,	"standalone",	"Standalone Program",	},
+	{ IH_TYPE_FLATDT,	"flat_dt",	"Flat Device Tree",	},
+	{ -1,			"",		"",			},
+};
+
+static table_entry_t comp_name[] = {
+	{ IH_COMP_NONE,		"none",		"uncompressed",		},
+	{ IH_COMP_BZIP2,	"bzip2",	"bzip2 compressed",	},
+	{ IH_COMP_GZIP,		"gzip",		"gzip compressed",	},
+	{ -1,			"",		"",			},
+};
+
+static char *get_table_entry_name(table_entry_t *table, char *msg, int id)
+{
+	for (; table->id >= 0; ++table) {
+		if (table->id == id)
+			return table->lname;
+	}
+
+	return msg;
+}
+
+const char *image_os(uint8_t os)
+{
+	return get_table_entry_name(os_name, "Unknown OS", os);
+}
+
+const char *image_arch(uint8_t arch)
+{
+	return get_table_entry_name(arch_name, "Unknown Architecture", arch);
+}
+
+const char *image_type(uint8_t type)
+{
+	return get_table_entry_name(type_name, "Unknown Image", type);
+}
+
+const char *image_compression(uint8_t comp)
+{
+	return get_table_entry_name(comp_name, "Unknown Compression", comp);
+}
diff --git a/include/image.h b/include/image.h
index 13d0303..e47ecfe 100644
--- a/include/image.h
+++ b/include/image.h
@@ -187,6 +187,33 @@ struct image_handle {
 	int flags;
 };
 
+#if defined(CONFIG_CMD_BOOTM_SHOW_TYPE) || !defined(__BAREBOX__)
+const char *image_os(uint8_t os);
+const char *image_arch(uint8_t arch);
+const char *image_type(uint8_t type);
+const char *image_compression(uint8_t comp);
+#else
+static inline const char *image_os(uint8_t os)
+{
+	return NULL;
+}
+
+static inline const char *image_arch(uint8_t arch)
+{
+	return NULL;
+}
+
+static inline const char *image_type(uint8_t type)
+{
+	return NULL;
+}
+
+static inline const char *image_compression(uint8_t comp)
+{
+	return NULL;
+}
+#endif
+
 /* commamds/bootm.c */
 void	print_image_hdr (image_header_t *hdr);
 
diff --git a/scripts/mkimage.c b/scripts/mkimage.c
index 240c5cf..4bffcde 100644
--- a/scripts/mkimage.c
+++ b/scripts/mkimage.c
@@ -59,6 +59,7 @@ typedef		unsigned int	uint32_t;
 #endif
 
 #include "../include/image.h"
+#include "../common/image.c"
 
 #ifndef MAP_FAILED
 #define MAP_FAILED (-1)
@@ -71,87 +72,10 @@ char *cmdname;
 
 //extern unsigned long crc32 (unsigned long crc, const char *buf, unsigned int len);
 
-typedef struct table_entry {
-	int	val;		/* as defined in image.h	*/
-	char	*sname;		/* short (input) name		*/
-	char	*lname;		/* long (output) name		*/
-} table_entry_t;
-
-table_entry_t arch_name[] = {
-    {	IH_CPU_INVALID,		NULL,		"Invalid CPU",	},
-    {	IH_CPU_ALPHA,		"alpha",	"Alpha",	},
-    {	IH_CPU_ARM,		"arm",		"ARM",		},
-    {	IH_CPU_I386,		"x86",		"Intel x86",	},
-    {	IH_CPU_IA64,		"ia64",		"IA64",		},
-    {	IH_CPU_M68K,		"m68k",		"MC68000",	},
-    {	IH_CPU_MICROBLAZE,	"microblaze",	"MicroBlaze",	},
-    {	IH_CPU_MIPS,		"mips",		"MIPS",		},
-    {	IH_CPU_MIPS64,		"mips64",	"MIPS 64 Bit",	},
-    {	IH_CPU_NIOS,		"nios",		"NIOS",		},
-    {	IH_CPU_NIOS2,		"nios2",	"NIOS II",	},
-    {	IH_CPU_PPC,		"ppc",		"PowerPC",	},
-    {	IH_CPU_S390,		"s390",		"IBM S390",	},
-    {	IH_CPU_SH,		"sh",		"SuperH",	},
-    {	IH_CPU_SPARC,		"sparc",	"SPARC",	},
-    {	IH_CPU_SPARC64,		"sparc64",	"SPARC 64 Bit",	},
-    {	IH_CPU_BLACKFIN,	"blackfin",	"Blackfin",	},
-    {	IH_CPU_AVR32,		"avr32",	"AVR32",	},
-    {	-1,			"",		"",		},
-};
-
-table_entry_t os_name[] = {
-    {	IH_OS_INVALID,	NULL,		"Invalid OS",		},
-    {	IH_OS_4_4BSD,	"4_4bsd",	"4_4BSD",		},
-    {	IH_OS_ARTOS,	"artos",	"ARTOS",		},
-    {	IH_OS_DELL,	"dell",		"Dell",			},
-    {	IH_OS_ESIX,	"esix",		"Esix",			},
-    {	IH_OS_FREEBSD,	"freebsd",	"FreeBSD",		},
-    {	IH_OS_IRIX,	"irix",		"Irix",			},
-    {	IH_OS_LINUX,	"linux",	"Linux",		},
-    {	IH_OS_LYNXOS,	"lynxos",	"LynxOS",		},
-    {	IH_OS_NCR,	"ncr",		"NCR",			},
-    {	IH_OS_NETBSD,	"netbsd",	"NetBSD",		},
-    {	IH_OS_OPENBSD,	"openbsd",	"OpenBSD",		},
-    {	IH_OS_PSOS,	"psos",		"pSOS",			},
-    {	IH_OS_QNX,	"qnx",		"QNX",			},
-    {	IH_OS_RTEMS,	"rtems",	"RTEMS",		},
-    {	IH_OS_SCO,	"sco",		"SCO",			},
-    {	IH_OS_SOLARIS,	"solaris",	"Solaris",		},
-    {	IH_OS_SVR4,	"svr4",		"SVR4",			},
-    {	IH_OS_BAREBOX,	"barebox",	"barebox",		},
-    {	IH_OS_VXWORKS,	"vxworks",	"VxWorks",		},
-    {	-1,		"",		"",			},
-};
-
-table_entry_t type_name[] = {
-    {	IH_TYPE_INVALID,    NULL,	  "Invalid Image",	},
-    {	IH_TYPE_FILESYSTEM, "filesystem", "Filesystem Image",	},
-    {	IH_TYPE_FIRMWARE,   "firmware",	  "Firmware",		},
-    {	IH_TYPE_KERNEL,	    "kernel",	  "Kernel Image",	},
-    {	IH_TYPE_MULTI,	    "multi",	  "Multi-File Image",	},
-    {	IH_TYPE_RAMDISK,    "ramdisk",	  "RAMDisk Image",	},
-    {	IH_TYPE_SCRIPT,     "script",	  "Script",		},
-    {	IH_TYPE_STANDALONE, "standalone", "Standalone Program", },
-    {	IH_TYPE_FLATDT,     "flat_dt",    "Flat Device Tree",	},
-    {	-1,		    "",		  "",			},
-};
-
-table_entry_t comp_name[] = {
-    {	IH_COMP_NONE,	"none",		"uncompressed",		},
-    {	IH_COMP_BZIP2,	"bzip2",	"bzip2 compressed",	},
-    {	IH_COMP_GZIP,	"gzip",		"gzip compressed",	},
-    {	-1,		"",		"",			},
-};
-
 static	void	copy_file (int, const char *, int);
 static	void	usage	(void);
 static	void	print_header (image_header_t *);
 static	void	print_type (image_header_t *);
-static	char	*put_table_entry (table_entry_t *, char *, int);
-static	char	*put_arch (int);
-static	char	*put_type (int);
-static	char	*put_os   (int);
-static	char	*put_comp (int);
 static	int	get_table_entry (table_entry_t *, char *, char *);
 static	int	get_arch(char *);
 static	int	get_comp(char *);
@@ -672,42 +596,13 @@ static void
 print_type (image_header_t *hdr)
 {
 	printf ("%s %s %s (%s)\n",
-		put_arch (hdr->ih_arch),
-		put_os   (hdr->ih_os  ),
-		put_type (hdr->ih_type),
-		put_comp (hdr->ih_comp)
+		image_arch(hdr->ih_arch),
+		image_os(hdr->ih_os),
+		image_type(hdr->ih_type),
+		image_compression(hdr->ih_comp)
 	);
 }
 
-static char *put_arch (int arch)
-{
-	return (put_table_entry(arch_name, "Unknown Architecture", arch));
-}
-
-static char *put_os (int os)
-{
-	return (put_table_entry(os_name, "Unknown OS", os));
-}
-
-static char *put_type (int type)
-{
-	return (put_table_entry(type_name, "Unknown Image", type));
-}
-
-static char *put_comp (int comp)
-{
-	return (put_table_entry(comp_name, "Unknown Compression", comp));
-}
-
-static char *put_table_entry (table_entry_t *table, char *msg, int type)
-{
-	for (; table->val>=0; ++table) {
-		if (table->val == type)
-			return (table->lname);
-	}
-	return (msg);
-}
-
 static int get_arch(char *name)
 {
 	return (get_table_entry(arch_name, "CPU", name));
@@ -736,12 +631,12 @@ static int get_table_entry (table_entry_t *table, char *msg, char *name)
 	table_entry_t *t;
 	int first = 1;
 
-	for (t=table; t->val>=0; ++t) {
+	for (t=table; t->id>=0; ++t) {
 		if (t->sname && strcasecmp(t->sname, name)==0)
-			return (t->val);
+			return (t->id);
 	}
 	fprintf (stderr, "\nInvalid %s Type - valid names are", msg);
-	for (t=table; t->val>=0; ++t) {
+	for (t=table; t->id>=0; ++t) {
 		if (t->sname == NULL)
 			continue;
 		fprintf (stderr, "%c %s", (first) ? ':' : ',', t->sname);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
