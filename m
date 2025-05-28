Delivery-date: Wed, 28 May 2025 15:16:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKGe6-001CSo-1O
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 15:16:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKGe5-00052M-Mb
	for lore@pengutronix.de; Wed, 28 May 2025 15:16:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kU67yLlneRLzJ/W6tqxAIv7cWCbtEiPDKIbyN/f+U4M=; b=k7cYRqJKKP70CEcOyaHJrwoLUL
	nbeOfOyjklL69i0r64J8ojx/tFM10bbPftTNOQQ27z2ukGH6Ra46jOrAqI1cw/tRUuFOgENcoUYXb
	WDs+s8E1VFKEXDxasnINCaQ0FuWsa0LHSNz7KawsKpr4a+XUDSbj3XV1gMYkkDFqpWuVUT/X89dEG
	MJuoAebNxifwN7laQS4Zy3WxoLyH1ezp8mnAknQ1ROzU6GqGB7BGE1te3Akr2PRifUcNsjJ/IWKNy
	ZgX5zvoPjw/bK5ZOyIpxWn+sOnfOp9XJxj6a7dCZxjQqaqK6+fWaMufH+EFBUCRQhETMclSmSmypg
	7EB/2flw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKGdU-0000000DDEu-0Idp;
	Wed, 28 May 2025 13:16:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKGbm-0000000DD7E-0Dn0
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 13:14:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uKGbk-0003JX-QA; Wed, 28 May 2025 15:14:12 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 28 May 2025 15:14:10 +0200
Message-Id: <20250528131411.935668-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528131411.935668-1-a.fatoum@barebox.org>
References: <20250528131411.935668-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_061414_096943_88081091 
X-CRM114-Status: UNSURE (   8.53  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] ARM: configs: enable deep probe for the most popular configs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that all in-tree device trees should have a
barebox,disable-deep-probe if they don't support deep probe, it should
be safe to enable deep probe by default, so second stage boot on boards
without board code can make use of deep probe by default.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/configs/imx_v8_defconfig      | 1 +
 arch/arm/configs/multi_v7_defconfig    | 1 +
 arch/arm/configs/multi_v8_defconfig    | 1 +
 arch/arm/configs/rockchip_v8_defconfig | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index 445f20a303cc..aae1bd6e8ccb 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -94,6 +94,7 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
+CONFIG_DEEP_PROBE_DEFAULT=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_SERIAL_DEV_BUS=y
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 3eea4e640572..7fb804c90707 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -202,6 +202,7 @@ CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_FASTBOOT=y
+CONFIG_DEEP_PROBE_DEFAULT=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_AIODEV=y
 CONFIG_STM32_ADC=y
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 3256f8ea7957..03b9d8335cbf 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -146,6 +146,7 @@ CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_SNTP=y
 CONFIG_NET_FASTBOOT=y
+CONFIG_DEEP_PROBE_DEFAULT=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_OF_OVERLAY_LIVE=y
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index ac73b7f50d70..0239f857aa3e 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -89,6 +89,7 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
+CONFIG_DEEP_PROBE_DEFAULT=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_AIODEV=y
 CONFIG_ROCKCHIP_SARADC=y
-- 
2.39.5



