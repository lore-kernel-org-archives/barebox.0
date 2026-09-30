Delivery-date: Wed, 30 Sep 2026 10:30:23 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBphn-007zgP-1x
	for lore@lore.pengutronix.de;
	Wed, 30 Sep 2026 10:30:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D430E200231
	for <lore@pengutronix.de>; Wed, 30 Sep 2026 10:30:22 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jpG2hkXX;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=eVEbHrf7;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790757023; a=rsa-sha256;
	cv=pass;
	b=OEih3SBkyCvqulA0kVYon6pQVy3rAqgLcs1JxA3iw9E+inVIYZ60aQDXNvChT8mKJoDQNE
	lx9bLr1dM88D1UhcfsTVWacUjYqte88yfeMzcc56JVQXIwdJXJfswJo6Wt6cxvasCJH+EB
	q174ghtYVy0sW4mT6CD9KlMcvk3VH2WCyv/t1ZtR1Fjl1nxKg+OVsytGUD/jV/7hgXlpLL
	vLefE7az1E6c6dY2eL1Mvg7uh3JY5FvQ+/ntDPFwqBN+Vrqncvx7FXj21uw91W+OYXCT5c
	tWKvdytqIF0WdHiTM0qPoQLdt892tZGKXz7+ofsqRt9efwhcFj39/obpQY109Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jpG2hkXX;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=eVEbHrf7;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790757023;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=AhzOJCF5KBB4Xn0mnsKQkw/EEXKqRHRpWkCYvj0o2TU=;
	b=CigA+Q/GGBz3/m37nwlRnGsIIRO7vO/aHeRo78d95/FqMGyp0EuVxuIaeB/eBK2yH4SFpu
	u5HuFJh8o/Ni5hduOkrr/pCT8ehP7UR0jv+Cv6Hn1H3twx612dUywRryRy5PRJO/h3q5vX
	n3e5m4Yaxc/3QRdXMhezLqdKZ8/1P+oaCRmfy9JYFWktnNC0jxVr/UrnKmB4+h2s1x2AnP
	4PAJVgWsxXVZb9gzjzw6ROCwdEkPKHyrmbC9utTjcUkoc1x+3XrNAsZQP9UHfZLcUdLoUQ
	UdzdKCcfTYD37rEClA0Y83XyJZw9e/IZCNYL/K1BBzhNs00AxbASEf2A8NPTaA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AhzOJCF5KBB4Xn0mnsKQkw/EEXKqRHRpWkCYvj0o2TU=; b=jpG2hkXXAA1rqp
	+BfWW8Dn31O+1pCNAI9pvxebWn72v0g1VF3niR8wiVOUeufBl6wHPDNHO8zvi/9ERZo7wFQ/sMhQD
	bT1WF+hm07peKXGFRLuuX4iHCI4UPY0RW0KGWKMz8cCKAuX5O4Px5FthD4r+ACPgNV5tj1lsLBkJW
	ey2DLr2udrjuAyrCTpxlcSHEmVDDbNMugZ+S+Tlo3O227jIf+9iXwxotvYBzWlZaLvp6DfX6x/4fe
	8Kaoo5OvnxTXKLwjI5sztmYYbzQ3F++/whZKj/r+uIq8ynrEjy7M4BsnJ4x1hCr+khtAkf/aXeLFf
	68Z7hDvJHM+rfeyEMqGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBpgX-00000005Q9P-2X3g;
	Wed, 30 Sep 2026 08:29:05 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBpgU-00000005Q7E-13zd
	for barebox@lists.infradead.org;
	Wed, 30 Sep 2026 08:29:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D1B54201547;
	Wed, 30 Sep 2026 10:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790756938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=AhzOJCF5KBB4Xn0mnsKQkw/EEXKqRHRpWkCYvj0o2TU=;
	b=eVEbHrf7yKO5x6XHhPyQU2jW79ZDmP7aMwDJus3IwPHIe4A3+wMfoqjJUr9SA5C7uLtIhj
	r5w7TdkqbIlcUY4mRwSOB9HHusVkzdhHnPStMEG2oY6/Z4irhNtFXFgTyc5WMS6aDaJqHn
	5SLjpUTUdELSUUCf0vbQbf+lIuuGR+iLzFBK5yjtzw0mf5V5rRoq3wMU2wOuphOkh9gU1X
	+nhtIAJG+L7V/ND24o1eDZHWTNY604+icyiw8038Tte2RgwMIpNY7njdpuVMfoBI6iRvs5
	OlKhgG8/VQEHqOdGH4hGA0UdSoOcardOhbzndMUpwT9rTI7q3G5z/uj0xCcrug==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790756938; a=rsa-sha256;
	cv=none;
	b=eoa1UAiixxy4sXUoD2d3ySMQg1zoa4iRgEGPkEg4/Sj+t8Rx1m5qyK3bkkU1czPqEbfEVg
	BhsGf72eQlLEmQDvTI3UA9oyECLglGiWgVreraAt252J5QlJMwvjXiLG5FvSQeCDL/8NW/
	qvkZSv6a8gHzGFrd1II7Lt2dkTQ3VsOA5t7T30YgQJC59BFj6qT9cORXfeyrYp5QwPj9/q
	oO4OYtEW5tsWMpHohOfsrT+YKMi5U2xhrxE+2SolNXkvjsdEfGCP6Cc/BXHXGsdpMXMdok
	8MggqdirCCdE/XllssMA3yXNXubhNve0IDzUCcqrsaXBOxOGO6fNbxxpAX92dQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790756938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=AhzOJCF5KBB4Xn0mnsKQkw/EEXKqRHRpWkCYvj0o2TU=;
	b=RDJoZ+1EvgYo5IEo0iDH336qwbnIM9iwhl+3OuOVzaZHJrV5YMBJblzwe3p16oPXhkL7QZ
	E2tVCIS3XhmAH2JjH1MXdOF7XPIsIbXlPeL5E/oVQs1xsxTgnQob+vl4Fxkga3LkRwP0cC
	iMthHx9PYKW8e/8X4fONktOj7wj8xv5+oV1ZzaiPC86lVUz7d8nZQbcDNHo3DtlO7uw629
	Ge3seVcNhnXPPJL7w5oFC8NuwrZVYpTEJgEbQCQro1ILg9LhWnC5R/P8xObBiCr8sbPf7y
	krng7mpkve1j5r2BnvfTAGAioEfhh03tyi6SrycKyt3Gi3AYpMol4GDboY8WzA==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xBpgQ-003Wks-2U;
	Wed, 30 Sep 2026 10:28:58 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH v2 0/3] PBL: enable hash functions for Vendor Authorized
 Boot
Date: Wed, 30 Sep 2026 10:28:54 +0200
Message-Id: <20260930-crypto-pbl-sha384-v2-0-1cedca8ce7c6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEbIvGoC/32NQQ6CMBBFr0Jm7Zi2gFBX3sOwgHaESUzbtEggh
 LtbOYDL95L//g6JIlOCe7FDpIUTe5dBXQowU+9GQraZQQl1E1q1aOIWZo9heGOa+rKtkGptbDN
 UxkoLeRcivXg9m88u88Rp9nE7Lxb5s/9qi0SBg2mErmstpCofgdz4maN3vF4tQXccxxc+LINQt
 wAAAA==
X-Change-ID: 20260928-crypto-pbl-sha384-e59cd7b4cd1d
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_012902_459400_D1F8260A 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Altera's Vendor Authorized Boot (VAB) uses a sha384 hash for
    verifying the second stage boot loader. As preparation for adding VAB, make
    the sha384 and sha512 hash functions available in the PBL. Loading the second
    stage loader from flash and verifying the signature will follow as separate
    patch series. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
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
X-Rspamd-Queue-Id: D430E200231
X-Stat-Signature: z8ezd85u3yn1mxm8f3gay8y9immdxxb1

Altera's Vendor Authorized Boot (VAB) uses a sha384 hash for verifying
the second stage boot loader.

As preparation for adding VAB, make the sha384 and sha512 hash functions
available in the PBL.

Loading the second stage loader from flash and verifying the signature
will follow as separate patch series.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:
- Rename sha256.c to sha.c
- Move one-shot helper from header to sha.c
- Link to v1: https://patch.msgid.link/20260928-crypto-pbl-sha384-v1-0-bc7095590123@pengutronix.de

---
Michael Tretter (3):
      crypto: make sha384 and sha512 available in PBL
      PBL: rename sha256.c to generic sha.c
      PBL: add oneshot helper for sha384 and sha512

 crypto/Makefile          |  1 +
 crypto/sha4.c            | 11 ++++-----
 include/crypto/pbl-sha.h | 13 +++++++++++
 pbl/Makefile             |  2 +-
 pbl/sha.c                | 58 ++++++++++++++++++++++++++++++++++++++++++++++++
 pbl/sha256.c             | 28 -----------------------
 6 files changed, 79 insertions(+), 34 deletions(-)
---
base-commit: b3ce2a440f44b0166f9b9e9a3a80bbbfa52a0ef3
change-id: 20260928-crypto-pbl-sha384-e59cd7b4cd1d

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



