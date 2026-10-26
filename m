Delivery-date: Mon, 26 Oct 2026 14:05:04 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLKNs-003Vx3-1P
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 14:05:04 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A49C6202845
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 14:05:04 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=cp53NIT7;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NEm6mksa;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793019904; a=rsa-sha256;
	cv=pass;
	b=TSM8qmKGtZfmqC4I4wTaspRmGcH+KdcL+xqagti5JT5FzQr2bKsjy6n7EEmZ/+I9XLh+Nx
	B+1O4jC8LdYzQbXiSi14Pqf7CaOGhTYUPLo9pAGMqGSI8eq8M6GYacTCTDPPSRTq7eZMpl
	/Tq/Q0dDKF8DvHz4GFdNTQOqEBXaeWJv8DJCB50rMlb9Fv6IEA4ghfySaxgKm9KsIcui6h
	sxmbMG54RuxIJnZpSfcygiFhKy2tSHlv7XpgmHtEbzwSX8BmcahVhgmoLTjnK+H//JinzF
	QwW134aOH1ZSu66GthDzZpy7pugT5Na5ylul4Pp0RDDOit1NDMZ8g1UJV/RJhA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=cp53NIT7;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NEm6mksa;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793019904;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=iN63F4K+m4YI9V3NQQ3KBKNs6ztv+kLQdox6VTbHGis=;
	b=CdqA74te8nooD2QAw90oF6k2WQ0q6LVcVLeeLq8cNZ5O8nfK0ZBbvY1Dy839Gmsl5F3JBP
	3hqiHMZSN8hMYbh3UjlO3MLavTbpZJpwnEjE9h3kBYxHTOWTWpjQfwwqPSUjk5BPGqgCyj
	QjIMjuBhN0lYZRW7bSV2GF/8PZgV3IKRDRUjh5Lrr4TXE40p6D6RtbAlx/P2FYXHLG2yvf
	UXEoWPiO5Vd2HdIRUHJdSfTGGH1I9K7Vv8epqFXFf0XPSmPbMsQ+XnKYLLBpiU7PmfcE6m
	jzrcoApLOAQA0IAwaLAURQEWl46C7js5IwP+IfVpQCastxBvCmhFo09BWnvamg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=iN63F4K+m4YI9V3NQQ3KBKNs6ztv+kLQdox6VTbHGis=; b=cp53NIT7IxCV7T
	JyJDZFgE26x3MtwdtkOI3K1+XPMRCkFcoBDylfc/e/0K6Nf7e6tixCuzXRz9c3OeZ6TZxMMpHFbpL
	e0ZWsdiaLPx5X6YsUUWKx08mRyuVcrSMcAA1mYQhNqBZ1Jqibevdz2iHnV0uGvGYLYxHF9ndNRAEs
	9MVvYA1a600vkCRQMkGI8YOw1cuBu6H5zFlpbZMoyDeAQvG8wZytypzkPORDt1LQw/pOphOjcDqaP
	qN6NaLLtPuFPvKRhdGjmbOdVE3bNNLjSxoKHDz5MuEZUQaeWtFUA4R5+XBYewdLXm752Wa1DNc4lj
	dNkyJ/ZRFFQjo/visS5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLKMs-00000002YxD-2px0;
	Mon, 26 Oct 2026 13:04:02 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLKMp-00000002YwD-1TTJ
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 13:04:01 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 78CDC20233A;
	Mon, 26 Oct 2026 14:03:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793019837;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iN63F4K+m4YI9V3NQQ3KBKNs6ztv+kLQdox6VTbHGis=;
	b=NEm6mksa2/Wg6+Y0D7IMORLe7zhX0a0+NjwxjTN3D1sbLXl7xTteKEVfZzbeJPoEtmzEKI
	RWtA6/WvfnHfpmUG4zOZyPhTBnkX0KHiv6dsWLcAR+HySWGISjrxAxL/JXv9jldmvn5tzb
	wvgTpSTU/iUey/mauX2gRhoQuKCoff8cxwiCbz7Z31LLcbWp2bgVLY9Ry65w/9esKawArD
	6GoKEoCBjhql7IdA8MpS37aEyGLv9pUj+fqqBCpDl7JzktbywcLJdZyPLGpIlPw9RebDR1
	UumhyvXmW0yxa2JIxV/5YJqRUsDlk22iwbbjbaFZHmCB7ZB91oQdg0VBwJqycA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793019837; a=rsa-sha256;
	cv=none;
	b=f5Uh0Cxrf1TLfQYtvuMbdyon5q4XOkExjQBDhhVpX84MXXWovkUQvAnQWFkV4f5Ws07lm0
	jmsCLJSqMmUxSRSizEXS7kFYDboIDhlTL41Vo8y5Sf01TUC4N45xdE4QzJ5Ud6MvgsDJVu
	wQGNkQwSAfw/4C12DploRZrPcERR/3bYDdXVNh/jXBLEggAjQOSlNjzO1mtYRJ/5UXgHi8
	ewoK241H+7s6/Gz6uboEI81MklfptXbzeVJjblyVwPCUbgPu9ZtFY7euuQBYMHVP4al73i
	wy+Wa+QL4ootdST93ZwEF2c8c+yjxLHXvElRzO56tnvOVeUKMLM7xS3/GCBX/w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793019837;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iN63F4K+m4YI9V3NQQ3KBKNs6ztv+kLQdox6VTbHGis=;
	b=TsXmVu8fbNNCyjFyEEUclq8/sHcF7MiwZ4x5Xps0rVjvyRZRqQ9njMUc0AarM16K2smmVe
	Nz/LGAhm3COqXGJJE9ai7ZIzjfKjyoem/tLb9RWbSZF5I2cSklTHZHZtDxrvZ8P6aFEgfy
	sdlhIejNY3BDtBYrA6PMThewO0GjM4QVGUEdOjN4OaRGgj8Q8wIpXMvEEu0DahvgtSCbIx
	7oK1VWKB56SWDM3eEC8EIkv+URw59gDkWMkVz/HX1ff/Rmp/YAH9zUiRgFifN8z+oSvbW9
	BtiPLJIOsrzxggZHpcBOm2YP2G9ufNe2J3kL5dnYlQFgA6zPl5g+xFp+LBjedA==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 63A1DFF946;
	Mon, 26 Oct 2026 14:03:57 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261025093121.2888368-1-a.fatoum@barebox.org>
References: <20261025093121.2888368-1-a.fatoum@barebox.org>
Subject: Re: [PATCH] clk: handle get_parent callbacks returning an error
Message-Id: <179301983739.202647.3743824843064939890.b4-ty@pengutronix.de>
Date: Mon, 26 Oct 2026 14:03:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_060359_552107_3D5FCE47 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 25 Oct 2026 10:31:20 +0100, Ahmad Fatoum wrote: >
    A mux with a value table returns -EINVAL from get_parent when the > register
    holds a value missing from the table. clk_get_parent() only > re [...] 
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A49C6202845
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.98%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: mrsorpgptse4bmfj9qi8rkp5ndbcss6a


On Sun, 25 Oct 2026 10:31:20 +0100, Ahmad Fatoum wrote:
> A mux with a value table returns -EINVAL from get_parent when the
> register holds a value missing from the table. clk_get_parent() only
> rejected indices >= num_parents, so -EINVAL went on to index the
> parents array as u8 234 and clk_dump crashed on the Amlogic G12 clock
> controller.
> 
> Let's return -ENODEV for negative indices as well.
> 
> [...]

Applied, thanks!

[1/1] clk: handle get_parent callbacks returning an error
      https://git.pengutronix.de/cgit/barebox/commit/?id=22f58f5dea50 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



