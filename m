Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1GlA-0003gv-1i
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 14:06:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 16:06:17 +0200
Message-Id: <1374501981-27403-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374501981-27403-1-git-send-email-s.hauer@pengutronix.de>
References: <1374501981-27403-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] scripts: run imxcfg files through cpp
To: barebox@lists.infradead.org

To allow defines and includes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.lib | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 8830652..4f34b54 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -324,8 +324,13 @@ cmd_imximage_S_dcd=						\
 	echo '.balign STRUCT_ALIGNMENT';			\
 ) > $@
 
+imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp
+
+dcd-tmp = $(subst $(comma),_,$(dot-target).dcd.tmp)
+
 quiet_cmd_dcd = DCD     $@
-      cmd_dcd = $(objtree)/scripts/imx/imx-image -d -o $@ -c $<
+      cmd_dcd = $(CPP) $(imxcfg_cpp_flags) -o $(dcd-tmp) $< ; \
+		$(objtree)/scripts/imx/imx-image -d -o $@ -c $(dcd-tmp)
 
 $(obj)/%.dcd: $(obj)/%.imxcfg FORCE
 	$(call if_changed,dcd)
@@ -333,5 +338,8 @@ $(obj)/%.dcd: $(obj)/%.imxcfg FORCE
 $(obj)/%.dcd.S: $(obj)/%.dcd
 	$(call cmd,imximage_S_dcd)
 
+imximg-tmp = $(subst $(comma),_,$(dot-target).imxcfg.tmp)
+
 quiet_cmd_imx_image = IMX-IMG $@
-      cmd_imx_image = $(objtree)/scripts/imx/imx-image -b -c $(CFG_$(@F)) -f $< -o $@
+      cmd_imx_image = $(CPP) $(imxcfg_cpp_flags) -o $(imximg-tmp) $(CFG_$(@F)) ; \
+		      $(objtree)/scripts/imx/imx-image -o $@ -b -c $(imximg-tmp) -f $<
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
