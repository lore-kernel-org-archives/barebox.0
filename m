Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJkt-0007dF-N7
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 14:11:21 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Dec 2019 15:11:12 +0100
Message-Id: <20191209141114.12130-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 1/3] images: i.MX: rearrange image rules in preparation for
 boilerplate removal
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The following commit will introduce a variable define to remove the
duplication in the different [supe]*imximg rules.

Prepare for this by rearranging the command line flags to line up with
the letters in the extension (i.e. -e -s for esimximg instead of -s -e)
and by splitting off a multi-target rule into two.

The former improves readability when the define is introduced, as it is
then easy to see the correspondence between extension and arguments.

The latter is needed because we will call the variable for each target.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
No changes in v2.
---
 images/Makefile.imx | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index a8f8a9b7d622..daf0cf1fcfaa 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -13,17 +13,20 @@ $(obj)/%.pimximg: $(obj)/% FORCE
 	-p $($(patsubst $(obj)/%.pblb,PBL_MEMORY_SIZE_%,$<)))
 
 $(obj)/%.psimximg: $(obj)/% FORCE
-	$(call if_changed,imx_image,$(CFG_$(patsubst %.psimximg,%.imximg,$(@F))),-s \
-	-p $($(patsubst $(obj)/%.pblb,PBL_MEMORY_SIZE_%,$<)))
+	$(call if_changed,imx_image,$(CFG_$(patsubst %.psimximg,%.imximg,$(@F))),\
+	-p $($(patsubst $(obj)/%.pblb,PBL_MEMORY_SIZE_%,$<)) -s)
 
 $(obj)/%.simximg: $(obj)/% FORCE
 	$(call if_changed,imx_image,$(CFG_$(patsubst %.simximg,%.imximg,$(@F))),-s)
 
 $(obj)/%.usimximg: $(obj)/% FORCE
-	$(call if_changed,imx_image,$(CFG_$(patsubst %.usimximg,%.imximg,$(@F))),-s -u)
+	$(call if_changed,imx_image,$(CFG_$(patsubst %.usimximg,%.imximg,$(@F))),-u -s)
+
+$(obj)/%.esimximg: $(obj)/% FORCE
+	$(call if_changed,imx_image,$(CFG_$(patsubst %.esimximg,%.imximg,$(@F))),-e -s)
 
-$(obj)/%.esimximg $(obj)/%.esimximg.dek: $(obj)/% FORCE
-	$(call if_changed,imx_image,$(CFG_$(patsubst %.esimximg,%.imximg,$(@F))),-s -e)
+$(obj)/%.esimximg.dek: $(obj)/% FORCE
+	$(call if_changed,imx_image,$(CFG_$(patsubst %.esimximg,%.imximg,$(@F))),-e -s)
 
 .SECONDEXPANSION:
 $(obj)/%.img.dek: $(obj)/$$(FILE_$$(@F))
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
