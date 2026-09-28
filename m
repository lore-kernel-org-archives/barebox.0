Delivery-date: Mon, 28 Sep 2026 13:39:20 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xB9hY-007H5w-15
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 13:39:20 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2735C2007E1
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 13:39:20 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eELge2Sp;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=O1dpwTrk;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 198.137.202.133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790595560;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=vAsB87BmmI2wNQwXyKQ8zDWcI77kg82LNUxls///vPM=;
	b=VM1v7aDz9cLxw5qv+2L91EikirCMQtvU4Cjk7YIE6otqIm09Nl5/8CIfn7AnriBQkQKUh2
	ERQf1LPkHYjQaY2NfBgdt6YS50HPNuX4pjtikOOhAlbGZKxp6yEyW1c9BU0nqJ8+OefgLN
	/ActgXh1/B7cW+uQLPwiR4S4RE9e2MgsSD2PyC8EjIT9AmHtmG51ybegLNMBKH6t6Qo/Gu
	Tnw4v1BQqAdKRvCoIe7zRdH4jd2r0pp5SxX9whwjfNoxjrZ5UymjfcLIQzQEaUoXJ3JYT7
	ZEwYXj2ptGx+IBrzyjwZ7PnUQgfSoH8nTZwaL6RCTNk3SaSTRIXjC7qWgNxkEQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790595560; a=rsa-sha256;
	cv=pass;
	b=AizxZfMMBHLAQrshLoaErkTISfUdQlHH70vetRZZ9M8cdBdSDTAr4WDSGTFdddn268lwNr
	1WSJW/B376QP8gqb9Lu6z1smEJrOyAhZl7jt1GbMiEDjcc/Vrn3gnNYMPay/3bb/E2iea8
	K1iqPd/TyNFjXvoF2nBroDXw68oHdidOoNTf0zVfe1to+qQmyeBQKlEWCRJayo+t6TZjaL
	e018ZFnxwXBJYmPbG4c0J7E3RHN7f3jsyFRL8jLqY0cTGRTCY31JTtJ2QGP39vn/ar688M
	yR+6C/tXlVzLuR7h6MuRrWXFJiX52qGk+Wqb+/atS9dUdI03GpKe52JND16r0Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eELge2Sp;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=O1dpwTrk;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 198.137.202.133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vAsB87BmmI2wNQwXyKQ8zDWcI77kg82LNUxls///vPM=; b=eELge2Sp/SWjSyad9D9CGQI6m7
	FCeTmgIi29zn0ifGyZUju2iiusV1BrgdxZVwxHzRrKx5QP8svdJ/rl4NfhTHg0qbm0EduMUvJNSup
	cxpha5DQihXasUi3HQwdPAaculh3Vs91iZ17TY6XKzAlvGJuk+W8x3us8+D0V5jebC+JP+AE28mFJ
	nm7cqhK7ZuHqLgF9TBdWcfk8uS15tqpAWuQKHmBG6r7M5rkO2shWg8irC3Dk+Xo8oVpF/rbJLXxvE
	qu3fRNy4iIDnOQirqKv3OgKO6EDoCkKz5YJdmQyr5GmJ3Dr79x6pFC+n0jtZ6lx21/yIlbPoGCJhU
	RbUA4gKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wq-00000000S0d-1BGB;
	Mon, 28 Sep 2026 11:28:16 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wm-00000000RzI-3vJ7
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 11:28:14 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A3BEB200044;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vAsB87BmmI2wNQwXyKQ8zDWcI77kg82LNUxls///vPM=;
	b=O1dpwTrkJJbs2QalNUqZQM2G4apBLR04Pz57VbAvJ+bwBzWxvR82BHzSC+XVl+6G38kfbE
	I2kSS2R5E/B6eHpkbIztlFuTmseliXKLgcZ77pIkcX+IQYmKnjnK69bBKRvBvsdemKpSzt
	fpBFeBR2U7tTC2FArOQM6GBtAXQ0VL4CRqZQFClJqDMoFqpAeW+Uof2pXEbKUu+pFH+6kH
	YnNTMk1LZ9wLpjpA791vE3pFqirF8jnz1cwOXNhYvA40kR3lrUMpf0Ci+svDjgBDm/TATp
	kCRW6U9HnRseh9AQk8yTsUw7UjRTyG4DcR3L3vVlWwLlmesq/Ozw+sgy1YrqrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vAsB87BmmI2wNQwXyKQ8zDWcI77kg82LNUxls///vPM=;
	b=KPHPJK/r2dktpah4siLcUpscyJdVDEuvR+PuPLEKAjyouTT2rZapBs1D37c2iBb4EisCdn
	OGuD8AhmfEYEgTTpq9wf13KWafpChdIexvXQPQaFOCGHa95WjdSqUaz33cwHLfaq2UaPUm
	017ettLW6nJ/YW3EODBR13Uc1y9Y3WG3S15uvk8/uk1faJATNDEn8e5l9LNjbnnphxBgkU
	6nHTPpfbVt49pMXNHhLkdJxPf+45g79yUaUHSVJDu9IWDlce2pj5v8/u1sJj0nBMisYmOa
	kmCd35HUzZ1Sz30Axo2legX84DIzSnaSFPMruNh7NwhiAmDAdjnENElMl7Z9uQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790594890; a=rsa-sha256;
	cv=none;
	b=Wp3YLcnN93NzaB89utlAXY1XMZ8PX2bEtlUhyvbYykKL0wl7HCgVIhNhfchk4xSx3dwtzY
	hjxDvhYbl9xSms0lC8mdlNkfMGU7kiOowjNoyaG+H5ZkKiTKcSro4waRo+cwN5QyyGu+kW
	G+ndXn9ThPxpTTNpjWGzaViFV7xPwIiIv805+M/q8I9pA8/zSOQQ+RjX9kmd7PqkRGPtUv
	I+9ydJ45Nuj0BBTYe22RQTAPQbtCloNDXEBCN1mZ6H26Xz6UP7Hq36CnwsGc2Bfzaq9OtQ
	LdEWVxsdXOZVHAsu5xAsMZ7RILtrgUPeLfnUWBk0YX8HcKuFXV9H/QDN4np9jg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 837B17421D5;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 00/11] Documentation: define a barebox threat model
Date: Mon, 28 Sep 2026 13:26:55 +0200
Message-ID: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_042813_130217_A4661017 
X-CRM114-Status: UNSURE (   5.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The security considerations chapter is written for integrators
    and tells them what to configure. Security researchers may not know how barebox
    is integrated, so let's document what we count as a security vulnerability
    and what's a normal bug. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[198.137.202.133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 2735C2007E1
X-Stat-Signature: xdy1d85mrngwdziaxjo7s5xpdh4kf3tg

The security considerations chapter is written for integrators and
tells them what to configure.

Security researchers may not know how barebox is integrated, so let's
document what we count as a security vulnerability and what's a normal
bug.

Ahmad Fatoum (11):
  Documentation: security: unnest hardening sections from dm-verity
    section
  Documentation: security: clarify development key insecurity
  Documentation: security: require signature verification to be pinned
  Documentation: security: document trust for builtin devicetree
  Documentation: security: clarify the environment section
  Documentation: security: describe shell and environment as trust
    boundary
  Documentation: security: document the barebox update attack surface
  Documentation: security: update for barebox dm-verity support
  Documentation: security: add anchors for the different sections
  Documentation: define a barebox threat model
  README, SECURITY.md: link the threat model and security considerations

 Documentation/user/security.rst     | 189 ++++++++++++------
 Documentation/user/threat-model.rst | 297 ++++++++++++++++++++++++++++
 Documentation/user/user-manual.rst  |   1 +
 README.rst                          |  10 +
 SECURITY.md                         |   6 +
 crypto/Kconfig                      |   8 +
 6 files changed, 456 insertions(+), 55 deletions(-)
 create mode 100644 Documentation/user/threat-model.rst

-- 
2.47.3



