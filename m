Delivery-date: Sat, 20 Dec 2025 18:01:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vX0Ka-00Dbmx-39
	for lore@lore.pengutronix.de;
	Sat, 20 Dec 2025 18:01:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vX0Ka-0001aR-CM
	for lore@pengutronix.de; Sat, 20 Dec 2025 18:01:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xbZc/cJ3eDVC+aIGmAoyTryGxHvBqf0emXmKTIfjcAc=; b=N2zCiu+lRWBIyV5XRH16KCs76+
	TA+7yiH6fOMDCYPCnTpW3AK7TRiScxrMBwGPd2zuZ4EvK045xFj7bErN/3+y0znQtTupdcoFek9xz
	moR+xhOV9CXOQrq4GjglwYawMtqZtBA1LpNZ6QIn+XtT4u836CwN//r2TQuGlxERHu2NB/t5O5R1t
	hdQk5xV9Rqw0XpUeqpyvezBmoAwxT8/pIZb/qbTA7Gx9rCZlWaO67LoZPvlsjPTew5BRiFgwq7Yt0
	Fov6uZxzgr2lKqW+p224Ecxy6v1Er+oSrnXZl7wHY05y1AEBhzRWd09h8HcpAQkJu/+kUXwx3iL5T
	CpMRJiKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vX0Jr-0000000BlX9-2kno;
	Sat, 20 Dec 2025 17:00:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vX0Jn-0000000BlWr-13Km
	for barebox@lists.infradead.org;
	Sat, 20 Dec 2025 17:00:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vX0Ji-0001GI-VS; Sat, 20 Dec 2025 18:00:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vX0Jh-006dzz-2m;
	Sat, 20 Dec 2025 18:00:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vX0Jh-0000000BIGH-36rW;
	Sat, 20 Dec 2025 18:00:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Sat, 20 Dec 2025 18:00:29 +0100
Message-ID: <20251220170029.2691798-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251220_090035_287216_B1F4073E 
X-CRM114-Status: UNSURE (   9.83  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX8MN-EVK: Fix maximum load size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX8MN has 512 KiB of SRAM from which 0x70000 bytes can be used.
Adjust the loadaddr and max_load_address accordingly.

The i.MX8MN EVK PBL is much bigger than most other PBLs as it contains
the firmware files for DDR4 and LPDDR4 RAM setup. Depending on the
features compiled into the PBL the previously configured area became
too small, but fortunately the SRAM is much bigger than previously
configured.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg b/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
index f47ea08266..1876ba5f3d 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
@@ -2,8 +2,8 @@
 
 soc imx8mn
 
-loadaddr 0x912000
-max_load_size 0x3f000
+loadaddr 0x910000
+max_load_size 0x70000
 ivtofs 0x0
 
 #include <mach/imx/flexspi-imx8mp-cfg.h>
-- 
2.47.3



