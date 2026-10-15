Delivery-date: Thu, 15 Oct 2026 11:08:57 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHSL-00Dr4a-0p
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:08:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 128AD201BBB
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:08:57 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4BHgpOFO;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=XNfQ8NKC;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792055337; a=rsa-sha256;
	cv=pass;
	b=S4w+YlwRbn7A9VnLEyd7tOiWjhc2IViHmmG03/CTaWTkwT17NXlOIlr6x/9il29CP1hFjt
	qe41VqgZJ2+p5xmw4hF6YNWPF6H5uT4d00cfY41pANPtuOeG70w0LYLHFko/yKqZlM8jyN
	CIV/ScKHv74IQXPl4HgypmV/48b7XREA3t0TKpTwIrSm70bNAjZi7PnuFGG1jUYbvxPMds
	p9oQtUlTFkGq6UUlx1OnATiRU2OALE6r1HgqpC2g8Zp1cefu4YKZMMNsN865pZzajgk80l
	abd2iCwdFK7Fpgrh7xKkpYGPXC2Xw+A7TA/bvjBO6Lx6KgtJYUjW0NrPbZl5NQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4BHgpOFO;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=XNfQ8NKC;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792055337;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=RaCmoo6c6ngwJu8xcEUneLGs3Iy0p3NfBr9+wsm1J+U=;
	b=DJx89tFquuS2shhlfPVT+0wTmb4jIJ801YQoIyLKpG7QZeHA/XjfHs5GvcAklOnFppivy3
	Fd2h8n4m6j18/NLt6VcMqjgJ0lvsIFLdZgeZiNYCKip0W1S03iMh9DeFMe9LPR2ZforPR/
	kUO8+GKHJvSzHn2xPC7Bn6omrD8KG/ApqUes93iVBd+oMwugeJ5P7zgCAUE6+vVLlqfsUt
	Eymzn4/PLanxJ9DX+pf8E2RdB5OCF7kVwLZl1GucP7NbyeyjAlDxWzQ6Bnp8zI0XIWRxLj
	wn09OL7eD3PIwzvsTgrrVwhC2rLLPkhiFh7/8oa1F5nw574/vpc/yA6dSmc3lQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RaCmoo6c6ngwJu8xcEUneLGs3Iy0p3NfBr9+wsm1J+U=; b=4BHgpOFOxnJG4D1gPxBrme8hPn
	5ZoeIh6uvWb8MbDzpgCI49RfqXRqffbiNm4yVDa03LpBDSVr0A3wCJ3DMG87gdyRm/YAKXj5X1eKd
	g9mWhkwmij8Dv4aUwzmpVB4IEynM/uHtye+dxdGVrU8gbaypilVyma94mYV9Doj7Dg8yAxFgXpLCF
	eA+7q5/XbnGgquXjpMBBf0H0Y2QE+bfk2y9p02vyWLJ5XcCXsdPmvdAtfW71R+yEb3fpsqOh2Txzl
	fB691Zcc7k24lQrCfVk0aQ8bhCA3Cl7e01FKx7j8tAUwrGpT9SxvxS9fEpkaj0NXGCQVgrRBZyWI5
	DSCMhYjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHH8h-0000000HBkw-1JWS;
	Thu, 15 Oct 2026 08:48:39 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHH8e-0000000HBjr-0Aqv
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 08:48:37 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 44049201CD6;
	Thu, 15 Oct 2026 10:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792054114;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RaCmoo6c6ngwJu8xcEUneLGs3Iy0p3NfBr9+wsm1J+U=;
	b=XNfQ8NKCcBwJe/BK7gk8pc2GwyJaYyaRJb8kEL62bMScQeCEJPzrM7g1ZwmoQ9qLRxx74t
	JSQ1MMgC0ek+dlxtkKPW9S6YZnxdQ0tsTc4qYfB505td9Ar0jrYBc3Lf0mTyqFidls18Oc
	wTb+/Y5dq0N2OHqV5f+lP2mLCoLVgprXBqokg2PS5o3mg9nebOr4iUiKJGX7QXiUH2kAFF
	tJgUxE8rckNDpEefIriRGRhEvSHnWOI/C2oFUTlLdx8zTW6MsY4QqBuYMt2PkS9chia5+n
	5qiHr0KdHDUTjxHpKLHGPwoV6PnBErnj7d8kFIgwTF8fMICOVQmyJzgQRnc0NA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792054114; a=rsa-sha256;
	cv=none;
	b=KoLOpjJKkODUNqWMaCTvWMV3HD9i+hAM0qtMA+rGvtewVpbKVK9aFmzKypYiI7slwUBnhC
	xFiJIJr7PHqb+5TGtOEkqTB/34wnRzzBBJEBE7n+C6z1gG5QGu53d7c6CRwxnNimk1AEop
	vPNjF8rAtAIMWCyJUiNzDT2SQRC5yzXovA40i++AxYz6f9nxZUE8G7mCpnC90cogVvyEiq
	uhtNAWQul9d7mPxSkGmDnsiLMXo2N9R71nxTch/xOxQEHqHJ3BdUJPI6I1qKFHbfGQ6rkf
	pbEWmr8e79e4ljT/3vxXaklot376Yc4lu5jz1mX/PyJmdk79W+iDq0s422bOnw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792054114;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RaCmoo6c6ngwJu8xcEUneLGs3Iy0p3NfBr9+wsm1J+U=;
	b=NsmfdJdrxbOkYKNs/Ft9xQuAdDlaTaqscyOIfHc+kRa8b44ddszcpE6NimHttvms5sXn6V
	6ggz0cIoaBgBGCrBY/EMJ13M/bg+dLiXNf6HbBDDr1r3Hi/dF4EWIj/NJGf+aq/QhQ/RsB
	gtszn9sMiEOW6iJJWBUftKOG+sti3RSIjCw32V171CEHwSSW4Q1y8qOHCkDspkq/vWjYEL
	M8SQPEy0+Krusg0Es3/FnOQ0pUemUO5Mrj6Ak4UM9Mhc6LINPp1FsDyTGbfNEv7LGz1X/r
	JQbQrjx61k5uBVFdMC30teMgAG8xQm+Y/t2YOurrOeE3G407cdCQaXjXLxEYVw==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 2F169740455;
	Thu, 15 Oct 2026 10:48:34 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH master 1/3] ARM: rockchip: rk3568-qnap-ts433eu: re-enable combphy0, disable sata2
Date: Thu, 15 Oct 2026 10:48:29 +0200
Message-ID: <20261015084833.4090522-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_014836_232306_6026E090 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Linux commit 5a16e131ddba
    ("arm64: dts: rockchip: Fix the common combophy + SATA on QNAP TSx33 devices"),
    imported with the v7.0-rc1 dts sync, moved the combphy0 enablement out of
    the shared rk3568-qn [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 128AD201BBB
X-Stat-Signature: 15ezj7eeeixo19hmnf71z9wmateu6jbt

From: Ahmad Fatoum <a.fatoum@barebox.org>

Linux commit 5a16e131ddba ("arm64: dts: rockchip: Fix the common
combophy + SATA on QNAP TSx33 devices"), imported with the v7.0-rc1
dts sync, moved the combphy0 enablement out of the shared
rk3568-qnap-tsx33.dtsi into the TS-233/TS-433 board files and swapped
which SATA controller is enabled where: the dtsi now enables sata2
(+ combphy2) and the boards enable sata1.

Enable combphy0 like upstream now does for the TS-433 and move the
SATA override to sata2, restoring the pre-sync state of the DT.

Fixes: fe223ba39321 ("dts: update to v7.0-rc1")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/dts/rk3568-qnap-ts433eu.dts | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/rk3568-qnap-ts433eu.dts b/arch/arm/dts/rk3568-qnap-ts433eu.dts
index be0455abfe65..ea98b6819db8 100644
--- a/arch/arm/dts/rk3568-qnap-ts433eu.dts
+++ b/arch/arm/dts/rk3568-qnap-ts433eu.dts
@@ -27,6 +27,11 @@ vcc3v3_pcie: regulator-vcc3v3-pcie {
 	};
 };
 
+/* Connected to usb_host0_xhci */
+&combphy0 {
+	status = "okay";
+};
+
 &combphy2 {
 	status = "okay";
 };
@@ -94,7 +99,7 @@ &pcie3x2 {
 };
 
 /* Internal SATA controllers not used, ASM1064 used instead */
-&sata1 {
+&sata2 {
 	status = "disabled";
 };
 
-- 
2.47.3



