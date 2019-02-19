Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw4E8-0000pv-S5
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 12:10:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gw4E7-0002dl-Gj
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 13:10:19 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC5)
 (envelope-from <afa@pengutronix.de>) id 1gw4E7-0003zo-9M
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 13:10:19 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Feb 2019 13:10:18 +0100
Message-Id: <20190219121018.29736-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190219121018.29736-1-a.fatoum@pengutronix.de>
References: <20190219121018.29736-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] images: allow overriding BAREBOX_MAX_IMAGE_SIZE from arch
 Kconfig
To: barebox@lists.infradead.org

The size restriction imposed by the ROM code of the target SoC is the
upper limit on how big a barebox binary should get. Thus allow the
architecture Kconfig to define an optional (possibly subarch-specific
ARCH_BAREBOX_MAX_IMAGE_SIZE), as a ceiling for the resulting barebox
binary size.

As we define a min function to calculate this, define a max function
as well for symmetry.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile               |  4 +++-
 arch/arm/pbl/Makefile  |  4 +++-
 arch/mips/pbl/Makefile |  4 +++-
 common/Kconfig         |  3 ++-
 images/Makefile        |  4 +++-
 scripts/Makefile.lib   | 13 +++++++++++++
 6 files changed, 27 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index c4030ecbf12e..decba5ee572e 100644
--- a/Makefile
+++ b/Makefile
@@ -719,7 +719,9 @@ OBJCOPYFLAGS_barebox.bin = -O binary
 barebox.bin: barebox FORCE
 	$(call if_changed,objcopy)
 ifndef CONFIG_PBL_IMAGE
-	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
+	$(call cmd,check_file_size,$@, \
+	  $(call min,$(CONFIG_ARCH_BAREBOX_MAX_IMAGE_SIZE) \
+	             $(CONFIG_BAREBOX_MAX_IMAGE_SIZE)))
 endif
 
 # By default the uImage load address is 2MB below CONFIG_TEXT_BASE,
diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index 5d7e85b373a6..95b6772fc21b 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -22,7 +22,9 @@ endif
 
 $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 	$(call if_changed,objcopy)
-	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
+	$(call cmd,check_file_size,$@, \
+	  $(call min,$(CONFIG_ARCH_BAREBOX_MAX_IMAGE_SIZE) \
+	             $(CONFIG_BAREBOX_MAX_IMAGE_SIZE)))
 	$(Q)$(kecho) '  Barebox: fix size'
 	$(Q)$(objtree)/scripts/fix_size -i -f $(objtree)/$@ $(FIX_SIZE)
 	$(Q)$(kecho) '  Barebox: $@ is ready'
diff --git a/arch/mips/pbl/Makefile b/arch/mips/pbl/Makefile
index 44ce3d1c922e..8904d269088a 100644
--- a/arch/mips/pbl/Makefile
+++ b/arch/mips/pbl/Makefile
@@ -16,7 +16,9 @@ extra-y       += piggy.gzip piggy.lz4 piggy.lzo piggy.lzma piggy.xzkern piggy.sh
 
 $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 	$(call if_changed,objcopy)
-	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
+	$(call cmd,check_file_size,$@, \
+	  $(call min,$(CONFIG_ARCH_BAREBOX_MAX_IMAGE_SIZE) \
+	             $(CONFIG_BAREBOX_MAX_IMAGE_SIZE)))
 	$(Q)$(kecho) '  Barebox: $@ is ready'
 
 $(obj)/zbarebox.S: $(obj)/zbarebox FORCE
diff --git a/common/Kconfig b/common/Kconfig
index 2dd5842e530f..b109328b7887 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -225,7 +225,8 @@ config BAREBOX_MAX_IMAGE_SIZE
 	hex
 	default 0xffffffff
 	help
-	  Define the maximum size of barebox
+	  Define the maximum size of barebox unless ARCH_BAREBOX_MAX_IMAGE_SIZE
+	  is set to a more restrictive value.
 
 config BAREBOX_MAX_PBL_SIZE
 	depends on PBL_IMAGE
diff --git a/images/Makefile b/images/Makefile
index 59b81f9b6d8f..b6ec16467308 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -66,7 +66,9 @@ $(obj)/%.pbl: $(pbl-lds) $(barebox-pbl-common) $(obj)/piggy.o FORCE
 
 $(obj)/%.pblb: $(obj)/%.pbl FORCE
 	$(call if_changed,objcopy_bin,$(*F))
-	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
+	$(call cmd,check_file_size,$@, \
+	  $(call min,$(CONFIG_ARCH_BAREBOX_MAX_IMAGE_SIZE) \
+	             $(CONFIG_BAREBOX_MAX_IMAGE_SIZE)))
 
 $(obj)/%.s: $(obj)/% FORCE
 	$(call if_changed,disasm)
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 7b8643bf57a7..1c720515ba54 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -498,3 +498,16 @@ quiet_cmd_b64dec = B64DEC  $@
 
 %: %.base64
 	$(call cmd,b64dec)
+
+# Misc helpers
+# ---------------------------------------------------------------------------
+
+define min
+$(shell printf '%u ' $1 | awk 'BEGIN{ RS=" " } NR==1 { min=$$0 } \
+    NR>1 { if ($$0<min) min=$$0 } END{print min}')
+endef
+
+define max
+$(shell printf '%u ' $1 | awk 'BEGIN{ RS=" " } NR==1 { max=$$0 } \
+    NR>1 { if ($$0>max) max=$$0 } END{print max}')
+endef
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
