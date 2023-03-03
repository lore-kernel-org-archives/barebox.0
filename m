Delivery-date: Fri, 03 Mar 2023 10:23:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1dc-007NWv-Uw
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:23:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1dc-0000yJ-DP
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:23:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wL2GYy4V7Z69S67QLABRcALngJEGx9zqFnCf0YYopPs=; b=Q1IkceBpx8h77eBRuEy29JC/WX
	9d1wDy/FPpsMo4QHuA9Fi1ArzM85Om8/y6Yez+p4dANMz7RmkElyivtFZEU9cws5dJDM7qzYu0+yx
	TCqw/9byJKnLo+Guj3KEEWovq0rdvINytUnVsdmZcymlKrJkJcNNhe7GT9yTwZiLEFWtAdHpRu6nN
	tebZRcnwcdrlrL9K82W6jgE+fJiVoIxGRzuDvTg6L2qLfp3qOWx6e7ZeUG7JMyds0N2Bl6lKa8p9F
	j4JYQxfHK02Dcc+ICVZeRSlYe6wa976Lk+b+VpqZ8ABvnnvsJIQN8A+LyNIjw/Gk86aqpLswmPQLJ
	AhDs/2Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1cK-005enE-Ez; Fri, 03 Mar 2023 09:22:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bf-005eLK-Ud
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1be-0000B2-MZ; Fri, 03 Mar 2023 10:21:38 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bd-001Whp-RP; Fri, 03 Mar 2023 10:21:37 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bb-00F2lc-6z; Fri, 03 Mar 2023 10:21:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:29 +0100
Message-Id: <20230303092131.3063587-49-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012140_057880_CFA84E1E 
X-CRM114-Status: GOOD (  12.23  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 48/50] ARM: bcm283x: Add multi-arch support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Enable multi-arch support for bcm0283x

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                          | 33 +++++++++++------------
 arch/arm/boards/raspberry-pi/rpi-common.c |  6 +++++
 2 files changed, 22 insertions(+), 17 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 789365e69b..abe649de49 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -52,23 +52,6 @@ config ARCH_AT91
 	select HAVE_CLK
 	select COMMON_CLK_AT91 if COMMON_CLK_OF_PROVIDER
 
-
-config ARCH_BCM283X
-	bool "Broadcom BCM283x based boards"
-	select GPIOLIB
-	select CLKDEV_LOOKUP
-	select COMMON_CLK
-	select COMMON_CLK_OF_PROVIDER
-	select CLOCKSOURCE_BCM283X
-	select ARM_AMBA
-	select HAS_DEBUG_LL
-	select RELOCATABLE
-	select OFTREE
-	select OFDEVICE
-	select HAVE_PBL_MULTI_IMAGES
-	select CPU_SUPPORTS_32BIT_KERNEL
-	select CPU_SUPPORTS_64BIT_KERNEL
-
 config ARCH_CLPS711X
 	bool "Cirrus Logic EP711x/EP721x/EP731x"
 	select CLKDEV_LOOKUP
@@ -216,6 +199,22 @@ config ARCH_ARM64_VIRT
 
 endchoice
 
+config ARCH_BCM283X
+	bool "Broadcom BCM283x based boards"
+	select GPIOLIB
+	select CLKDEV_LOOKUP
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select CLOCKSOURCE_BCM283X
+	select ARM_AMBA
+	select HAS_DEBUG_LL
+	select RELOCATABLE
+	select OFTREE
+	select OFDEVICE
+	select HAVE_PBL_MULTI_IMAGES
+	select CPU_SUPPORTS_32BIT_KERNEL
+	select CPU_SUPPORTS_64BIT_KERNEL
+
 config ARCH_IMX
 	bool "Freescale iMX-based"
 	depends on ARCH_MULTIARCH
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 367033c02a..3ed4510296 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -161,6 +161,12 @@ static int rpi_mem_init(void)
 {
 	ssize_t size;
 
+	if (!of_machine_is_compatible("brcm,bcm2837") &&
+	    !of_machine_is_compatible("brcm,bcm2835") &&
+	    !of_machine_is_compatible("brcm,bcm2711") &&
+	    !of_machine_is_compatible("brcm,bcm2836"))
+		return 0;
+
 	size = rpi_get_arm_mem();
 	if (size < 0) {
 		printf("could not query ARM memory size\n");
-- 
2.30.2



