Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1REHxN-0007oO-U8
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 09:52:06 +0000
Received: from localhost (humanoidz.org [82.247.183.72])
	by mail.free-electrons.com (Postfix) with ESMTPSA id B01EC131
	for <barebox@lists.infradead.org>;
	Thu, 13 Oct 2011 11:51:52 +0200 (CEST)
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Thu, 13 Oct 2011 11:51:52 +0200
Message-Id: <1318499513-13758-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH] arm: at91: fix environment location in flash for multiple
	boards
To: barebox@lists.infradead.org

The environment partition was overlapping the Barebox partition in
those three Atmel boards. Saving the environment resulted in the
Barebox being overwritten.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/boards/at91sam9260ek/init.c    |    2 +-
 arch/arm/boards/at91sam9263ek/init.c    |    2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index ea80a1b..958319e 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -158,7 +158,7 @@ static int at91sam9260ek_devices_init(void)
 
 	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x40000, 0x40000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x80000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	return 0;
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 40c0b7b..bb564d7 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -134,7 +134,7 @@ static int at91sam9263ek_devices_init(void)
 #elif defined(CONFIG_NAND_ATMEL)
 	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x40000, 0x40000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x80000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 073ff42..5fdc960 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -142,7 +142,7 @@ static int at91sam9m10g45ek_devices_init(void)
 
 	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x40000, 0x40000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x80000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_6 + 0x100));
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
