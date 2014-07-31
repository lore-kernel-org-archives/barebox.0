Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCpSj-0002yI-QY
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 12:28:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 31 Jul 2014 14:27:36 +0200
Message-Id: <1406809657-2489-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1406809657-2489-1-git-send-email-s.hauer@pengutronix.de>
References: <1406809657-2489-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] make: Use shell script to generate .dtb.S files
To: barebox@lists.infradead.org

Using shell in make to generate an assembly file is not very
readable and extendable. Add an external shell script instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.lib | 18 +++---------------
 scripts/gen-dtb-s    | 14 ++++++++++++++
 2 files changed, 17 insertions(+), 15 deletions(-)
 create mode 100755 scripts/gen-dtb-s

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 0a6302b..ea086fe 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -210,21 +210,9 @@ cmd_gzip = (cat $(filter-out FORCE,$^) | gzip -n -f -9 > $@) || \
 
 # Generate an assembly file to wrap the output of the device tree compiler
 quiet_cmd_dt_S_dtb = DTB     $@
-cmd_dt_S_dtb=							\
-(								\
-	echo '\#include <asm-generic/barebox.lds.h>';		\
-	echo '.section .dtb.rodata.$(subst -,_,$(*F)),"a"';	\
-	echo '.balign STRUCT_ALIGNMENT';			\
-	echo '.global __dtb_$(subst -,_,$(*F))_start';		\
-	echo '__dtb_$(subst -,_,$(*F))_start:';			\
-	echo '.incbin "$<" ';					\
-	echo '__dtb_$(subst -,_,$(*F))_end:';			\
-	echo '.global __dtb_$(subst -,_,$(*F))_end';		\
-	echo '.balign STRUCT_ALIGNMENT';			\
-) > $@
-
-$(obj)/%.dtb.S: $(obj)/%.dtb
-	$(call cmd,dt_S_dtb)
+cmd_dt_S_dtb= ( $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< > $@
+$(obj)/%.dtb.S: $(obj)/%.dtb $(srctree)/scripts/gen-dtb-s FORCE
+	$(call if_changed,dt_S_dtb)
 
 quiet_cmd_dtc = DTC     $@
 cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
new file mode 100755
index 0000000..44136b0
--- /dev/null
+++ b/scripts/gen-dtb-s
@@ -0,0 +1,14 @@
+#!/bin/bash
+
+name=$1
+dtb=$2
+
+echo "#include <asm-generic/barebox.lds.h>"
+echo ".section .dtb.rodata.${name},\"a\""
+echo ".balign STRUCT_ALIGNMENT"
+echo ".global __dtb_${name}_start"
+echo "__dtb_${name}_start:"
+echo ".incbin \"$dtb\""
+echo "__dtb_${name}_end:"
+echo ".global __dtb_${name}_end"
+echo ".balign STRUCT_ALIGNMENT"
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
