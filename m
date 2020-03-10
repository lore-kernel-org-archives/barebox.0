Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBd47-000227-4M
 for barebox@lists.infradead.org; Tue, 10 Mar 2020 11:28:54 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 10 Mar 2020 20:28:14 +0900
Message-Id: <20200310112816.7415-3-masahiroy@kernel.org>
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
Subject: [PATCH 3/5] kbuild: rename barebox-pbl-common to BAREBOX_PBL_OBJS
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

'export barebox-pbl-common' does not work reliably because hyphens
are disallowed in shell variables.

This caused a problem in Linux in the past. See Linux commit 2bfbe7881ee0
("kbuild: Do not use hyphen in exported variable name").

The same problem occurs when you build barebox with O= and the directory
path to the source tree contains a shell special character like '~'.

The maintainer of GNU Make stated that there is no consistent way to
export variables that do not meet the shell's naming criteria.
(https://savannah.gnu.org/bugs/?55719)

Consequently, you cannot use hyphens in exported variables.

Rename barebox-pbl-common to BAREBOX_PBL_OBJS.

I named it after KBUILD_VMLINUX_OBJS in the Linux top Makefile.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile               | 5 ++---
 arch/mips/pbl/Makefile | 2 +-
 images/Makefile        | 4 ++--
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/Makefile b/Makefile
index e9e412af0815..20fa85ed8be4 100644
--- a/Makefile
+++ b/Makefile
@@ -584,8 +584,7 @@ export DEFAULT_COMPRESSION_SUFFIX
 # System.map is generated to document addresses of all kernel symbols
 
 barebox-common := $(common-y)
-barebox-pbl-common := $(pbl-common-y)
-export barebox-pbl-common
+export BAREBOX_PBL_OBJS := $(pbl-common-y)
 barebox-all    := $(barebox-common)
 barebox-lds    := $(lds-y)
 
@@ -777,7 +776,7 @@ barebox.srec: barebox
 
 # The actual objects are generated when descending,
 # make sure no implicit rule kicks in
-$(sort $(barebox-common) ) $(barebox-lds) $(barebox-pbl-common): $(barebox-dirs) ;
+$(sort $(barebox-common) ) $(barebox-lds) $(BAREBOX_PBL_OBJS): $(barebox-dirs) ;
 
 # Handle descending into subdirectories listed in $(barebox-dirs)
 # Preset locale variables to speed up the build process. Limit locale
diff --git a/arch/mips/pbl/Makefile b/arch/mips/pbl/Makefile
index 44ce3d1c922e..8f9e9fe5931c 100644
--- a/arch/mips/pbl/Makefile
+++ b/arch/mips/pbl/Makefile
@@ -25,7 +25,7 @@ $(obj)/zbarebox.S: $(obj)/zbarebox FORCE
 PBL_CPPFLAGS		+= -fdata-sections -ffunction-sections
 LDFLAGS_zbarebox	:= -Map $(obj)/zbarebox.map
 LDFLAGS_zbarebox	+= -static --gc-sections
-zbarebox-common := $(barebox-pbl-common) $(obj)/$(piggy_o)
+zbarebox-common := $(BAREBOX_PBL_OBJS) $(obj)/$(piggy_o)
 zbarebox-lds := $(obj)/zbarebox.lds
 
 quiet_cmd_zbarebox__ ?= LD      $@
diff --git a/images/Makefile b/images/Makefile
index 650baf170f1b..fe29c75e27b1 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -57,12 +57,12 @@ quiet_cmd_elf__ ?= LD      $@
       cmd_elf__ ?= $(LD) $(LDFLAGS_pbl) --gc-sections		\
 		-e $(2) -Map $@.map $(LDFLAGS_$(@F)) -o $@		\
 		-T $(pbl-lds)						\
-		--start-group $(barebox-pbl-common) $(obj)/piggy.o	\
+		--start-group $(BAREBOX_PBL_OBJS) $(obj)/piggy.o	\
 		$(obj)/sha_sum.o --end-group
 
 PBL_CPPFLAGS	+= -fdata-sections -ffunction-sections
 
-$(obj)/%.pbl: $(pbl-lds) $(barebox-pbl-common) $(obj)/piggy.o $(obj)/sha_sum.o FORCE
+$(obj)/%.pbl: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(obj)/piggy.o $(obj)/sha_sum.o FORCE
 	$(call if_changed,elf__,$(*F))
 
 $(obj)/%.pblb: $(obj)/%.pbl FORCE
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
