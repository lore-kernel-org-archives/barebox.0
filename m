Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwmYF-000054-Ci
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 10:57:49 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Mon,  3 Sep 2018 12:57:14 +0200
Message-Id: <20180903105715.24263-5-m.niestroj@grinn-global.com>
In-Reply-To: <20180903105715.24263-1-m.niestroj@grinn-global.com>
References: <20180903105715.24263-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH 4/5] images: imx: Add targets for signed encrypted images
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

Add .esimximg and .esimximg.dek targets for signed and encrypted
images and their corresponding DEKs. Also add rule to generate final
.img.dek files.

As an example, adding encrypted images for imx6ull_evk would look like
this:

  FILE_barebox-nxp-imx6ull-evk-encrypted.img = start_nxp_imx6ull_evk.pblx.esimximg
  image-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += barebox-nxp-imx6ull-evk-encrypted.img

  FILE_barebox-nxp-imx6ull-evk-encrypted.img.dek = start_nxp_imx6ull_evk.pblx.esimximg.dek
  image-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += barebox-nxp-imx6ull-evk-encrypted.img.dek

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
Changes rfc -> v1:
 * Add Makefile rule for .dek files

 images/Makefile.imx | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index aefc52af4..156eb6478 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -20,6 +20,14 @@ $(obj)/%.simximg: $(obj)/% FORCE
 $(obj)/%.usimximg: $(obj)/% FORCE
 	$(call if_changed,imx_image,$(CFG_$(patsubst %.usimximg,%.imximg,$(@F))),-s -u)
 
+$(obj)/%.esimximg $(obj)/%.esimximg.dek: $(obj)/% FORCE
+	$(call if_changed,imx_image,$(CFG_$(patsubst %.esimximg,%.imximg,$(@F))),-s -e)
+
+.SECONDEXPANSION:
+$(obj)/%.img.dek: $(obj)/$$(FILE_$$(@F))
+	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
+	$(call if_changed,shipped)
+
 quiet_cmd_imx_sram_img ?= IMX-SRAM-IMG    $@
       cmd_imx_sram_img ?= cat $(obj)/$(patsubst %.imx-sram-img,%.pblb,$(2)) > $@; \
 		  $(call size_append, $(obj)/barebox.z) >> $@; \
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
