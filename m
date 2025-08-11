Delivery-date: Mon, 11 Aug 2025 14:30:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfz-009Kr4-2g
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfc-0006jv-St
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XQSEW+EjQdNVI/t8lfRUI9RkZlUSaUH5PDB3AAxt0zc=; b=OulxYrU9HWqKL70NNT3M3NSkyW
	6EhWdR9eq5Bz9+e23Yv9Pukmfy+Faw9+jxViFzswWjsb/W88l+DhsGrizhdIFZTn0+S+iHrUPj/OK
	nkknjcoDQwfqEZo0bUr7kEet/dlD8CYe2YcdiAr4j4ACWa98d0MUtNMtUa/5sGCq3zcoxFK/cfzf5
	CUr1drnb98TEu28tpCIt/ZmMF6RLpGu/chgFNXQ4ly5YI9egRafvHX+aLuBzrp+8lN6ElPzTcxILV
	oU8PvHMxMhA+o4KVB83FqyQt40DfxULuY0CNMrrzcdbl+d8HAutd+1xL+aMwJ3w6Urjzxli3PWvYM
	2FE93DVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulReG-00000007eYQ-1POQ;
	Mon, 11 Aug 2025 12:29:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdo-00000007dk7-3Xyy
	for barebox@bombadil.infradead.org;
	Mon, 11 Aug 2025 12:28:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=XQSEW+EjQdNVI/t8lfRUI9RkZlUSaUH5PDB3AAxt0zc=; b=jZN0yf603CR+1zB2HohmZIRGkw
	B1uFCbbFbuz0w+TDGmCtEgPxLYosam9USUB+VEWhpT7Yy6RPssVaM7tQdksOmc4vLFithfV4eDJdO
	Ov7M9ODn244H/ojDcVj7XVNSFpDotZbIN/gPVaFZLtwgxXT87uttSFIxZnctpiTFjE8FwFweymfnk
	KBeaowglgozZKbWm2/8LzhnUQ6KTNGd6HpaaLEGkXC0Tz/yMztn5XX1x+/D5E0U9Dxo2lDV3YPcgX
	ecbKOH14MPJe8GTt7tpxUp15HwTyL2D68KZaWlwqK6xBW9YBHtiIr7gExWF00+dAiglXoA4xNO/SB
	uIRryZpQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdl-0000000FPVj-2VId
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdk-0004WP-Sm; Mon, 11 Aug 2025 14:28:36 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:24 +0200
Message-Id: <20250811122824.1667791-45-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_132837_740590_9E2B0D02 
X-CRM114-Status: UNSURE (   8.28  )
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
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 44/44] configs: enable bfetch in some popular defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The bfetch command currently adds 5189 bytes to multi_v8_defconfig's
barebox-dt-2nd.img, but this is expected to grow as we add more structio
support.

Therefore the command is not enabled by default, but let's enable it for
the more popular defconfigs.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/configs/multi_v7_defconfig    | 1 +
 arch/arm/configs/multi_v8_defconfig    | 1 +
 arch/riscv/configs/rv64i_defconfig     | 1 +
 arch/riscv/configs/virt32_defconfig    | 1 +
 arch/sandbox/configs/sandbox_defconfig | 1 +
 5 files changed, 5 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index bb4f487de976..fbe80cc2993e 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -133,6 +133,7 @@ CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_REGULATOR=y
+CONFIG_CMD_BFETCH=y
 CONFIG_CMD_MMC=y
 CONFIG_CMD_MMC_EXTCSD=y
 CONFIG_CMD_FCB=y
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 550b9b07f491..95f8e497fc3a 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -81,6 +81,7 @@ CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_REGULATOR=y
+CONFIG_CMD_BFETCH=y
 CONFIG_CMD_MMC_EXTCSD=y
 CONFIG_CMD_POLLER=y
 CONFIG_CMD_SLICE=y
diff --git a/arch/riscv/configs/rv64i_defconfig b/arch/riscv/configs/rv64i_defconfig
index 68cb86676a08..12ced940c5c4 100644
--- a/arch/riscv/configs/rv64i_defconfig
+++ b/arch/riscv/configs/rv64i_defconfig
@@ -40,6 +40,7 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BFETCH=y
 CONFIG_CMD_POLLER=y
 CONFIG_CMD_SLICE=y
 CONFIG_CMD_GO=y
diff --git a/arch/riscv/configs/virt32_defconfig b/arch/riscv/configs/virt32_defconfig
index c12adc67739c..ac2eb1c94305 100644
--- a/arch/riscv/configs/virt32_defconfig
+++ b/arch/riscv/configs/virt32_defconfig
@@ -30,6 +30,7 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BFETCH=y
 CONFIG_CMD_POLLER=y
 CONFIG_CMD_SLICE=y
 CONFIG_CMD_GO=y
diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index 921999e001bc..5b2cfdd51507 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -20,6 +20,7 @@ CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_NVMEM=y
+CONFIG_CMD_BFETCH=y
 CONFIG_CMD_POLLER=y
 CONFIG_CMD_SLICE=y
 CONFIG_CMD_GO=y
-- 
2.39.5



