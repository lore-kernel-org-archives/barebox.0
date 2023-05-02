Delivery-date: Tue, 02 May 2023 14:00:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptogE-002FpR-LL
	for lore@lore.pengutronix.de; Tue, 02 May 2023 14:00:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptogC-0000Gi-RE
	for lore@pengutronix.de; Tue, 02 May 2023 14:00:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OnDOcGMv2U45dYGKHECs18fURuS77KC3uhGPUJI08IE=; b=hohAwgBw1OUUAzUIj4n6Tlcxie
	k7vggoaJxcSk+MH2wBSq3+Ln2Fq8f1jnoNd5d14KXyv/qGcU9+1Lqv+VA4oHWMDjhaYMnTzdw3xJP
	UuTjoOSQ2rp9DzIX9/i2gg5W+3+3Jlj++dHWQ8AdiPmwT6HhQucBAx0y1lIKJf0tPQ/q0JtMR34np
	fJbShgGYXHPi1cHI2KS1fwIzPSm1h3EwO6CkpqCgFVHYJNHoEOumyqQK6XRjyL3E059x1KEXZwrHE
	FOMNUoAKZTRl6UiEkAKlejK3AR454tREVBQM4vTGG7e/nuHwS6y88tVRtAvG/F3BZvXOJ5Axkuwsc
	6FseTsCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptof7-001JNr-0l;
	Tue, 02 May 2023 11:59:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptof3-001JMg-2Z
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 11:59:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptof2-0008IJ-27; Tue, 02 May 2023 13:59:12 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptof1-000aBP-EL; Tue, 02 May 2023 13:59:11 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptof0-0068mh-C8; Tue, 02 May 2023 13:59:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 13:59:07 +0200
Message-Id: <20230502115908.1463306-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502115908.1463306-1-s.hauer@pengutronix.de>
References: <20230502115908.1463306-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_045913_840241_8E7F3C3D 
X-CRM114-Status: UNSURE (   9.98  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: multi_v8_defconfig: Enable ARM64 QEMU Virt board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Enable the ARM64 QEMU Virt platform and its drivers in
multi_v8_defconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/multi_v8_defconfig | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index f9782a2b2a..16e42b93fc 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_ARM64_VIRT=y
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_ARCH_ZYNQMP=y
@@ -20,8 +21,6 @@ CONFIG_MACH_PINE64_QUARTZ64=y
 CONFIG_MACH_RADXA_ROCK3=y
 CONFIG_MACH_XILINX_ZCU104=y
 CONFIG_MACH_XILINX_ZCU106=y
-CONFIG_BOARD_ARM_GENERIC_DT=y
-CONFIG_64BIT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_MMU=y
@@ -120,12 +119,15 @@ CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_OF_OVERLAY_LIVE=y
 CONFIG_SERIAL_DEV_BUS=y
+CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_CADENCE=y
+CONFIG_VIRTIO_CONSOLE=y
 CONFIG_DRIVER_NET_DESIGNWARE_IMX8=y
 CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_DRIVER_NET_MACB=y
+CONFIG_DRIVER_NET_VIRTIO=y
 CONFIG_DP83867_PHY=y
 CONFIG_MICREL_PHY=y
 CONFIG_REALTEK_PHY=y
@@ -145,6 +147,7 @@ CONFIG_I2C_GPIO=y
 CONFIG_I2C_IMX=y
 CONFIG_I2C_RK3X=y
 CONFIG_MTD=y
+CONFIG_VIRTIO_BLK=y
 CONFIG_USB_HOST=y
 CONFIG_USB_IMX_CHIPIDEA=y
 CONFIG_USB_DWC3=y
@@ -170,11 +173,14 @@ CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_EEPROM_AT24=y
+CONFIG_VIRTIO_INPUT=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_POLLER=y
 CONFIG_WATCHDOG_DW=y
 CONFIG_WATCHDOG_IMX=y
 CONFIG_RAVE_SP_WATCHDOG=y
+CONFIG_HWRNG=y
+CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_GPIO_PCA953X=y
 CONFIG_GPIO_ZYNQ=y
 CONFIG_IMX_OCOTP=y
@@ -191,7 +197,7 @@ CONFIG_USB_NOP_XCEIV=y
 CONFIG_PHY_ROCKCHIP_INNO_USB2=y
 CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=y
 CONFIG_ROCKCHIP_IODOMAIN=y
-# CONFIG_VIRTIO_MENU is not set
+CONFIG_VIRTIO_MMIO=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
-- 
2.39.2



