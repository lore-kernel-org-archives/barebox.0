Delivery-date: Thu, 01 Oct 2026 12:43:54 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCEGY-008PeU-10
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 12:43:54 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 211BD2007F9
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 12:43:54 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oNu04qxL;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790851434; a=rsa-sha256;
	cv=none;
	b=ekNpYCjWEXaGSHcUM9CbgFDAADsIE+6Myn2G9EnuZwj86xgLHXSZPfOQeLGrcd+nf2ab7H
	KbYPktq/vHKYijN3peBoGTe+JCUVX9XlCsb2Tdh3MNTAd/AkySRBMOl0ThFgFKYLs347YG
	Fk68JD3zV9Emg1iMUBGVaDB676ye52u5D/U3VURhCn0GD1eJPw8zRqw5W5fRJ5AdUlc6Tq
	7IaMNQTZgj8IxbjBcUzvLGvSJ+LSvKW/EiU+UA3cY0yNg6X4tot8h/NS6riD3SkqrOS2g9
	OcQCRtUSCAOzTf9QtW51rFSu3WzO/rAKRgt3oVfYNB9sJgzTm4sNUi3Lcb6jFQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oNu04qxL;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790851434;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=b39/BPXW/GFDXtjFsVyICCjutMHmKuDf6fqaToRztB4=;
	b=AeUuCtR+QjqpHyenvq2kSU3imVbaovA9PqsErIQPr+ETX/GNB1VxfoN/17IIWbeuhCkBJ0
	q3BFPXzKUwnYUIQcPdmrdfAxzKTYaFdUoKBmSlNP8opVGx5MRsdi+gGn/qy/Ik8H5h+SqG
	mLroFG5orggXF0HhIxnkps6ILFJLqEqoO1nyz9W/QKpVX9A2jvroFcoHvuG0fo68nfyXkE
	SFsjQINU067z+sXJYBuCDCDNJMksXEwHWglAO0jfv9KPBVabRhRFooIjUVuWg4MrKkdPE7
	VeWCH+r9HCBLFNkl4S5BilVj1EY077dX1IeDSdGNMC7rooNyxj0ppjQPIKCIDA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=b39/BPXW/GFDXtjFsVyICCjutMHmKuDf6fqaToRztB4=; b=oNu04qxLUHk28eu4mN/CmKdQ57
	HD5iagVnzWgFyaeUog1Pr9oc8+9dUvWIuDeOOjFDvLuRRthLwUUyr7j1b/Z4G5VqTVORgMe1yUNM4
	8LYpy182Jv9Rg+rDGICz53E79h5cLp4zOT3JPachQ9SfsTJVa1jpSgqxJyA6cDf07AlrOG6FKj7rK
	rHqjN5ZOlaOA4BCu6h8IpOeba085G3xDf58eF9DyJtaGn0ktGnTZ2jJO1MOm4Jf/hqhW3Fv6Z15on
	w8tJ3p5zFuLr1OMZvcEDhX4kj7sZs0OnVUPooi/A1x9bIan/LHH0NetadH6Eg0Fsw9JIDlrJ+neIF
	QZmqq5+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCEFN-00000008XVR-0rbM;
	Thu, 01 Oct 2026 10:42:41 +0000
Received: from cp2.siel.si ([46.19.12.180])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCEFG-00000008XUN-49qb
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 10:42:40 +0000
Received: from 86-58-88-254.dynamic.telemach.net ([86.58.88.254]:37227 helo=florijan-nb..)
	by cp2.siel.si with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.100.1)
	(envelope-from <florijan.plohl@norik.com>)
	id 1xCEFI-00000001mxT-1i2S;
	Thu, 01 Oct 2026 12:42:33 +0200
From: Florijan Plohl <florijan.plohl@norik.com>
To: s.hauer@pengutronix.de,
	barebox@lists.infradead.org
Cc: upstream@lists.phytec.de
Subject: [PATCH] ARM: boards: phytec-som-imx6: Add ADIN1300 PHY fixup
Date: Thu,  1 Oct 2026 12:42:32 +0200
Message-ID: <20261001104232.2616094-1-florijan.plohl@norik.com>
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
X-CRM114-CacheID: sfid-20261001_034235_262514_2E485D3A 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Stefan Riedmueller <s.riedmueller@phytec.de> The i.MX
    6 requires a ref clock from the PHY when running in RGMII mode. Since the
    clock output from the GP_CLK pin is disabled by default on the ADIN1300 PHY
    we need a fixup to enable it. 
 
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
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	HAS_X_AS(0.00)[florijan.plohl@norik.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[norik.com];
	HAS_X_GMSV(0.00)[florijan.plohl@norik.com];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[florijan.plohl@norik.com,barebox-bounces@lists.infradead.org];
	HAS_X_ANTIABUSE(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florijan.plohl@norik.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	HAS_X_SOURCE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 211BD2007F9
X-Stat-Signature: y9sbhtmpx9fzdqo9ryoj7hjkwqcezdkn

From: Stefan Riedmueller <s.riedmueller@phytec.de>

The i.MX 6 requires a ref clock from the PHY when running in RGMII mode.
Since the clock output from the GP_CLK pin is disabled by default on the
ADIN1300 PHY we need a fixup to enable it.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Signed-off-by: Florijan Plohl <florijan.plohl@norik.com>
---
 arch/arm/boards/phytec-som-imx6/board.c | 39 +++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 7e6f61bc36..22805ad99e 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -45,6 +45,9 @@
 #define DA9062_BUCK4_CFG		0x9f
 #define DA9062_BUCKx_MODE_SYNCHRONOUS	(2 << 6)
 
+#define PHY_ID_ADIN1300			0x0283bc30
+#define ADIN_PHY_ID_MASK		0x0fffffff
+
 static void phyflex_err006282_workaround(void)
 {
 	/*
@@ -99,6 +102,33 @@ static int ksz8081_phy_fixup(struct phy_device *phydev)
 	return 0;
 }
 
+static int adin1300_phy_fixup(struct phy_device *phydev)
+{
+	u16 val;
+	/*
+	 * Enable 125 MHz PHY clock at GP_CLK pin to the ENET_REF_CLK pin
+	 * of the i.MX 6
+	 */
+
+	phy_write(phydev, 0x1c, 0x2109);
+	phy_write(phydev, 0x1b, 0x401);
+	phy_write(phydev, 0x10, 0xff1f);
+	phy_write(phydev, 0x11, 0x28);
+	phy_write(phydev, 0x10, 0xff3c);
+	phy_write(phydev, 0x11, 0x1);
+
+	/*
+	 * Disable advertisement of 100BASE-TX and 1000BASE-T EEE capabilities
+	 * by clearing EEE_100_ADV and EEE_1000_ADV bits in EEE_ADV (0x8001) reg.
+	 */
+	phy_write(phydev, 0x10, 0x8001);
+	val = phy_read(phydev, 0x11);
+	val &= ~(BIT(1) | BIT(2));
+	phy_write(phydev, 0x11, 0x0);
+
+	return 0;
+}
+
 static int phycore_da9062_setup_buck_mode(void)
 {
 	struct i2c_adapter *adapter = NULL;
@@ -180,6 +210,9 @@ static int physom_imx6_probe(struct device *dev)
 		default_environment_path = "/chosen/environment-spinor";
 		default_envdev = "SPI NOR flash";
 
+		phy_register_fixup_for_uid(PHY_ID_ADIN1300, ADIN_PHY_ID_MASK,
+				adin1300_phy_fixup);
+
 		imx6_bbu_internal_mmc_register_handler("mmc2",
 						"/dev/mmc2", 0);
 
@@ -188,6 +221,9 @@ static int physom_imx6_probe(struct device *dev)
 		default_environment_path = "/chosen/environment-nand";
 		default_envdev = "NAND flash";
 
+		phy_register_fixup_for_uid(PHY_ID_ADIN1300, ADIN_PHY_ID_MASK,
+				adin1300_phy_fixup);
+
 		imx6_bbu_internal_mmc_register_handler("mmc2",
 						"/dev/mmc2", 0);
 	} else if (flags & IS_PHYCORE) {
@@ -198,6 +234,9 @@ static int physom_imx6_probe(struct device *dev)
 		default_environment_path = "/chosen/environment-spinor";
 		default_envdev = "SPI NOR flash";
 
+		phy_register_fixup_for_uid(PHY_ID_ADIN1300, ADIN_PHY_ID_MASK,
+				adin1300_phy_fixup);
+
 		imx6_bbu_internal_mmc_register_handler("mmc0",
 						"/dev/mmc0", 0);
 
-- 
2.43.0



