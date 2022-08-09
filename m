Delivery-date: Tue, 09 Aug 2022 08:26:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIgl-00Gzpb-SW
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 08:26:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIgm-0006qY-Eq
	for lore@pengutronix.de; Tue, 09 Aug 2022 08:26:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9lT99FD7CiXuhdxvxjDky0AcScxcLJgLBzMio0B8WJg=; b=xzEf5kHtngQUkUhZZZuIBjgYom
	PEUlf8ATFbJN29MMi7D9mqRVqOD7t+VkMJP4GlfxtwYN9oesAF7sNGpQRNV07SJW45fyLXVWsbDSh
	56w4WR1y24PApZmkGPbQiHDcvOMPdo+y28oMmGhVYCbBipEFpk9nqtRoJo5AsSZsVMcPBf5PWLiJH
	ka6stYpHmspeqE4X0/HFONR+sDVvioqZvVU4g2FPCFfvq9WouWLcwu7NCbA+H+r2b34SORTQbCKzQ
	Vgtjb2u2ZgcJ6UtORoxxDIGn83utrB1Vb63GF8k33FMPuxRNDo9zxOPBTncFbR4YkGSF3OEVdLXeo
	NJaDVwIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIfP-001ucT-Fx; Tue, 09 Aug 2022 06:24:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIfG-001uWw-1G
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 06:24:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIfA-0006Sf-Lz; Tue, 09 Aug 2022 08:24:24 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIf7-002eYh-Mt; Tue, 09 Aug 2022 08:24:23 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIf9-007L9b-BH; Tue, 09 Aug 2022 08:24:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  9 Aug 2022 08:24:19 +0200
Message-Id: <20220809062422.1749563-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_232430_149011_1A87F4D5 
X-CRM114-Status: GOOD (  11.63  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/4] net: designware: rework Kconfig text and menu structure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of depending on the common code being enabled, just select it if
needed and reword the Kconfig text to fix some typos and to make
configuration easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/Kconfig | 64 ++++++++++++++++++++++++---------------------
 1 file changed, 34 insertions(+), 30 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 803444cc44a4..341d02a1da5e 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -55,71 +55,75 @@ config DRIVER_NET_DAVINCI_EMAC
 	select PHYLIB
 
 config DRIVER_NET_DESIGNWARE
-	bool "Designware Universal MAC1000 ethernet platform support"
+	bool "Designware DWMAC1000 Ethernet driver support" if COMPILE_TEST
 	depends on HAS_DMA
 	select PHYLIB
 	help
-	  This option enables support for the Synopsys
-	  Designware Core Univesal MAC 10M/100M/1G ethernet IP.
-
-if DRIVER_NET_DESIGNWARE
+	  This option is selected by platform glue drivers that contain
+	  a DWMAC1000-compatible Ethernet IP.
 
 config DRIVER_NET_DESIGNWARE_GENERIC
-	bool "Designware Universal MAC ethernet generic driver"
+	bool "Generic Synopsis Designware Ethernet driver"
+	select DRIVER_NET_DESIGNWARE
+	depends on HAS_DMA
 	help
-	  This option enables support for the Synopsys
-	  Designware Core Univesal MAC 10M/100M/1G ethernet IP on SoCFPGA.
+	  This option enables support for the generic Synopsys
+	  Designware Core Universal MAC 10M/100M/1G binding. Supported
+	  are 3.70a and 3.72. Most integrations additionally require
+	  access to platform-specific registers, e.g. for clocking.
+	  If you are on such a platform, use the platform specific
+	  driver instead.
 
 config DRIVER_NET_DESIGNWARE_SOCFPGA
-	bool "Designware Universal MAC ethernet driver for SoCFPGA platforms"
-	depends on ARCH_SOCFPGA || COMPILE_TEST
+	bool "SOCFPGA Designware Ethernet driver"
+	depends on HAS_DMA && (ARCH_SOCFPGA || COMPILE_TEST)
+	select DRIVER_NET_DESIGNWARE
 	select MFD_SYSCON
 	select RESET_CONTROLLER
 	help
 	  This option enables support for the Synopsys
-	  Designware Core Univesal MAC 10M/100M/1G ethernet IP on SoCFPGA.
+	  Designware Core Universal MAC 10M/100M/1G Ethernet IP on SoCFPGA.
 
 config DRIVER_NET_DESIGNWARE_STARFIVE
-	bool "Designware Universal MAC ethernet driver for StarFive platforms"
-	depends on SOC_STARFIVE || COMPILE_TEST
+	bool "StarFive Designware Ethernet driver"
+	depends on HAS_DMA && (SOC_STARFIVE || COMPILE_TEST)
+	select DRIVER_NET_DESIGNWARE
 	select MFD_SYSCON
 	help
 	  This option enables support for the Synopsys
-	  Designware Core Univesal MAC 10M/100M/1G ethernet IP on StarFive.
-
-endif
+	  Designware Core Universal MAC 10M/100M/1G Ethernet IP on StarFive.
 
 config DRIVER_NET_DESIGNWARE_EQOS
-	bool "Designware Designware Ethernet QoS support"
-	depends on HAS_DMA
-	depends on COMMON_CLK
-	depends on OFTREE
+	bool "Designware EQOS (GMAC4) Ethernet driver support" if COMPILE_TEST
+	depends on HAS_DMA && OFTREE
 	select PHYLIB
 	help
 	  This option enables support for the Synopsys
 	  Designware Ethernet Quality-of-Service (GMAC4).
 
-if DRIVER_NET_DESIGNWARE_EQOS
-
 config DRIVER_NET_DESIGNWARE_STM32
-	bool "Designware EQOS STM32 driver"
+	bool "STM32 Designware Ethernet driver"
+	depends on HAS_DMA && COMMON_CLK && OFTREE && (ARCH_STM32MP || COMPILE_TEST)
+	select DRIVER_NET_DESIGNWARE_EQOS
 	select MFD_SYSCON
 	help
-	  This option enables support for the ethernet MAC on the STM32MP platforms.
+	  This option enables support for the Ethernet MAC on the STM32MP platforms.
 
 config DRIVER_NET_DESIGNWARE_TEGRA186
-	bool "Designware Universal MAC ethernet driver for Tegra 186 platforms"
+	bool "Tegra 186/194 Designware Ethernet driver"
+	depends on HAS_DMA && COMMON_CLK && OFTREE && (ARCH_TEGRA || COMPILE_TEST)
+	select DRIVER_NET_DESIGNWARE_EQOS
 	select RESET_CONTROLLER
 	help
-	  This option enables support for the ethernet MAC on the Tegra186 & 194.
+	  This option enables support for the Ethernet MAC on the Tegra186 & 194.
 
 config DRIVER_NET_DESIGNWARE_ROCKCHIP
-	bool "Designware Universal MAC ethernet driver for Rockchip platforms"
+	bool "Rockchip Designware Ethernet driver"
+	select DRIVER_NET_DESIGNWARE_EQOS
+	depends on HAS_DMA && COMMON_CLK && OFTREE && (ARCH_ROCKCHIP || COMPILE_TEST)
 	select MFD_SYSCON
 	help
-	  This option enables support for the ethernet MAC on different Rockchip SoCs
-
-endif
+	  This option enables support for the Ethernet MAC on different Rockchip SoCs
 
 config DRIVER_NET_DM9K
 	bool "Davicom dm9k[E|A|B] ethernet driver"
-- 
2.30.2



