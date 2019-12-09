Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJkt-0007dH-SY
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 14:11:22 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Dec 2019 15:11:14 +0100
Message-Id: <20191209141114.12130-3-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 3/3] ARM: i.MX: rebuild .imximg if DCD table in .imxcfg
 changes
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

So far changing the DCD table didn't trigger a rerun of the i.MX
image utility. To fix this, we need to have the DCD table as prerequisite
to the .imximg rule. The file name is contained in $(CFG_$(@F)), but
can't be used directly because $@ (and by extension @F) has no value
when first expanded in the read-in phase. If we expand a second time
during the target-update phase however, we would get the correct value.

GNU make provides .SECONDEXPANSION to expand all following prerequisites
a second time. Use it to have changes to the DCD table rebuild the
image.

Because we are now using imx_image_rule to generate the target, we must
escape each $ one more time to arrive at $$$$(CFG_$$$$(@F)).

In the final step, we replace $$$$(@F) with %.imximg, so we support the
rules not ending in .imximg as well.

Dependency file generation is still broken however and changed to headers
included in DCD tables won't be caught, but this functionality can be
fixed in a separate patch.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
No changes in v2.
---
 images/Makefile.imx | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index 80e1acf941c5..c4b1bfb35e9f 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -5,9 +5,10 @@
 # %.imximg - convert into i.MX image
 # ----------------------------------------------------------------
 
+.SECONDEXPANSION:
 define imx_image_rule
 $(eval
-$$(obj)/%.$(strip $(1)): $$(obj)/% FORCE
+$$(obj)/%.$(strip $(1)): $$(obj)/% $$$$(CFG_%.imximg) FORCE
 	$$(call if_changed,imx_image,$$(CFG_$$(patsubst %.$(strip $(1)),%.imximg,$$(@F))),$(strip $(2)))
 )
 endef
@@ -20,7 +21,6 @@ $(call imx_image_rule,usimximg, -u -s)
 $(call imx_image_rule,esimximg, -e -s)
 $(call imx_image_rule,esimximg.dek, -e -s)
 
-.SECONDEXPANSION:
 $(obj)/%.img.dek: $(obj)/$$(FILE_$$(@F))
 	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
 	$(call if_changed,shipped)
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
