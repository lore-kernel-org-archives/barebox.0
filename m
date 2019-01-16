Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjhKG-0003uF-BB
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 09:17:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 Jan 2019 10:17:27 +0100
Message-Id: <20190116091727.20447-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] images: Drop unnecessary fix_size
To: Barebox List <barebox@lists.infradead.org>

Now that we compile the compressed binary into the decompressor we
no longer need fix_size but can use the linker to fill in the image
size into the binary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/pbl.lds.S | 2 +-
 images/Makefile        | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 53c9ce0fe6..e7a94f912e 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -95,6 +95,6 @@ SECTIONS
 
 	.image_end : { *(.__image_end) }
 
-	_barebox_image_size = __image_end - BASE;
+	_barebox_image_size = __piggydata_end - BASE;
 	_barebox_pbl_size = __bss_start - BASE;
 }
diff --git a/images/Makefile b/images/Makefile
index 9bd3caa578..aaf7479a70 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -44,8 +44,7 @@
 
 quiet_cmd_objcopy_bin = OBJCOPYB $@
       cmd_objcopy_bin = \
-		$(OBJCOPY) -O binary $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@ && \
-		$(objtree)/scripts/fix_size -f $@
+		$(OBJCOPY) -O binary $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@
 
 pbl-lds := $(obj)/pbl.lds
 extra-y += $(pbl-lds)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
