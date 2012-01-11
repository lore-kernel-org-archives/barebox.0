Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rkzck-0002JG-B1
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 14:57:59 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id q0BEvuao022441
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 08:57:57 -0600
Received: from DBDE70.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q0BEvtfl020045
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 20:27:55 +0530 (IST)
From: Sanjeev Premi <premi@ti.com>
Date: Wed, 11 Jan 2012 20:27:22 +0530
Message-ID: <1326293842-3063-6-git-send-email-premi@ti.com>
In-Reply-To: <s.hauer@pengutronix.de,plagnioj@jcrosoft.com,J.Kilb@phytec.de>
References: <s.hauer@pengutronix.de,plagnioj@jcrosoft.com,J.Kilb@phytec.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/5] ARM omap: Set IFT target as MLO
To: barebox@lists.infradead.org

When CONFIG_OMAP_BUILD_IFT is selected, the
target image name was set to "barebox.bin.ift".
This file must be renamed "MLO" before it can
be used on the SD card.

Make this as default behavior.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---

 Did basic boot testing on OMAP3EVM after this
 change.

 arch/arm/Makefile |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 9885634..a994ce2 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -147,12 +147,13 @@ ifeq ($(machine-y),netx)
 KBUILD_IMAGE := barebox.netx
 endif
 
-barebox.bin.ift: barebox.bin
+MLO: barebox.bin
 	@echo "  IFT    " $@
 	$(Q)scripts/omap_signGP barebox.bin $(TEXT_BASE) 1
+	$(Q)test -e barebox.bin.ift && mv barebox.bin.ift MLO
 
 ifeq ($(CONFIG_OMAP_BUILD_IFT),y)
-KBUILD_IMAGE := barebox.bin.ift
+KBUILD_IMAGE := MLO
 endif
 
 all: $(KBUILD_IMAGE)
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
