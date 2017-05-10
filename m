Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward6p.cmail.yandex.net ([87.250.241.191])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8Vkj-0008QI-AV
 for barebox@lists.infradead.org; Wed, 10 May 2017 17:50:23 +0000
Received: from smtp3j.mail.yandex.net (smtp3j.mail.yandex.net
 [IPv6:2a02:6b8:0:801:1::12])
 by forward6p.cmail.yandex.net (Yandex) with ESMTP id 2B24722102
 for <barebox@lists.infradead.org>; Wed, 10 May 2017 20:49:52 +0300 (MSK)
Received: from smtp3j.mail.yandex.net (localhost.localdomain [127.0.0.1])
 by smtp3j.mail.yandex.net (Yandex) with ESMTP id F17CD6240CD9
 for <barebox@lists.infradead.org>; Wed, 10 May 2017 20:49:51 +0300 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Wed, 10 May 2017 20:49:49 +0300
Message-Id: <20170510174949.18631-1-rockford@yandex.ru>
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
Subject: [PATCH] Fix linking with new ld, based on u-boot
To: barebox@lists.infradead.org

---
 Makefile               | 3 +++
 images/Makefile        | 3 +++
 scripts/Kbuild.include | 2 +-
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index afa4bf802..c78f66f73 100644
--- a/Makefile
+++ b/Makefile
@@ -306,6 +306,9 @@ AFLAGS          := -D__ASSEMBLY__
 
 LDFLAGS_barebox	:= -Map barebox.map
 
+# Avoid 'Not enough room for program headers' error on binutils 2.28 onwards.
+LDFLAGS_barebox += $(call ld-option, --no-dynamic-linker)
+
 # Read KERNELRELEASE from include/config/kernel.release (if it exists)
 KERNELRELEASE = $(shell cat include/config/kernel.release 2> /dev/null)
 KERNELVERSION = $(VERSION).$(PATCHLEVEL).$(SUBLEVEL)$(EXTRAVERSION)
diff --git a/images/Makefile b/images/Makefile
index adf950aa9..8c5dac4bf 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -53,6 +53,9 @@ extra-y += $(pbl-lds)
 $(pbl-lds): $(obj)/../arch/$(ARCH)/lib/pbl.lds.S FORCE
 	$(call if_changed_dep,cpp_lds_S)
 
+# Avoid 'Not enough room for program headers' error on binutils 2.28 onwards.
+LDFLAGS += $(call ld-option, --no-dynamic-linker)
+
 quiet_cmd_elf__ ?= LD      $@
       cmd_elf__ ?= $(LD) $(LDFLAGS) --gc-sections -pie			\
 		-e $(2) -Map $@.map $(LDFLAGS_$(@F)) -o $@		\
diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index c7faf67a2..310dcdc94 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -148,7 +148,7 @@ cc-ldoption = $(call try-run,\
 # ld-option
 # Usage: LDFLAGS += $(call ld-option, -X)
 ld-option = $(call try-run,\
-	$(CC) /dev/null -c -o "$$TMPO" ; $(LD) $(1) "$$TMPO" -o "$$TMP",$(1),$(2))
+	$(CC) -x c /dev/null -c -o "$$TMPO" ; $(LD) $(1) "$$TMPO" -o "$$TMP",$(1),$(2))
 
 # ar-option
 # Usage: KBUILD_ARFLAGS := $(call ar-option,D)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
