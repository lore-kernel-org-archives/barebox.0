Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZYtDu-0002bo-Qb
 for barebox@lists.infradead.org; Mon, 07 Sep 2015 10:00:27 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 661B5A00200
 for <barebox@lists.infradead.org>; Mon,  7 Sep 2015 12:00:07 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Mon, 7 Sep 2015 11:59:54 +0200
Message-Id: <1441619994-22444-2-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1441619994-22444-1-git-send-email-d.schultz@phytec.de>
References: <1441619994-22444-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v2 2/2] ARM: am335x: Register eMMC MLO handler
To: barebox@lists.infradead.org

Register the eMMC MLO handler to the barebox_update command.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---

Changes:
	v2:
	No changes

 arch/arm/boards/beaglebone/board.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index 4e0e374..5717c45 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -38,6 +38,7 @@
 #include <mach/syslib.h>
 #include <mach/gpmc.h>
 #include <linux/err.h>
+#include <mach/bbu.h>
 
 #include "beaglebone.h"
 
@@ -92,6 +93,9 @@ static int beaglebone_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_BEAGLEBONE);
 
+	/* Register update handler */
+	am33xx_bbu_emmc_mlo_register_handler("MLO.emmc", "/dev/mmc1");
+
 	if (IS_ENABLED(CONFIG_SHELL_NONE))
 		return am33xx_of_register_bootdevice();
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
