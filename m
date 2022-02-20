Delivery-date: Sun, 20 Feb 2022 13:49:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlei-004wsL-Kp
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:49:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlef-0001Kk-TM
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:49:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHpkoH27Hc666Lh1RUTPBYBnKhSSRq1YEhO3SU7vlDA=; b=ObdGC7bFeGoCqA
	HlNRqcmHDAU83m6Gab5QXlOlFbrNd+WmK3sCvOzAg3RoZg+wfe+ijQdf/crNGmGOgkPiuoKgmCc+B
	U6bX3O5767M1Gya4+tpKxdPEW044xV8yE46iGNkzDA3RLNNTgE7qswH7ytZuKcnt/xm1O6WUHiZX7
	EuMKXQ/6fdzlnVsjkHo/rg23fKO+HtGIyhOqfE1BLYS2NI8MLYX9S6xu3Rdot+QMA5zgFejvRDd8q
	ur52+ElBwoJbUzhPTQTZ24Ql23NuOMCN+nzavVeBdSjv2Nt2ePVwp7b2AVx/k7dXAnqmPuUwl1F3J
	0UUxk8VkyzrbK6sUnuIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLldD-001I8q-8l; Sun, 20 Feb 2022 12:48:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLlcw-001I1B-J8
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:47:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000aI-QI; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcr-00CoQS-LY; Sun, 20 Feb 2022 13:47:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:36 +0100
Message-Id: <20220220124736.3052502-25-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044746_672194_6E2ADCD4 
X-CRM114-Status: UNSURE (   8.12  )
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
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 24/24] ARM: stm32mp: enable more config options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have recently gained SCMI and LTDC support as well as a new SPI
display. Enable them in the defconfig.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/stm32mp_defconfig | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index d682083d400a..2fec3a2d3b9c 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_LXA_MC1=y
 CONFIG_MACH_SEEED_ODYSSEY=y
 CONFIG_MACH_STM32MP15X_EV1=y
 CONFIG_MACH_PROTONIC_STM32MP1=y
+CONFIG_BOARD_ARM_GENERIC_DT=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -118,12 +119,15 @@ CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_USB_GADGET_FASTBOOT=y
 CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_FB_SSD1307=y
+CONFIG_DRIVER_VIDEO_STM32_LTDC=y
 CONFIG_DRIVER_VIDEO_BACKLIGHT=y
 CONFIG_DRIVER_VIDEO_SIMPLE_PANEL=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_STM32_SDMMC2=y
+CONFIG_COMMON_CLK_SCMI=y
 CONFIG_MFD_STPMIC1=y
 CONFIG_MFD_STM32_TIMERS=y
 CONFIG_LED=y
@@ -149,12 +153,14 @@ CONFIG_REGULATOR_FIXED=y
 CONFIG_REGULATOR_STM32_PWR=y
 CONFIG_REGULATOR_STM32_VREFBUF=y
 CONFIG_REGULATOR_STPMIC1=y
+CONFIG_REGULATOR_ARM_SCMI=y
 CONFIG_REMOTEPROC=y
 CONFIG_STM32_REMOTEPROC=y
-CONFIG_RESET_STM32=y
+CONFIG_ARM_SCMI_PROTOCOL=y
 CONFIG_GENERIC_PHY=y
 CONFIG_PHY_STM32_USBPHYC=y
 CONFIG_SYSCON_REBOOT_MODE=y
+CONFIG_RESET_STM32=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

