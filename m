Delivery-date: Fri, 26 Jun 2026 18:23:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd9KZ-00A8GY-1j
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 18:23:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd9KY-0001xB-MW
	for lore@pengutronix.de; Fri, 26 Jun 2026 18:23:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HDIklTFkaaiudPTIFHHlE6m7nIvxAUStiEdnXG7Oudc=; b=UcbEtBICTZU5LgLzPKoXO1mYPu
	qkMUGFxSAfvloOeEmTcSIHJw/ssqKQ1QpnOI5DfUCUdg38mC8jtgKOrIV4IgEqzXBOQ4qtU/1uRij
	uF4Y8N4lAoVEZsO7cYbA0QB8dfj22ZBtvWDtvJ2jFfckhsMTd8/0rQuTULfN6M+mf8sqbU1gjfEY/
	xdxB6RctwkLih34WlK+gUi3ci/blikjGcid7Sj/IwJcQLF1tNJfgkoueIftAcz5HTBEJ6QFCBTiAU
	syWXtlRid5CCsIG2nFkjPKxyNmxoCeVdOMJ0Yb0PWUzrYYCcCFiLjFwoDfuerw/qExOlmJvUHBGWG
	WvlrGg3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9JQ-0000000BcUi-0k4s;
	Fri, 26 Jun 2026 16:21:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9JK-0000000BcPZ-35N5
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 16:21:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd9JJ-0006R9-6X; Fri, 26 Jun 2026 18:21:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 18:19:39 +0200
Message-ID: <20260626162136.1885999-8-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626162136.1885999-1-a.fatoum@barebox.org>
References: <20260626162136.1885999-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_092146_772213_12DFF3F4 
X-CRM114-Status: UNSURE (   6.77  )
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
Subject: [PATCH v2 8/9] ARM: multi_v8_defconfig: enable OP-TEE and RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To allow testing the TEE + RPMB functionality in barebox, enable
everything the relevant barebox drivers and commands as well as command
for manipulating and partitioning the mmc.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
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



