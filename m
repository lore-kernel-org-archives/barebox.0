Delivery-date: Wed, 07 Oct 2026 16:58:41 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xET6P-00AyNU-1X
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 16:58:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 155372023B1
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 16:58:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZqHNIJs8;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=N+EqOYI5;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791385121; a=rsa-sha256;
	cv=pass;
	b=byma1MKqXpo2n/om4GiolzDHlKqNF9puCgt03nzaSdwjxAO9Oj4eIWnAT9LNLZIbkD76ZI
	RxYRRCb28lUKU/oLMJJCNiyvMmgbxBMpCAP3MyI6OyjoUtr6PlJR/zJoMVrgM26mstNUez
	+DpM77CnqNMm7f3SduXEslwgDlQqD0Kf4+fzmbSXaQvCvo3/ar4Xf9ReQD4+pKQGExeVHQ
	LkfjBOIkXSgjZ1c5TEwj+3g/nFeXLZSiAsET6morSUH8GWXymKdrkz2RbITYG0AS1wj9Hp
	aQG3mMSg/2m0FUnuS5sqZ5irJ8uU1JnqFnpzNoa2dqf+E9UF6p7rMNvc65hSKQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZqHNIJs8;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=N+EqOYI5;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791385121;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=LbK2SIuI3e+E6CZ/fyWewq3+MG1LgfZfRNgDEvxylsY=;
	b=EUUGPHgYPojA63C+WJdgofiAe3WJejYR0S+BqNrHsqI0cAdCsTMo0Je1szv0ef9eX+j7+E
	M+iwQOnTfWzqy7xs2UxkityHdfVrMaOoa8spsbXPkA05C/23Py+uzN8g1EKxPQS/xyV8KW
	723xaQKUwcpxtV8nw3BI6Dsl3sDgmCJ/LS6DBOfqQKxiO2ydacVu7WP7Mmcc3bPAZbS26o
	519yl82xRDOl6oEgTjBBSlvTaTlh+RuqxOinO/68w56mcXrllXAOcTya22ckH5sxlzQcN8
	bqoPDswx8WIoYe2TsXUPooJZQd+/o3ItAS4QoW2TQL67PFtesK2ZKnnv0JetKQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LbK2SIuI3e+E6CZ/fyWewq3+MG1LgfZfRNgDEvxylsY=; b=ZqHNIJs8Ut/GEx
	Y8dMB23Xe3k9fRBKxZsMBNG0mq7MZpxGC+R1CBNIamygx9V/CnuS4TepCCl/3Z7p4eQ2dWnkfFuFC
	d8Vmz7enTb+UYjuY/6r07JWUWD7WQmebbgMDpYBCIGvA8yIpsi+qFHUehzdyoLZhk6dAcmjoHhP7U
	xjRqbZhD5jaIJulxP198SOKNtTg+uOEVBOzp51/S2FwEmut0ufj/9Ne+8/CzyEznQCmMjfP8Vlv1N
	qD+FMCx1npwuy3L+aB3ojNn44+nUYpM29cg3KEq4YOqEQw8wR2ja3w5hFTsuDuBe8AdP/vrkDXpQ0
	bal13B9k+sCDHnhp9IhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xET58-00000002f36-0Em4;
	Wed, 07 Oct 2026 14:57:22 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xET54-00000002f1u-1C5h
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 14:57:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CF7D920238F;
	Wed, 07 Oct 2026 16:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791385035;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=LbK2SIuI3e+E6CZ/fyWewq3+MG1LgfZfRNgDEvxylsY=;
	b=N+EqOYI5OITX4xjfwsqWM17EixXoUK3vIIs5MII7xmQGopDcNtn+pySyqATnqo/YAPkYJg
	CqB9dgWbYAXLCopx0i8dO7J8HEfJoOBXmjPy3tcicLPmx2hYnHWhSFjLGfr0GspBM142u8
	tcowG8D7fZRXCvmUqyYLXQ2BilAEkZ6ddCdGeEeFMkykb9VLOpFwo54kuJI8ac46d7dLJl
	qPsPuJNGobrvJB5Pr4kK4ssEQm8tME3IY6fu2v5TCGz6C3AU7VXfqI88iN1Io0uo0eW2Dd
	IimbHGCUIM9CcKH5LZNtMiw5EZz6i4Z7EylPMLDKh1IhERjoVSdDc+VUYcoXUA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791385035; a=rsa-sha256;
	cv=none;
	b=PIiQ7lw9CmaT09+7F5j8MfzQQXT/CBY/g9Y1aqYjXf0KQBdrP7Ej6QAqZodlTWzYoTFctt
	cGYXDJcRNz8elQ36R3ShOJbU5ZHWFBlGL7ClaF2uA6InQ3yIHanOKWCYemerWmMc/7WHWl
	UMf7Uyuu1doUmI36O4GlMX16v/NEyW3OZ18ztDAbDnBRtEcqAY9jxLGjT6Bf2ckqmUHOzx
	mHN0r8sjPNRQlvcSaJ6+WrokWSnzE9M1IKD7jCeGNkAIqwB/KXTXQv4gu1Gjr/x8Mif8zO
	LrkBclPsJ4Vb96VydZvJT3UXxgd4yqJlkZSaKmKJvWxn6vzX5LjolnKL2xEg1w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791385035;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=LbK2SIuI3e+E6CZ/fyWewq3+MG1LgfZfRNgDEvxylsY=;
	b=a1+lSGjIoZLuixIayKipfyfU9JZk6xYLDc/jCkIgR3KrsKa2yxjJiX40kWn4xRhvbR6B8X
	j+nqlEID8zPejxs0pLis1/cIuvRQCZkqEOGbnc9kNWu0Fnl0BSm7OFxMWyRX1jP/8T0VcL
	FBxUugO4hK1pvlN49aPTfEHhkOdQl33m3wfvhT0mzlzsKJMhQVqYDUuxrHbK0n0UnNEgUN
	HvmOXsjt2/zJNcSd2g2RrjriGy+2xGWfHLqQxiKFEGcVLThayzExijK042rNKFaYRwaNfj
	pzcgefnUt2VL2tArYwrRXQH3GgAFDJr2P8LNStdxBlw1Fpjgw5dWEqXcBYRuYA==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xET51-004jZX-2O;
	Wed, 07 Oct 2026 16:57:15 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH 0/2] arm: socfpga: agilex5: remove custom GPIO toggle
Date: Wed, 07 Oct 2026 16:57:14 +0200
Message-Id: <20261007-socfpga-agilex5-gpiolib-v1-0-a2911b434fc0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMpdxmoC/x3MMQqAMAxA0atIZgM1UkWvIg5RYw2ILS2IULy7x
 fEN/2dIElUSjFWGKLcm9VdBU1ewHnw5Qd2KgQx1jTE9Jr/uwTGy01Meiy6oP3VBbrmlhQY7kIV
 Shyi7Pv95mt/3A0aMv0JpAAAA
X-Change-ID: 20261007-socfpga-agilex5-gpiolib-a3a32b295925
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_075718_511289_DAAFD895 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The Arrow AXE5 Eagle board has some custom code for toggling
    the reset of the Ethernet phy, because barebox is built without GPIOLIB for
    binary size reasons. These limits are not clearly defined, not [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 155372023B1
X-Stat-Signature: 7oob14s6ak61s9hnq9btqoy1oqzwc34x

The Arrow AXE5 Eagle board has some custom code for toggling the reset
of the Ethernet phy, because barebox is built without GPIOLIB for binary
size reasons. These limits are not clearly defined, not reliably
reproducible and not enforced.

With xloading of the SSBL, the GPIOLIB doesn't have an effect on the
FSBL size anymore. Otherwise, disabling a few drivers is probably more
significant than disabling the GPIOLIB.

Therefore, enable GPIOLIB for the Agilex 5, and get rid of the custom
code to toggle the GPIO for resetting the Ethernet phy.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (2):
      arm: socfpga: agilex5: select GPIOLIB
      arm: socfpga: axe5-eagle: drop hard-coded PHY reset in board code

 arch/arm/boards/arrow-axe5-eagle/board.c | 24 ------------------------
 arch/arm/mach-socfpga/Kconfig            |  1 +
 2 files changed, 1 insertion(+), 24 deletions(-)
---
base-commit: 70421fc4591e6b4b9c7172ca72b60ef1868ecc5c
change-id: 20261007-socfpga-agilex5-gpiolib-a3a32b295925

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



