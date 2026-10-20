Delivery-date: Tue, 20 Oct 2026 10:54:14 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJ5bq-000xs7-0j
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 10:54:14 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 716F9201E2C
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 10:54:14 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jeTDzKs2;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=PKuHn7tP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792486454; a=rsa-sha256;
	cv=pass;
	b=aiZSj46ZJZlPlO+8FlR+7j0QyLOadf3TV8XsYUbrQNgfrpzkGun17ewK9JwmtUyx3A4QOL
	63+irFmKZNieFRvL3LCQaFYQULB0erlgVf/bSoUGzjIQFozbdnlYdhsi30e2qZ18prncXu
	4AuOq3g2hn/TS8lNXk2utGiNMuS6UTHweUSRT5UkdrnyLdQYXO3sRWVoZABhRWPvBmb9ME
	RYNNewUOWhna0xftO4/jAPpaWaoP8cn2i8vPsuBryh1mSFCyDThKySmoDk6Jb+oPLA7q6R
	x+x3RgZ5FJKVC/UHcqUs72uHTaOBQ++bt96JeKwDlldwh1bI5mhJ6VjOePeFxw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jeTDzKs2;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=PKuHn7tP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792486454;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=5pCDyiJhtRotyNKMCQbmMNiRVx+WuKXJBkEbvZjkylw=;
	b=L+gmBTSYe84t2Junnp8Kj9rkrbMD34v8fTnJ4oeYzmTpa6VQp7uKxQC5woCQu9gJCyFPPN
	aXYFskPUb3hC4EPgEzk16f9y1JAZS4T/TD7+IX2/cE1+AQDFc31xiUsrdHAwEhzvI75m+S
	Vv7vHXETOZ0W/YWsD4L8zgVhGbAUE6TOb/NgYfYF9zTVhbDV0N0MCA9lbUdxMrXQv/Kcxr
	lQqE4oJE8GFBep/9PrP6FPBNfy/LmEODI0Iq3bw1AycHPdoE+Lm1ndY+EXZEuFQyO3Y8n8
	Mh91PTddy2YJ9sqz56L62MnntCZEhJxKVtZK+dAg0tbOoG2OeXErVo7L4vJTZg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5pCDyiJhtRotyNKMCQbmMNiRVx+WuKXJBkEbvZjkylw=; b=jeTDzKs24uSqQraHcb+1hroCbQ
	mtjP1hwrxusXBLqqKfA6B6hzSB0auQBaeL/e5xEVrUEuIOKD0aTj4jOg2G2tEqyO5fRUP/RobSt75
	8RFDOfqux77GJqBiIad6mdZMI5Y1s3HVwrZKz9PAfEvl8jUMhGnNNJEL16WBw6m4HROg4Qbp2nwt4
	uGfcsP2dKmM+MBJMnrb6ojniDZc03xgLQKfxoF/FjFPzZ+bS3TssCdtfUQG/cgb5WpuNjBl3ZQ0Dx
	/P77NxvhAnVjo9cjVzKWQrN2C0ZhysOCJxHeIG5zyepCvdVcv9E0IiDcJ7ks4PsUeu8FFRmXznIXo
	vdmVXPWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ5ah-00000009EPM-0d9v;
	Tue, 20 Oct 2026 08:53:03 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ5aa-00000009ENb-4BiZ
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 08:53:01 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 87040201709;
	Tue, 20 Oct 2026 10:52:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792486373;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=5pCDyiJhtRotyNKMCQbmMNiRVx+WuKXJBkEbvZjkylw=;
	b=PKuHn7tPcie+nfWnKC2XJdtSFNiq9EsnazPCw9TTDvSoAG9kP1attYqvmz8wawze+7R+g6
	FMfycYVlUfht2JbfvlVekGpAQsU95oH1VX67z+rYOY8DajF3B+l5d2jME19pZ9tIktMvO1
	1A+2ogK6gJznhKfGyIVbqhmqePkzG9nDFgJRVgGwGBDr3gjdz6P7anCVnN5H44h/wgy3XF
	ge5yrhhXbK2Vy7U8Uc/djNMC/htk0dGSFkQPCsEpr3B4NIKUcbfN0BQ1L4r3TG/EN/ogP4
	JN0r4FYOC1dEF4PeTiw7vkjdRJlwAugLK0haXpOQo8VycHSxPZwfU+ZQFxlJtw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792486373; a=rsa-sha256;
	cv=none;
	b=dyibaw2QBD5vDmvYsB+zW21jmpPTamqUjgVhd8MyPqZXeWVPiFRq6l3XsXoK/UEpiUOETY
	YcoyiFDXYFcarUWl/wZiz/nSeXhVFroSyU0GiciuXlgSfGlzKyPgF22r05GqvV2hgvznDW
	tL/sIoAxBmNQyarhV5Q1fBoO9Qq3yBMkajXq0txg1Anmvhwcxkq9tfK1JfDosw1bUZyrW4
	umgYyheaQBgZ9EjcC7cI3MnZz9StvIjFnAl8eDXG6JyJXMpIx6+bHPWnlvkQhOtKnD8+uT
	DcajrYvCr/kDRLH2XO3Cv35tcHLuLkwUcEv9bF511Vivp0/9OboMg1Fevjo2GQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792486373;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=5pCDyiJhtRotyNKMCQbmMNiRVx+WuKXJBkEbvZjkylw=;
	b=e01y85+kToMnYCMMdUV8OU9ASmu5TBM77yIv0I3LwqJMBPVmQ0sC0TClFEGDIo90kyIm6X
	MFWeiixUdpQQwqyKCsXLY3sVBKLNhvbwSIfsFWiud8JwTmKRnS1oNFYnpkTOeMMwX+6DG3
	FzK71efH5YE89Wef2yZqKd4soIkHKuRddr2mI7KYuor6qOsmZuckkMHie5UoTVoVQj6Nso
	94LzBZTtz8W4FSVtiP1+fKeZoCKPdx/sbu/g6wtJNbOKwughrQ7Jr25J7ZwK2j8pGjpx//
	qRnHW769NLfvkWqF9rFlnRhfGDab4keYzVrp6xyj77XTd1YRObCflaYcyzUVeg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 7300B7401B0;
	Tue, 20 Oct 2026 10:52:53 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH master] ARM: dts: imx93-frdm: allow dummy supplies for the PMIC regulators
Date: Tue, 20 Oct 2026 10:52:38 +0200
Message-ID: <20261020085248.1397710-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_015257_208377_D13F1167 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Since commit 63277454ed06
    ("ARM: boards: i.MX93: use kernel dts"), the FRDM uses the upstream DT, which
    supplies the eMMC from the PMIC. No defconfig enables a driver for the PCA9451A
    PMIC, so with deep probe both regulator lookups would now fail with -EPROBE_DEFER.
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 716F9201E2C
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DBL_PROHIBIT(0.00)[0.0.0.25:email];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: e71z9qgrzfc39oj7q6shwrnwkpcbjmn5

From: Ahmad Fatoum <a.fatoum@barebox.org>

Since commit 63277454ed06 ("ARM: boards: i.MX93: use kernel dts"), the
FRDM uses the upstream DT, which supplies the eMMC from the PMIC.

No defconfig enables a driver for the PCA9451A PMIC, so with deep probe
both regulator lookups would now fail with -EPROBE_DEFER.

Let's allow dummy supplies for the PMIC regulators as we already do for
the TQMa93xx.

Fixes: 63277454ed06 ("ARM: boards: i.MX93: use kernel dts")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/dts/imx93-frdm.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx93-frdm.dts b/arch/arm/dts/imx93-frdm.dts
index 336ba167b9cd..ce3c99b87998 100644
--- a/arch/arm/dts/imx93-frdm.dts
+++ b/arch/arm/dts/imx93-frdm.dts
@@ -3,3 +3,7 @@
 
 #include <arm64/freescale/imx93-11x11-frdm.dts>
 #include "imx93.dtsi"
+
+&{lpi2c2/pmic@25/regulators} {
+	barebox,allow-dummy-supply;
+};
-- 
2.47.3



