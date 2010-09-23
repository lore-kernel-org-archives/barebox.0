Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OyiqH-00047i-4w
	for barebox@lists.infradead.org; Thu, 23 Sep 2010 10:15:54 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 23 Sep 2010 12:14:23 +0200
Message-Id: <1285236866-3674-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1285236866-3674-1-git-send-email-plagnioj@jcrosoft.com>
References: <1285236866-3674-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/5] image: rename IH_CPU to IH_ARCH to be more concistant
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c  |    2 +-
 common/image.c    |   36 +++++++++++++++++-----------------
 include/image.h   |   56 ++++++++++++++++++++++++++--------------------------
 scripts/mkimage.c |    2 +-
 4 files changed, 48 insertions(+), 48 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index aa83566..98de2e9 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -330,7 +330,7 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 
 	os_header = &os_handle->header;
 
-	if (os_header->ih_arch != IH_CPU)	{
+	if (os_header->ih_arch != IH_ARCH)	{
 		printf ("Unsupported Architecture 0x%x\n", os_header->ih_arch);
 		goto err_out;
 	}
diff --git a/common/image.c b/common/image.c
index e6ab26b..75346f5 100644
--- a/common/image.c
+++ b/common/image.c
@@ -32,24 +32,24 @@ typedef struct table_entry {
 } table_entry_t;
 
 static table_entry_t arch_name[] = {
-	{ IH_CPU_INVALID,	NULL,		"Invalid CPU",	},
-	{ IH_CPU_ALPHA,		"alpha",	"Alpha",	},
-	{ IH_CPU_ARM,		"arm",		"ARM",		},
-	{ IH_CPU_I386,		"x86",		"Intel x86",	},
-	{ IH_CPU_IA64,		"ia64",		"IA64",		},
-	{ IH_CPU_M68K,		"m68k",		"MC68000",	},
-	{ IH_CPU_MICROBLAZE,	"microblaze",	"MicroBlaze",	},
-	{ IH_CPU_MIPS,		"mips",		"MIPS",		},
-	{ IH_CPU_MIPS64,	"mips64",	"MIPS 64 Bit",	},
-	{ IH_CPU_NIOS,		"nios",		"NIOS",		},
-	{ IH_CPU_NIOS2,		"nios2",	"NIOS II",	},
-	{ IH_CPU_PPC,		"ppc",		"PowerPC",	},
-	{ IH_CPU_S390,		"s390",		"IBM S390",	},
-	{ IH_CPU_SH,		"sh",		"SuperH",	},
-	{ IH_CPU_SPARC,		"sparc",	"SPARC",	},
-	{ IH_CPU_SPARC64,	"sparc64",	"SPARC 64 Bit",	},
-	{ IH_CPU_BLACKFIN,	"blackfin",	"Blackfin",	},
-	{ IH_CPU_AVR32,		"avr32",	"AVR32",	},
+	{ IH_ARCH_INVALID,	NULL,		"Invalid CPU",	},
+	{ IH_ARCH_ALPHA,	"alpha",	"Alpha",	},
+	{ IH_ARCH_ARM,		"arm",		"ARM",		},
+	{ IH_ARCH_I386,		"x86",		"Intel x86",	},
+	{ IH_ARCH_IA64,		"ia64",		"IA64",		},
+	{ IH_ARCH_M68K,		"m68k",		"MC68000",	},
+	{ IH_ARCH_MICROBLAZE,	"microblaze",	"MicroBlaze",	},
+	{ IH_ARCH_MIPS,		"mips",		"MIPS",		},
+	{ IH_ARCH_MIPS64,	"mips64",	"MIPS 64 Bit",	},
+	{ IH_ARCH_NIOS,		"nios",		"NIOS",		},
+	{ IH_ARCH_NIOS2,	"nios2",	"NIOS II",	},
+	{ IH_ARCH_PPC,		"ppc",		"PowerPC",	},
+	{ IH_ARCH_S390,		"s390",		"IBM S390",	},
+	{ IH_ARCH_SH,		"sh",		"SuperH",	},
+	{ IH_ARCH_SPARC,	"sparc",	"SPARC",	},
+	{ IH_ARCH_SPARC64,	"sparc64",	"SPARC 64 Bit",	},
+	{ IH_ARCH_BLACKFIN,	"blackfin",	"Blackfin",	},
+	{ IH_ARCH_AVR32,	"avr32",	"AVR32",	},
 	{ -1,			"",		"",		},
 };
 
diff --git a/include/image.h b/include/image.h
index 6bc8027..185ba64 100644
--- a/include/image.h
+++ b/include/image.h
@@ -61,45 +61,45 @@
 /*
  * CPU Architecture Codes (supported by Linux)
  */
-#define IH_CPU_INVALID		0	/* Invalid CPU	*/
-#define IH_CPU_ALPHA		1	/* Alpha	*/
-#define IH_CPU_ARM		2	/* ARM		*/
-#define IH_CPU_I386		3	/* Intel x86	*/
-#define IH_CPU_IA64		4	/* IA64		*/
-#define IH_CPU_MIPS		5	/* MIPS		*/
-#define IH_CPU_MIPS64		6	/* MIPS	 64 Bit */
-#define IH_CPU_PPC		7	/* PowerPC	*/
-#define IH_CPU_S390		8	/* IBM S390	*/
-#define IH_CPU_SH		9	/* SuperH	*/
-#define IH_CPU_SPARC		10	/* Sparc	*/
-#define IH_CPU_SPARC64		11	/* Sparc 64 Bit */
-#define IH_CPU_M68K		12	/* M68K		*/
-#define IH_CPU_NIOS		13	/* Nios-32	*/
-#define IH_CPU_MICROBLAZE	14	/* MicroBlaze   */
-#define IH_CPU_NIOS2		15	/* Nios-II	*/
-#define IH_CPU_BLACKFIN		16	/* Blackfin	*/
-#define IH_CPU_AVR32		17	/* AVR32	*/
+#define IH_ARCH_INVALID		0	/* Invalid CPU	*/
+#define IH_ARCH_ALPHA		1	/* Alpha	*/
+#define IH_ARCH_ARM		2	/* ARM		*/
+#define IH_ARCH_I386		3	/* Intel x86	*/
+#define IH_ARCH_IA64		4	/* IA64		*/
+#define IH_ARCH_MIPS		5	/* MIPS		*/
+#define IH_ARCH_MIPS64		6	/* MIPS	 64 Bit */
+#define IH_ARCH_PPC		7	/* PowerPC	*/
+#define IH_ARCH_S390		8	/* IBM S390	*/
+#define IH_ARCH_SH		9	/* SuperH	*/
+#define IH_ARCH_SPARC		10	/* Sparc	*/
+#define IH_ARCH_SPARC64		11	/* Sparc 64 Bit */
+#define IH_ARCH_M68K		12	/* M68K		*/
+#define IH_ARCH_NIOS		13	/* Nios-32	*/
+#define IH_ARCH_MICROBLAZE	14	/* MicroBlaze	*/
+#define IH_ARCH_NIOS2		15	/* Nios-II	*/
+#define IH_ARCH_BLACKFIN	16	/* Blackfin	*/
+#define IH_ARCH_AVR32		17	/* AVR32	*/
 
 #if defined(__PPC__)
-#define IH_CPU IH_CPU_PPC
+#define IH_ARCH IH_ARCH_PPC
 #elif defined(__ARM__)
-#define IH_CPU IH_CPU_ARM
+#define IH_ARCH IH_ARCH_ARM
 #elif defined(__I386__) || defined(__x86_64__)
-#define IH_CPU IH_CPU_I386
+#define IH_ARCH IH_ARCH_I386
 #elif defined(__mips__)
-#define IH_CPU IH_CPU_MIPS
+#define IH_ARCH IH_ARCH_MIPS
 #elif defined(__nios__)
-#define IH_CPU IH_CPU_NIOS
+#define IH_ARCH IH_ARCH_NIOS
 #elif defined(__M68K__)
-#define IH_CPU IH_CPU_M68K
+#define IH_ARCH IH_ARCH_M68K
 #elif defined(__microblaze__)
-#define IH_CPU IH_CPU_MICROBLAZE
+#define IH_ARCH IH_ARCH_MICROBLAZE
 #elif defined(__nios2__)
-#define IH_CPU IH_CPU_NIOS2
+#define IH_ARCH IH_ARCH_NIOS2
 #elif defined(__blackfin__)
-#define IH_CPU IH_CPU_BLACKFIN
+#define IH_ARCH IH_ARCH_BLACKFIN
 #elif defined(__avr32__)
-#define IH_CPU IH_CPU_AVR32
+#define IH_ARCH IH_ARCH_AVR32
 #endif
 
 /*
diff --git a/scripts/mkimage.c b/scripts/mkimage.c
index 0e5ec1e..15812e5 100644
--- a/scripts/mkimage.c
+++ b/scripts/mkimage.c
@@ -92,7 +92,7 @@ int lflag    = 0;
 int vflag    = 0;
 int xflag    = 0;
 int opt_os   = IH_OS_LINUX;
-int opt_arch = IH_CPU_PPC;
+int opt_arch = IH_ARCH_PPC;
 int opt_type = IH_TYPE_KERNEL;
 int opt_comp = IH_COMP_GZIP;
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
