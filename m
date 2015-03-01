Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YS3gc-0001JS-0t
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 13:13:34 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 9E12126C2001
 for <barebox@lists.infradead.org>; Sun,  1 Mar 2015 14:12:40 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  1 Mar 2015 14:12:37 +0100
Message-Id: <1425215557-6525-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] ARM: do not specify -static and -pie at the same time
To: barebox@lists.infradead.org

PIE is a form of dynamic linking and thus inherently incompatible
with -static. It worked ok as the current behavior of ld.bfd is
to not respect -static if -pie has been specified.

ld.gold and future versions of ld.bfd will fail to link if both
of those incompatible switches are specified at the same time.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/Makefile     | 4 +++-
 arch/arm/pbl/Makefile | 5 +++--
 images/Makefile       | 2 +-
 3 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index f0133d4..b3abcae 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -105,10 +105,12 @@ CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE)
 
 # Add cleanup flags
 CPPFLAGS += -fdata-sections -ffunction-sections
-LDFLAGS_barebox += -static --gc-sections
+LDFLAGS_barebox += --gc-sections
 
 ifdef CONFIG_RELOCATABLE
 LDFLAGS_barebox += -pie
+else
+LDFLAGS_barebox += -static
 endif
 
 ifdef CONFIG_IMAGE_COMPRESSION
diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index 1b90b37..4c1788d 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -31,10 +31,11 @@ $(obj)/zbarebox.S: $(obj)/zbarebox FORCE
 	$(call if_changed,disasm)
 
 PBL_CPPFLAGS		+= -fdata-sections -ffunction-sections
-LDFLAGS_zbarebox	:= -Map $(obj)/zbarebox.map
-LDFLAGS_zbarebox	+= -static --gc-sections
+LDFLAGS_zbarebox	:= -Map $(obj)/zbarebox.map --gc-sections
 ifdef CONFIG_PBL_RELOCATABLE
 LDFLAGS_zbarebox += -pie
+else
+LDFLAGS_zbarebox += -static
 endif
 zbarebox-common := $(barebox-pbl-common) $(obj)/$(piggy_o)
 zbarebox-lds := $(obj)/zbarebox.lds
diff --git a/images/Makefile b/images/Makefile
index 7c3aaf7..f7e978c 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -54,7 +54,7 @@ $(pbl-lds): $(obj)/../arch/$(ARCH)/lib/pbl.lds.S FORCE
 	$(call if_changed_dep,cpp_lds_S)
 
 quiet_cmd_elf__ ?= LD      $@
-      cmd_elf__ ?= $(LD) $(LDFLAGS) -static --gc-sections -pie		\
+      cmd_elf__ ?= $(LD) $(LDFLAGS) --gc-sections -pie			\
 		-e $(2) -Map $@.map $(LDFLAGS_$(@F)) -o $@		\
 		-T $(pbl-lds)						\
 		--start-group $(barebox-pbl-common) --end-group
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
