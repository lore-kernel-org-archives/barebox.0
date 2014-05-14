Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkg6T-0000qY-NV
 for barebox@lists.infradead.org; Wed, 14 May 2014 20:48:42 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p548307D2.dip0.t-ipconnect.de [84.131.7.210])
 by lynxeye.de (Postfix) with ESMTPA id 142BC18B425A
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 22:46:30 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 14 May 2014 22:45:47 +0200
Message-Id: <1400100352-13002-20-git-send-email-dev@lynxeye.de>
In-Reply-To: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
References: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 20/25] images: add Tegra30 image build rules
To: barebox@lists.infradead.org

Allows to build persistent images for the Tegra30
line of SoCs.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 images/.gitignore     | 2 ++
 images/Makefile       | 3 ++-
 images/Makefile.tegra | 9 +++++++++
 3 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/images/.gitignore b/images/.gitignore
index 5f6f0b2ab2bb..42991af25c4b 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -10,6 +10,8 @@
 *.socfpgaimg
 *.t20img
 *.t20img.cfg
+*.t30img
+*.t30img.cfg
 pbl.lds
 barebox.x
 barebox.z
diff --git a/images/Makefile b/images/Makefile
index 1ad7dace854d..b050dbf312b8 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -117,5 +117,6 @@ images: $(addprefix $(obj)/, $(image-y)) FORCE
 	@for i in $(image-y); do echo $$i; done
 
 clean-files := *.pbl *.pblb *.pblx *.map start_*.imximg *.img barebox.z start_*.kwbimg \
-	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg
+	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
+	*.t30img.cfg
 clean-files += pbl.lds
diff --git a/images/Makefile.tegra b/images/Makefile.tegra
index 6c9a70529eac..7dc44a2d899a 100644
--- a/images/Makefile.tegra
+++ b/images/Makefile.tegra
@@ -10,6 +10,15 @@ quiet_cmd_tegra20_image = T20IMG  $@
 $(obj)/%.t20img: $(obj)/% FORCE
 	$(call if_changed,tegra20_image)
 
+quiet_cmd_tegra30_image = T30IMG  $@
+      cmd_tegra30_image = echo "Version = 0x00030001;Bctcopy = 1; \
+                                Bctfile = $(BCT_$(@F)); \
+                                BootLoader = $(subst .t30img,,$@),0x80108000,0x80108000,Complete;" \
+                                > $@.cfg; \
+                          $(objtree)/scripts/tegra/cbootimage -s tegra30 $@.cfg $@
+$(obj)/%.t30img: $(obj)/% FORCE
+	$(call if_changed,tegra30_image)
+
 board = $(srctree)/arch/$(ARCH)/boards
 
 # ----------------------- Tegra20 based boards ---------------------------
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
