Delivery-date: Thu, 15 Jan 2026 13:08:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM9M-001aHv-3C
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:08:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM9M-0002cd-0I
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:08:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=21SN6hLS6DvkS62vccEtDqHTC0uzur/UcPdWPSR9v6U=; b=GbPNl27iUG1x4CQFao3xqFuPY2
	gdNI1VeMuDns6upgyQesAOMvY+XJ2dmFvl8+JSVjdxz1LeChZeihS3QHtQu9NBw2D5Pb46SloDz9R
	sbBG5ek9RJtjzPhBrzffbTxHFhspOmMnAbj7sSlHMFpk2Hc1KyRrrgErRa/Mb8ze59t3qEwFGYRI0
	RnzgFGo5azn9/W2PF9TRmK/bYTuzZjiTPiP+L/UaGAdYcMC8zfGejpIHLX0t0IjL73p72XLhj1EU5
	Q2nkop+fg8txpLDxNxulVOan3gX6ZKjFtNvuXBeoIZyzpVePehvc+XA4SecBa4NGCnWAj0XnS8UQh
	KGHPOywQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM8r-0000000CIZP-2Hkw;
	Thu, 15 Jan 2026 12:07:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM8o-0000000CIUn-0VDw
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 12:07:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgM8l-0002HG-Tj; Thu, 15 Jan 2026 13:07:52 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 15 Jan 2026 13:06:14 +0100
Message-ID: <20260115120748.3433463-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260115120748.3433463-1-a.fatoum@barebox.org>
References: <20260115120748.3433463-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_040754_165187_18F7FC96 
X-CRM114-Status: UNSURE (   8.56  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] ARM: configs: multi: enable QEMU FW_CFG
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On ARM, FW_CFG is probed if the associated device tree node is probed,
so there is no harm in enabling it in the multi defconfigs, but having
it for QEMU platforms enables us to use pytest --env.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/configs/multi_v5_v6_defconfig | 2 ++
 arch/arm/configs/multi_v7_defconfig    | 2 ++
 arch/arm/configs/multi_v8_defconfig    | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/arch/arm/configs/multi_v5_v6_defconfig b/arch/arm/configs/multi_v5_v6_defconfig
index 27a925f8bb26..bc6645b3ce27 100644
--- a/arch/arm/configs/multi_v5_v6_defconfig
+++ b/arch/arm/configs/multi_v5_v6_defconfig
@@ -122,3 +122,5 @@ CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
 CONFIG_DIGEST_SHA1_ARM=y
 CONFIG_DIGEST_SHA256_ARM=y
+CONFIG_QEMU_FW_CFG=y
+CONFIG_FS_QEMU_FW_CFG=y
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index ef4e10614801..688fd1c7c19e 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -374,3 +374,5 @@ CONFIG_FS_RATP=y
 CONFIG_PNG=y
 CONFIG_DIGEST_SHA1_ARM=y
 CONFIG_DIGEST_SHA256_ARM=y
+CONFIG_QEMU_FW_CFG=y
+CONFIG_FS_QEMU_FW_CFG=y
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index e63bb4618900..73a2d5feef37 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -300,3 +300,5 @@ CONFIG_DIGEST_SHA1_ARM64_CE=y
 CONFIG_DIGEST_SHA256_ARM64_CE=y
 CONFIG_LZO_DECOMPRESS=y
 # CONFIG_MISSING_FIRMWARE_ERROR is not set
+CONFIG_QEMU_FW_CFG=y
+CONFIG_FS_QEMU_FW_CFG=y
-- 
2.47.3



