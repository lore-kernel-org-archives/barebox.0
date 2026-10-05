Delivery-date: Mon, 05 Oct 2026 11:48:00 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDfId-00A0lZ-1M
	for lore@lore.pengutronix.de;
	Mon, 05 Oct 2026 11:48:00 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DF2F8202342
	for <lore@pengutronix.de>; Mon, 05 Oct 2026 11:47:58 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FjEH9fQz;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=casper.20170209 header.b=hdrsFiUY;
	dkim=fail ("headers rsa verify failed") header.d=norik.com header.s=default header.b=EEyKX1rw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791193679; a=rsa-sha256;
	cv=none;
	b=EVPpbCkUpTDyT6LsVLGQkNrBayiNhhdaSFEomxBcxynkAnoD+2SmokSalXUxodAPQX+8gM
	HsGUxcJ287KsnLYuFPfbUXjC5qFkFWv+4Z8SgEAvsmgaGOzOjNutRd5aiVa/XcmobeCVFd
	YeQHFpkASKwt6UJQIoaKbfEUiswe/meWfcoYblcaAfKkN8nbOy6pAS0c+ko2eKfHEqlZmB
	o1Y4l4XJViEtuWrE92+UMSzh+462w4jTuD0uKvI3V3xRoQSRSkJDfsCvy3oMuObiU6UW/G
	EdAx28o0xbGUybDAJ28gO8btSxoAi4G7P1NZTBu6vlL4OSihvkA8o8sUev0cjw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FjEH9fQz;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=casper.20170209 header.b=hdrsFiUY;
	dkim=fail ("headers rsa verify failed") header.d=norik.com header.s=default header.b=EEyKX1rw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791193679;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=mpLol/RggLwgoLFBOVCgWSoJfawqNyDftgKouJZ4Coc=;
	b=Rz6oOEBawIe4BUyaZAhDG7msY095aOWKSPl9pNRHBlC34DjiCUe3HjIc8qqgBwaQ+a89Nj
	DxHccEqKfG87PFM/+dY5+hN9fpCD8SdJGq8TaHtew53LfRyp0ikHUZ2Hx9LupE+S0DihBf
	gwKwc9KaNpONvx9rEoQpvWVYOKVwYFJwOLuP/boY/gPZY3416Pxag1n4Yemf288F9O4KGm
	y48uJrKj5yptT5YpsNeFSOSnNs+4Kh7Kbtv4c2vEJ8gXF1r0yBzyHuBEUQGx8UK4ApfbMI
	EqrK84kIUwzXrjkK0IO7aNc8RIfqnBxeaZrr0n8/SegrwRS7derABiRolVOcqA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mpLol/RggLwgoLFBOVCgWSoJfawqNyDftgKouJZ4Coc=; b=FjEH9fQzwDR50Vlp0yG6sD+iWF
	RbmU7S72PgO05qVrc84RaQcLV0krHg3mc6wLurtu23+J0vBM14cy/8pB/MvjBvEA0uoqj0T80GV9H
	xmctAs875LsZM2x1RBSWI/CzYtzcL1uCp/wiPy/S7XzW+AeaN3DVZKk8Vuazu6HIAqocH2r3K87GV
	XEMsmS7gQZwjZ5oBPL94uV3tyGPIwlH1h3gs+gEV6Nyd5yHVsvJe5pA3dUYViL7LZQCI7xxOIG8kl
	Gs9bS7cLqS72TfaogL5TQY1dtY8HVRhmrhiMxknHMGN+DPNpoiO+Fn01gkTVeZHwd2UVy4Q/IuAHA
	C9Onv3Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDfHG-0000000G3nq-1Qbo;
	Mon, 05 Oct 2026 09:46:34 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDfH7-0000000G3dd-0Gwa
	for barebox@bombadil.infradead.org;
	Mon, 05 Oct 2026 09:46:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=mpLol/RggLwgoLFBOVCgWSoJfawqNyDftgKouJZ4Coc=; b=hdrsFiUYiDx5ngYU4SXBqvBMmw
	yJyze0KKpw7taHq7x4lXICGZFwaTGkfa5MBxeFnoXwSpTW8be7WNueWEwA3L3CIvKCjcZn3Gtzd57
	LnSOozcoTisscgkLnICl34lvdmixXCwO2zoC6RWPvyuqyT1BGpPMuYjDGB42vvz6hV9HSnS9y9ak+
	wKK54vCpC9k9MnOg9wlzkNv4Jmh87epx3/dyoX1wrC0DG1fD9BaN7gw33Jl3hT4InVcm5Kqtlf27p
	m3NBL+tDRabARrPzg8iRo6pwbJMqo3tQpVJljhD9bOaFl5I3H8gx9wsmYwb6wA8f9hVgZBR7O3pf7
	Ebx5MZXw==;
Received: from cp2.siel.si ([46.19.12.180])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDfGr-000000018Ru-2Lb5
	for barebox@lists.infradead.org;
	Mon, 05 Oct 2026 09:46:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
	Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Unsubscribe-Post:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=mpLol/RggLwgoLFBOVCgWSoJfawqNyDftgKouJZ4Coc=; b=EEyKX1rwGSAIt1mv1kkBo9UuzZ
	rathC8PEdhre3oxLSicTb+55kl+Uswhx/Ai1UU3FCXNAvqOG/0IU748qbe4zpoG+4Je6IKlk99vFF
	/6UqJ0cxTomePItE8o0NstSHMo158ei1eVbyTHSgfum+piB3Imh768PlXEpntULyUyRZnV07fkcsG
	1MT07alwIU5dsVUx5Ci2ITwi6gY0L5wGJcvuTxRM0WCVDo1fe6uKMMxh58DcUzT8PjD3Ia69Utl+L
	Q+2QFAJeeocMQKdoBv3l+AVO3jLvt3a3ML8ukYKXyXaDnHZ90CGroq4PZ2cGk6Y9fDelbCBOtHv+1
	rlvvuNbQ==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:54396 helo=florijan-nb..)
	by cp2.siel.si with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.100.1)
	(envelope-from <florijan.plohl@norik.com>)
	id 1xDem6-00000006kMd-4B1V;
	Mon, 05 Oct 2026 11:14:21 +0200
From: Florijan Plohl <florijan.plohl@norik.com>
To: s.hauer@pengutronix.de,
	barebox@lists.infradead.org
Cc: upstream@lists.phytec.de
Subject: [PATCH v2] ARM: boards: phytec-som-imx6: Add ADIN1300 PHY fixup
Date: Mon,  5 Oct 2026 11:14:11 +0200
Message-ID: <20261005091420.216137-1-florijan.plohl@norik.com>
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
X-CRM114-CacheID: sfid-20261005_104619_700658_B05CE441 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 4.0.2 on casper.infradead.org summary:
 Content analysis details:   (-1.7 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1236::1:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_X_GMSV(0.00)[florijan.plohl@norik.com];
	HAS_X_AS(0.00)[florijan.plohl@norik.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[norik.com];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[florijan.plohl@norik.com,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_X_ANTIABUSE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,norik.com:-];
	R_DKIM_REJECT(0.00)[infradead.org:s=casper.20170209,norik.com:s=default];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florijan.plohl@norik.com,barebox-bounces@lists.infradead.org];
	HAS_X_SOURCE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: DF2F8202342
X-Stat-Signature: 3i1ernnmq5rg4wmc5msqc65s55uwk7os

From: Stefan Riedmueller <s.riedmueller@phytec.de>

The i.MX 6 requires a ref clock from the PHY when running in RGMII mode.
Since the clock output from the GP_CLK pin is disabled by default on the
ADIN1300 PHY we need a fixup to enable it.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Signed-off-by: Florijan Plohl <florijan.plohl@norik.com>
---
Changes in v2:
- Register the fixup once after the board specific if/else instead of
  in every board branch
- Link to v1: https://lore.barebox.org/barebox/20261001104232.2616094-1-florijan.plohl@norik.com/

 arch/arm/boards/phytec-som-imx6/board.c | 33 +++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 7e6f61bc36..031d11d816 100644
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
@@ -216,6 +246,9 @@ static int physom_imx6_probe(struct device *dev)
 		return -EINVAL;
 	}
 
+	phy_register_fixup_for_uid(PHY_ID_ADIN1300, ADIN_PHY_ID_MASK,
+			adin1300_phy_fixup);
+
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
 		environment_path = basprintf("/chosen/environment-sd%d",
-- 
2.43.0



