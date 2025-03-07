Delivery-date: Fri, 07 Mar 2025 09:00:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqScq-00AvVe-2M
	for lore@lore.pengutronix.de;
	Fri, 07 Mar 2025 09:00:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqScp-0005kS-Hf
	for lore@pengutronix.de; Fri, 07 Mar 2025 09:00:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5iso7lGYpppQoNjWt7Q4ccFmyKSD+nfEbMiF2XSH1mk=; b=cMAo/z9edNIw3Qh2zoZ7D9/tPN
	zPQZerVQqemgx0EYIU8drXXxHbvoK3/jmnKATpAshNCvTegyZl0lnRes+i9B3VODTUDt9JQGhmH1o
	/pFv8EKsZUciDPqVTgztXEKl9MSsPe5KV2dVjRXrGQsioqZ2ESmxW0gm+tqrXTNEz5vTxuEd8ap4Z
	0VN48QbFRMZMevnTj9w5grZIS9SeJsnP4OtR90w6zXPTWwAGnVpEVpgTYzoQl1V8g7xVOU8orbA5b
	fgH/SPhsRcOCKOqP8XuHBXyyUAuTsrNPx1G5J6tjyPIC5h+SZrfO9NUtqph1nrVSqh+a5J9GL0o1R
	ZijD/HiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqScH-0000000DUB7-3EF1;
	Fri, 07 Mar 2025 07:59:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqScF-0000000DUAp-0XC2
	for barebox@lists.infradead.org;
	Fri, 07 Mar 2025 07:59:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqScD-0005fs-O6; Fri, 07 Mar 2025 08:59:29 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqScD-004RwY-1o;
	Fri, 07 Mar 2025 08:59:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqScD-0045Fr-1S;
	Fri, 07 Mar 2025 08:59:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  7 Mar 2025 08:59:27 +0100
Message-Id: <20250307075927.973504-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_235931_165389_7099FBAF 
X-CRM114-Status: UNSURE (   9.42  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: at91: remove obsolete defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

sama5d3xek_defconfig is obsolete. The sama5d3xek is now covered by
at91_multi_defconfig. It currently falls back for building for
the AT91RM9200-EK instead of the sama5d3xek, so just drop it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/sama5d3xek_defconfig | 87 ---------------------------
 1 file changed, 87 deletions(-)
 delete mode 100644 arch/arm/configs/sama5d3xek_defconfig

diff --git a/arch/arm/configs/sama5d3xek_defconfig b/arch/arm/configs/sama5d3xek_defconfig
deleted file mode 100644
index c868bd0daf..0000000000
--- a/arch/arm/configs/sama5d3xek_defconfig
+++ /dev/null
@@ -1,87 +0,0 @@
-CONFIG_TEXT_BASE=0x26f00000
-CONFIG_ARCH_AT91=y
-CONFIG_ARCH_SAMA5D3=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
-CONFIG_MALLOC_SIZE=0xA00000
-CONFIG_EXPERIMENTAL=y
-CONFIG_MALLOC_TLSF=y
-CONFIG_PROMPT="A5D3X-EK:"
-CONFIG_PROMPT_HUSH_PS2="y"
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-# CONFIG_CMD_ARM_CPUINFO is not set
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_SPI=y
-CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_DRIVER_NET_MACB=y
-CONFIG_MICREL_PHY=y
-CONFIG_DRIVER_SPI_ATMEL=y
-CONFIG_I2C=y
-CONFIG_I2C_GPIO=y
-CONFIG_MTD=y
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_MTD_M25P80=y
-CONFIG_NAND=y
-CONFIG_NAND_ATMEL=y
-CONFIG_NAND_ATMEL_PMECC=y
-CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_ATMEL_HLCD=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_ATMEL=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_KEYBOARD_GPIO=y
-CONFIG_KEYBOARD_QT1070=y
-CONFIG_W1=y
-CONFIG_W1_MASTER_GPIO=y
-CONFIG_W1_SLAVE_DS2431=y
-CONFIG_W1_SLAVE_DS2433=y
-CONFIG_W1_DUAL_SEARCH=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_PNG=y
-- 
2.39.5



