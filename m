Delivery-date: Fri, 23 May 2025 10:09:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uINTU-001pO7-2i
	for lore@lore.pengutronix.de;
	Fri, 23 May 2025 10:09:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uINTT-0000pm-G5
	for lore@pengutronix.de; Fri, 23 May 2025 10:09:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tOECGrNcHDs9Kb1iR16b63IBoGJ9ZNZzKv1u0dmDXNM=; b=K6+MB6kwJ+d/0g+c7IscMDoE8K
	uu4kQXi9P1XIlrxbuOm2QnbR/i/5kVOaE+EA+5664UUT502njZopPqiOFvtICfJsG0A2IWkHLjYHh
	TpdIwlP0OtyAqtWumAyWQicCURZbH65Q+XNyywHrQnxpNajRdJroRLD0P/lEOykrYzELzg/11B557
	B9Jp2lJnfrk1oCCX274+fc1TreIJCnKmW3JmZ23Qdz9nKss2+bxeyb08b8qnSeTipaXcX8Dky0mQ5
	afsRAQSBFnUEaQQE3hroxxnRNdPziiaggNsD34axPco2ikoElvyP3yP1+5xUKLku9aYpfa0ka/LEV
	NYt0yoeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uINSj-00000003Gew-2rp1;
	Fri, 23 May 2025 08:09:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uINFw-00000003Ene-08eI
	for barebox@lists.infradead.org;
	Fri, 23 May 2025 07:55:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uINFu-0001c4-5b; Fri, 23 May 2025 09:55:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uINFt-000ri7-3B;
	Fri, 23 May 2025 09:55:49 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uINFt-002rVh-2k;
	Fri, 23 May 2025 09:55:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 23 May 2025 09:55:49 +0200
Message-Id: <20250523075549.681144-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_005552_372571_E9CA1F10 
X-CRM114-Status: GOOD (  14.85  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] environment: explicitly set env path to /dev/env0 where used
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most board set the path for to the environment storage either directly
through default_environment_path_set() or indirectly via the
barebox,environment driver.
For the remaining older boards explicitly call
default_environment_path_set("/dev/env0").  With this all boards set the
path to the environment storage explicitly. This gives us the
possibility to repurpose now unused default case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/animeo_ip/init.c                    | 1 +
 arch/arm/boards/at91rm9200ek/init.c                 | 1 +
 arch/arm/boards/at91sam9260ek/init.c                | 1 +
 arch/arm/boards/at91sam9261ek/init.c                | 1 +
 arch/arm/boards/at91sam9263ek/init.c                | 2 ++
 arch/arm/boards/at91sam9m10g45ek/init.c             | 1 +
 arch/arm/boards/at91sam9m10ihd/init.c               | 2 ++
 arch/arm/boards/at91sam9n12ek/init.c                | 1 +
 arch/arm/boards/dss11/init.c                        | 2 ++
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c       | 7 +++----
 arch/arm/boards/haba-knx/init.c                     | 2 ++
 arch/arm/boards/karo-tx28/tx28-stk5.c               | 5 ++---
 arch/arm/boards/karo-tx53/board.c                   | 3 +++
 arch/arm/boards/pm9261/init.c                       | 1 +
 arch/arm/boards/pm9263/init.c                       | 2 ++
 arch/arm/boards/pm9g45/init.c                       | 1 +
 arch/arm/boards/qil-a926x/init.c                    | 1 +
 arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c | 2 ++
 arch/arm/boards/telit-evk-pro3/init.c               | 2 ++
 arch/arm/boards/tny-a926x/init.c                    | 1 +
 arch/arm/boards/usb-a926x/init.c                    | 1 +
 arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c   | 1 +
 arch/powerpc/boards/freescale-p1022ds/p1022ds.c     | 1 +
 arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c   | 1 +
 arch/powerpc/boards/owc-da923rc/da923rc.c           | 1 +
 arch/powerpc/boards/pcm030/pcm030.c                 | 2 ++
 arch/sandbox/os/common.c                            | 4 ++++
 27 files changed, 43 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index 452e005046..a0a2007d52 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -300,6 +300,7 @@ static int animeo_ip_devices_init(void)
 	dev_add_bb_dev("self_raw", "self0");
 	devfs_add_partition("nand0", SZ_256K + SZ_32K, SZ_32K, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
+	default_environment_path_set("/dev/env0");
 
 	animeo_ip_add_device_eth();
 
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 49a227805a..dee1a31f49 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -159,6 +159,7 @@ static int at91rm9200ek_devices_init(void)
 #if defined(CONFIG_DRIVER_CFI) || defined(CONFIG_DRIVER_CFI_OLD)
 	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
 	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
+	default_environment_path_set("/dev/env0");
 #endif
 
 	armlinux_set_architecture(MACH_TYPE_AT91RM9200EK);
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index eab3649883..2fb9f8625b 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -231,6 +231,7 @@ static int at91sam9260ek_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
+	default_environment_path_set("/dev/env0");
 
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
 		defaultenv_append_directory(defaultenv_at91sam9260ek);
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 799466d655..f368af5061 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -334,6 +334,7 @@ static int at91sam9261ek_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
+	default_environment_path_set("/dev/env0");
 
 	if (machine_is_at91sam9g10ek())
 		armlinux_set_architecture(MACH_TYPE_AT91SAM9G10EK);
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 6b618e9d00..39751b4e9c 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -221,6 +221,7 @@ static int at91sam9263ek_devices_init(void)
 	if (IS_ENABLED(CONFIG_DRIVER_CFI) && cdev_by_name("nor0")) {
 		devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
 		devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
+		default_environment_path_set("/dev/env0");
 	} else if (IS_ENABLED(CONFIG_NAND_ATMEL)) {
 		devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 		dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
@@ -230,6 +231,7 @@ static int at91sam9263ek_devices_init(void)
 		dev_add_bb_dev("env_raw", "env0");
 		devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 		dev_add_bb_dev("env_raw1", "env1");
+		default_environment_path_set("/dev/env0");
 	}
 
 	armlinux_set_architecture(MACH_TYPE_AT91SAM9263EK);
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 821228c2e1..ebfa415d98 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -303,6 +303,7 @@ static int at91sam9m10g45ek_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
+	default_environment_path_set("/dev/env0");
 
 	armlinux_set_architecture(MACH_TYPE_AT91SAM9M10G45EK);
 	ek_set_board_revision();
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index 763dffb6ce..564e68f9f1 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -8,6 +8,7 @@
 #include <net.h>
 #include <mci.h>
 #include <init.h>
+#include <envfs.h>
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <asm/mach-types.h>
@@ -245,6 +246,7 @@ static int at91sam9m10ihd_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
+	default_environment_path_set("/dev/env0");
 
 	/*
 	 * The internal Atmel kernel use the SAM9M10G45EK machine id
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index 4503e96af9..5f931f11e4 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -289,6 +289,7 @@ static int at91sam9n12ek_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 	devfs_add_partition("nand0", SZ_512K + SZ_256K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
+	default_environment_path_set("/dev/env0");
 
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
 		defaultenv_append_directory(defaultenv_at91sam9n12ek);
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index 41c2b10972..fd69ac35ad 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -5,6 +5,7 @@
 #include <net.h>
 #include <mci.h>
 #include <init.h>
+#include <envfs.h>
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <asm/mach-types.h>
@@ -114,6 +115,7 @@ static int dss11_devices_init(void)
 	dev_add_bb_dev("barebox", "barebox.bb");
 	devfs_add_partition("nand0", 0x60000, 0x40000, DEVFS_PARTITION_FIXED, "barebox-env");
 	dev_add_bb_dev("barebox-env", "env0");
+	default_environment_path_set("/dev/env0");
 
 	return 0;
 }
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index b10a6e8dcd..7a91e5f4c2 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -52,7 +52,7 @@ static struct fsl_usb2_platform_data usb_pdata = {
  */
 static int register_persistent_environment(void)
 {
-	struct cdev *cdev, *env;
+	struct cdev *cdev;
 
 	/*
 	 * The imx23-olinuxino only has one MCI card socket.
@@ -74,9 +74,8 @@ static int register_persistent_environment(void)
 		return -ENODEV;
 	}
 
-	/* use the full partition as our persistent environment storage */
-	env = devfs_add_partition("disk0.1", 0, cdev->size,
-						DEVFS_PARTITION_FIXED, "env0");
+	default_environment_path_set("/dev/disk0.1");
+
 	cdev_close(cdev);
 
 	return PTR_ERR_OR_ZERO(cdev);
diff --git a/arch/arm/boards/haba-knx/init.c b/arch/arm/boards/haba-knx/init.c
index 45bcd2c836..7d8d1c1eb5 100644
--- a/arch/arm/boards/haba-knx/init.c
+++ b/arch/arm/boards/haba-knx/init.c
@@ -289,6 +289,8 @@ static int haba_knx_devices_init(void)
 
 	devfs_create_partitions("nand0", haba_knx_nand0_partitions);
 
+	default_environment_path_set("/dev/env0");
+
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
 		defaultenv_append_directory(defaultenv_haba_knx);
 
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index 01a14a33a3..3cf93155fe 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -332,9 +332,8 @@ static int register_persistent_environment(void)
 		return -ENODEV;
 	}
 
-	/* use the full partition as our persistent environment storage */
-	env = devfs_add_partition("disk0.1", 0, cdev->size,
-					DEVFS_PARTITION_FIXED, "env0");
+	default_environment_path_set("/dev/disk0.1");
+
 	cdev_close(cdev);
 
 	return PTR_ERR_OR_ZERO(env);
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index e00378746c..b79419682d 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -3,6 +3,7 @@
 
 #include <common.h>
 #include <bootsource.h>
+#include <envfs.h>
 #include <environment.h>
 #include <fcntl.h>
 #include <platform_data/eth-fec.h>
@@ -47,6 +48,7 @@ static int tx53_devices_init(void)
 		devfs_add_partition("mmc0", SZ_512K, SZ_1M,
 				DEVFS_PARTITION_FIXED, "env0");
 		envdev = "MMC";
+		default_environment_path_set("/dev/env0");
 		flag_mmc |= BBU_HANDLER_FLAG_DEFAULT;
 		break;
 	case BOOTSOURCE_NAND:
@@ -57,6 +59,7 @@ static int tx53_devices_init(void)
 		devfs_add_partition("nand0", 0x80000, 0x100000,
 				DEVFS_PARTITION_FIXED, "env_raw");
 		dev_add_bb_dev("env_raw", "env0");
+		default_environment_path_set("/dev/env0");
 		envdev = "NAND";
 		flag_nand |= BBU_HANDLER_FLAG_DEFAULT;
 		break;
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index e87c8ad27b..29f745e5b7 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -135,6 +135,7 @@ static int pm9261_devices_init(void)
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
 	devfs_add_partition("nor0", 0x40000, 0x10000, DEVFS_PARTITION_FIXED, "env0");
+	default_environment_path_set("/dev/env0");
 
 	armlinux_set_architecture(MACH_TYPE_PM9261);
 
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 026a8bfe8d..85bfb14977 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -5,6 +5,7 @@
 #include <common.h>
 #include <net.h>
 #include <init.h>
+#include <envfs.h>
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <asm/mach-types.h>
@@ -116,6 +117,7 @@ static int pm9263_devices_init(void)
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x40000, 0x10000, DEVFS_PARTITION_FIXED, "env0");
+	default_environment_path_set("/dev/env0");
 
 	armlinux_set_architecture(MACH_TYPE_PM9263);
 
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index ee60cf8f00..c4872925d7 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -147,6 +147,7 @@ static int pm9g45_devices_init(void)
 	dev_add_bb_dev("self_raw", "self0");
 	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
+	default_environment_path_set("/dev/env0");
 
 	armlinux_set_architecture(MACH_TYPE_PM9G45);
 
diff --git a/arch/arm/boards/qil-a926x/init.c b/arch/arm/boards/qil-a926x/init.c
index 988657b354..3f1bf94942 100644
--- a/arch/arm/boards/qil-a926x/init.c
+++ b/arch/arm/boards/qil-a926x/init.c
@@ -194,6 +194,7 @@ static int qil_a9260_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
+	default_environment_path_set("/dev/env0");
 
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
 		defaultenv_append_directory(defaultenv_qil_a926x);
diff --git a/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c b/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
index c88f0d090a..d7f8bff290 100644
--- a/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
+++ b/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
@@ -10,6 +10,7 @@
 #include <common.h>
 #include <net.h>
 #include <init.h>
+#include <envfs.h>
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <fs.h>
@@ -295,6 +296,7 @@ static int sama5d4_xplained_devices_init(void)
 	ek_add_device_lcdc();
 
 	devfs_create_partitions("nand0", sama5d4_xplained_nand0_partitions);
+	default_environment_path_set("/dev/env0");
 
 	return 0;
 }
diff --git a/arch/arm/boards/telit-evk-pro3/init.c b/arch/arm/boards/telit-evk-pro3/init.c
index 43f9cbdf3a..2d0d3299b8 100644
--- a/arch/arm/boards/telit-evk-pro3/init.c
+++ b/arch/arm/boards/telit-evk-pro3/init.c
@@ -6,6 +6,7 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
+#include <envfs.h>
 #include <linux/clk.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
@@ -134,6 +135,7 @@ static int evk_devices_init(void)
 	devfs_add_partition("nand0", BOOTSTRAP_SIZE + SZ_256K + SZ_128K,
 			    SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
+	default_environment_path_set("/dev/env0");
 
 	return 0;
 }
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 0a448aa822..56c06d207a 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -227,6 +227,7 @@ static int tny_a9260_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
+	default_environment_path_set("/dev/env0");
 
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
 		defaultenv_append_directory(defaultenv_tny_a926x);
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 1297b4fe7f..dde5e007b4 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -384,6 +384,7 @@ static int usb_a9260_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
+	default_environment_path_set("/dev/env0");
 
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
 		defaultenv_append_directory(defaultenv_usb_a926x);
diff --git a/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c b/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
index e769933412..c8f19bf2c1 100644
--- a/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
+++ b/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
@@ -117,6 +117,7 @@ static int p1010rdb_devices_init(void)
 				    "self0");
 	devfs_add_partition("nor0", 0x1f60000, 0x10000, DEVFS_PARTITION_FIXED,
 				    "env0");
+	default_environment_path_set("/dev/env0");
 	add_generic_device("i2c-fsl", 0, NULL, I2C1_BASE_ADDR, 0x100,
 			IORESOURCE_MEM, &i2cplat[0]);
 	add_generic_device("i2c-fsl", 1, NULL, I2C2_BASE_ADDR, 0x100,
diff --git a/arch/powerpc/boards/freescale-p1022ds/p1022ds.c b/arch/powerpc/boards/freescale-p1022ds/p1022ds.c
index fd07b6f89f..f46a0a20ae 100644
--- a/arch/powerpc/boards/freescale-p1022ds/p1022ds.c
+++ b/arch/powerpc/boards/freescale-p1022ds/p1022ds.c
@@ -108,6 +108,7 @@ static int p1022ds_devices_init(void)
 				    "self0");
 	devfs_add_partition("nor0", 0x7f00000, 0x10000, DEVFS_PARTITION_FIXED,
 				    "env0");
+	default_environment_path_set("/dev/env0");
 	add_generic_device("i2c-fsl", 0, NULL, I2C1_BASE_ADDR, 0x100,
 			IORESOURCE_MEM, &i2cplat[0]);
 	add_generic_device("i2c-fsl", 1, NULL, I2C2_BASE_ADDR, 0x100,
diff --git a/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c b/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c
index 2c154db77c..b1efee26f1 100644
--- a/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c
@@ -82,6 +82,7 @@ static int devices_init(void)
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, CFG_FLASH_BASE, 16 << 20, 0);
 	devfs_add_partition("nor0", 0xf60000, 0x8000, DEVFS_PARTITION_FIXED,
 			"env0");
+	default_environment_path_set("/dev/env0");
 	devfs_add_partition("nor0", 0xf80000, 0x80000, DEVFS_PARTITION_FIXED,
 			"self0");
 	add_generic_device("i2c-fsl", 0, NULL, I2C1_BASE_ADDR,
diff --git a/arch/powerpc/boards/owc-da923rc/da923rc.c b/arch/powerpc/boards/owc-da923rc/da923rc.c
index b9eb2520cf..b3e347794b 100644
--- a/arch/powerpc/boards/owc-da923rc/da923rc.c
+++ b/arch/powerpc/boards/owc-da923rc/da923rc.c
@@ -88,6 +88,7 @@ static int da923rc_devices_init(void)
 {
 	add_cfi_flash_device(0, 0xfe000000, 32 << 20, 0);
 	devfs_add_partition("nor0", 0x0, 0x8000, DEVFS_PARTITION_FIXED, "env0");
+	default_environment_path_set("/dev/env0");
 	devfs_add_partition("nor0", 0x1f80000, 8 << 16, DEVFS_PARTITION_FIXED,
 			    "self0");
 	add_generic_device("i2c-fsl", 0, NULL, I2C1_BASE_ADDR, 0x100,
diff --git a/arch/powerpc/boards/pcm030/pcm030.c b/arch/powerpc/boards/pcm030/pcm030.c
index 2bdbc6695d..8da683898f 100644
--- a/arch/powerpc/boards/pcm030/pcm030.c
+++ b/arch/powerpc/boards/pcm030/pcm030.c
@@ -26,6 +26,7 @@
 #include <platform_data/eth-fec.h>
 #include <types.h>
 #include <memory.h>
+#include <envfs.h>
 #include <linux/sizes.h>
 #include <linux/stat.h>
 #include <asm/io.h>
@@ -69,6 +70,7 @@ static int devices_init (void)
 
 	devfs_add_partition("nor0", s.st_size - SZ_1M, SZ_512K, DEVFS_PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", s.st_size - SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, "env0");
+	default_environment_path_set("/dev/env0");
 
 	return 0;
 }
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index c5043160b1..c67a071c03 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -28,6 +28,7 @@
 #include <unistd.h>
 #include <fcntl.h>
 #include <time.h>
+#include <envfs.h>
 #include <getopt.h>
 #include <sys/types.h>
 #include <sys/stat.h>
@@ -347,6 +348,9 @@ static int add_image(const char *_str, char *devname_template, int *devname_numb
 	if (ret)
 		free(hf);
 
+	if (!strcmp(hf->devname, "env0"))
+		default_environment_path_set("/dev/env0");
+
 	return ret;
 }
 
-- 
2.39.5



