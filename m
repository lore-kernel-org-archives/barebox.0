Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqOKV-0000aq-D0
 for barebox@lists.infradead.org; Tue, 10 Dec 2013 14:30:33 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B0A82BF0F8
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2013 14:30:58 +0100 (CET)
From: y@numalfix.phytec.de
Date: Tue, 10 Dec 2013 15:30:09 +0100
Message-Id: <1386685809-21530-3-git-send-email-y>
In-Reply-To: <1386685809-21530-1-git-send-email-y>
References: <1386685809-21530-1-git-send-email-y>
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
Subject: [PATCH 3/3] ARM: OMAP: early call am33xx_register_ethaddr
To: barebox@lists.infradead.org

From: Jan Weitzel <j.weitzel@phytec.de>

am33xx_register_ethaddr must be called before cpsw driver start.
Move it from devices_initcall to coredevice_initcall.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/boards/beaglebone/board.c |   12 ++++++++++--
 arch/arm/boards/pcm051/board.c     |   13 +++++++++++--
 2 files changed, 21 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index 439c4c2..6445d81 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -40,6 +40,16 @@
 
 #include "beaglebone.h"
 
+static int beaglebone_coredevice_init(void)
+{
+	if (!of_machine_is_compatible("ti,am335x-bone"))
+		return 0;
+
+	am33xx_register_ethaddr(0, 0);
+	return 0;
+}
+coredevice_initcall(beaglebone_coredevice_init);
+
 static int beaglebone_devices_init(void)
 {
 	int black;
@@ -54,8 +64,6 @@ static int beaglebone_devices_init(void)
 			omap_set_bootmmc_devname("mmc1");
 	}
 
-	am33xx_register_ethaddr(0, 0);
-
 	black = is_beaglebone_black();
 
 	globalvar_add_simple("board.variant", black ? "boneblack" : "bone");
diff --git a/arch/arm/boards/pcm051/board.c b/arch/arm/boards/pcm051/board.c
index 91e8208..60f00bb 100644
--- a/arch/arm/boards/pcm051/board.c
+++ b/arch/arm/boards/pcm051/board.c
@@ -30,6 +30,17 @@
 #include <mach/am33xx-silicon.h>
 #include <mach/bbu.h>
 
+
+static int pcm051_coredevice_init(void)
+{
+	if (!of_machine_is_compatible("phytec,pcm051"))
+		return 0;
+
+	am33xx_register_ethaddr(0, 0);
+	return 0;
+}
+coredevice_initcall(pcm051_coredevice_init);
+
 static struct omap_barebox_part pcm051_barebox_part = {
 	.nand_offset = SZ_512K,
 	.nand_size = SZ_512K,
@@ -42,8 +53,6 @@ static int pcm051_devices_init(void)
 	if (!of_machine_is_compatible("phytec,pcm051"))
 		return 0;
 
-	am33xx_register_ethaddr(0, 0);
-
 	switch (bootsource_get()) {
 	case BOOTSOURCE_SPI:
 		of_device_enable_path("/chosen/environment-spi");
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
