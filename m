Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7zHW-0007Rv-6q
 for barebox@lists.infradead.org; Tue, 18 Aug 2020 10:55:58 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 18 Aug 2020 19:55:19 +0900
Message-Id: <20200818105520.32326-4-masahiroy@kernel.org>
In-Reply-To: <20200818105520.32326-1-masahiroy@kernel.org>
References: <20200818105520.32326-1-masahiroy@kernel.org>
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
Subject: [PATCH 4/5] kbuild: sync the top level Kbuild file with Linux
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

 - Convert 'always' to 'always-y'

 - Remove redundant 'targets' assignment

 - Use filechk for the offset generation to avoid unneeded
   rebuilds when the content of asm-offsets.h is not changed

 - Remove the explicit build rule of asm-offsets.s because
   it can be built of the pattern rule in scripts/Makefile.build

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Kbuild | 28 ++++++++++++----------------
 1 file changed, 12 insertions(+), 16 deletions(-)

diff --git a/Kbuild b/Kbuild
index 329609604..519be4a3c 100644
--- a/Kbuild
+++ b/Kbuild
@@ -1,14 +1,15 @@
-#####
-# 1) Generate asm-offsets.h
+# SPDX-License-Identifier: GPL-2.0
 #
+# Kbuild for top-level directory of Barebox
+
+#####
+# Generate asm-offsets.h
 
 offsets-file := include/generated/asm-offsets.h
 
-always  += $(offsets-file)
-targets += $(offsets-file)
+always-y += $(offsets-file)
 targets += arch/$(SRCARCH)/lib/asm-offsets.s
 
-
 # Default sed regexp - multiline due to syntax constraints
 define sed-y
 	"/^->/{s:->#\(.*\):/* \1 */:; \
@@ -17,9 +18,9 @@ define sed-y
 	s:->::; p;}"
 endef
 
-quiet_cmd_offsets = GEN     $@
-define cmd_offsets
-	(set -e; \
+# Use filechk to avoid rebuilds when a header changes, but the resulting file
+# does not
+define filechk_offsets
 	 echo "#ifndef __ASM_OFFSETS_H__"; \
 	 echo "#define __ASM_OFFSETS_H__"; \
 	 echo "/*"; \
@@ -31,13 +32,8 @@ define cmd_offsets
 	 echo ""; \
 	 sed -ne $(sed-y) $<; \
 	 echo ""; \
-	 echo "#endif" ) > $@
+	 echo "#endif"
 endef
 
-# We use internal kbuild rules to avoid the "is up to date" message from make
-arch/$(SRCARCH)/lib/asm-offsets.s: arch/$(SRCARCH)/lib/asm-offsets.c FORCE
-	$(Q)mkdir -p $(dir $@)
-	$(call if_changed_dep,cc_s_c)
-
-$(obj)/$(offsets-file): arch/$(SRCARCH)/lib/asm-offsets.s Kbuild
-	$(call cmd,offsets)
+$(offsets-file): arch/$(SRCARCH)/lib/asm-offsets.s FORCE
+	$(call filechk,offsets)
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
