Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SzvOn-0000TI-5v
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 20:01:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Aug 2012 22:01:00 +0200
Message-Id: <1344628865-32574-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/9] ARM Makefile: Do not hardcode targets in
 MLO/netx/davinci/s5p
To: barebox@lists.infradead.org

use $< rather than barebox.bin directly

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index be4ef30..89f645b 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -161,7 +161,7 @@ LDFLAGS_barebox += -static --gc-sections
 endif
 
 barebox.netx: barebox.bin
-	$(Q)scripts/gen_netx_image -i barebox.bin -o barebox.netx		\
+	$(Q)scripts/gen_netx_image -i $< -o barebox.netx		\
 		--sdramctrl=$(CONFIG_NETX_SDRAM_CTRL)			\
 		--sdramtimctrl=$(CONFIG_NETX_SDRAM_TIMING_CTRL)		\
 		--memctrl=$(CONFIG_NETX_MEM_CTRL)			\
@@ -173,7 +173,7 @@ KBUILD_IMAGE := barebox.netx
 endif
 
 barebox.s5p: barebox.bin
-	$(Q)scripts/s5p_cksum barebox.bin barebox.s5p
+	$(Q)scripts/s5p_cksum $< barebox.s5p
 
 ifeq ($(CONFIG_ARCH_S5PCxx),y)
 KBUILD_IMAGE := barebox.s5p
@@ -181,8 +181,8 @@ endif
 
 MLO: barebox.bin
 	@echo "  IFT    " $@
-	$(Q)scripts/omap_signGP barebox.bin $(TEXT_BASE) 1
-	$(Q)test -e barebox.bin.ift && mv barebox.bin.ift MLO
+	$(Q)scripts/omap_signGP $< $(TEXT_BASE) 1
+	$(Q)test -e $<.ift && mv $<.ift MLO
 
 ifeq ($(CONFIG_OMAP_BUILD_IFT),y)
 KBUILD_IMAGE := MLO
@@ -190,8 +190,8 @@ endif
 
 barebox.ubl: barebox.bin
 	@echo "  UBL    " $@
-	$(Q)scripts/mkublheader barebox.bin > barebox.ubl
-	$(Q)cat barebox.bin >> barebox.ubl
+	$(Q)scripts/mkublheader $< > barebox.ubl
+	$(Q)cat $< >> barebox.ubl
 
 ifeq ($(CONFIG_ARCH_DAVINCI),y)
 KBUILD_IMAGE := barebox.ubl
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
