Delivery-date: Thu, 01 Oct 2026 12:44:18 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCEGw-008Pfb-24
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 12:44:18 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 728822007F9
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 12:44:18 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=CJ2DCA34;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790851458; a=rsa-sha256;
	cv=none;
	b=HDcbfKy2v5qISq3Yc+oHqE6ACTRXZSwkusgKQbqhB2sBhkNDvCzQeEQccFNtxAEDkVVFKN
	shMz97GSGEDOx5nCID8ITbBnLLNK4VgLFQXbIIRgPDMWZQi1fwtKVnaAObRCrNBAIPrs4h
	9udjq8/J54ln0gXe/K5igdopespp9NCFK8V0NXHhIdcuzUzUyHlbyZY1m3tkhdJ0alcVaQ
	+PEHzXZiYjUd0xXrwYrlYZXJgBkK0HctKG3lOsErYV4sr0hv5JPM4aV+KwlACNNsfoC/cg
	dkO7UKqbXNoZSub9/UFqYjJtwj9i/tIhqRXiFpNuO9mcOCMm8LkPCp88ypxwfA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=CJ2DCA34;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790851458;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=TirVulpztoTu1IzKSUKgPIExSfpnRt77f1qEMx2PBPQ=;
	b=cc7+Vn6rJ4ZMYmStcs4IPSFUYBzT/xQhDat/9W0H4dfDmqM5MyUTjrMXqvp6VgWOpyS4lM
	PUVYVNoN/kdI4MqmORrDjHTWfZerMZi4zK0hhGvhfR797yrfYhCy8YWG1zKp7IaswIGfVV
	4hRpoUaJ8lvPcBKTx0B0fg03EHLqXIPBMKijA/8AxRRi5GiUMAQ9ry2S1aknFdAACkXWCz
	1i19ljY+x31rBKhmSUyrnn//jZ3rFf46DBy82GliJX7WAPPNGxxn+oR7qr1Qjes0AFiWwD
	jkYzUUx39BdBTvMGgzVfem8jmrdibsSK2YsluNQO/ChHDM4GHo0AoWRPvFqvEA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TirVulpztoTu1IzKSUKgPIExSfpnRt77f1qEMx2PBPQ=; b=CJ2DCA34npyJfU5/8QlusquC29
	vWnKSqoSHpCmXvxod63oglLBEsN7B6f5mGFzn0XTvMXwgsbJD4ihJWjfItGHso8mVGV7fTdFltd7l
	lwK+/uA245iUy3NLz3pftI+FLyQzf+ygNe8QPegV/IUMeCQ66Gi3MkkdUue/c379VuXqPYUtkbgqe
	ackT7cL6dp3JfgpeKNAclxD37l1FkaXt4AN78CFcnVmtURtuXKRcw69R7xmn9RIYPtHj/akLWwKIs
	zH1N7dkTk20Omhb3q2iF00U9KvAVy1nemL6utQFiBQdJKGhEh6nI24irK/5NgU1T5PMOv9wYhUS35
	oOta7euw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCEFu-00000008Xas-1Q0w;
	Thu, 01 Oct 2026 10:43:14 +0000
Received: from cp2.siel.si ([46.19.12.180])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCEFr-00000008XZt-2W4a
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 10:43:13 +0000
Received: from 86-58-88-254.dynamic.telemach.net ([86.58.88.254]:60290 helo=florijan-nb..)
	by cp2.siel.si with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.100.1)
	(envelope-from <florijan.plohl@norik.com>)
	id 1xCEFt-00000001n1y-0Wty;
	Thu, 01 Oct 2026 12:43:10 +0200
From: Florijan Plohl <florijan.plohl@norik.com>
To: s.hauer@pengutronix.de,
	barebox@lists.infradead.org
Cc: upstream@lists.phytec.de
Subject: [PATCH] ARM: dts: imx6: phycore: Fix pin settings for ADIN1300 PHY
Date: Thu,  1 Oct 2026 12:43:09 +0200
Message-ID: <20261001104309.2616488-1-florijan.plohl@norik.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp2.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cp2.siel.si: authenticated_id: florijan.plohl@norik.com
X-Authenticated-Sender: cp2.siel.si: florijan.plohl@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_034311_829387_0B7F5CA2 
X-CRM114-Status: UNSURE (   3.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Stefan Riedmueller <s.riedmueller@phytec.de> Change
   drive strength: - TXC 57 Ohm - TD0-3 76 Ohm - TX_CTL 76 Ohm Remove pull ups
    from following pins so the won't interfere with strap pin latching of the
    PHY: - ENET_TX_CLK - RXC - RD0-3 - RX_CTL 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-5.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[norik.com];
	HAS_X_AS(0.00)[florijan.plohl@norik.com];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	HAS_X_GMSV(0.00)[florijan.plohl@norik.com];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[florijan.plohl@norik.com,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.58:email];
	TO_DN_NONE(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	HAS_X_ANTIABUSE(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[florijan.plohl@norik.com,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	HAS_X_SOURCE(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 728822007F9
X-Stat-Signature: mqb1rq3gfyda9srkhpjc3artqjb4q3zq

From: Stefan Riedmueller <s.riedmueller@phytec.de>

Change drive strength:
 - TXC 		57 Ohm
 - TD0-3	76 Ohm
 - TX_CTL	76 Ohm

Remove pull ups from following pins so the won't interfere with strap
pin latching of the PHY:
 - ENET_TX_CLK
 - RXC
 - RD0-3
 - RX_CTL

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Signed-off-by: Florijan Plohl <florijan.plohl@norik.com>
---
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 24 ++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 60f7e2c14b..7199c416c8 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -79,6 +79,30 @@ pmic@58 {
 	};
 };
 
+&iomuxc {
+	pinctrl_enet: enetgrp {
+		fsl,pins = <
+			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
+			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
+			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b020
+			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b018
+			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b018
+			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b018
+			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b018
+			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b018
+			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x180b0
+			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x180b0
+			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x180b0
+			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x180b0
+			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x180b0
+			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x180b0
+			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x180b0
+			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN	0x1b0b0
+			MX6QDL_PAD_SD2_DAT1__GPIO1_IO14		0x1b0b0
+		>;
+	};
+};
+
 &m25p80 {
 	status = "disabled";
 
-- 
2.43.0



