Delivery-date: Thu, 10 Jul 2025 12:13:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZoHr-00G0jy-3A
	for lore@lore.pengutronix.de;
	Thu, 10 Jul 2025 12:13:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZoHr-0006s0-Dz
	for lore@pengutronix.de; Thu, 10 Jul 2025 12:13:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OdKDJ0XwInhFcxLsOt0u23EgCQUTet0+PmzHUBDcAdQ=; b=NU9K5RgrAsica4S8isalZqL1j9
	VkpTNFRte48TBBWR6vdCDeTwfe/NAPTaJ3vO0aFmx6P/ysoMjRkXfdO4E11dV9FHti8XW/CGOfQ2O
	nnsqLTojQENmMmDDKqk4SSvvVvMTgAuoRZnOq8iJdmAyu6U7CsS3fQmBPSV5uKr3C3IvBE3CqAF8O
	jZiiDpS2eKcwPieap7Y2O0IaO64yPdR2yOMW5znDBaJhVVSGp2g/rsCbQQdzTpILh+iY9Ng6Kk7YM
	jfFnzMYaaqoFselazBvt3+8gPCXy47ZgvEGMSEOd+s3quV3//WB5dooUzIwqPcUPwYwtOkmVyWu6c
	vOuerXqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZoH7-0000000BR4f-3674;
	Thu, 10 Jul 2025 10:13:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnEv-0000000BIHU-1J13
	for barebox@lists.infradead.org;
	Thu, 10 Jul 2025 09:06:50 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1uZnEr-00005V-NS; Thu, 10 Jul 2025 11:06:45 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Thu, 10 Jul 2025 11:06:44 +0200
Message-Id: <20250710090644.280957-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_020649_357148_1A83AB20 
X-CRM114-Status: UNSURE (   7.10  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: riotboard: add habv4-imx6-gencsf.h to flash header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The header is necessary to add CSF data for signed barebox images in
case HABV4_IMAGE_SIGNED=y is set. It should not hurt otherwise.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 .../embest-riotboard/flash-header-embest-riotboard.imxcfg       | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg b/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
index 5464e2461d0..1f27163417f 100644
--- a/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
+++ b/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
@@ -66,3 +66,5 @@ wm 32 MX6_MMDC_P0_MPODTCTRL 0x00011117
 wm 32 MX6_MMDC_P0_MDPDC 0x00025565
 wm 32 MX6_MMDC_P0_MAPSR 0x00011006
 wm 32 MX6_MMDC_P0_MDSCR 0x00000000
+
+#include <mach/imx/habv4-imx6-gencsf.h>
-- 
2.39.5



