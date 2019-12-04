Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX6J-00024p-Lx
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 16:02:05 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  4 Dec 2019 17:01:59 +0100
Message-Id: <20191204160200.4920-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191204160200.4920-1-a.fatoum@pengutronix.de>
References: <20191204160200.4920-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX: introduce imx_image_rule variable for code
 deduplication
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The next patch will add the .imxcfg file as a rule prerequisite, so the
target is rebuilt if it changes. Instead of duplicating it in all rules,
factor out the common parts into a imx_image_rule variable.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile.imx | 32 +++++++++++---------------------
 1 file changed, 11 insertions(+), 21 deletions(-)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index 53d4ac8202c5..078b6b9d6a93 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -23,28 +23,18 @@ endef
 # %.imximg - convert into i.MX image
 # ----------------------------------------------------------------
 
-$(obj)/%.imximg: $(obj)/% FORCE
-	$(call if_changed,imx_image,$(CFG_$(@F)),)
-
-$(obj)/%.pimximg: $(obj)/% FORCE
-	$(call if_changed,imx_image,$(CFG_$(patsubst %.pimximg,%.imximg,$(@F))),\
-	-p $($(patsubst $(obj)/%.pblb,PBL_MEMORY_SIZE_%,$<)))
-
-$(obj)/%.psimximg: $(obj)/% FORCE
-	$(call if_changed,imx_image,$(CFG_$(patsubst %.psimximg,%.imximg,$(@F))),\
-	-p $($(patsubst $(obj)/%.pblb,PBL_MEMORY_SIZE_%,$<)) -s)
-
-$(obj)/%.simximg: $(obj)/% FORCE
-	$(call if_changed,imx_image,$(CFG_$(patsubst %.simximg,%.imximg,$(@F))),-s)
-
-$(obj)/%.usimximg: $(obj)/% FORCE
-	$(call if_changed,imx_image,$(CFG_$(patsubst %.usimximg,%.imximg,$(@F))),-u -s)
-
-$(obj)/%.esimximg: $(obj)/% FORCE
-	$(call if_changed,imx_image,$(CFG_$(patsubst %.esimximg,%.imximg,$(@F))),-e -s)
+define imx_image_rule
+$$(obj)/%.$(strip $(1)): $$(obj)/% FORCE
+	$$(call if_changed,imx_image,$$(CFG_$$(patsubst %.$(strip $(1)),%.imximg,$$(@F))),$(strip $(2)))
+endef
 
-$(obj)/%.esimximg.dek: $(obj)/% FORCE
-	$(call if_changed,imx_image,$(CFG_$(patsubst %.esimximg,%.imximg,$(@F))),-e -s)
+$(eval $(call imx_image_rule,imximg))
+$(eval $(call imx_image_rule,pimximg, -p $($(patsubst $(obj)/%.pblb,PBL_MEMORY_SIZE_%,$<))))
+$(eval $(call imx_image_rule,psimximg, -p $($(patsubst $(obj)/%.pblb,PBL_MEMORY_SIZE_%,$<)) -s))
+$(eval $(call imx_image_rule,simximg, -s))
+$(eval $(call imx_image_rule,usimximg, -u -s))
+$(eval $(call imx_image_rule,esimximg, -e -s))
+$(eval $(call imx_image_rule,esimximg.dek, -e -s))
 
 .SECONDEXPANSION:
 $(obj)/%.img.dek: $(obj)/$$(FILE_$$(@F))
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
