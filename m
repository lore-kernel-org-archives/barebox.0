Delivery-date: Sat, 08 Jan 2022 18:17:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FLi-00EcjL-4i
	for lore@lore.pengutronix.de; Sat, 08 Jan 2022 18:17:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FLg-0005Je-RP
	for lore@pengutronix.de; Sat, 08 Jan 2022 18:17:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fdaS0j8ro8w8uZAFb/hUsK4/B5IOtOXgs6QgjKItYM=; b=E19jIgpj/a6Zmj
	AeG6T8kSviO6HBTbYteeJ/is6bX0Oi1RT6giXanxDO2RQCqGmdGWWV/S036QDNgQiSGNQbf4FC45j
	dCNGe7IoRoHzkXuooTdks69Lvpb0dhrcq1HeNbio/BWxkjkAUW69E49vwMYiXLaEWQkMiGCwPitrH
	M+umdrHV/6Xy1lENQfWQ1TZculdMLU9YmFwhUJPW9j58oBM8XzBLsa8HOW4Vn0RZJt3jFshv4f7mS
	/WCGaZuPogyXyTNjLzNjQqD8+u1EU8J8s8KzkXlAprP9GubRZ+Ui2NyJrLk8Am9I+og+At80/JlGv
	WmdqRx72bJmYW4Fd/sWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6FKQ-006kHH-9H; Sat, 08 Jan 2022 17:16:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6FJX-006jjb-Po
 for barebox@lists.infradead.org; Sat, 08 Jan 2022 17:15:38 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FJO-0004Az-Do; Sat, 08 Jan 2022 18:15:26 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FJN-002Smq-IU; Sat, 08 Jan 2022 18:15:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat,  8 Jan 2022 18:15:24 +0100
Message-Id: <20220108171524.587144-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220108171524.587144-1-a.fatoum@pengutronix.de>
References: <20220108171524.587144-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220108_091535_895681_D91E14FD 
X-CRM114-Status: UNSURE (   6.40  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 9/9] RISC-V: Virt: enable more useful options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Incoming tutorial will showcase some barebox features, so enable them in
the config for use.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/configs/virt32_defconfig | 6 ++++++
 arch/riscv/configs/virt64_defconfig | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/riscv/configs/virt32_defconfig b/arch/riscv/configs/virt32_defconfig
index 28a20673e9b7..b5044cf34aa5 100644
--- a/arch/riscv/configs/virt32_defconfig
+++ b/arch/riscv/configs/virt32_defconfig
@@ -10,11 +10,15 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PBL_CONSOLE=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG=y
 CONFIG_STATE=y
 CONFIG_STATE_CRYPTO=y
 CONFIG_BOOTCHOOSER=y
@@ -46,6 +50,7 @@ CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
+CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SPLASH=y
 CONFIG_CMD_FBTEST=y
@@ -101,6 +106,7 @@ CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT=y
 CONFIG_CLOCKSOURCE_DUMMY_RATE=60000
 CONFIG_STATE_DRV=y
 CONFIG_EEPROM_AT24=y
+CONFIG_VIRTIO_INPUT=y
 CONFIG_HWRNG=y
 CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_GPIO_GENERIC_PLATFORM=y
diff --git a/arch/riscv/configs/virt64_defconfig b/arch/riscv/configs/virt64_defconfig
index 17588f61fa35..c2edd2dc2898 100644
--- a/arch/riscv/configs/virt64_defconfig
+++ b/arch/riscv/configs/virt64_defconfig
@@ -11,11 +11,15 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PBL_CONSOLE=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG=y
 CONFIG_STATE=y
 CONFIG_STATE_CRYPTO=y
 CONFIG_BOOTCHOOSER=y
@@ -47,6 +51,7 @@ CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
+CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SPLASH=y
 CONFIG_CMD_FBTEST=y
@@ -102,6 +107,7 @@ CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT=y
 CONFIG_CLOCKSOURCE_DUMMY_RATE=60000
 CONFIG_STATE_DRV=y
 CONFIG_EEPROM_AT24=y
+CONFIG_VIRTIO_INPUT=y
 CONFIG_HWRNG=y
 CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_GPIO_GENERIC_PLATFORM=y
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

