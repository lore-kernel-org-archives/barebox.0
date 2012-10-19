Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TP21q-0007Xp-JD
 for barebox@lists.infradead.org; Fri, 19 Oct 2012 02:09:39 +0000
Received: from mail606.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 5096ADC238C
 for <barebox@lists.infradead.org>; Fri, 19 Oct 2012 04:16:20 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 19 Oct 2012 04:07:17 +0200
Message-Id: <1350612438-21329-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121019020430.GE22418@game.jcrosoft.org>
References: <20121019020430.GE22418@game.jcrosoft.org>
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
Subject: [PATCH 1/2] pm9g45: fix nand partition in c code
To: barebox@lists.infradead.org

enable bbt too

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/pm9g45/init.c |    7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 17b38d4..a12896b 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -43,6 +43,7 @@ static struct atmel_nand_data nand_pdata = {
 	.rdy_pin	= AT91_PIN_PD3,
 	.enable_pin	= AT91_PIN_PC14,
 	.bus_width_16	= 0,
+	.on_flash_bbt	= 1,
 };
 
 static struct sam9_smc_config pm_nand_smc_config = {
@@ -137,9 +138,11 @@ static int pm9g45_devices_init(void)
 	at91_add_device_eth(0, &macb_pdata);
 	pm9g45_add_device_usbh();
 
-	devfs_add_partition("nand0", 0x00000, 0x80000, DEVFS_PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
+	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
+	devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x40000, 0x40000, DEVFS_PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_6 + 0x100));
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
