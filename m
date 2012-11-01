Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTpd3-0007HH-Bl
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 07:55:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Nov 2012 08:55:47 +0100
Message-Id: <1351756548-24640-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351756548-24640-1-git-send-email-s.hauer@pengutronix.de>
References: <1351756548-24640-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] ARM OMAP3 boards: Call omap3_core_init only from SRAM
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagle/board.c          |    3 ++-
 arch/arm/boards/omap343xdsp/board.c     |    3 ++-
 arch/arm/boards/phycard-a-l1/pca-a-l1.c |    3 ++-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index 19bf740..ec26528 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -220,7 +220,8 @@ static int beagle_board_init(void)
 {
 	int in_sdram = running_in_sdram();
 
-	omap3_core_init();
+	if (!in_sdram)
+		omap3_core_init();
 
 	mux_config();
 	/* Dont reconfigure SDRAM while running in SDRAM! */
diff --git a/arch/arm/boards/omap343xdsp/board.c b/arch/arm/boards/omap343xdsp/board.c
index 2343dc0..692cf9a 100644
--- a/arch/arm/boards/omap343xdsp/board.c
+++ b/arch/arm/boards/omap343xdsp/board.c
@@ -76,7 +76,8 @@ static int sdp343x_board_init(void)
 {
 	int in_sdram = running_in_sdram();
 
-	omap3_core_init();
+	if (!in_sdram)
+		omap3_core_init();
 
 	mux_config();
 	if (!in_sdram)
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
index f2d10f2..6652242 100644
--- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
@@ -297,7 +297,8 @@ static int pcaal1_board_init(void)
 {
 	int in_sdram = running_in_sdram();
 
-	omap3_core_init();
+	if (!in_sdram)
+		omap3_core_init();
 
 	pcaal1_mux_config();
 	/* Dont reconfigure SDRAM while running in SDRAM! */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
