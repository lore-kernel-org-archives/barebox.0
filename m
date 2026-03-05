Delivery-date: Thu, 05 Mar 2026 09:22:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy3yD-008Gmw-2r
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 09:22:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy3yE-0001Nd-7f
	for lore@pengutronix.de; Thu, 05 Mar 2026 09:22:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cmf416VBU44vWPnCRez38NpFGVyBZPTQi0DTtR7OAcY=; b=21IOWSNrIlhEUVXPIIfYr+9Ur6
	bvZ6uqu8V8AbS6KkxTvmaai1EXW0WNRJdREPYDcIZrZ5Hrd2akbYF678zQ+5tn7sS+yc87F9KbFQg
	S292dF9w8LBnsh5aQuzFK7t5ZhcMzUy2CkOH6hS2hzpc7OE1rKzsAoauujhT+hloRRsb7QjT9960l
	XRaivyOpaAQp5u8fAwqkh/W22E4BdwRB/LHj1eQp6yaRIAUyvohXGv2IbgxgAeIg0wKLY+OIJaWfa
	svAA90bD90hi6wAS1PlRQfh4S+2XHKrHBJXaex3aeFMKZcxXqQvYsjZ/iDvPuR1e4Myb08ItmIJaO
	9PUC4Uew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3xs-00000001B6S-3mag;
	Thu, 05 Mar 2026 08:21:48 +0000
Received: from cczrelay05.in2p3.fr ([134.158.66.155] helo=cczrelay03.in2p3.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3xq-00000001B5Q-1fwn
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 08:21:47 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by cczrelay03.in2p3.fr (Postfix) with ESMTPSA id 01EE31800896
	for <barebox@lists.infradead.org>; Thu,  5 Mar 2026 09:16:01 +0100 (CET)
Message-ID: <b69c34fd-a090-4d1e-839f-bac82e23f341@clermont.in2p3.fr>
Date: Thu, 5 Mar 2026 09:16:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: David Picard <david.picard@clermont.in2p3.fr>
To: ML_Barebox <barebox@lists.infradead.org>
References: <20260304-b4-sa2-usb-v1-1-8193d0fa9cd7@clermont.in2p3.fr>
Content-Language: fr
In-Reply-To: <20260304-b4-sa2-usb-v1-1-8193d0fa9cd7@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_002146_570126_FB49DF70 
X-CRM114-Status: UNSURE (   6.23  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,UPPERCASE_50_75
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Fwd: [PATCH 1/3] ARM: socfpga: Enclustra SA2: add defconfig options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)




-------- Message transféré --------
Sujet : 	[PATCH 1/3] ARM: socfpga: Enclustra SA2: add defconfig options
Date : 	Wed, 04 Mar 2026 14:51:23 +0100
De : 	David Picard <david.picard@clermont.in2p3.fr>
Pour : 	David Picard <david.picard@clermont.in2p3.fr>



Add configuration options needed by the Enclustra SA2 module.
---
arch/arm/configs/socfpga_defconfig | 9 +++++++++
1 file changed, 9 insertions(+)

diff --git a/arch/arm/configs/socfpga_defconfig 
b/arch/arm/configs/socfpga_defconfig
index e9b93bc197..37555a6297 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -60,6 +60,7 @@ CONFIG_CMD_MM=y
CONFIG_CMD_CLK=y
CONFIG_CMD_DETECT=y
CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
CONFIG_CMD_LED=y
CONFIG_CMD_SPI=y
CONFIG_CMD_LED_TRIGGER=y
@@ -76,6 +77,9 @@ CONFIG_OF_BAREBOX_DRIVERS=y
CONFIG_OF_BAREBOX_ENV_IN_FS=y
CONFIG_DRIVER_SERIAL_NS16550=y
CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA=y
+CONFIG_MICREL_PHY=y
+CONFIG_I2C=y
+CONFIG_I2C_DESIGNWARE=y
CONFIG_MTD=y
CONFIG_NAND=y
CONFIG_MTD_NAND_DENALI=y
@@ -93,7 +97,12 @@ CONFIG_KEYBOARD_GPIO=y
CONFIG_WATCHDOG=y
CONFIG_WATCHDOG_DW=y
CONFIG_GPIO_DESIGNWARE=y
+CONFIG_NVMEM=y
+CONFIG_NVMEM_ATMEL_SHA204A=y
CONFIG_FIRMWARE_ALTERA_SOCFPGA=y
+CONFIG_FPGA=y
+CONFIG_FPGA_BRIDGE=y
+CONFIG_SOCFPGA_FPGA_BRIDGE=y
CONFIG_FS_EXT4=y
CONFIG_FS_TFTP=y
CONFIG_FS_NFS=y

-- 
2.43.0



