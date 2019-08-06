Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurkm-0007SY-RD
 for barebox@lists.infradead.org; Tue, 06 Aug 2019 05:11:23 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  6 Aug 2019 07:10:59 +0200
Message-Id: <9f59d1aa9fb6d60394bdc1897be987731646b2f3.1565068235.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
References: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v3 09/16] images: always build sha256sum into pbl
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Create a sha256sum of the compressed barebox image and always add it to
the PBL. We also add a custom linker section for ARM, to retrieve the
sha256sum for piggydata verification.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/lib/pbl.lds.S |  7 +++++++
 images/Makefile        | 22 +++++++++++++++++++---
 images/sha_sum.S       |  7 +++++++
 3 files changed, 33 insertions(+), 3 deletions(-)
 create mode 100644 images/sha_sum.S

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index d2f5ab2..01ed384 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -68,6 +68,13 @@ SECTIONS
 	. = ALIGN(4);
 	.data : { *(.data*) }
 
+	. = ALIGN(4);
+	__shasum_start = .;
+	.shasum : {
+		KEEP(*(.shasum))
+	}
+	__shasum_end = .;
+
 	.rel_dyn_start : { *(.__rel_dyn_start) }
 #ifdef CONFIG_CPU_32
 	.rel.dyn : { *(.rel*) }
diff --git a/images/Makefile b/images/Makefile
index 293e644..907986e 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -57,11 +57,12 @@ quiet_cmd_elf__ ?= LD      $@
       cmd_elf__ ?= $(LD) $(LDFLAGS_barebox) --gc-sections		\
 		-e $(2) -Map $@.map $(LDFLAGS_$(@F)) -o $@		\
 		-T $(pbl-lds)						\
-		--start-group $(barebox-pbl-common) $(obj)/piggy.o --end-group
+		--start-group $(barebox-pbl-common) $(obj)/piggy.o	\
+		$(obj)/sha_sum.o --end-group
 
 PBL_CPPFLAGS	+= -fdata-sections -ffunction-sections
 
-$(obj)/%.pbl: $(pbl-lds) $(barebox-pbl-common) $(obj)/piggy.o FORCE
+$(obj)/%.pbl: $(pbl-lds) $(barebox-pbl-common) $(obj)/piggy.o $(obj)/sha_sum.o FORCE
 	$(call if_changed,elf__,$(*F))
 
 $(obj)/%.pblb: $(obj)/%.pbl FORCE
@@ -111,6 +112,21 @@ suffix_$(CONFIG_IMAGE_COMPRESSION_NONE) = comp_copy
 
 $(obj)/piggy.o: $(obj)/barebox.z FORCE
 
+$(obj)/sha_sum.o: $(obj)/barebox.sha.bin FORCE
+
+quiet_cmd_sha256bin ?= SHA-BIN $@
+      cmd_sha256bin ?= printf "$(shell awk '{printf $$1}' < $(obj)/barebox.sum | sed -e 's/../\\x&/g' )" > $@
+
+quiet_cmd_sha256sum ?= SHA     $@
+      cmd_sha256sum ?= sha256sum $(obj)/barebox.z > $@
+
+$(obj)/barebox.sha.bin: $(obj)/barebox.sum FORCE
+	$(call if_changed,sha256bin)
+
+$(obj)/barebox.sum: $(obj)/barebox.z FORCE
+	$(call if_changed,sha256sum)
+
+
 # barebox.z - compressed barebox binary
 # ----------------------------------------------------------------
 $(obj)/barebox.z: $(obj)/../barebox.bin FORCE
@@ -152,7 +168,7 @@ ifneq ($(pblx-y)$(pblx-),)
   $(error pblx- has been removed. Please use pblb- instead.)
 endif
 
-targets += $(image-y) pbl.lds barebox.x barebox.z piggy.o
+targets += $(image-y) pbl.lds barebox.x barebox.z piggy.o sha_sum.o barebox.sha.bin barebox.sum
 targets += $(patsubst %,%.pblb,$(pblb-y))
 targets += $(patsubst %,%.pbl,$(pblb-y))
 targets += $(patsubst %,%.s,$(pblb-y))
diff --git a/images/sha_sum.S b/images/sha_sum.S
new file mode 100644
index 0000000..5928c20
--- /dev/null
+++ b/images/sha_sum.S
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+        .section .shasum,"a"
+        .globl  sha_sum
+sha_sum:
+        .incbin "images/barebox.sha.bin"
+        .globl  sha_sum_end
+sha_sum_end:
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
