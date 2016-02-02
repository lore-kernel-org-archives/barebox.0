Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aQcG6-0006tZ-3L
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:48:14 +0100
Message-Id: <1454424497-7157-32-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 31/34] Make: i.MX: Allow to pass config file to cmd_imx_image
To: Barebox List <barebox@lists.infradead.org>

Pass the config file to cmd_imx_image as arguments to make it more
flexible. Also add the possibility for another arg containing additional
options.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.imx  | 4 ++--
 scripts/Makefile.lib | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index ea9346a..e581dbe 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -8,10 +8,10 @@
 ifdef CONFIG_ARCH_IMX_XLOAD
 $(obj)/%.imximg: $(obj)/% FORCE
 	$(call cmd,check_file_size,$<,$(CONFIG_ARCH_IMX_UNUSED_IRAM_SIZE))
-	$(call if_changed,imx_image)
+	$(call if_changed,imx_image,$(CFG_$(@F)),)
 else
 $(obj)/%.imximg: $(obj)/% FORCE
-	$(call if_changed,imx_image)
+	$(call if_changed,imx_image,$(CFG_$(@F)),)
 endif
 
 quiet_cmd_imx_sram_img ?= IMX-SRAM-IMG    $@
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index e991f33..27365d8 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -430,8 +430,8 @@ $(obj)/%.dcd.S: $(obj)/%.dcd
 imximg-tmp = $(subst $(comma),_,$(dot-target).imxcfg.tmp)
 
 quiet_cmd_imx_image = IMX-IMG $@
-      cmd_imx_image = $(CPP) $(imxcfg_cpp_flags) -o $(imximg-tmp) $(CFG_$(@F)) ; \
-		      $(objtree)/scripts/imx/imx-image -o $@ -b -c $(imximg-tmp) -f $<
+      cmd_imx_image = $(CPP) $(imxcfg_cpp_flags) -o $(imximg-tmp) $(2) ; \
+		      $(objtree)/scripts/imx/imx-image -o $@ -b -c $(imximg-tmp) $(3) -f $<
 
 quiet_cmd_kwb_image = KWB     $@
       cmd_kwb_image = scripts/kwbimage -p $< $(OPTS_$(@F)) -o $@
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
