Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgEae-0000hc-AA
 for barebox@lists.infradead.org; Sat, 25 May 2013 13:32:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 25 May 2013 15:32:19 +0200
Message-Id: <1369488741-4313-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369488741-4313-1-git-send-email-s.hauer@pengutronix.de>
References: <1369488741-4313-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: pbl: fix make dependencies
To: barebox@lists.infradead.org

The pbl used 'zbarebox.bin' as target instead of the real file. This
lead to strange effects that the images depending on zbarebox.bin were
only built every second time. This uses the full path as target.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d506b12..9bfa2c7 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -190,11 +190,8 @@ endif
 
 ifdef CONFIG_IMAGE_COMPRESSION
 KBUILD_BINARY := arch/arm/pbl/zbarebox.bin
-KBUILD_TARGET := zbarebox.bin
-$(KBUILD_BINARY): $(KBUILD_TARGET)
 else
 KBUILD_BINARY := barebox.bin
-KBUILD_TARGET := barebox.bin
 endif
 
 barebox.netx: $(KBUILD_BINARY)
@@ -206,7 +203,6 @@ barebox.netx: $(KBUILD_BINARY)
 		--cookie=$(CONFIG_NETX_COOKIE);
 
 ifeq ($(machine-y),netx)
-KBUILD_TARGET := barebox.netx
 KBUILD_IMAGE := barebox.netx
 endif
 
@@ -214,7 +210,6 @@ barebox.s5p: $(KBUILD_BINARY)
 	$(Q)scripts/s5p_cksum $< barebox.s5p
 
 ifeq ($(CONFIG_ARCH_S5PCxx),y)
-KBUILD_TARGET := barebox.s5p
 KBUILD_IMAGE := barebox.s5p
 endif
 
@@ -226,7 +221,6 @@ MLO: $(KBUILD_BINARY)
 	$(call if_changed,mlo)
 
 ifeq ($(CONFIG_OMAP_BUILD_IFT),y)
-KBUILD_TARGET := MLO
 KBUILD_IMAGE := MLO
 endif
 
@@ -239,7 +233,6 @@ barebox.ubl: $(KBUILD_BINARY) FORCE
 	$(call if_changed,davinci_ubl_image)
 
 ifeq ($(CONFIG_ARCH_DAVINCI),y)
-KBUILD_TARGET := barebox.ubl
 KBUILD_IMAGE := barebox.ubl
 endif
 
@@ -250,7 +243,6 @@ barebox.spi: $(KBUILD_BINARY) FORCE
 	$(call if_changed,am35xx_spi_image)
 
 ifeq ($(CONFIG_OMAP_BUILD_SPI),y)
-KBUILD_TARGET := barebox.spi
 KBUILD_IMAGE := barebox.spi
 endif
 
@@ -258,13 +250,12 @@ barebox.zynq: $(KBUILD_BINARY)
 	$(Q)scripts/zynq_mkimage $< $@
 
 ifeq ($(machine-y),zynq)
-KBUILD_TARGET := barebox.zynq
 KBUILD_IMAGE := barebox.zynq
 endif
 
 pbl := arch/arm/pbl
-zbarebox.S zbarebox.bin zbarebox: barebox.bin
-	$(Q)$(MAKE) $(build)=$(pbl) $(pbl)/$@
+$(pbl)/zbarebox.S $(pbl)/zbarebox.bin $(pbl)/zbarebox: barebox.bin
+	$(Q)$(MAKE) $(build)=$(pbl) $@
 
 archclean:
 	$(MAKE) $(clean)=$(pbl)
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
