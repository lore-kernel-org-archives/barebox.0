Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvOT-0004Wb-1w
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:33:14 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id 1429018B427A
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:34 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:35:15 +0200
Message-Id: <1401827717-6420-29-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 28/30] images: add Tegra124 image build rules
To: barebox@lists.infradead.org

Allows to build persistent images for the Tegra124
line of SoCs.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 images/.gitignore     | 2 ++
 images/Makefile       | 2 +-
 images/Makefile.tegra | 9 +++++++++
 3 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/images/.gitignore b/images/.gitignore
index 42991af..ec9e3c0 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -12,6 +12,8 @@
 *.t20img.cfg
 *.t30img
 *.t30img.cfg
+*.t124img
+*.t124img.cfg
 pbl.lds
 barebox.x
 barebox.z
diff --git a/images/Makefile b/images/Makefile
index b050dbf..740c197 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -118,5 +118,5 @@ images: $(addprefix $(obj)/, $(image-y)) FORCE
 
 clean-files := *.pbl *.pblb *.pblx *.map start_*.imximg *.img barebox.z start_*.kwbimg \
 	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
-	*.t30img.cfg
+	*.t30img.cfg *.t124img *.t124img.cfg
 clean-files += pbl.lds
diff --git a/images/Makefile.tegra b/images/Makefile.tegra
index f22c2d3..0d76062 100644
--- a/images/Makefile.tegra
+++ b/images/Makefile.tegra
@@ -19,6 +19,15 @@ quiet_cmd_tegra30_image = T30IMG  $@
 $(obj)/%.t30img: $(obj)/% FORCE
 	$(call if_changed,tegra30_image)
 
+quiet_cmd_tegra124_image = T124IMG  $@
+      cmd_tegra124_image = echo "Version = 0x00400001;Bctcopy = 1; \
+                                Bctfile = $(BCT_$(@F)); \
+                                BootLoader = $(subst .t124img,,$@),0x80108000,0x80108000,Complete;" \
+                                > $@.cfg; \
+                          $(objtree)/scripts/tegra/cbootimage -s tegra124 $@.cfg $@
+$(obj)/%.t124img: $(obj)/% FORCE
+	$(call if_changed,tegra124_image)
+
 board = $(srctree)/arch/$(ARCH)/boards
 
 # ----------------------- Tegra20 based boards ---------------------------
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
