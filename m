Delivery-date: Thu, 27 Apr 2023 20:48:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ps6fk-002bq8-DI
	for lore@lore.pengutronix.de; Thu, 27 Apr 2023 20:48:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ps6fk-0005WR-Dl
	for lore@pengutronix.de; Thu, 27 Apr 2023 20:48:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0SeegHBtK/ixoQxYkFdALo+l35MP0JjHUDRk5wi8L2o=; b=ZJRnqhWFi2miNRSZA62xPiDMxY
	IhhneTa/fJuTaVZRA3Nu2/GM+5q1elxfe86GvAFHwEoZ6lkpyNMIdIbGcVKOD9aSwpWHmR9uPKUc1
	sx/COpAifh1JflP8f3BNDGmGius4+mcFVJZawKXVrL7HhHomUY2KKh8EWF1SYk3z6wmj6yvRn5hjU
	BJzxQv1LCd2YnFUHCNQv/fIfhxfGQEG3kWzjUslxSpRxhsYJsITShNcxyjmcW/9SrKLb35V0z097y
	epiQPBcsl7ng4pVlGLcf+ZFJuXmzrtiQ0aU1z7ik2eFLaesp1HLRtScIoDSr9MLR3k7wO3sNCi2A9
	4bkdi5Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps6eZ-007FOR-2E;
	Thu, 27 Apr 2023 18:47:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps6eX-007FNa-0R
	for barebox@lists.infradead.org;
	Thu, 27 Apr 2023 18:47:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B924063F1C
	for <barebox@lists.infradead.org>; Thu, 27 Apr 2023 18:47:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABD77C433EF;
	Thu, 27 Apr 2023 18:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682621256;
	bh=k67P5uPFfn/4rahkQ08BrIH+kxR5fqmzSdWOaEOcAJU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hMQ/wFK/S5VXSRAZlds7CAznTq6s/eMeHvL2wrbpEwvDawrfv6mCYH+bBQSwbrnX+
	 q4tlba1zmQBGwgtmUtgCrwunuGCjiETtPEXGIwfL6ojgF8P8SfcK+jiKzT/pukgPRq
	 Q0yPSU3UwqHpBcy37ixWDVb23Dsmt6t+RKIlHWUIcUEuhKWIc+UMUnyvXc7f8p8VRi
	 kzloBxfaXCdUOAWhExwRRbE4kBpOZFDKm7CTDMazvn8zWKzAWF/jGb1mk4RNibiaMP
	 vviajVoUBJgwXY7srnz9EmgJVUHlQLjNFzcmVstdZEV/TCpI154jJ7WmQKyVhnNNnt
	 q1QttI7HbVdxw==
From: Wolfram Sang <wsa@kernel.org>
To: barebox@lists.infradead.org
Cc: Wolfram Sang <wsa@kernel.org>
Date: Thu, 27 Apr 2023 20:47:18 +0200
Message-Id: <20230427184718.105393-3-wsa@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230427184718.105393-1-wsa@kernel.org>
References: <20230427184718.105393-1-wsa@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_114737_210876_72E878CD 
X-CRM114-Status: GOOD (  10.14  )
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
X-Spam-Status: No, score=-104.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] defconfigs: usb-a9g20: update to a working version
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The defconfig needs to be updated to get a usable barebox:

We need bigger malloc because of the increasing kernel size, soft ECC so
NAND will work, ifup and relocatable for easier development. Fix the
prompt while here. Sadly, because of size restrictions, FAT, NFS, menus,
netconsole, and SHA1 have to go.

Signed-off-by: Wolfram Sang <wsa@kernel.org>
---
 arch/arm/configs/usb_a9g20_defconfig | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index 20b1f27b9e..56f78ba7a8 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -5,9 +5,11 @@ CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_MALLOC_SIZE=0x800000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
-CONFIG_PROMPT="USB-9G20:"
+CONFIG_RELOCATABLE=y
+CONFIG_PROMPT="USB-A9G20:"
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -33,16 +35,14 @@ CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
+CONFIG_NET_CMD_IFUP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_LOGIN=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
@@ -53,14 +53,13 @@ CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
+CONFIG_MTD_NAND_ECC_SOFT=y
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
@@ -72,7 +71,5 @@ CONFIG_MMC_SPI_CRC_ON=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+# CONFIG_VIRTIO_MENU is not set
 CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-- 
2.35.1



