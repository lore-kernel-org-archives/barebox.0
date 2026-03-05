Delivery-date: Thu, 05 Mar 2026 11:06:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy5b1-008IHl-2I
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 11:06:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy5b2-00088x-1d
	for lore@pengutronix.de; Thu, 05 Mar 2026 11:06:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K5XzU7A01sxenouytDCH1Ab4m6x/IxKq4549XWhNvZY=; b=El+MLmX5GvmkxD9a8ydf/CUvN5
	lrwREsRMEbqAdYmOjgw3fsCgLus5QieXJDvampt+P25S2k454gMt+g9Xs+uy8dg4VO38aS2afn9sn
	XTYC4rQXieSCPOTO9Ol30vbxN/mfvZ+pfH3g6A7s4FSWYCyo1bL+9Jd98KUVCjZ3wIztnzL0tyfV7
	D5h+4zGNtYmsfieff0d7mzvpe6YudZmFBVch+blXDHgjO+60bxPOljWM/VO8Bt+5iNxls1aSTsb6/
	/Zd/xJjp3VPSLM6E/pRTSBA6pcvIE8nMq/T8YQlg4Q7+yWlwUxlGyYmLloX9n3QZGUlY7Y3A9ZLpz
	HJ3Jq+lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5ac-00000001W8w-3EcL;
	Thu, 05 Mar 2026 10:05:54 +0000
Received: from cczrelay04.in2p3.fr ([134.158.66.154])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5aa-00000001W7i-1ok9
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 10:05:53 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay04.in2p3.fr (Postfix) with ESMTPSA id D74F080080D;
	Thu,  5 Mar 2026 10:56:01 +0100 (CET)
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 05 Mar 2026 10:55:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-b4-sa2-usb-v2-1-cf377c10efd5@clermont.in2p3.fr>
References: <20260305-b4-sa2-usb-v2-0-cf377c10efd5@clermont.in2p3.fr>
In-Reply-To: <20260305-b4-sa2-usb-v2-0-cf377c10efd5@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772704561; l=1153;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=G5noobv59j3wGq2N3lhnHldUldRjFB2xdzgfmKwDVoI=;
 b=8EVzUXBrYWfQ/0/jRDFaQS1vA7EWlj3VXT8wobYxNwG8nW3LN+ZwAU90/xlmx7Pzu8lN8uL7f
 tjGKUHeJi7wCFvjuHQ/mpASK5yLWZcT55DydwRj5ZmYLFg5NLf6XXLj
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_020552_617173_3D3F896C 
X-CRM114-Status: UNSURE (   6.87  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,UPPERCASE_50_75
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/3] ARM: socfpga: Enclustra SA2: add defconfig options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add configuration options needed by the Enclustra SA2 module.
---
 arch/arm/configs/socfpga_defconfig | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
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



