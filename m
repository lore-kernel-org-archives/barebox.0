Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBd47-000228-4K
 for barebox@lists.infradead.org; Tue, 10 Mar 2020 11:28:52 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 10 Mar 2020 20:28:13 +0900
Message-Id: <20200310112816.7415-2-masahiroy@kernel.org>
In-Reply-To: <20200310112816.7415-1-masahiroy@kernel.org>
References: <20200310112816.7415-1-masahiroy@kernel.org>
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
Subject: [PATCH 2/5] kbuild: remove dead code for modpost
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

rule_barebox-modpost is dead code since it is not invoked by anyone.

$(call barebox-modpost) is dead code too since there is no variable
named 'barebox-modpost'.

We could fix it to $(call rule_barebox-modpost) to invoke the rules,
but I hesitate to enable the code that has never been tested.

barebox-init, barebox-main are not set by anyone, so this code does
not seem to work.

The code is completely out of sync from the upstream Linux, so there
is no good reason to keep this rotten code.

If barebox needs modpost, this should be re-implemented correctly.
(preferably, by re-syncing with the latest Linux)

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/Makefile b/Makefile
index 1fa09b041360..e9e412af0815 100644
--- a/Makefile
+++ b/Makefile
@@ -716,19 +716,6 @@ debug_kallsyms: .tmp_map$(last_kallsyms)
 
 endif # ifdef CONFIG_KALLSYMS
 
-# Do modpost on a prelinked vmlinux. The finally linked vmlinux has
-# relevant sections renamed as per the linker script.
-quiet_cmd_barebox-modpost = LD      $@
-      cmd_barebox-modpost = $(LD) $(LDFLAGS) -r -o $@                          \
-	 $(vmlinux-init) --start-group $(barebox-main) --end-group             \
-	 $(filter-out $(barebox-init) $(barebox-main) $(barebox-lds) FORCE ,$^)
-define rule_barebox-modpost
-	:
-	+$(call cmd,barebox-modpost)
-	$(Q)$(MAKE) -f $(srctree)/scripts/Makefile.modpost $@
-	$(Q)echo 'cmd_$@ := $(cmd_barebox-modpost)' > $(dot-target).cmd
-endef
-
 OBJCOPYFLAGS_barebox.bin = -O binary
 
 barebox.bin: barebox FORCE
@@ -782,7 +769,6 @@ endif
 
 # barebox image
 barebox: $(barebox-lds) $(barebox-common) $(kallsyms.o) FORCE
-	$(call barebox-modpost)
 	$(call if_changed_rule,barebox__)
 	$(Q)rm -f .old_version
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
