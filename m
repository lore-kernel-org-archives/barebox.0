Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0RUt-0007dI-Lw
 for barebox@lists.infradead.org; Wed, 21 Aug 2019 14:22:01 +0000
From: Maik Otto <m.otto@phytec.de>
Date: Wed, 21 Aug 2019 16:21:47 +0200
Message-Id: <1566397308-450229-4-git-send-email-m.otto@phytec.de>
In-Reply-To: <1566397308-450229-1-git-send-email-m.otto@phytec.de>
References: <1566397308-450229-1-git-send-email-m.otto@phytec.de>
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
Subject: [PATCH v4 4/5] Makefile.imx: add build_imx_habv4img for creation of
 signed/encrypted images
To: barebox@lists.infradead.org

add the function build_imx_habv4img, which based on the prototype of
Roland Hieber, for creation of unsigned,signed and encrypted images

Signed-off-by: Maik Otto <m.otto@phytec.de>
---
Changes in v4:
    - add build_imx_habv4img, which based on prototype from Roland Hieber
    - move the barebox image definition changes in a seperated patch
Changes in v3:
    - nothing                                                                   
Changes in v2:                                                        
    - was Patch 2/4 in v1           
    - no dynamic variable, parallel building of different image types now
---
 images/Makefile.imx | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index 42c194b..bfe77ec 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -2,6 +2,24 @@
 # barebox image generation Makefile for i.MX images
 #
 
+# params: CONFIG symbol, entry point, flash header path string, board identifier string
+define build_imx_habv4img =
+$(eval
+ifeq ($($(strip $(1))), y)
+	pblb-y += $(strip $(2))
+	CFG_$(strip $(2)).pblb.imximg = $(board)/$(strip $(3)).imxcfg
+	FILE_barebox-$(strip $(4)).img    = $(strip $(2)).pblb.imximg
+	FILE_barebox-$(strip $(4))-s.img  = $(strip $(2)).pblb.simximg
+	FILE_barebox-$(strip $(4))-us.img = $(strip $(2)).pblb.usimximg
+	FILE_barebox-$(strip $(4))-es.img = $(strip $(2)).pblb.esimximg
+	image-y += barebox-$(strip $(4)).img
+	image-$(CONFIG_HABV4_IMAGE_SIGNED) += barebox-$(strip $(4))-s.img
+	image-$(CONFIG_HABV4_IMAGE_SIGNED_USB) += barebox-$(strip $(4))-us.img
+	image-$(CONFIG_HABV4_IMAGE_SIGNED_ENCRYPTED) += barebox-$(strip $(4))-es.img
+endif
+)
+endef
+
 # %.imximg - convert into i.MX image
 # ----------------------------------------------------------------
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
