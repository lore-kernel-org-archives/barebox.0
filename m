Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout04.rmx.de ([94.199.90.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw4Tk-0003pV-AR
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 13:31:02 +0000
Received: from kdin01.retarus.com (kdin01.dmz1.retloc [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout04.rmx.de (Postfix) with ESMTPS id 485rH25bBRz3r02r
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 14:30:54 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 485rH20BKNz2yvL
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 14:30:54 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Mon, 27 Jan 2020 14:30:43 +0100
Message-ID: <20200127133043.8012-1-ceggers@arri.de>
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
Subject: [PATCH] images: Use separate LDFLAGS for PBL
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

When setting CONFIG_PBL_RELOCATABLE=y (selected by PBL_MULTI_IMAGES) and
CONFIG_RELOCATABLE=n (trying to reduce image size), the PBL is also
linked with "-static" instead of "-pie". The result is a non-working
PBL.

As a side effect, also get rid of erroneous "-Map barebox.map" when
linking the PBL.

Only changed for ARM, are any other platforms affected?

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 Makefile          | 2 ++
 arch/arm/Makefile | 7 +++++++
 images/Makefile   | 2 +-
 3 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index e08849718..49861508a 100644
--- a/Makefile
+++ b/Makefile
@@ -313,6 +313,7 @@ LDFLAGS_barebox	:= -Map barebox.map
 
 # Avoid 'Not enough room for program headers' error on binutils 2.28 onwards.
 LDFLAGS_barebox += $(call ld-option, --no-dynamic-linker)
+LDFLAGS_pbl += $(call ld-option, --no-dynamic-linker)
 
 # Read KERNELRELEASE from include/config/kernel.release (if it exists)
 KERNELRELEASE = $(shell cat include/config/kernel.release 2> /dev/null)
@@ -328,6 +329,7 @@ export CPPFLAGS NOSTDINC_FLAGS LINUXINCLUDE OBJCOPYFLAGS LDFLAGS
 export CFLAGS CFLAGS_KERNEL
 export AFLAGS AFLAGS_KERNEL
 export LDFLAGS_barebox
+export LDFLAGS_pbl
 
 export CFLAGS_UBSAN
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 740b0790e..29fd8e276 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -140,6 +140,7 @@ CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE)
 # Add cleanup flags
 CPPFLAGS += -fdata-sections -ffunction-sections
 LDFLAGS_barebox += --gc-sections
+LDFLAGS_pbl += --gc-sections
 
 # early code often runs at addresses we are not linked at
 CPPFLAGS += -fPIE
@@ -150,6 +151,12 @@ else
 LDFLAGS_barebox += -static
 endif
 
+ifdef CONFIG_PBL_RELOCATABLE
+LDFLAGS_pbl += -pie
+else
+LDFLAGS_pbl += -static
+endif
+
 KBUILD_BINARY := barebox.bin
 
 barebox.s5p: $(KBUILD_BINARY)
diff --git a/images/Makefile b/images/Makefile
index 34b7a5610..650baf170 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -54,7 +54,7 @@ $(pbl-lds): $(obj)/../arch/$(ARCH)/lib/pbl.lds.S FORCE
 	$(call if_changed_dep,cpp_lds_S)
 
 quiet_cmd_elf__ ?= LD      $@
-      cmd_elf__ ?= $(LD) $(LDFLAGS_barebox) --gc-sections		\
+      cmd_elf__ ?= $(LD) $(LDFLAGS_pbl) --gc-sections		\
 		-e $(2) -Map $@.map $(LDFLAGS_$(@F)) -o $@		\
 		-T $(pbl-lds)						\
 		--start-group $(barebox-pbl-common) $(obj)/piggy.o	\
-- 
Christian Eggers
Embedded software developer

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
