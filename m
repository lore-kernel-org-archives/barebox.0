Delivery-date: Thu, 20 Oct 2022 16:43:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olWle-001qHc-AV
	for lore@lore.pengutronix.de; Thu, 20 Oct 2022 16:43:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olWlb-0006tE-2q
	for lore@pengutronix.de; Thu, 20 Oct 2022 16:43:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7EbmxqvXQFVIA1rS7Bi0z8EJ1hIKROZfypLgEXQlCmY=; b=KgB7HELtjzMNRtDA5hm1P/pvdQ
	SAq+lVDK1jj0hS6PXhKq2TbFkm0rXyyOldcG4f5sN3d9QYpgWBiz951V+uvwD9XdcAfyG7wbkiIqS
	LxSlZDGotdXAT6TLm9J1ovNNY2A2B1bTQL+RLo3EcSdGTso17NFWALZfUN8Hk7xSh7Sfwbumk0AZ9
	GffeWSvGxvDW5BycWUUFKlksZR2DDH5iWH77NKK9EZMMIzYsaB/sUi/7blwLEiPKX2KnTK/5Lh46r
	KliXn1ghD6O1fTVIQs/ESu81lwdd7emh5TnkDt+2jeyKCSkVz1iNQgf7FkCbZ72CvZz17CL0wiqx4
	ShC5iWJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olWju-00GKDC-2J; Thu, 20 Oct 2022 14:41:42 +0000
Received: from mickerik.phytec.de ([91.26.50.163])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olWjh-00GK9n-Rh
	for barebox@lists.infradead.org; Thu, 20 Oct 2022 14:41:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1666276883; x=1668868883;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=UnAQ7UN+1VXqaTOHBxlpB2V6JMW74d6vLajp0Aw/s1Q=;
	b=nadWxSyyfudu4AjqCvA/MCA0iiUbnra1bngv9qfcM4o30HliO7Fetnd+/JXMlIbv
	FQD/QcYdV0+aODMuOwYg9LIYaxJG9xACxJlpDBTuUSpMIFvCAtw2jm8F8AnbdAlF
	wR13DDng+ZMVZiHmfeLjn8L/dJVhaKNR9rV0up363Mk=;
X-AuditID: ac14000a-83bf370000003940-0b-63515e13eb5e
Received: from florix.phytec.de (Unknown_Domain [172.25.0.13])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id F4.78.14656.31E51536; Thu, 20 Oct 2022 16:41:23 +0200 (CEST)
Received: from lws-dhaller.phytec.de (172.25.0.11) by Florix.phytec.de
 (172.25.0.13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Thu, 20 Oct
 2022 16:41:23 +0200
From: Dominik Haller <d.haller@phytec.de>
To: <s.hauer@pengutronix.de>, <barebox@lists.infradead.org>
CC: <upstream@phytec.de>
Date: Thu, 20 Oct 2022 16:41:12 +0200
Message-ID: <20221020144112.52506-1-d.haller@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [172.25.0.11]
X-ClientProxiedBy: Berlix.phytec.de (172.25.0.12) To Florix.phytec.de
 (172.25.0.13)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrALMWRmVeSWpSXmKPExsWyRpKBV1c4LjDZYOlOUYsTi/uZLf5u38Ti
	wOSxeUm9R/9fgwCmKC6blNSczLLUIn27BK6MxtuHWAtmhVXsObOfuYHxhHcXIweHhICJxOlr
	WV2MXBxCAkuYJL6u6GKHcJ4ySrTMusHWxcjJwSagKTF90lZGkAYRAWuJo828IGFmAQmJV53r
	wUqEBWwlnp9rBrNZBFQlenfuALN5BcwlLsxYyAJiSwjIS8y89J0dIi4ocXLmExaIOfISzVtn
	M8PMPPjiBZgtBFK/ppsVpnfaudfMEHaoROef+ywTGAVmIRk1C8moWUhGLWBkXsUolJuZnJ1a
	lJmtV5BRWZKarJeSuokRFIoiDFw7GPvmeBxiZOJgPMQowcGsJMJb8C4gWYg3JbGyKrUoP76o
	NCe1+BCjNAeLkjjv/R6mRCGB9MSS1OzU1ILUIpgsEwenVAPjdAsPTSvl5AbHP5cjJX1vnjSf
	dLbwxCWRvO72xe+spWb8fMHZzvzk0CzWVvHn0fP/nTn04c7uvrfB01j6qoOn8b5Ia9qetODN
	9geZaR69TO7Hr5Ropnj+aJCN8NCyvl542YH3l1tf6xSX4ETZu1aX9uz0CxWcxuwfOnXVaqOW
	uotyXmcivI8psRRnJBpqMRcVJwIAWBQB+zMCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_074130_380410_DCE3254B 
X-CRM114-Status: UNSURE (   9.56  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: configs: Remove NS16550_OMAP_EXTENSIONS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Config NS16550_OMAP_EXTENSIONS has been removed a while ago in
commit 11a1f28cbf22 ("serial: Kconfig: Remove DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS option").

Remove it from the defconfigs too.

Signed-off-by: Dominik Haller <d.haller@phytec.de>
---
 arch/arm/configs/am335x_mlo_defconfig                         | 1 -
 arch/arm/configs/am35xx_pfc200_xload_defconfig                | 1 -
 arch/arm/configs/archosg9_defconfig                           | 1 -
 arch/arm/configs/archosg9_xload_defconfig                     | 1 -
 arch/arm/configs/omap3430_sdp3430_per_uart_defconfig          | 1 -
 arch/arm/configs/omap3530_beagle_defconfig                    | 1 -
 arch/arm/configs/omap3530_beagle_per_uart_defconfig           | 1 -
 arch/arm/configs/omap3530_beagle_xload_defconfig              | 1 -
 arch/arm/configs/omap3_evm_defconfig                          | 1 -
 arch/arm/configs/omap_defconfig                               | 1 -
 arch/arm/configs/panda_defconfig                              | 1 -
 arch/arm/configs/panda_xload_defconfig                        | 1 -
 arch/arm/configs/phytec-phycard-omap3-xload_defconfig         | 1 -
 arch/arm/configs/phytec-phycard-omap3_defconfig               | 1 -
 arch/arm/configs/phytec-phycard-omap4-xload_defconfig         | 1 -
 arch/arm/configs/phytec-phycard-omap4_defconfig               | 1 -
 arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig  | 1 -
 arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig | 1 -
 arch/arm/configs/phytec-phycore-omap4460_defconfig            | 1 -
 19 files changed, 19 deletions(-)

diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index 83bb20e4b50c..57602ba30918 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -21,7 +21,6 @@ CONFIG_SHELL_NONE=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_OFDEVICE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_SPI_OMAP3=y
 CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
diff --git a/arch/arm/configs/am35xx_pfc200_xload_defconfig b/arch/arm/configs/am35xx_pfc200_xload_defconfig
index da55382f0566..710e39ff61da 100644
--- a/arch/arm/configs/am35xx_pfc200_xload_defconfig
+++ b/arch/arm/configs/am35xx_pfc200_xload_defconfig
@@ -17,7 +17,6 @@ CONFIG_SHELL_NONE=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
index aafd849185c7..dd509fca7266 100644
--- a/arch/arm/configs/archosg9_defconfig
+++ b/arch/arm/configs/archosg9_defconfig
@@ -67,7 +67,6 @@ CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_SMSC95XX=y
diff --git a/arch/arm/configs/archosg9_xload_defconfig b/arch/arm/configs/archosg9_xload_defconfig
index 27f471cf0bbb..b6a0475d40fb 100644
--- a/arch/arm/configs/archosg9_xload_defconfig
+++ b/arch/arm/configs/archosg9_xload_defconfig
@@ -14,7 +14,6 @@ CONFIG_SHELL_NONE=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
 # CONFIG_SPI is not set
 CONFIG_MCI=y
diff --git a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
index d43355cdf1e3..646a392b6b56 100644
--- a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
+++ b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
@@ -23,5 +23,4 @@ CONFIG_CMD_LOADB=y
 # CONFIG_CMD_CLEAR is not set
 # CONFIG_CMD_ECHO is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index 5d09abf61550..e959bdfde304 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -72,7 +72,6 @@ CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 CONFIG_NET_USB_SMSC95XX=y
diff --git a/arch/arm/configs/omap3530_beagle_per_uart_defconfig b/arch/arm/configs/omap3530_beagle_per_uart_defconfig
index e4112b49107f..2439bd955ed5 100644
--- a/arch/arm/configs/omap3530_beagle_per_uart_defconfig
+++ b/arch/arm/configs/omap3530_beagle_per_uart_defconfig
@@ -22,5 +22,4 @@ CONFIG_CMD_LOADB=y
 # CONFIG_CMD_CLEAR is not set
 # CONFIG_CMD_ECHO is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/omap3530_beagle_xload_defconfig b/arch/arm/configs/omap3530_beagle_xload_defconfig
index e9484ed852bb..0a47479f1892 100644
--- a/arch/arm/configs/omap3530_beagle_xload_defconfig
+++ b/arch/arm/configs/omap3530_beagle_xload_defconfig
@@ -17,7 +17,6 @@ CONFIG_SHELL_NONE=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
diff --git a/arch/arm/configs/omap3_evm_defconfig b/arch/arm/configs/omap3_evm_defconfig
index 973acbff683d..8c5df029a75a 100644
--- a/arch/arm/configs/omap3_evm_defconfig
+++ b/arch/arm/configs/omap3_evm_defconfig
@@ -21,5 +21,4 @@ CONFIG_CMD_RESET=y
 # CONFIG_CMD_RM is not set
 # CONFIG_CMD_RMDIR is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/omap_defconfig b/arch/arm/configs/omap_defconfig
index ae4d1a67da3a..433d9bdd7d09 100644
--- a/arch/arm/configs/omap_defconfig
+++ b/arch/arm/configs/omap_defconfig
@@ -100,7 +100,6 @@ CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_NET_CPSW=y
 CONFIG_DRIVER_NET_DAVINCI_EMAC=y
 CONFIG_MICREL_PHY=y
diff --git a/arch/arm/configs/panda_defconfig b/arch/arm/configs/panda_defconfig
index 9c1efe168a1c..b199e7990bfe 100644
--- a/arch/arm/configs/panda_defconfig
+++ b/arch/arm/configs/panda_defconfig
@@ -62,7 +62,6 @@ CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_SMSC95XX=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/panda_xload_defconfig b/arch/arm/configs/panda_xload_defconfig
index e3d87c42dd53..bc33882c855a 100644
--- a/arch/arm/configs/panda_xload_defconfig
+++ b/arch/arm/configs/panda_xload_defconfig
@@ -12,7 +12,6 @@ CONFIG_SHELL_NONE=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
diff --git a/arch/arm/configs/phytec-phycard-omap3-xload_defconfig b/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
index 6eab808f7c07..26a539f7f784 100644
--- a/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
@@ -17,7 +17,6 @@ CONFIG_SHELL_NONE=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
diff --git a/arch/arm/configs/phytec-phycard-omap3_defconfig b/arch/arm/configs/phytec-phycard-omap3_defconfig
index 6cc1c1e80b3f..a9abf12a138f 100644
--- a/arch/arm/configs/phytec-phycard-omap3_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3_defconfig
@@ -54,7 +54,6 @@ CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_NET_SMC911X=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
diff --git a/arch/arm/configs/phytec-phycard-omap4-xload_defconfig b/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
index af3ada634375..a1859140db0d 100644
--- a/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
@@ -13,7 +13,6 @@ CONFIG_SHELL_NONE=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
diff --git a/arch/arm/configs/phytec-phycard-omap4_defconfig b/arch/arm/configs/phytec-phycard-omap4_defconfig
index 2f3970725dce..a0bb846a6d59 100644
--- a/arch/arm/configs/phytec-phycard-omap4_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap4_defconfig
@@ -36,7 +36,6 @@ CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_NET_KS8851_MLL=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
diff --git a/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig b/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
index 61f85c837f89..19365a6fcd92 100644
--- a/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
@@ -15,7 +15,6 @@ CONFIG_SHELL_NONE=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
diff --git a/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig b/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
index 77f124b33f14..14cab44b5dce 100644
--- a/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
@@ -16,7 +16,6 @@ CONFIG_SHELL_NONE=y
 CONFIG_CONSOLE_SIMPLE=y
 CONFIG_PARTITION=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
diff --git a/arch/arm/configs/phytec-phycore-omap4460_defconfig b/arch/arm/configs/phytec-phycore-omap4460_defconfig
index e65a76570b3f..7d5369cb23be 100644
--- a/arch/arm/configs/phytec-phycore-omap4460_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460_defconfig
@@ -49,7 +49,6 @@ CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_NET_SMC911X=y
 CONFIG_SMSC_PHY=y
 # CONFIG_SPI is not set
-- 
2.25.1



