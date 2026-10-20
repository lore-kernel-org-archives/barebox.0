Delivery-date: Tue, 20 Oct 2026 10:54:50 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJ5cQ-000xtG-06
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 10:54:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4103C201709
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 10:54:50 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=q1CWqUiX;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=gWM+ItCn;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792486490; a=rsa-sha256;
	cv=pass;
	b=dY73Iauz8+uCU2A9qOXcE+HDQSTScaMjbIbYY96sARbaqtAKy3ggcL+znusRqHe3WadMPG
	ON6NxXh8TlF+atMp1AVVV4Bn5tgV8nxY/oXDydXigwIwx5fVWkeNt3Cu6hWgqhyxK4II0c
	aYi/Eq9mKS7NDVcSX1VyLhHGTSzDstc7c/n8We4oqIykUX3jMq662OPT9dJjGzQkbRJ76W
	KmljZr/nV3OHn/tEGM3+cNkSXDrWTaTNo8n/KRJfXCZxeaWvNDMvMN8WIhE67sKISXgUmb
	5tEgzBmThFZ7AypfbkskPcmIK27c2Iu3+RRaUkjD9L0K5EfoKB8PrY96T7/ORA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=q1CWqUiX;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=gWM+ItCn;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792486490;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=epKMreZq30zkA5W1u3BoIXg24/8Q7Mf0Mzg9+GebqR8=;
	b=M1upoQslI9586DiV4RUDC6HjIkYxnskQKhcUZz51sImRJLgzcjTPZ9bZ51bhCovIh15OXV
	wmJKyTyIgY+O/1WH9MV2NTNFYvE4HPR60zXkBjBJT0cUYVDfEghiWBip6pnmIsrQCQfLkn
	NQ4UeWdS6aeliDfibtXoIo9fJgElNISxb8pNNg0Lgb4Pl9vnMvvEAMJXA7Pmq2+lYIbSdB
	Ub4IsAMRISS+eM6hTf6VUbyuVxDN37vBEQ/jMONywWYwBdJW6UjRZvo6EZ/Wnb6YWYglhS
	xmY4HhdIBahImJomMPR0aPxbDHO5trCVhPI/R9roz7kbIWtZO/KGpJHYxAXbUA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=epKMreZq30zkA5W1u3BoIXg24/8Q7Mf0Mzg9+GebqR8=; b=q1CWqUiXSsK2mR8FVWzITyRuBn
	SQtaTR49GlsV2hSpQ4XwQARs044AhymMoowfHIHkUBX5WaVbPbMssO0EM11WEbfAJudYZfwy59SWt
	fSTmDxz4Roxxc3vS9sMx+nuwV6/r83+OKOCTYKB4dG3N9zQZCYw4zmhBJ2d5XHPqy2Li60a0AIDaA
	E1RLNf6gNWeQmLYA/8p5UTKW6Ri/8WRnMVG/9TQnlGmpEJ3gz8THzPgjtRUC8Yg9WSwrijfj118Ce
	hhdhx8yxGvfRmEeag5/Nxoswp0c+gR3NaTHluS/nyRxgeIioOO9MnmkfcYkUGQU7sqHfgmdkuxdeG
	o4SChloQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ5bM-00000009EYy-24YZ;
	Tue, 20 Oct 2026 08:53:44 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ5bJ-00000009EYJ-2SXS
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 08:53:43 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DAD1E201E2C;
	Tue, 20 Oct 2026 10:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792486419;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=epKMreZq30zkA5W1u3BoIXg24/8Q7Mf0Mzg9+GebqR8=;
	b=gWM+ItCnRNH5w4ainjGKUr7g8DsVzpE/OgyGU0eoeILNWqQ9tznpyQT6MsYIwOB7XRq/yG
	S2nxTQ9Y8P32fpPo/2FiP/gMJQW2xURuTNM5rT5L9R+tJ6rzgbL+L3w2Jzjxq/nFRI004Y
	rE9kaJ86wil0WSEsH+Y8IXR1VV4xHi+Ak0UPjQ50B5hNh8QACj365byEdRP3rWyskM9kNQ
	yXfCrur4zrMvPBlFaq6cMDI8MjmvhL7jNLYQj+jqCqzUCeXUAUJ5rkpmsL0XgC5b69bqmY
	w3vUPTxXAnKi+LMRIkqWgNHKQswzbk+omb64/GOB0e0C8tLpIyxetHIoU9rUdw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792486419; a=rsa-sha256;
	cv=none;
	b=R5k9aTkljt9nKI88ZK4hOmoT9OyyMvWP/OIwUXd9TGHJeyQJyPzWOCGcI0RC2Wg8UlYKJ3
	o7jPhgOpmTHpF+0HaS21qnfcq6r7o8WuPU8/aid0KtQuAZAneEdXSQS1YVVkG9Q9xhGpLY
	KKKbROirIkKg8d/C3C30X2baZrNbf1gnq6uro5Zoybdepoqou5pwO971NMJ7fM7ZBHKalI
	4+SGH1NKI0CU/RhAKxsNx0/mem3inYKCpv3WIhU62HrrbArxuBG1XyLtD5dvofei1fxv1a
	kHTFRs22VahuAlrsQLpUs3N+aYqF38cA4GPTuWFBkhOhfUEavK8NtJVQVUVBIw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792486419;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=epKMreZq30zkA5W1u3BoIXg24/8Q7Mf0Mzg9+GebqR8=;
	b=D5LzEUgEn9v3ydui8/d0ncCqlE0hX5YR8taCBdbXlJZxn71ssewRgHs4MnQiZqt8+i0umU
	a49I/WtX8rd8VFPqjrIW7TUXJrxjFYAJwvQzpvKKwUFxu+zifOdNVgcIsbEChTt1HNoOCl
	eFOL+alsxG8hkLVQ+ifLEogwRT7ZGOagx/zJZi7wuqrs96te5uDhUCo20IYcsYwaoI7/qR
	Wlwjn56N2yYRwwNyAYjAzLr2UAFjMtZSpQqX3grXXlV6rTcj/CesC+9DGxqDrxmLN1bTGk
	8fK2z3ZeI0JnfhIrFPcqQTOkl1Ce+J8tLCrc9ZbU0NikoAp7C1OgvNkK7jBLjw==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id C1D62740665;
	Tue, 20 Oct 2026 10:53:39 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH master] ARM: dts: zii-imx8mq-ultra: move i210 below the PCIe root port
Date: Tue, 20 Oct 2026 10:53:38 +0200
Message-ID: <20261020085339.1398299-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_015342_537489_6765A14B 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Linux commit 2f42bbebb7be
    ("arm64: dts: imx8mq: Add Root Port node and PERST property"), which came
    in with the v7.2-rc1 dts sync, added a pcie@0 root port node to the i.MX8MQ
    PCIe controllers. Our ZI [...] 
 
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
X-Rspamd-Queue-Id: 4103C201709
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
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: ksef4erwj3k4397korfonb3d8sw57o6c

From: Ahmad Fatoum <a.fatoum@barebox.org>

Linux commit 2f42bbebb7be ("arm64: dts: imx8mq: Add Root Port node and
PERST property"), which came in with the v7.2-rc1 dts sync, added a
pcie@0 root port node to the i.MX8MQ PCIe controllers. Our ZII Ultra DT
already has a host@0 node with the same devfn below pcie1 to describe
the i210.

Drop our our own addition and describe the i210 below the new root port
node instead.

Only build-tested.

Fixes: f0bf34d99c3c ("dts: update to v7.2-rc1")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/dts/imx8mq-zii-ultra.dtsi | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
index 1f1ef2fce6a6..be790ed7e607 100644
--- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
+++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
@@ -42,16 +42,9 @@ &fec1 {
 	nvmem-cell-names = "mac-address";
 };
 
-&pcie1 {
-	host@0 {
-		reg = <0 0 0 0 0>;
-
-		#address-cells = <3>;
-		#size-cells = <2>;
-
-		i210: i210@0 {
-			reg = <0 0 0 0 0>;
-		};
+&pcie1_port0 {
+	i210: i210@0 {
+		reg = <0x10000 0 0 0 0>;
 	};
 };
 
-- 
2.47.3



