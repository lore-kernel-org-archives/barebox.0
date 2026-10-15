Delivery-date: Thu, 15 Oct 2026 10:26:40 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHGnQ-00DqFq-02
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 10:26:40 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CC7D0201CD6
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 10:26:39 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=l8X7Llta;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="dCIhF/U+";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792052799; a=rsa-sha256;
	cv=pass;
	b=af6cO9/OUXfCi2GwQ401o/3BbwHwvEtPzP7riMxtMHzuZ4AXFw0d7xbwX0QA94lLKk+dXa
	obQzCS9Vt5NUKhOwXZc1iqOVQwWSe+ZM8fx5on44qjggwtNiNTWKItgJfAhNTqPHICjDz8
	lZS2EsKjDFj5AFlCTux9rL2Kwbty/18PAMc83A0M/SlS8ceYUD0t570MJ+covcM7n+kwSC
	VLpF3eSLUzNtdBJTa4r5BopuB3ga5k+bEzaHh7ryKS166XpVyoWCtsUG2dLjPktJKf5hul
	OquVqZekpCUSe1Mu+oMziqXiJ2dUspHIum+vML1jVHVXPzKPh8chRDnNXHxopA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=l8X7Llta;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="dCIhF/U+";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792052799;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=tMFmjblalnfwwcXBoQqTDRZBRBYdA6kB0P47xjJhDn4=;
	b=Qx2N04eDXS2FmgS1l9bTat2sl3kgSsN99FRbJcPfjdgcXapEcykCuMMHSLhBr/365Patuh
	W9o7jpiOmy3gfMn/SnXFB9rPxBxjwcmztireU6Qmx/rHkZi7TztEeNVaIbVSfkDCB9JzAp
	VRjgA+42aPJWgr6Cisycdx/xj9ygZsrvgqxRGnhqm+JTHB8NIX+S0Nae7AJRxtIbp0SJU/
	3eCG7bHN1WcqpgeSFqsst3dbTCmp6KV2eZjLs7EpNPuO+9GyL5RGnhVoKsJzl9VAZHk8zw
	S3AISQJtkc6yRQLVYhFg6cgF6Nsx5QoGy1nnWXh0MdAGDJcGXjKhiwdJ+koYjw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tMFmjblalnfwwcXBoQqTDRZBRBYdA6kB0P47xjJhDn4=; b=l8X7LltaoUH7RyRZ/VwM5U4xAZ
	klsHqcTDtGykOslNWHhGJj0XJdub7C7QA9yitvaE6mJaMFaMRIqU9kq2yaUkOWwdp9GP5KzBd97az
	n7YOHnsFtpGRbeQEeqhzyE316VdafIA0bpiiJhKwcFMKZ444iQWj0IsQxc4y1Q0PS/91kj8M4fvV/
	DHe0LyF8NsUJv9EiCf7e5AbC5aK4qvERswG+vKT5lAuX7nzzAjxaOmPBj7ovuFp3HxUmHbYnatD/d
	kynjIoUqnyC9C3vqjM5+L4od1Ij63hQfqJyYYse2zGeqgwfqnPNkJvhYdr2g3zh4m21EK1E9Nvy13
	Pvbx6bZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHGmH-0000000H8tU-2X2b;
	Thu, 15 Oct 2026 08:25:29 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHGmE-0000000H8t5-3sUF
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 08:25:28 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1F369202012;
	Thu, 15 Oct 2026 10:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792052725;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tMFmjblalnfwwcXBoQqTDRZBRBYdA6kB0P47xjJhDn4=;
	b=dCIhF/U+DZHNGT+n2/FwCYH6OnlLaHVCqcQZpcoN72Vl6V45sbVHxQYEdqgTNJlGzObCoM
	B1THq4Yp0wNXyYzfiSfEEN5R/Y+Szf49MJOTS8hgxJJ36NKIjzNgJHAljwOSf39TvkyigU
	SgFlLelKE8j4LJVlRHO3uwfrLmFL0A4gNtrZa8J8OdmY/VOSnzeMRSnN05enr3ws4I2UBC
	ak6LKDlLWMwHvS09fDNfBqgZS7d1ktkymm8csSheIYQkU+5OxbZVVWBd62r6x7UJAtNwtN
	ZIJfdjP/JcNoeulzDU9EYfR2RydHYB9opxb4MdEZGkGs+kBxZZdSli6IIzr/qg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792052725; a=rsa-sha256;
	cv=none;
	b=ZFDtVRdVkuPNm6r3dJEzklozrJjhxltQUs/wtkGNsLs70LNzQjrw22btlixgHZteTsw0z0
	RlF7gqti5DAmEyEWifbRcjT17tGl7ljbiyd9DZu8vFThXJHknHZYjv7Z4qGvUouyKyMjR8
	M2cSQwdqMQ7LhDVANKKOnGlrW6G4dhNDCzACmgb0Ab9nrzUrDzLGti/U0gKf6BBCViU0Kn
	dk4n9cItcZ65HjoxsfqQpC9U9oeScd+Opxm22FWqTwaCQddqNU8F23JKNlR7BhHNB7HbMw
	xOVlltSns9GrXpjiBBC/YbzC2YsiFel/yD+fe2E57IGvEVyt+aX57TffVXicEw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792052725;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tMFmjblalnfwwcXBoQqTDRZBRBYdA6kB0P47xjJhDn4=;
	b=TvG3h2o2QSfBgAdajEogA/wX8HCKW382uiWO2EqpIOLT5fuMij1SVxyYebQh6g2cJZssw7
	iwuNp5v9gDNaZfsnl9ruLXUxgOeXL9hb0mcyAKn2SWqP2zLAKIGs2EmZwzjlgRDSlIjkqn
	haeUNFAwUMTmdQ0VU+/9DzF34kI1nMVongVLcBHHN79Yzp42B+Wt3TLNguGXdKA3HI0Edy
	1i6492h2QKyDlaSbPS6Zb4r0DvieLJJhexkp0oHIylg/NzeQQxyza7tvidcN6Ihnw/7Yym
	mVdwLnq1oZwi1/gXDJd/g+y0KJX5DLb7+9qDG2WwgMrJhfVQoG38kI+rOxDSQQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 17F50FF854;
	Thu, 15 Oct 2026 10:25:25 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261002123414.2923003-1-a.fatoum@pengutronix.de>
References: <20261002123414.2923003-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] sandbox: hostfile: keep "syscon" compatible on the
 stickypage
Message-Id: <179205272509.1410196.13823335182210215857.b4-ty@pengutronix.de>
Date: Thu, 15 Oct 2026 10:25:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_012527_123865_B28A2382 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 02 Oct 2026 14:34:10 +0200, Ahmad Fatoum wrote: >
    The stickypage is described as "barebox,stickypage", "syscon", but the >
   fixup that turns it into a hostfile node replaces the whole compatib [...]
    
 
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
X-Spamd-Result: default: False [-60.53 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.92)[99.66%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: CC7D0201CD6
X-Stat-Signature: xeqnf5gcuu67sct64xy4ebyfmxf3a13b


On Fri, 02 Oct 2026 14:34:10 +0200, Ahmad Fatoum wrote:
> The stickypage is described as "barebox,stickypage", "syscon", but the
> fixup that turns it into a hostfile node replaces the whole compatible
> list with just "barebox,hostfile". Nothing can look it up as a syscon
> afterwards, so children like a syscon-reboot-mode would fail with
> -EINVAL despite the DT saying otherwise.
> 
> Let's keep the "syscon" compatible when rewriting the node.
> 
> [...]

Applied, thanks!

[1/1] sandbox: hostfile: keep "syscon" compatible on the stickypage
      https://git.pengutronix.de/cgit/barebox/commit/?id=dd19ae5718fd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



