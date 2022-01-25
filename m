Delivery-date: Tue, 25 Jan 2022 09:26:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCH9c-00Chm0-Cq
	for lore@lore.pengutronix.de; Tue, 25 Jan 2022 09:26:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCH9a-0000sy-Uk
	for lore@pengutronix.de; Tue, 25 Jan 2022 09:26:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sx8RuQ9bZ3IC1GKx3LrLyf7/rgy+iZUko7c+QNg7lro=; b=ZJ0+sj/CAlfVcE
	1DVDfzK5RDs4KMBn+bPvZJFf6pKx1DFsMR9kjSWgn6Voyn0VAvZDBQbPBd5St3Z/lfY9fgP09I5i7
	8UfcCmhJ2I5tcPcRg/2nrRaCMxO8KMi3R8rNm5SYqJ9J3T0Cr/ZloTBJreDv6VRGxY7HrvL6SofOy
	bf2CHPgLHEmXxLvlXKfcCUEcIg8lelSsCjjeuYl6euNz8/7v1wB2lJFzQnqGqpwAiybt/uuUb6AK8
	LC/Ui/zKpscBcSJfOOUF2RT9VApsc0ocSZh+kpCUUlvKqLPKhKLdYHvjl7vH1llGljL1Q7e+Nxyhb
	5l9V408CDUQlCOrnMkYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCH87-006r4s-9m; Tue, 25 Jan 2022 08:24:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCH82-006r4E-Lt
 for barebox@lists.infradead.org; Tue, 25 Jan 2022 08:24:39 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCH81-0000ZE-Bs; Tue, 25 Jan 2022 09:24:37 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nCH80-007bdL-TM; Tue, 25 Jan 2022 09:24:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 25 Jan 2022 09:24:35 +0100
Message-Id: <20220125082435.1812912-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_002438_734035_CA18B832 
X-CRM114-Status: UNSURE (   9.58  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rockchip-v8-defconfig: Enable USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The USB controllers on the rk3568 are supported, so enable them in the
defconfig file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/rockchip_v8_defconfig | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 4ceb036db6..973d666afa 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -8,7 +8,6 @@ CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_RELOCATABLE=y
 CONFIG_PROMPT="barebox> "
 CONFIG_BAUDRATE=1500000
 CONFIG_HUSH_FANCY_PROMPT=y
@@ -21,7 +20,6 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BOOTM_AIMAGE=y
 CONFIG_BLSPEC=y
-CONFIG_SYSTEM_PARTITIONS=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PBL_CONSOLE=y
@@ -37,6 +35,7 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_REGULATOR=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
@@ -90,8 +89,22 @@ CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_NET_DESIGNWARE_EQOS=y
 CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP=y
 CONFIG_SMSC_PHY=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_ASIX=y
+CONFIG_USB_NET_AX88179_178A=y
+CONFIG_NET_USB_SMSC95XX=y
+CONFIG_NET_USB_RTL8152=y
 CONFIG_I2C=y
 CONFIG_I2C_GPIO=y
+CONFIG_USB_HOST=y
+CONFIG_USB_DWC3=y
+CONFIG_USB_DWC3_DUAL_ROLE=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_STORAGE=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_USB_GADGET_FASTBOOT=y
+CONFIG_USB_GADGET_MASS_STORAGE=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
@@ -106,7 +119,12 @@ CONFIG_LED_GPIO_OF=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_POLLER=y
 CONFIG_WATCHDOG_DW=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
 CONFIG_GENERIC_PHY=y
+CONFIG_USB_NOP_XCEIV=y
+CONFIG_PHY_ROCKCHIP_INNO_USB2=y
+CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=y
 # CONFIG_VIRTIO_MENU is not set
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_EXT4=y
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

