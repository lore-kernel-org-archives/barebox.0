Delivery-date: Mon, 29 Jun 2026 14:51:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weBSY-00B7WH-33
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 14:51:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weBSY-000686-8h
	for lore@pengutronix.de; Mon, 29 Jun 2026 14:51:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+ZkbYDCyxc9gAjI0NxG6hqz/hMaduhXNfgzuc2ayC9g=; b=2ruGTJbDFsw4pkhvlnGK8LCVpL
	WpGhWweN7GBBA0Y0HAVNSdJjK7PDWmTB7ZLEaqTB8WjtljWg5M8bna+4M86890rE8EOyB5FgAykmj
	yqhP5o8tJQDlAoc1HNbEoFH5yY+oRaUeQRgTIUDfeBXXffbKwH/yXuz5V5QDc0Q4p2H0O6kE1Ce4H
	M/JolJhlYF+ER1OV2K2hs0oinnKjQTyW1L13FRzKfy/mxU2S0qkWjx7xVSncL3xmeSbgAvk144rUx
	rMkI+aJSOXJtHfA57wsoD14h8Nn6oWBjST8JmBrJXPqjM4PcLGLGqSviOyMzFWPOBsDAXzPfdB0n9
	GJLgJNHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weBNr-0000000EbZ0-37dn;
	Mon, 29 Jun 2026 12:46:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weBNo-0000000EbWw-3unc
	for barebox@bombadil.infradead.org;
	Mon, 29 Jun 2026 12:46:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=+ZkbYDCyxc9gAjI0NxG6hqz/hMaduhXNfgzuc2ayC9g=; b=f7aaNJKFSsFH9Ml5VNQCI/UlxF
	6NRZUEp3/4KsNgJBpmwm2Awppsnb34BBPJV4EeEpD4ydvqCBIbQWA4hJ85u9m01IvtS/mUL70/eI2
	yHq2BJ8VYy/8DQ6flDIo2rMZdKi3RunMVbgnMGKBo3ijqpZXCTd3lkQmzLQ9xobYzv+wN8n3fakAE
	o8SBdzuScnyAbEy//4cWtzP/q73lVfFskJAWcEdpbu5ufGPNgEckf9HKlOiuC6E//sjwxfkFm3j67
	bWH8E4+RA1C6c1USutLJvgIQfarfzAt3Kb4gCiBwxStDVdtx8O05aQfkBnlvgqEwF86FGaZVt7YoC
	8jw7bOhw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1weBNl-0000000106Y-3aY0
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 12:46:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1weBNj-0000LG-DK; Mon, 29 Jun 2026 14:46:35 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 29 Jun 2026 14:45:28 +0200
Message-ID: <20260629124631.689090-9-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260629124631.689090-1-a.fatoum@barebox.org>
References: <20260629124631.689090-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_134638_140197_643609EB 
X-CRM114-Status: UNSURE (   7.61  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 09/10] ARM: multi_v8_defconfig: enable OP-TEE and RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To allow testing the TEE + RPMB functionality in barebox, enable
everything the relevant barebox drivers and commands as well as command
for manipulating and partitioning the mmc.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v2 -> v3:
  - no change
v1 -> v2:
  - new commit
---
 arch/arm/configs/multi_v8_defconfig | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 5ea63372d050..0ed2770d2d37 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -84,6 +84,7 @@ CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_REGULATOR=y
 CONFIG_CMD_BFETCH=y
+CONFIG_CMD_MMC=y
 CONFIG_CMD_MMC_EXTCSD=y
 CONFIG_CMD_POLLER=y
 CONFIG_CMD_SLICE=y
@@ -94,6 +95,7 @@ CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_BOOTCHOOSER=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_FINDMNT=y
+CONFIG_CMD_PARTED=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_DEFAULTENV=y
 CONFIG_CMD_LOADENV=y
@@ -141,6 +143,7 @@ CONFIG_CMD_SMC=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_USBGADGET=y
 CONFIG_CMD_WD=y
+CONFIG_CMD_AVB_PVALUE=y
 CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_BAREBOX_UPDATE=y
@@ -228,6 +231,9 @@ CONFIG_DRIVER_VIDEO_RAMFB=y
 CONFIG_SOUND=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_MMC_GPP_PARTITIONS=y
+CONFIG_MCI_MMC_RPMB=y
+CONFIG_MCI_SDHCI_PCI=y
 CONFIG_MCI_DW=y
 CONFIG_MCI_SUNXI_SMHC=y
 CONFIG_MCI_ROCKCHIP_DWCMSHC=y
@@ -290,6 +296,9 @@ CONFIG_NVMEM_REBOOT_MODE=y
 CONFIG_VIRTIO_MMIO=y
 CONFIG_VIRTIO_PCI=y
 CONFIG_MAILBOX=y
+CONFIG_TEE=y
+CONFIG_OPTEE=y
+CONFIG_OPTEE_AVB_PERSISTENT_VALUES=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
-- 
2.47.3



