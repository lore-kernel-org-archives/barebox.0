Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWPsZ-0005Hf-5C
 for barebox@lists.infradead.org; Mon, 21 May 2012 10:30:20 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id q4LAUHP6012558
 for <barebox@lists.infradead.org>; Mon, 21 May 2012 05:30:18 -0500
Received: from DBDE70.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q4LAUGm2022734
 for <barebox@lists.infradead.org>; Mon, 21 May 2012 16:00:16 +0530 (IST)
From: Anand Gadiyar <gadiyar@ti.com>
Date: Mon, 21 May 2012 16:00:11 +0530
Message-ID: <1337596213-15239-3-git-send-email-gadiyar@ti.com>
In-Reply-To: <1337596213-15239-1-git-send-email-gadiyar@ti.com>
References: <1337596213-15239-1-git-send-email-gadiyar@ti.com>
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
Subject: [PATCH 2/4] panda: add i2c and twlcore to panda
To: barebox@lists.infradead.org
Cc: Anand Gadiyar <gadiyar@ti.com>

Add i2c-omap and twlcore driver to panda board.
(Based on similar patch for pcm049).

Signed-off-by: Anand Gadiyar <gadiyar@ti.com>
---
Tested on OMAP4430 Pandaboard

 arch/arm/boards/panda/board.c |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index 26d365c..fcca5dd 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -20,6 +20,7 @@
 #include <mach/gpio.h>
 #include <environment.h>
 #include <mach/xload.h>
+#include <i2c/i2c.h>
 
 static int board_revision;
 
@@ -106,6 +107,12 @@ static void __init panda_boardrev_init(void)
 	pr_info("PandaBoard Revision: %03d\n", board_revision);
 }
 
+static struct i2c_board_info i2c_devices[] = {
+	{
+		I2C_BOARD_INFO("twl6030", 0x48),
+	},
+};
+
 static int panda_devices_init(void)
 {
 	panda_boardrev_init();
@@ -134,6 +141,12 @@ static int panda_devices_init(void)
 		sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);
 	}
 
+	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+	add_generic_device("i2c-omap", DEVICE_ID_DYNAMIC,
+				NULL, 0x48070000, 0x1000,
+				IORESOURCE_MEM, NULL);
+
+
 	add_generic_device("omap-hsmmc", DEVICE_ID_DYNAMIC, NULL, 0x4809C100, SZ_4K,
 			   IORESOURCE_MEM, NULL);
 	panda_ehci_init();
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
