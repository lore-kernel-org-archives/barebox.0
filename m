Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SzvOX-0000MI-9L
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 20:01:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Aug 2012 22:01:01 +0200
Message-Id: <1344628865-32574-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1344628865-32574-1-git-send-email-s.hauer@pengutronix.de>
References: <1344628865-32574-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/9] ARM: fix netx/MLO/s5p image build for pbl
To: barebox@lists.infradead.org

If pbl support is enabled only zbarebox.bin was built, but
not the SoC specific images. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile |   35 ++++++++++++++++++++++-------------
 1 file changed, 22 insertions(+), 13 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 89f645b..63bc9be 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -160,7 +160,16 @@ CPPFLAGS += -fdata-sections -ffunction-sections
 LDFLAGS_barebox += -static --gc-sections
 endif
 
-barebox.netx: barebox.bin
+ifdef CONFIG_IMAGE_COMPRESSION
+KBUILD_BINARY := arch/arm/pbl/zbarebox.bin
+KBUILD_TARGET := zbarebox.bin
+$(KBUILD_BINARY): $(KBUILD_TARGET)
+else
+KBUILD_BINARY := barebox.bin
+KBUILD_TARGET := barebox.bin
+endif
+
+barebox.netx: $(KBUILD_BINARY)
 	$(Q)scripts/gen_netx_image -i $< -o barebox.netx		\
 		--sdramctrl=$(CONFIG_NETX_SDRAM_CTRL)			\
 		--sdramtimctrl=$(CONFIG_NETX_SDRAM_TIMING_CTRL)		\
@@ -169,36 +178,36 @@ barebox.netx: barebox.bin
 		--cookie=$(CONFIG_NETX_COOKIE);
 
 ifeq ($(machine-y),netx)
-KBUILD_IMAGE := barebox.netx
+KBUILD_TARGET := barebox.netx
+KBUILD_BINARY := $(KBUILD_TARGET)
 endif
 
-barebox.s5p: barebox.bin
+barebox.s5p: $(KBUILD_BINARY)
 	$(Q)scripts/s5p_cksum $< barebox.s5p
 
 ifeq ($(CONFIG_ARCH_S5PCxx),y)
-KBUILD_IMAGE := barebox.s5p
+KBUILD_TARGET := barebox.s5p
+KBUILD_BINARY := $(KBUILD_TARGET)
 endif
 
-MLO: barebox.bin
+MLO: $(KBUILD_BINARY)
 	@echo "  IFT    " $@
 	$(Q)scripts/omap_signGP $< $(TEXT_BASE) 1
 	$(Q)test -e $<.ift && mv $<.ift MLO
 
 ifeq ($(CONFIG_OMAP_BUILD_IFT),y)
-KBUILD_IMAGE := MLO
+KBUILD_TARGET := MLO
+KBUILD_BINARY := $(KBUILD_TARGET)
 endif
 
-barebox.ubl: barebox.bin
+barebox.ubl: $(KBUILD_BINARY)
 	@echo "  UBL    " $@
 	$(Q)scripts/mkublheader $< > barebox.ubl
 	$(Q)cat $< >> barebox.ubl
 
 ifeq ($(CONFIG_ARCH_DAVINCI),y)
-KBUILD_IMAGE := barebox.ubl
-endif
-
-ifdef CONFIG_IMAGE_COMPRESSION
-KBUILD_IMAGE := zbarebox.bin
+KBUILD_TARGET := barebox.ubl
+KBUILD_BINARY := $(KBUILD_TARGET)
 endif
 
 pbl := arch/arm/pbl
@@ -208,7 +217,7 @@ zbarebox.S zbarebox.bin zbarebox: barebox.bin
 archclean:
 	$(MAKE) $(clean)=$(pbl)
 
-all: $(KBUILD_IMAGE)
+all: $(KBUILD_BINARY)
 
 archprepare: maketools
 maketools:
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
