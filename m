Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zr0zQ-0002DO-KZ
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 09:56:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Oct 2015 10:55:53 +0100
Message-Id: <1445939755-22889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: Allow compressed dtb binaries
To: Barebox List <barebox@lists.infradead.org>

In the current multi image build process the DTBs end up uncompressed
in the PBL. This can be annoying because the PBL is often very size
constrained.
This patch allows to put the DTBs in as lzo compressed binary into
the PBL. Since lzo offers quite good compression ratios for DTBs no
other compression algorithm has been implemented for now.
Boards which want to use the compressed DTBs only have to change
the __dtb_ prefix in the DTB name to __dtb_z_. Also they should select
ARM_USE_COMPRESSED_DTB to make sure barebox supports uncompressing
the DTB.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                   |  5 +++++
 arch/arm/cpu/start.c               | 46 ++++++++++++++++++++++++++++++++++++++
 arch/arm/include/asm/barebox-arm.h |  9 ++++++++
 scripts/gen-dtb-s                  | 19 ++++++++++++++++
 4 files changed, 79 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 203f912..f7b4a39 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -17,6 +17,11 @@ config ARM_LINUX
 config HAVE_MACH_ARM_HEAD
 	bool
 
+config ARM_USE_COMPRESSED_DTB
+	bool
+	select UNCOMPRESS
+	select LZO_DECOMPRESS
+
 menu "System Type"
 
 config BUILTIN_DTB
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 8e5097b..bedc601 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -27,6 +27,8 @@
 #include <asm/unaligned.h>
 #include <asm/cache.h>
 #include <memory.h>
+#include <uncompress.h>
+#include <malloc.h>
 
 #include <debug_ll.h>
 #include "mmu-early.h"
@@ -46,10 +48,46 @@ u32 barebox_arm_machine(void)
 	return bd->machine;
 }
 
+struct barebox_arm_boarddata *barebox_arm_get_boarddata(void)
+{
+	return barebox_boarddata;
+}
+
 static void *barebox_boot_dtb;
+struct barebox_arm_boarddata_compressed_dtb *compressed_dtb;
 
 void *barebox_arm_boot_dtb(void)
 {
+	void *dtb;
+	void *data;
+	int ret;
+
+	if (barebox_boot_dtb) {
+		pr_debug("%s: using barebox_boot_dtb\n", __func__);
+		return barebox_boot_dtb;
+	}
+
+	if (!IS_ENABLED(CONFIG_ARM_USE_COMPRESSED_DTB) || !compressed_dtb)
+		return NULL;
+
+	pr_debug("%s: using compressed_dtb\n", __func__);
+
+	dtb = malloc(compressed_dtb->datalen_uncompressed);
+	if (!dtb)
+		return NULL;
+
+	data = compressed_dtb + 1;
+
+	ret = uncompress(data, compressed_dtb->datalen, NULL, NULL,
+			dtb, NULL, NULL);
+	if (ret) {
+		pr_err("uncompressing dtb failed\n");
+		free(dtb);
+		return NULL;
+	}
+
+	barebox_boot_dtb = dtb;
+
 	return barebox_boot_dtb;
 }
 
@@ -104,6 +142,14 @@ static noinline __noreturn void __start(unsigned long membase,
 					barebox_boarddata);
 			memcpy(barebox_boarddata, boarddata,
 					sizeof(struct barebox_arm_boarddata));
+		} else if (((struct barebox_arm_boarddata_compressed_dtb *)boarddata)->magic ==
+				BAREBOX_ARM_BOARDDATA_COMPRESSED_DTB_MAGIC) {
+			struct barebox_arm_boarddata_compressed_dtb *bd = boarddata;
+			endmem -= ALIGN(sizeof(*bd) + bd->datalen, 64);
+			compressed_dtb = (void *)endmem;
+			pr_debug("found compressed DTB in boarddata, copying to 0x%p\n",
+					compressed_dtb);
+			memcpy(compressed_dtb, boarddata, sizeof(*bd) + bd->datalen);
 		}
 	}
 
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 0b8acb8..76e3564 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -75,6 +75,15 @@ static inline void boarddata_create(void *adr, u32 machine)
 
 u32 barebox_arm_machine(void);
 
+struct barebox_arm_boarddata_compressed_dtb {
+#define BAREBOX_ARM_BOARDDATA_COMPRESSED_DTB_MAGIC 0x7b66bcbd
+	u32 magic;
+	u32 datalen;
+	u32 datalen_uncompressed;
+};
+
+struct barebox_arm_boarddata *barebox_arm_get_boarddata(void);
+
 #if defined(CONFIG_RELOCATABLE) && defined(CONFIG_ARM_EXCEPTIONS)
 void arm_fixup_vectors(void);
 #else
diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index a920495..40c6085 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -51,6 +51,25 @@ echo "__dtb_${name}_end:"
 echo ".global __dtb_${name}_end"
 echo ".balign STRUCT_ALIGNMENT"
 
+lzop -f -9 $dtb -o $dtb.lzo
+if [ $? != 0 ]; then
+	exit 1
+fi
+compressed=$(stat $dtb.lzo -c "%s")
+uncompressed=$(stat $dtb -c "%s")
+
+echo ".section .dtb.rodata.${name}.z,\"a\""
+echo ".balign STRUCT_ALIGNMENT"
+echo ".global __dtb_z_${name}_start"
+echo "__dtb_z_${name}_start:"
+printf ".word 0x%08x\n"  0x7b66bcbd
+printf ".word 0x%08x\n"  $compressed
+printf ".word 0x%08x\n"  $uncompressed
+echo ".incbin \"$dtb.lzo\""
+echo "__dtb_z_${name}_end:"
+echo ".global __dtb_z_${name}_end"
+echo ".balign STRUCT_ALIGNMENT"
+
 if [ "$imd" = "y" ]; then
 	echo ".word __imd_${name}_start"
 fi
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
