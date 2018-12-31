Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdsbq-00009G-0Y
 for barebox@lists.infradead.org; Mon, 31 Dec 2018 08:07:39 +0000
Received: by mail-lj1-x243.google.com with SMTP id k19-v6so23136353lji.11
 for <barebox@lists.infradead.org>; Mon, 31 Dec 2018 00:07:37 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon, 31 Dec 2018 09:07:22 +0100
Message-Id: <20181231080725.2141-3-sam@ravnborg.org>
In-Reply-To: <20181231080725.2141-1-sam@ravnborg.org>
References: <20181231080725.2141-1-sam@ravnborg.org>
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
Subject: [PATCH v1 2/5] images: fix force rebuild of piggy.o
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

piggy.o would be build for every time barebox was built
This had the sideeffect that the image(s) would
always be rebuilt despite no changes

Fix this by adding piggy.o to targets
and avoid an extra command in the rule to create .pblb files

The patch includes the removal of a stray assignment

Fixes: 2078438662 ("Add multi images support")
Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 images/Makefile | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index 8271a0d24..dfdc89811 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -43,7 +43,9 @@
 #
 
 quiet_cmd_objcopy_bin = OBJCOPYB $@
-      cmd_objcopy_bin = $(OBJCOPY) -O binary $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@
+      cmd_objcopy_bin = \
+		$(OBJCOPY) -O binary $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@ && \
+		$(objtree)/scripts/fix_size -f $@
 
 pbl-lds := $(obj)/pbl.lds
 extra-y += $(pbl-lds)
@@ -59,14 +61,11 @@ quiet_cmd_elf__ ?= LD      $@
 
 PBL_CPPFLAGS	+= -fdata-sections -ffunction-sections
 
-piggy_o := piggy.$(suffix_y).o
-
 $(obj)/%.pbl: $(pbl-lds) $(barebox-pbl-common) $(obj)/piggy.o FORCE
 	$(call if_changed,elf__,$(*F))
 
 $(obj)/%.pblb: $(obj)/%.pbl FORCE
 	$(call if_changed,objcopy_bin,$(*F))
-	$(Q)$(objtree)/scripts/fix_size -f $@
 
 $(obj)/%.s: $(obj)/% FORCE
 	$(call if_changed,disasm)
@@ -114,7 +113,7 @@ include $(srctree)/images/Makefile.xburst
 include $(srctree)/images/Makefile.at91
 include $(srctree)/images/Makefile.zynqmp
 
-targets += $(image-y) pbl.lds barebox.x barebox.z
+targets += $(image-y) pbl.lds barebox.x barebox.z piggy.o
 targets += $(patsubst %,%.pblb,$(pblb-y))
 targets += $(patsubst %,%.pbl,$(pblb-y))
 targets += $(patsubst %,%.s,$(pblb-y))
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
