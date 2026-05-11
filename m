Delivery-date: Mon, 11 May 2026 15:34:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMQmB-000ZId-1e
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 15:34:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMQmA-0002Xa-H3
	for lore@pengutronix.de; Mon, 11 May 2026 15:34:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vm2v1o5OOANJVZRqHEaJVRCiuyfHLGdUX5W6VtKfg70=; b=QR5Fyq6eB0dQ25c0PLuKi38KuS
	RE6wQ8UnqzPNcdutx7RbrOAmsU5ysb/bzPJgqDRLu5NGL2GOsR3wP/tvVH6a/PwIjQIz82xEG3sa/
	iZjzG1BVIpemnVruvwRkIDzA/5StsTjc9saIzqwUXCe4DS42chckeGewUtITui7TePToHUklUFEN1
	3LCCZxAaKSyfBs2eAVRxfxbf+K2227pj1YhQ/uS9hgTxGePYy13JluUxjo34mRMFYCAqtBvIMc0qT
	tlTPF1lOwItjs0CheSsihrF+uesFROZiaMob0hTH6U8hh9J3go5A509eS2hkv5TuyYne9aMLs4ycL
	yZG1Itsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMQkk-0000000Dkg4-3Qnr;
	Mon, 11 May 2026 13:32:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMQkh-0000000DkeB-28bt
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 13:32:57 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wMQke-00023e-GS; Mon, 11 May 2026 15:32:52 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Mon, 11 May 2026 15:32:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260511-v2025-11-0-topic-riotboard-v2-1-788bf85842bd@pengutronix.de>
References: <20260511-v2025-11-0-topic-riotboard-v2-0-788bf85842bd@pengutronix.de>
In-Reply-To: <20260511-v2025-11-0-topic-riotboard-v2-0-788bf85842bd@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_063255_604295_C99A71FB 
X-CRM114-Status: UNSURE (   7.05  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] ARM: i.MX: riotboard: add tzasc.h to flashheader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Even though the riotboard is a i.MX6S, the flashheader is the same for
QDLS variants. It allows to integrate OP-TEE and does not hinder in
normal operation.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg b/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
index 1f27163417..335f5033ce 100644
--- a/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
+++ b/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
@@ -67,4 +67,5 @@ wm 32 MX6_MMDC_P0_MDPDC 0x00025565
 wm 32 MX6_MMDC_P0_MAPSR 0x00011006
 wm 32 MX6_MMDC_P0_MDSCR 0x00000000
 
+#include <mach/imx/imx6q-tzasc.h>
 #include <mach/imx/habv4-imx6-gencsf.h>

-- 
2.47.3



