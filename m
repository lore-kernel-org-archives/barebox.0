Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJkt-0007dG-NC
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 14:11:21 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Dec 2019 15:11:13 +0100
Message-Id: <20191209141114.12130-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191209141114.12130-1-a.fatoum@pengutronix.de>
References: <20191209141114.12130-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 2/3] ARM: i.MX: introduce imx_image_rule variable for code
 deduplication
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The next patch will add the .imxcfg file as a rule prerequisite, so the
target is rebuilt if it changes. Instead of duplicating it in all rules,
factor out the common parts into a imx_image_rule variable.

As the arguments are now going through an eval, any use of $ must be
escaped with another $ to become $$.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  * escaped PBL_MEMORY_SIZE dollars to fix imx_v8_defconfig pimximg build
  * moved eval into define, so it doesn't need replication for each
    extension
---
 images/Makefile.imx | 36 ++++++++++++++----------------------
 1 file changed, 14 insertions(+), 22 deletions(-)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index daf0cf1fcfaa..80e1acf941c5 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -5,28 +5,20 @@
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
-
-$(obj)/%.esimximg.dek: $(obj)/% FORCE
-	$(call if_changed,imx_image,$(CFG_$(patsubst %.esimximg,%.imximg,$(@F))),-e -s)
+define imx_image_rule
+$(eval
+$$(obj)/%.$(strip $(1)): $$(obj)/% FORCE
+	$$(call if_changed,imx_image,$$(CFG_$$(patsubst %.$(strip $(1)),%.imximg,$$(@F))),$(strip $(2)))
+)
+endef
+
+$(call imx_image_rule,imximg)
+$(call imx_image_rule,pimximg, -p $$($$(patsubst $$(obj)/%.pblb,PBL_MEMORY_SIZE_%,$$<)))
+$(call imx_image_rule,psimximg, -p $$($$(patsubst $$(obj)/%.pblb,PBL_MEMORY_SIZE_%,$$<)) -s)
+$(call imx_image_rule,simximg, -s)
+$(call imx_image_rule,usimximg, -u -s)
+$(call imx_image_rule,esimximg, -e -s)
+$(call imx_image_rule,esimximg.dek, -e -s)
 
 .SECONDEXPANSION:
 $(obj)/%.img.dek: $(obj)/$$(FILE_$$(@F))
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
