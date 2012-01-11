Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RkzcX-00028u-Ae
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 14:57:46 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id q0BEvg2G022399
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 08:57:43 -0600
Received: from DBDE70.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q0BEvgh5020016
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 20:27:42 +0530 (IST)
From: Sanjeev Premi <premi@ti.com>
Date: Wed, 11 Jan 2012 20:27:18 +0530
Message-ID: <1326293842-3063-2-git-send-email-premi@ti.com>
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
Subject: [PATCH 1/5] ARM omap: Use updated config option
To: barebox@lists.infradead.org

The config option CONFIG_GPMC is renamed to
CONFIG_OMAP_GPMC as result of this commit:
  819f416b86b0d4ad3b6e1ec6375a626aabb96bbd

Still, sources continue to use CONFIG_GPMC.
Fix it.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---

 Did basic boot testing on OMAP3EVM after this
 change.


 arch/arm/boards/omap/board-beagle.c     |    2 +-
 arch/arm/boards/omap/board-omap3evm.c   |    2 +-
 arch/arm/boards/omap/board-sdp343x.c    |    2 +-
 arch/arm/boards/phycard-a-l1/pca-a-l1.c |    2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index e5f0f94..5f8c2df 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -298,7 +298,7 @@ static int beagle_devices_init(void)
 		add_usb_ehci_device(-1, 0x48064700 + 0x100,
 				    0x48064700 + 0x110, &ehci_pdata);
 #endif /* CONFIG_USB_EHCI_OMAP */
-#ifdef CONFIG_GPMC
+#ifdef CONFIG_OMAP_GPMC
 	/* WP is made high and WAIT1 active Low */
 	gpmc_generic_init(0x10);
 #endif
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index d2f041a..9e96bc8 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -246,7 +246,7 @@ mem_initcall(omap3evm_mem_init);

 static int omap3evm_init_devices(void)
 {
-#ifdef CONFIG_GPMC
+#ifdef CONFIG_OMAP_GPMC
 	/*
 	 * WP is made high and WAIT1 active Low
 	 */
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index d486c20..73aefb2 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -635,7 +635,7 @@ mem_initcall(sdp3430_mem_init);

 static int sdp3430_devices_init(void)
 {
-#ifdef CONFIG_GPMC
+#ifdef CONFIG_OMAP_GPMC
 	/* WP is made high and WAIT1 active Low */
 	gpmc_generic_init(0x10);
 #endif
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
index 6fe27b7..7b127f3 100644
--- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
@@ -286,7 +286,7 @@ static void pcaal1_setup_net_chip(void)
 static int pcaal1_mem_init(void)
 {

-#ifdef CONFIG_GPMC
+#ifdef CONFIG_OMAP_GPMC
 	/*
 	 * WP is made high and WAIT1 active Low
 	 */
--
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
