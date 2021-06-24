Delivery-date: Thu, 24 Jun 2021 17:03:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwQss-00057P-0J
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 17:03:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwQsq-0001u6-Qf
	for lore@pengutronix.de; Thu, 24 Jun 2021 17:03:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MEaIPJQxWhEju2KcuV8O4onaD7QEUvYJjBpDfXwZLgw=; b=04jHAhg3209/q5
	XlXxay/dJ05C5t+/RYPt7jU51pMgremD58UvE7OyxXkDQ+Ivrb/mEvOdWvVJgfOtzPTmb0jKAwi61
	sUM0KuK6f/Hb5Tapwi1YF2o3q7uMUWVlwmbhCgXkXQjXekBkit7Qy9DUONHDbPKf96rThao6KyAIR
	8mBZGw+FNt9IQf3hhnYMpCj7w6W7Y9MeRA1bzmGNHZWBZeAkQ9A2WUebqFvR+NhWfl3DsbbJdcLiV
	2OAmLrL6jkyDAndUumNywe0qwj6kE5qBTn7SuBmt+6enhkUTR4yhyQONKqT3zZW70/pj+OO7rpR0A
	TgPP0HbF6zq7hGMDeY/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwQrS-00F9lK-HM; Thu, 24 Jun 2021 15:01:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwQqh-00F9PY-BM
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 15:01:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqg-0000r4-2Y
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:58 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqf-0002B5-Ig
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:57 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqc-0053bK-Gp
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:54 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 24 Jun 2021 17:00:53 +0200
Message-Id: <20210624150054.1205422-7-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210624150054.1205422-1-m.tretter@pengutronix.de>
References: <20210624150054.1205422-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_080059_436395_41A8FC63 
X-CRM114-Status: UNSURE (   8.75  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/7] ARM: zynqmp: defconfig: enable more features
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Enable network, file system, and PSCI support in the defconfig to get a
Barebox with a useful feature set when building the ZynqMP defconfig.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changelog:

v2: none
---
 arch/arm/configs/zynqmp_defconfig | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/configs/zynqmp_defconfig b/arch/arm/configs/zynqmp_defconfig
index 6f5612fa92a0..2cd878133223 100644
--- a/arch/arm/configs/zynqmp_defconfig
+++ b/arch/arm/configs/zynqmp_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_ZYNQMP=y
 CONFIG_MACH_XILINX_ZCU104=y
+CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
@@ -12,32 +13,54 @@ CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
+CONFIG_BLSPEC=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_RESET_SOURCE=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_LN=y
 CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_FIRMWARELOAD=y
+CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
+CONFIG_OF_OVERLAY_LIVE=y
 CONFIG_DRIVER_SERIAL_CADENCE=y
 CONFIG_DRIVER_NET_MACB=y
+CONFIG_DP83867_PHY=y
 # CONFIG_SPI is not set
 CONFIG_MCI=y
 CONFIG_MCI_ARASAN=y
 CONFIG_FIRMWARE_ZYNQMP_FPGA=y
+# CONFIG_VIRTIO_MENU is not set
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
 CONFIG_DIGEST=y
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

