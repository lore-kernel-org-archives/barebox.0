Delivery-date: Fri, 16 Oct 2026 10:24:11 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHdEZ-00EHWy-0R
	for lore@lore.pengutronix.de;
	Fri, 16 Oct 2026 10:24:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 95F512007F9
	for <lore@pengutronix.de>; Fri, 16 Oct 2026 10:24:10 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=uB9Yo8ec;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=lrwWcOHH;
	dkim=fail ("headers rsa verify failed") header.d=norik.com header.s=default header.b=SJgXBQv5;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792139050; a=rsa-sha256;
	cv=none;
	b=b3sFM535kAz2GYYGgafrPH4wLyCQdQ1tNFMGzLO+a8AdV39Wd8ah92swiROY5mMfhb/KNT
	96rgip5J6+OKKCl+WgQoADIjXf8pvQhPnmmzylmQAgiW+IesV5Bk6X2MRy4yV6yLBh0/L4
	iPjRZpAP/oIhmGrE0p/h6glaiNUALAhG8qrUcQbkxdjisOQJ8LbOJ7TQz69sPpmOTm5rBL
	2rMNpZlAYHWx7jLnwTMksYW93t0CaM2JSk/IaNtZXBpyaaXsk9/hMJvNloFMUQD1jE4dSi
	VPXnPa9Q3bON/Gy97mZmnQhSCXkWwzRs0io7dvCqKXJyNSHFxK8fhpBwe72pLw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=uB9Yo8ec;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=lrwWcOHH;
	dkim=fail ("headers rsa verify failed") header.d=norik.com header.s=default header.b=SJgXBQv5;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792139050;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=bSt2z43xpxBuEbHA6J4cR9LLeHc6wr5aNDGAYVxOZzk=;
	b=O+jep0ZXB8KtsmsvskUB/Vqw9Qm6oYBqQ7L6AtHTJt+iAd2Y9sN4w9kCooiy188j9oafyB
	GpdGEEoQIScX0umH9XYlZlRJV6s/Tn2+Vq/wLFSBhoZ477VtmlB10/yIij06fe+oy8QQGt
	dPyX7h6/8nKta4x2cWo5OhU2b+ucTAIfR8y+498tcUlDDK/Iz2dyfy2hAfQzFtApJf8Zjp
	FK7CDVBD8f2/ZLtqUM86ukgLYa+1+G6vtcO6nT1bw+DUHd6d525R10TAEtfi6vx5iMZltE
	7hPuEnMBR2M13bmL9VmSk068OeFWcI1Id2bK7cQ0NjfwAB6nVJFFUwVwFcI7wA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bSt2z43xpxBuEbHA6J4cR9LLeHc6wr5aNDGAYVxOZzk=; b=uB9Yo8ecMXQuouSmwh+yiEE3TG
	33RqA26o/CUPIHv1skXXKdZsI6/8gZ3Hw4UoNRFkjSman7FVR8E8Esy4S2NIt5nRSIWS3sunNWwka
	WvA5qTn6Ko6Ia2ALT92eRit+rraTqKwPVBiCS9Ac4PFFb3f8GVG/2ruBCzm1+RvhF87AT2z//3IWL
	8igp9hhpATACCK/IaiwZ3eIs0ypGp969yXcRccgjnWDxkdI1Wqt6JN69NIDIikAGfaF3PJQ+RCMR1
	TQppVRCBB5QzNF1bJKKeq5cPhFKAZaClIuqY39CA1WYWzbzlLAMhNuu65sHk841eivvfCig7ojxbi
	xoCCqi8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdDv-00000002KAk-0C0B;
	Fri, 16 Oct 2026 08:23:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdDt-00000002KAM-1lSD
	for barebox@bombadil.infradead.org;
	Fri, 16 Oct 2026 08:23:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=bSt2z43xpxBuEbHA6J4cR9LLeHc6wr5aNDGAYVxOZzk=; b=lrwWcOHHWE/3luzGUTxBbVYV8F
	RYrmzQT2jkwTZgGcH77ZoU5rUjjO9u/yuaXS7YrJ2N5G+bj7QTG5RYx1zUhWb3NtiKuxphqOyV9Lh
	F1uejgPzXu/TIjizZRy9nd7zNO5EwFdS9Lu3ZHW5X0hT3ohDmEqewv10FCPkOK2mdnLeO86fhpwee
	Sh9r2BDT5HoIc/ZfFqSQzWUNfvdCSa8RaG7YlWWpykLrcEjxoP5XD1txhFVQ7s/P3+WESSD33es3l
	Y2npb5+vdMebmdwADpWhWoFNi8PXzsB09l7yhG0qgtdLZIu+Ru/3HrxypiwO97N+d9y46eSmfEDfm
	wv9aCreA==;
Received: from cp2.siel.si ([46.19.12.180])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHdDp-00000001GCV-332g
	for barebox@lists.infradead.org;
	Fri, 16 Oct 2026 08:23:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
	Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Unsubscribe-Post:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bSt2z43xpxBuEbHA6J4cR9LLeHc6wr5aNDGAYVxOZzk=; b=SJgXBQv5wOTZQtNsw7Vyf4ZRoc
	kj6ikZUsTQi3YIzu+v8NiY8EdOFqrb+CKju5rfAeVorYxWBY42GGLokWI2KuzQLdy2thWtL4QG8zE
	5Grp6bIPUKsZws1eEHfabpFCOg0Yocbp8v4jJ31/BFvhZs5r7y5Fcr2kecyJI3cWSnRGmPjeVSi8d
	a3JB0DuVRKgX9ERGwsLBHH+OXl0VZnvjHYXAETPDv4no8CurY4A+vA0pDBYi8xUYz1aVmkgRQMAbv
	YuUywwletuWdXiFh6m23XaB6gDr1hrLdOaJ59/xZ07hn3TLFSe7zy299ayalpJicq9V3aCOWjmg7O
	ZsHuMvCQ==;
Received: from 86-58-88-254.dynamic.telemach.net ([86.58.88.254]:43415 helo=florijan-nb.localdomain)
	by cp2.siel.si with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.100.1)
	(envelope-from <florijan.plohl@norik.com>)
	id 1xHdDA-00000003mLy-1WOT;
	Fri, 16 Oct 2026 10:22:43 +0200
From: Florijan Plohl <florijan.plohl@norik.com>
To: barebox@lists.infradead.org,
	s.hauer@pengutronix.de
Cc: upstream@lists.phytec.de
Subject: [PATCH] ARM: boards: phytec-som-imx6: Add KSZ9131 PHY support
Date: Fri, 16 Oct 2026 10:22:14 +0200
Message-ID: <20261016082240.381141-1-florijan.plohl@norik.com>
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
X-CRM114-CacheID: sfid-20261016_092326_073721_32A453E6 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The phyCORE-i.MX6 can be populated with a KSZ9131 instead
   of the KSZ9031 PHY. The KSZ9131 driver reads its pad skews from the *-psec
    device tree properties, which the KSZ9031 driver ignores, so add th [...]
    
 
 Content analysis details:   (-0.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.0 NORMAL_HTTP_TO_IP      URI: URI host has a public dotted-decimal IPv4
                             address
  0.1 URI_HEX                URI: URI hostname has long hexadecimal sequence
  0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
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
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_X_AS(0.00)[florijan.plohl@norik.com];
	HAS_X_GMSV(0.00)[florijan.plohl@norik.com];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[norik.com];
	FORGED_SENDER(0.00)[florijan.plohl@norik.com,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	HAS_X_ANTIABUSE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.152.150.128:email];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_X_SOURCE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florijan.plohl@norik.com,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,norik.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630,norik.com:s=default];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 95F512007F9
X-Stat-Signature: ym6u7peyofjarnmfju4opses64wf5czc

The phyCORE-i.MX6 can be populated with a KSZ9131 instead of the
KSZ9031 PHY. The KSZ9131 driver reads its pad skews from the *-psec
device tree properties, which the KSZ9031 driver ignores, so add them
to the PHY node.

The KSZ9131 additionally needs the 2 ns RXC delay of its internal DLL,
but with the "rgmii" phy-mode the driver disables it. Changing the
phy-mode in the device tree is not an option as it would also change the
RGMII delays of the KSZ9031 and ADIN1300, so add a PHY fixup that
switches only the KSZ9131 to RGMII-RXID before its config_init runs.

Co-developed-by: Andrej Picej <andrej.picej@norik.com>
Signed-off-by: Andrej Picej <andrej.picej@norik.com>
Signed-off-by: Florijan Plohl <florijan.plohl@norik.com>
---
 arch/arm/boards/phytec-som-imx6/board.c      | 16 ++++++++++++++++
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 18 ++++++++++++++++++
 2 files changed, 34 insertions(+)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 031d11d816..a1ff4b2c3b 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -129,6 +129,19 @@ static int adin1300_phy_fixup(struct phy_device *phydev)
 	return 0;
 }
 
+static int ksz9131_phy_fixup(struct phy_device *phydev)
+{
+	/*
+	 * The KSZ9131 needs the 2 ns RXC delay of its internal DLL, but with
+	 * the "rgmii" phy-mode shared with the KSZ9031 and ADIN1300 the driver
+	 * disables it. Switch the KSZ9131 to RGMII-RXID before its
+	 * config_init runs, the pad skews are set from the device tree.
+	 */
+	phydev->interface = PHY_INTERFACE_MODE_RGMII_RXID;
+
+	return 0;
+}
+
 static int phycore_da9062_setup_buck_mode(void)
 {
 	struct i2c_adapter *adapter = NULL;
@@ -249,6 +262,9 @@ static int physom_imx6_probe(struct device *dev)
 	phy_register_fixup_for_uid(PHY_ID_ADIN1300, ADIN_PHY_ID_MASK,
 			adin1300_phy_fixup);
 
+	phy_register_fixup_for_uid(PHY_ID_KSZ9131, MICREL_PHY_ID_MASK,
+			ksz9131_phy_fixup);
+
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
 		environment_path = basprintf("/chosen/environment-sd%d",
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 7199c416c8..7b70f885bb 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -38,6 +38,24 @@ environment-spinor {
 
 /delete-node/ &{/memory@10000000};
 
+&ethphy {
+	/*
+	 * Pad skews for the KSZ9131, which can be populated instead of the
+	 * KSZ9031. Only the KSZ9131 driver evaluates the *-psec properties.
+	 */
+	txen-skew-psec = <(-600)>;
+	txc-skew-psec = <2400>;
+	txd0-skew-psec = <(-600)>;
+	txd1-skew-psec = <(-600)>;
+	txd2-skew-psec = <(-600)>;
+	txd3-skew-psec = <(-600)>;
+	rxdv-skew-psec = <800>;
+	rxd0-skew-psec = <800>;
+	rxd1-skew-psec = <800>;
+	rxd2-skew-psec = <800>;
+	rxd3-skew-psec = <800>;
+};
+
 &fec {
 	/delete-property/ phy-supply;
 	phy-reset-duration = <10>; /* in msecs */

base-commit: b8b7f9eb319d642a52fc09114abb79245d8b963d
-- 
2.43.0



