Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aQcG9-0006td-WF
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:48:15 +0100
Message-Id: <1454424497-7157-33-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 32/34] images: imx: Add targets for signed images and signed
 usb images
To: Barebox List <barebox@lists.infradead.org>

Add .simximg target for signed images and .usimximg for signed
images suitable for USB upload

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile     | 3 ++-
 images/Makefile.imx | 6 ++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/images/Makefile b/images/Makefile
index 2422969..da9cc8d 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -142,5 +142,6 @@ $(flash-list): $(image-y-path)
 
 clean-files := *.pbl *.pblb *.pblx *.map start_*.imximg *.img barebox.z start_*.kwbimg \
 	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
-	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd
+	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd \
+	start_*.simximg start_*.usimximg
 clean-files += pbl.lds
diff --git a/images/Makefile.imx b/images/Makefile.imx
index e581dbe..4ab2dcb 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -14,6 +14,12 @@ $(obj)/%.imximg: $(obj)/% FORCE
 	$(call if_changed,imx_image,$(CFG_$(@F)),)
 endif
 
+$(obj)/%.simximg: $(obj)/% FORCE
+	$(call if_changed,imx_image,$(CFG_$(patsubst %.simximg,%.imximg,$(@F))),-s)
+
+$(obj)/%.usimximg: $(obj)/% FORCE
+	$(call if_changed,imx_image,$(CFG_$(patsubst %.usimximg,%.imximg,$(@F))),-s -u)
+
 quiet_cmd_imx_sram_img ?= IMX-SRAM-IMG    $@
       cmd_imx_sram_img ?= cat $(obj)/$(patsubst %.imx-sram-img,%.pblb,$(2)) > $@; \
 		  $(call size_append, $(obj)/barebox.z) >> $@; \
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
