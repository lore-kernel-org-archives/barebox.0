Delivery-date: Fri, 10 Nov 2023 13:59:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6p-005rUO-03
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6o-0003G3-3R
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JPrZPFrvKP0yUlOF5yoGzXP+99SP4dy0C2FhXf7U3ms=; b=5Dpm0vUDepv5ptP3QaJ3TkYNrP
	bSEPt5yUt+dcp4ejK7IlTxPfo6XYQqZMx2X60t2vVCQVoYwLQgonu0NkvyKId2WCwwXQCH8+xpqJr
	vwRUJC0izYXV1IBsQAjA1fGs1KQe41PQKfyLZ3VLb8Q25gEQiOU31M+zk2JBigHX9MgkFZHO6zLH0
	seZ+e9bWpAyYOGZPlLoZcZit+ckU3mG6oGIA0A08SczVr1TiaqxHygGsuqbRw62JJkAZwHAlcm+bb
	t5BzZqg2vddD7iHtEMt3+pdH5O3M8RRrmrXSuS22Lpu3jTJ1bw6Smnp1H+fsS/6/Xa97Jp0ytO1Xc
	cth1SoBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5j-008kBp-1n;
	Fri, 10 Nov 2023 12:58:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5Z-008jym-0H
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 12:58:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=JPrZPFrvKP0yUlOF5yoGzXP+99SP4dy0C2FhXf7U3ms=; b=XqSXR0Nig974lsvkXQEFrMlP7p
	iX7DRr5VTC5vmh+O79AyzJkMt+Ccy6dj50S/TSJS7Lgeqj1WCM7kGSfwr5QxZX+9rvV+SJ5GuusPg
	dfW9GvSSDXDzBeg3dpNwdbXq30+eOIyaOY1UbJlPqrp9U3HD1noIeLXm/BGpJlLC19gY/rCj0dz4S
	kVq2/CytRaDie2C81qley4S6O9Y0ve3gaMEPzcTGvOdWZdoj4/DLZYONmOIFVK1ej2ZAmelV70HxH
	XCHmNZj46FulnPPa5nZ0qgWAWDW4qoyXYIDTaZ4Zg/1plUFMn20asaugjQPuCXUCtKx09zuAINBzo
	hS7j2XBA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5S-00Fbuh-0z
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5I-00027W-1I; Fri, 10 Nov 2023 13:58:04 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-0081Xt-7R; Fri, 10 Nov 2023 13:58:03 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-008s2s-0D;
	Fri, 10 Nov 2023 13:58:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:59 +0100
Message-Id: <20231110125800.1901232-25-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_125814_766905_03B95B09 
X-CRM114-Status: UNSURE (   9.80  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 24/25] ARM: Update imx_v8_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enable i.MX9 support and drivers useful on that SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/imx_v8_defconfig | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index 8084e72ea0..731156e4fe 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_IMX=y
 CONFIG_MACH_INNOCOMM_WB15=y
+CONFIG_MACH_MNT_REFORM=y
 CONFIG_MACH_NXP_IMX8MM_EVK=y
 CONFIG_MACH_NXP_IMX8MN_EVK=y
 CONFIG_MACH_NXP_IMX8MP_EVK=y
@@ -12,6 +13,7 @@ CONFIG_MACH_TQ_MBA8MPXL=y
 CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP=y
 CONFIG_MACH_ZII_IMX8MQ_DEV=y
 CONFIG_64BIT=y
+CONFIG_MACH_TQ_MBA9XXXCA=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
@@ -93,6 +95,7 @@ CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_SERIAL_DEV_BUS=y
 CONFIG_DRIVER_NET_DESIGNWARE_IMX8=y
+CONFIG_DRIVER_SERIAL_LPUART32=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_DP83867_PHY=y
 CONFIG_MICREL_PHY=y
@@ -108,6 +111,7 @@ CONFIG_DRIVER_SPI_IMX=y
 CONFIG_SPI_NXP_FLEXSPI=y
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
+CONFIG_I2C_IMX_LPI2C=y
 CONFIG_MTD=y
 CONFIG_MTD_DATAFLASH=y
 CONFIG_MTD_M25P80=y
@@ -122,6 +126,7 @@ CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_IMX_ESDHC=y
 CONFIG_RAVE_SP_CORE=y
+CONFIG_MFD_PCA9450=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
@@ -129,10 +134,11 @@ CONFIG_LED_TRIGGERS=y
 CONFIG_EEPROM_AT25=y
 CONFIG_EEPROM_AT24=y
 CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_POLLER=y
 CONFIG_WATCHDOG_IMX=y
+CONFIG_WATCHDOG_IMXULP=y
 CONFIG_RAVE_SP_WATCHDOG=y
 CONFIG_GPIO_PCA953X=y
-CONFIG_IMX_OCOTP=y
 CONFIG_RAVE_SP_EEPROM=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
@@ -145,7 +151,6 @@ CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
 CONFIG_FS_RATP=y
 CONFIG_ZLIB=y
 # CONFIG_MISSING_FIRMWARE_ERROR is not set
-- 
2.39.2



