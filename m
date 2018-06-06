Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQazC-0004Lk-25
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 16:08:36 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Wed,  6 Jun 2018 18:08:09 +0200
Message-Id: <20180606160809.16233-6-m.niestroj@grinn-global.com>
In-Reply-To: <20180606160809.16233-1-m.niestroj@grinn-global.com>
References: <20180606160809.16233-1-m.niestroj@grinn-global.com>
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
Subject: [RFC PATCH 5/5] images: imx: Add targets for signed encrypted images
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

Add .esimximg target for signed and encrypted images.

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
 images/Makefile.imx | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index 5fcfbbefb..c1a601ea9 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -20,6 +20,9 @@ $(obj)/%.simximg: $(obj)/% FORCE
 $(obj)/%.usimximg: $(obj)/% FORCE
 	$(call if_changed,imx_image,$(CFG_$(patsubst %.usimximg,%.imximg,$(@F))),-s -u)
 
+$(obj)/%.esimximg: $(obj)/% FORCE
+	$(call if_changed,imx_image,$(CFG_$(patsubst %.esimximg,%.imximg,$(@F))),-s -e)
+
 quiet_cmd_imx_sram_img ?= IMX-SRAM-IMG    $@
       cmd_imx_sram_img ?= cat $(obj)/$(patsubst %.imx-sram-img,%.pblb,$(2)) > $@; \
 		  $(call size_append, $(obj)/barebox.z) >> $@; \
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
