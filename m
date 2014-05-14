Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkg6T-0000qX-Ne
 for barebox@lists.infradead.org; Wed, 14 May 2014 20:48:42 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p548307D2.dip0.t-ipconnect.de [84.131.7.210])
 by lynxeye.de (Postfix) with ESMTPA id 75D3918B427F
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 22:46:30 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 14 May 2014 22:45:46 +0200
Message-Id: <1400100352-13002-19-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 19/25] images: add Tegra20 image build rules
To: barebox@lists.infradead.org

Allows to build persistent images for the Tegra20
line of SoCs.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 images/.gitignore     | 2 ++
 images/Makefile       | 2 +-
 images/Makefile.tegra | 8 ++++++++
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/images/.gitignore b/images/.gitignore
index 1f601e730f1d..5f6f0b2ab2bb 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -8,6 +8,8 @@
 *.kwbimg
 *.kwbuartimg
 *.socfpgaimg
+*.t20img
+*.t20img.cfg
 pbl.lds
 barebox.x
 barebox.z
diff --git a/images/Makefile b/images/Makefile
index 5509a4cf8003..1ad7dace854d 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -117,5 +117,5 @@ images: $(addprefix $(obj)/, $(image-y)) FORCE
 	@for i in $(image-y); do echo $$i; done
 
 clean-files := *.pbl *.pblb *.pblx *.map start_*.imximg *.img barebox.z start_*.kwbimg \
-	start_*.kwbuartimg *.socfpgaimg *.mlo
+	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg
 clean-files += pbl.lds
diff --git a/images/Makefile.tegra b/images/Makefile.tegra
index c957599958ca..6c9a70529eac 100644
--- a/images/Makefile.tegra
+++ b/images/Makefile.tegra
@@ -1,6 +1,14 @@
 #
 # barebox image generation Makefile for Tegra images
 #
+quiet_cmd_tegra20_image = T20IMG  $@
+      cmd_tegra20_image = echo "Version = 0x00020001;Bctcopy = 1; \
+                                Bctfile = $(BCT_$(@F)); \
+                                BootLoader = $(subst .t20img,,$@),0x00108000,0x00108000,Complete;" \
+                                > $@.cfg; \
+                          $(objtree)/scripts/tegra/cbootimage -s tegra20 $@.cfg $@
+$(obj)/%.t20img: $(obj)/% FORCE
+	$(call if_changed,tegra20_image)
 
 board = $(srctree)/arch/$(ARCH)/boards
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
