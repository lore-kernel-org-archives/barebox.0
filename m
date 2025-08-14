Delivery-date: Thu, 14 Aug 2025 22:28:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeYw-000cf2-0T
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 22:28:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeYv-0001XH-18
	for lore@pengutronix.de; Thu, 14 Aug 2025 22:28:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nvCZ9wLYOnTkNhVyicLnrkExNw1ofg8pERmFMDV+VOk=; b=HQ4oJQdsqevkKrhn5gxn7HYgnp
	ZOPrMeijYaKtiwF4gne9T1X3hQscHYgniGAsH/Y2Z7JGwPOTzlMzr9/0WUIeAsq9z+p1b9Hg1/FcS
	X9PV3Gfdx1Wq+HkwrbSf23rEjil6RWYXHH7q+1DuVDzJgti1+fSis6SAFIjt8/rKGMRr6yM7CQTQN
	2IgqMQeB4eJujZ7CrGbjTjkUpaP62oQbQFWVZ7XmL23Tt0DUtjmnWCoJxkPNdS7Ttk34/IJPnyG9S
	Ko7PUFt6yV+21kWM3ks8aJdvJhwHRCDuKQ0p7A1oqD6eYAVKmHvIIHcPI4VJeYcW4U+4nQmoRf64l
	r4MYwNDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeYX-00000000VC4-1uCV;
	Thu, 14 Aug 2025 20:28:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeYS-00000000V8Z-3LXF
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 20:28:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umeYR-00019L-J0; Thu, 14 Aug 2025 22:28:07 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 14 Aug 2025 22:28:04 +0200
Message-Id: <20250814202805.354827-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814202805.354827-1-a.fatoum@barebox.org>
References: <20250814202805.354827-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_132808_830716_1C8A790D 
X-CRM114-Status: UNSURE (   7.58  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/8] RISC-V: rv64i_defconfig: enable Virt I/O
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This simplifies testing with QEMU and makes the config suitable for the
web demo as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/configs/rv64i_defconfig | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/configs/rv64i_defconfig b/arch/riscv/configs/rv64i_defconfig
index f08c60766a77..89960dd317e0 100644
--- a/arch/riscv/configs/rv64i_defconfig
+++ b/arch/riscv/configs/rv64i_defconfig
@@ -120,13 +120,16 @@ CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_FASTBOOT=y
 CONFIG_NET_9P=y
+CONFIG_NET_9P_VIRTIO=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_VIRTIO_CONSOLE=y
 CONFIG_SERIAL_SIFIVE=y
 CONFIG_DRIVER_NET_DESIGNWARE_GENERIC=y
 CONFIG_DRIVER_NET_DESIGNWARE_STARFIVE=y
 CONFIG_DRIVER_NET_MACB=y
+CONFIG_DRIVER_NET_VIRTIO=y
 CONFIG_MICREL_PHY=y
 CONFIG_DRIVER_SPI_GPIO=y
 CONFIG_SPI_SIFIVE=y
@@ -140,6 +143,7 @@ CONFIG_MTD_M25P80=y
 CONFIG_MTD_MTDRAM=y
 CONFIG_DRIVER_CFI=y
 CONFIG_DRIVER_CFI_BANK_WIDTH_8=y
+CONFIG_VIRTIO_BLK=y
 CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
@@ -156,9 +160,11 @@ CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_EEPROM_AT24=y
+CONFIG_VIRTIO_INPUT=y
 CONFIG_WATCHDOG=y
 CONFIG_STARFIVE_WDT=y
 CONFIG_HWRNG=y
+CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_HW_RANDOM_STARFIVE=y
 CONFIG_GPIO_GENERIC_PLATFORM=y
 CONFIG_GPIO_SIFIVE=y
@@ -175,7 +181,7 @@ CONFIG_POWER_RESET_SYSCON_POWEROFF=y
 CONFIG_POWER_RESET_GPIO=y
 CONFIG_POWER_RESET_GPIO_RESTART=y
 CONFIG_POWER_RESET_HTIF_POWEROFF=y
-# CONFIG_VIRTIO_MENU is not set
+CONFIG_VIRTIO_MMIO=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
-- 
2.39.5



