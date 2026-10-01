Delivery-date: Thu, 01 Oct 2026 12:43:13 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCEFt-008PdY-1D
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 12:43:13 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F38BC2007F9
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 12:43:12 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zil93m5A;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790851393; a=rsa-sha256;
	cv=none;
	b=Jy47bEODmgjMz180KlRTeQxib4+UORO0+qVl3X2OoRHkGEdx/Ca/ROCyKJ2sOZfvyZgFFV
	+Fw0t7oe9HV7euYRvI3HrlR1Bse1yXyhT8DKXRthL0vtaQMm14tsSaC6Wowsr11EKLK+D1
	j86X3uoBtzzDyBqclrkZxmongf4dovDD8V+f4IinI7mERiAaLw9JWBhSYR5XyUP1vUsMJw
	Z19LAOP9Ae/KLN+h/ykNqhDaGxiHz57Ovh+WD1YWWD10ytb7hWB2dgwdnrMMfcLA4JV2PQ
	p3S9KAVXBnKX/0eG/8Z72wdTK9cwdnN+pTyxP/qyjxepmLqKk1SylNYeB4f0nQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zil93m5A;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790851393;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=2RfshFstTIEmsVbeDriCCk/8YdTN3nKF3WRvxKFIDIk=;
	b=UAzk3TFPrIk85ffB2bo8CnBqI3CLdpmsZjJKmCjrwjCX6yHh+z7RNYPRpRBs80A32e88eX
	R/dHiFOc3ESJT8ZKxPlsIYy/+Ayn6duBBOTEultA6odbBV/ZHH33YY/+9LrpvzLJRVi8Ds
	bgfhbP2MCw5WueTEt4LQ6MYlMkj3wWQR7Wqggp5T7seAJyNg0ThHg5ie9RdsBiup4E5VXT
	YRqMDU6hbk/fagta6at2bj5k8tMyTiZDEPKDvaES12Y0ojBdOuuJ+B85DqmBsuTQTtlaL+
	f/AKQ/NC+mVaD1BNdzUjH5boRFu7+bJXVFH/YtUvbzjf7IIT6NAKj2XD4Dk8NQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2RfshFstTIEmsVbeDriCCk/8YdTN3nKF3WRvxKFIDIk=; b=zil93m5Ac70W0evVwvNKoT0plx
	l5jp988kESuqm44kaGFmFGncxKrmfnPu/CLRnGvdwJ55ExyFnfqTsL5l1htYWGf1JfIrgBQLLznjE
	ohIqj6eK5AQ2RwVGxXklJth0Y0HXHPh74amklHGr94L4OXpwQOEw1x+khs8Y+Kwq3xG51HblyaOA5
	JpcxZcXLH9Nt2mScg2lMeOGZMpG1+wbG0XfoBpcrXsuRQk3+6t7tVwp5f1XL8U2+74MkML3u0Qvn3
	MLPFiqqWgcm/l6AIPR+o2MpUqsagGUFxPmqURD2RdVO0VufzkkQmHC6tEHhwSxZdKOG/9V2+jEmdB
	2jO6LLtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCEEh-00000008XP5-04RW;
	Thu, 01 Oct 2026 10:41:59 +0000
Received: from cp2.siel.si ([46.19.12.180])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCEEe-00000008XJJ-2HvJ
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 10:41:58 +0000
Received: from 86-58-88-254.dynamic.telemach.net ([86.58.88.254]:39916 helo=florijan-nb..)
	by cp2.siel.si with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.100.1)
	(envelope-from <florijan.plohl@norik.com>)
	id 1xCEE0-00000001muE-08R7;
	Thu, 01 Oct 2026 12:41:12 +0200
From: Florijan Plohl <florijan.plohl@norik.com>
To: s.hauer@pengutronix.de,
	barebox@lists.infradead.org
Cc: upstream@lists.phytec.de
Subject: [PATCH] ARM: dts: imx6: phycore: Add phy-reset-post-delay
Date: Thu,  1 Oct 2026 12:41:12 +0200
Message-ID: <20261001104112.2615285-1-florijan.plohl@norik.com>
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
X-CRM114-CacheID: sfid-20261001_034156_747518_67FE6267 
X-CRM114-Status: UNSURE (   3.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Stefan Riedmueller <s.riedmueller@phytec.de> Give the
    ADIN1300 PHY enough time to latch the hardware configuration and setup management
    interface. Otherwise the phy_id read as 0x0. 
 
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	HAS_X_SOURCE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: F38BC2007F9
X-Stat-Signature: 4rfc1f6fsxmgo4yxgrb8f3csui8dwbfd

From: Stefan Riedmueller <s.riedmueller@phytec.de>

Give the ADIN1300 PHY enough time to latch the hardware configuration
and setup management interface.

Otherwise the phy_id read as 0x0.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Signed-off-by: Florijan Plohl <florijan.plohl@norik.com>
---
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index c1e67ce2f5..60f7e2c14b 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -41,6 +41,7 @@ environment-spinor {
 &fec {
 	/delete-property/ phy-supply;
 	phy-reset-duration = <10>; /* in msecs */
+	phy-reset-post-delay = <5>;
 };
 
 &gpmi {
-- 
2.43.0



