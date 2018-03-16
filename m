Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosI-0001qS-AW
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 31/78] ARM: aarch64: fix pbl linker script for aarch64
Date: Fri, 16 Mar 2018 13:53:07 +0100
Message-Id: <20180316125354.23462-32-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

Fix output format for aarch64. Also, relocation fixup symbols are in
rela section rather than rel section.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/pbl.lds.S | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index be0a4a3b1a..9df1800543 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -25,8 +25,13 @@
 #define BASE	(TEXT_BASE - SZ_2M)
 #endif
 
+#ifdef CONFIG_CPU_32
 OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
 OUTPUT_ARCH(arm)
+#else
+OUTPUT_FORMAT("elf64-littleaarch64", "elf64-littleaarch64", "elf64-littleaarch64")
+OUTPUT_ARCH(aarch64)
+#endif
 SECTIONS
 {
 	. = BASE;
@@ -62,7 +67,11 @@ SECTIONS
 	.data : { *(.data*) }
 
 	.rel_dyn_start : { *(.__rel_dyn_start) }
+#ifdef CONFIG_CPU_32
 	.rel.dyn : { *(.rel*) }
+#else
+	.rela.dyn : { *(.rela*) }
+#endif
 	.rel_dyn_end : { *(.__rel_dyn_end) }
 
 	.__dynsym_start :  { *(.__dynsym_start) }
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
