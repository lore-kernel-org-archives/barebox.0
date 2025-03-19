Delivery-date: Wed, 19 Mar 2025 09:37:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuovS-001NuE-1Z
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 09:37:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuovR-0006gE-CE
	for lore@pengutronix.de; Wed, 19 Mar 2025 09:37:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bqCbDNtNbGpuwnFcqbb8bAJMIRgUtKjAPihYZX7mx6s=; b=mWwpFo4FVSycl1
	0dlxeExNtxJgypZhfEkZZx0R7ngDkYcKmoQjcxfK9OlySnQabLacBFcz3lGkvHIqClpl/u1MOVRMi
	HpGTB17NABqVANKptOyxdhZcqc/fqMtxecpVk2CBGmVK7mA3c8RoojMM/IgLarCChiDF20fT2GGw/
	ibuHLR9POaq71LYV2mdssGPxZTEKFpYfZnH2Bis9LmmQJHSAWJyXGjc3DwWgdl2vwj0cuJPXegmj0
	hysd56oy2wvqlmLSO3z/Hk/0APlRaHSSUxagFqVouNxpd3nIkKLdpFdsTgKOvTjrWa/B7Fk4pG34N
	qnQyAK1/dAfqVAINTMMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuouc-00000008MrY-2nPv;
	Wed, 19 Mar 2025 08:36:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuouZ-00000008Mqd-0NlY
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 08:36:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuouW-0006WV-MK; Wed, 19 Mar 2025 09:36:24 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuouV-000Z2n-31;
	Wed, 19 Mar 2025 09:36:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuouW-009FCP-0n;
	Wed, 19 Mar 2025 09:36:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 19 Mar 2025 09:36:23 +0100
Message-Id: <20250319083623.2203370-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_013627_129561_8A1C8767 
X-CRM114-Status: GOOD (  10.03  )
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
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: am335x_mlo_defconfig: disable unnecessary options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

- disable CONFIG_BOARD_GENERIC_DT which is not needed for the MLO
  defconfig
- disable CONFIG_MTD_NAND_ECC_SW_HAMMING. AM335x uses hardware ECC
- disable CONFIG_BANNER. Saves another few bytes

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am335x_mlo_defconfig | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index 4a9ce6cfb7..e9d9f93edf 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -6,19 +6,18 @@ CONFIG_MACH_BEAGLEBONE=y
 CONFIG_MACH_MYIRTECH_X335X=y
 CONFIG_MACH_PHYTEC_SOM_AM335X=y
 CONFIG_THUMB2_BAREBOX=y
+# CONFIG_BOARD_GENERIC_DT is not set
+# CONFIG_BANNER is not set
 # CONFIG_MEMINFO is not set
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x1b400
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
-CONFIG_RELOCATABLE=y
 CONFIG_PROMPT="MLO>"
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_ACTIVATE_NONE=y
-CONFIG_OFDEVICE=y
 # CONFIG_FILETYPE_STRING is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SPI_OMAP3=y
@@ -28,10 +27,12 @@ CONFIG_MTD=y
 CONFIG_MTD_M25P80=y
 CONFIG_NAND=y
 CONFIG_NAND_OMAP_GPMC=y
+# CONFIG_MTD_NAND_ECC_SW_HAMMING is not set
 CONFIG_MCI=y
 # CONFIG_MCI_WRITE is not set
 CONFIG_MCI_OMAP_HSMMC=y
 CONFIG_PINCTRL_SINGLE=y
 CONFIG_BUS_OMAP_GPMC=y
+# CONFIG_VIRTIO_MENU is not set
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
-- 
2.39.5



