Delivery-date: Thu, 13 Mar 2025 10:56:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfJA-00DW87-1F
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 10:56:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfJ9-0003LH-7B
	for lore@pengutronix.de; Thu, 13 Mar 2025 10:56:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GZoNdxe2ZJcaHmAK1RmEJUDF6Aq1Lu7C7QOlaZ2Y8Kc=; b=bu+C9D3Srw16mz0UZOQKbu6gh4
	+lumNVmhTAIv8S7R/4k58LrYfz/WsHMZRKnW77X9wtMouCI4giQxRCaqExHGJaFUyIMaIK7mPpWwd
	Gugt5HTe3fuXdLEB40drFxFEUOfYObLOfzskGnEmQV5JHzc+kBK+ancd74jadCbnyQHFr1WA1gpD2
	pn706Gy6KdVKrSKYEQzeCleyF9rPPtU5jNlt6QKXBW0vH7kc7iD4ePBjQSIrny1GYlvTrPYpBfjSY
	zw0dx3XsDROeZo1bnXJNZOim1b9lfh1DHstHgFlddp1dKpyX4DRJZ36jYvwP2N20Wmu9wlA+bloXz
	nHI3sCmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfIT-0000000Amjk-2CJV;
	Thu, 13 Mar 2025 09:56:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfH6-0000000AmfW-3bSr
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 09:54:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsfH4-000329-Ui; Thu, 13 Mar 2025 10:54:46 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsfH4-005Vsk-2S;
	Thu, 13 Mar 2025 10:54:46 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsfH4-00BoSA-27;
	Thu, 13 Mar 2025 10:54:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 13 Mar 2025 10:54:42 +0100
Message-Id: <20250313095442.2812937-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313095442.2812937-1-s.hauer@pengutronix.de>
References: <20250313095442.2812937-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_025448_966243_5A0E08EA 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: multi_v8_defconfig: enable k3 drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The K3 architecture is enabled in multi_v8_defconfig. Enable the K3
specific drivers to make it more usable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/multi_v8_defconfig | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index b1e66e85f4..78964990a9 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -155,6 +155,7 @@ CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_CADENCE=y
 CONFIG_DRIVER_SERIAL_LPUART32=y
 CONFIG_VIRTIO_CONSOLE=y
+CONFIG_DRIVER_NET_TI_K3_AM65_CPSW_NUSS=y
 CONFIG_DRIVER_NET_DESIGNWARE_IMX8=y
 CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP=y
 CONFIG_DRIVER_NET_FEC_IMX=y
@@ -180,6 +181,7 @@ CONFIG_DRIVER_SPI_IMX=y
 CONFIG_SPI_NXP_FLEXSPI=y
 CONFIG_I2C_GPIO=y
 CONFIG_I2C_IMX=y
+CONFIG_I2C_OMAP=y
 CONFIG_I2C_RK3X=y
 CONFIG_I2C_MUX=y
 CONFIG_I2C_MUX_PCA954x=y
@@ -207,10 +209,11 @@ CONFIG_SOUND=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_DW=y
-CONFIG_MCI_ROCKCHIP_DWCMSHC=y
 CONFIG_MCI_SUNXI_SMHC=y
+CONFIG_MCI_ROCKCHIP_DWCMSHC=y
 CONFIG_MCI_IMX_ESDHC=y
 CONFIG_MCI_ARASAN=y
+CONFIG_MCI_AM654=y
 CONFIG_COMMON_CLK_SCMI=y
 CONFIG_MFD_ACT8846=y
 CONFIG_RAVE_SP_CORE=y
@@ -230,8 +233,11 @@ CONFIG_WATCHDOG_DW=y
 CONFIG_WATCHDOG_IMX=y
 CONFIG_WATCHDOG_IMXULP=y
 CONFIG_RAVE_SP_WATCHDOG=y
+CONFIG_K3_RTI_WDT=y
 CONFIG_HWRNG=y
 CONFIG_HW_RANDOM_VIRTIO=y
+CONFIG_DMADEVICES=y
+CONFIG_TI_K3_UDMA=y
 CONFIG_GPIO_PCA953X=y
 CONFIG_GPIO_ZYNQ=y
 CONFIG_PINCTRL_SINGLE=y
-- 
2.39.5



