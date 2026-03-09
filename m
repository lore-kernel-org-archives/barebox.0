Delivery-date: Mon, 09 Mar 2026 13:05:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzZMU-009jlE-1N
	for lore@lore.pengutronix.de;
	Mon, 09 Mar 2026 13:05:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzZMU-0000ge-DO
	for lore@pengutronix.de; Mon, 09 Mar 2026 13:05:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GH4nKnMvnS/cmdp/hVHiQ4Htg7tO8OWsSLA+LXCctIs=; b=mqGnqVJXaRm1A3+6WqtsBMPi4/
	Drqk5V1A2FNcDRPcQOG1Cl09luEdAE1mmtxC+fr/J5/uBrmE6SkEXKbBEF6tbPfhssb8UjJyM7N2E
	dkJRwkBsLctCaTWlsbKuysEMmqOSc0Kx/D1jRd0ON3nEDH1aVVCo3obiNL9DHTYpkyV57jU/Tasnk
	eB9bhebCY7rzwLUggpdHufxbmO73R8nk3B4iQSysjrO76jNy1G2p29rqtKSzYN+l1qFgCoSdGczY1
	SmFxk3E3qZBnN8RnVH916egOJiW3T34cwXNerNPcFREmcV3z+tdM3J14tvv9w8Z3ocPMxD8m1nulF
	8nffvHqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzZLv-00000007Fbz-0x9H;
	Mon, 09 Mar 2026 12:04:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzZLt-00000007FbL-2Vye
	for barebox@bombadil.infradead.org;
	Mon, 09 Mar 2026 12:04:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=GH4nKnMvnS/cmdp/hVHiQ4Htg7tO8OWsSLA+LXCctIs=; b=rHlaxp4Th8Kw3Gr1s90FpWpCMH
	V1mHgPnAmGRh2Bae6/KX62pOUVRIKeMPsNpnnA47e/wEhqMBTxKwssF6Ml+V9tZWHVsguSLT0j746
	+m7ZvksCAF1Fz3fScQdt0nMVLPrrvyEiPJpvVSeLqsSNZCXpvGeMStfkePa8TYVnEDnzL5g2CXSxo
	OoKCnR0GRlZ13ll4UpWHLiCAnwD9FNGUKfjCibVenPbiNH6R3fWvVdvpVabqVz9dGtfLwPF06BYuD
	oCvwjEgIWofg6IlPxIqov8+Jt7tEFmiQSPlNPwDKFQa9+8yMAsK0EA7HaR2PQoyWhPdwWwob2KCER
	wqEDO55A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzZLq-0000000C4MI-3Z6f
	for barebox@lists.infradead.org;
	Mon, 09 Mar 2026 12:04:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vzZLn-0000K8-UO; Mon, 09 Mar 2026 13:04:43 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 09 Mar 2026 13:04:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-6-fcc1f327acf8@pengutronix.de>
References: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-0-fcc1f327acf8@pengutronix.de>
In-Reply-To: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-0-fcc1f327acf8@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_120446_971248_91A68736 
X-CRM114-Status: UNSURE (   9.00  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,UPPERCASE_50_75
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/6] ARM: socfpga-agilex5_defconfig: enable
 cadencen-sdhci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Regenerate the defconfig and enable the Cadence SDHCI driver for the
SoCFPGA Agilex5 platform.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/configs/socfpga-agilex5_defconfig | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/configs/socfpga-agilex5_defconfig b/arch/arm/configs/socfpga-agilex5_defconfig
index ce3954a6e7..2cfeef3ec3 100644
--- a/arch/arm/configs/socfpga-agilex5_defconfig
+++ b/arch/arm/configs/socfpga-agilex5_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_SOCFPGA=y
-CONFIG_64BIT=y
 CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
@@ -12,7 +11,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BOOTM_AIMAGE=y
 CONFIG_SYSTEM_PARTITIONS=y
@@ -42,8 +40,6 @@ CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_PASSWD=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
@@ -52,6 +48,8 @@ CONFIG_CMD_MEMTEST=y
 CONFIG_CMD_MM=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_PASSWD=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_DIFF=y
 CONFIG_CMD_OF_NODE=y
@@ -70,13 +68,16 @@ CONFIG_DRIVER_NET_DESIGNWARE_XGMAC_SOCFPGA=y
 CONFIG_ADIN_PHY=y
 # CONFIG_SPI is not set
 CONFIG_MCI=y
+CONFIG_MCI_CADENCE_SDHCI=y
 # CONFIG_PINCTRL is not set
+# CONFIG_RESET_SCMI is not set
+CONFIG_RESET_SOCFPGA32=y
 CONFIG_ARM_SCMI_PROTOCOL=y
 # CONFIG_VIRTIO_MENU is not set
 CONFIG_MAILBOX=y
 CONFIG_FS_TFTP=y
+CONFIG_DIGEST_SHA256_GENERIC=y
 CONFIG_ZLIB=y
 CONFIG_CRC_CCITT=y
 CONFIG_NLS=y
-CONFIG_DIGEST_SHA256_GENERIC=y
 # CONFIG_MISSING_FIRMWARE_ERROR is not set

-- 
2.52.0



