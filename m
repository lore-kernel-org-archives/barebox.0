Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU1Wt-0002Nv-Dz
 for barebox@lists.infradead.org; Thu, 30 Apr 2020 05:14:38 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 30 Apr 2020 14:13:54 +0900
Message-Id: <20200430051357.766084-1-masahiroy@kernel.org>
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
Subject: [PATCH 1/4] kbuild: do not delete $@ explicitly on failure
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

The .DELETE_ON_ERROR special target is specified in scripts/Kbuild.include

You do not need to delete $@ explicitly when the command fails.
GNU Make automatically does it.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile                | 6 +-----
 arch/arm/tools/Makefile | 2 +-
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/Makefile b/Makefile
index de9b40ade..967c27909 100644
--- a/Makefile
+++ b/Makefile
@@ -643,11 +643,7 @@ define rule_barebox__
 
 	$(Q)$(if $($(quiet)cmd_sysmap),                                      \
 	  echo '  $($(quiet)cmd_sysmap)  System.map' &&)                     \
-	$(cmd_sysmap) $@ System.map;                                         \
-	if [ $$? -ne 0 ]; then                                               \
-		rm -f $@;                                                    \
-		false;                                                       \
-	fi;
+	$(cmd_sysmap) $@ System.map
 endef
 
 ifdef CONFIG_KALLSYMS
diff --git a/arch/arm/tools/Makefile b/arch/arm/tools/Makefile
index 67ae9e701..bff825e58 100644
--- a/arch/arm/tools/Makefile
+++ b/arch/arm/tools/Makefile
@@ -7,4 +7,4 @@
 include/generated/mach-types.h: $(src)/gen-mach-types $(src)/mach-types
 	$(Q)$(kecho) '  Generating $@'
 	$(Q)mkdir -p $(dir $@)
-	$(Q)$(AWK) -f $^ > $@ || { rm -f $@; /bin/false; }
+	$(Q)$(AWK) -f $^ > $@
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
