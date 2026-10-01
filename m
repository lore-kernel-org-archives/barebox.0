Delivery-date: Thu, 01 Oct 2026 22:31:03 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCNQl-008Zsj-06
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 22:31:03 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CC5302001BD
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 22:30:58 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zcnQGcXR;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=I8CNxPj2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790886658; a=rsa-sha256;
	cv=pass;
	b=FuzeArwxI9FOA/qp1wh9BpIxRT/tCW6AubuGUIMkPyhmBaIInzP+ojXeSxABiYVyX+D5UJ
	yj0+LD5rt0k9QrcrUA5FTArh11RVEQcGI+ZebXOxBN9MTMggtmejFJoNlV6iDXJERouGiJ
	QyqvRD4qadxeS97wQ6Lt+NYsfQjxlh7L0w3C0uR9E/X0NOuvX9pfdhe4o2P8ZVkPiDsyKz
	XrA3JLDJXn3Tnl4+ZMtyu/CjpwjZJfJo8uBxqK8/Gg6Ncca2HpxFQQYBDrJArjW/qYZZt1
	Uf6rckz0s65VTOKI7F1MrqhoTCJY+Qpb3mchCg1R8EiqWbTFrVM74mFhfTwVOA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zcnQGcXR;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=I8CNxPj2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886658;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=N/JLKKvh0Vws8LAckjxDFlMHBvY67bmoGtiS3Kd0OXg=;
	b=TQjYi0QXr2qZj8VVtXtJ3cYryYaDiNVqEotw8uvqlPkBVfSACg/4/uK/wpKqxhgNdgfSwA
	WOFGI86cHjTGaZxcmYM0PgDnSn0p2iIgKJ5wwFQbfR7I7P9ffkZfJcRp4AB8Lt/QzAGmdC
	Hthhvg2PNjsG8cIqHlblsJvRZe+jgoiFQF+2Jn9a7l6Axk+X3P1y7VTgSEVyBBxCzKSrC1
	w1FUa0p+Wu9GxYQ+59DaJX7tJY9DNJJfzG0+4l13jIfRFHxP95tndaSB0YmdCzzclT+A9F
	2n4s3Eh+hrVE97KdFgA54jFnfAqq1Ftd4y/5Osjjd/i8lvFSPz0Ta5INEaa+4w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N/JLKKvh0Vws8LAckjxDFlMHBvY67bmoGtiS3Kd0OXg=; b=zcnQGcXRhWpxHb9jC4zzMbD1QA
	r9ppLCJ893CvgrawtrhtH/hZNUSmQgDDECtZV94varobpDe8n2Qn6DPw8gQT0xnH88yHBy7RZgLak
	QUr6E7gg4LhvoVALV//n9KlDhXtmbMZr0PkyJxEYtQNpbZpUgGfZWWLv9mjM1p78gGFkkMRFjLp3a
	ctDwua5rPuhfe3Rj6tKULn6YQ8AgECdeqrWJ/27eTvidcZT+9In5iV8ZcjyOs1NJ1UmQcxVi+RgSV
	TKbUbt4utJMSP4Fjhti1+3rySXhM+0yGRWkMzdv0xnmc/eRhOIdC83a4Rc/p5G7LbXUaucEPV9coA
	OGtjwGtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNQF-0000000AAKv-1epX;
	Thu, 01 Oct 2026 20:30:31 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNQC-0000000AAKA-1WrN
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 20:30:30 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6B125200566;
	Thu, 01 Oct 2026 22:30:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886622;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=N/JLKKvh0Vws8LAckjxDFlMHBvY67bmoGtiS3Kd0OXg=;
	b=I8CNxPj2nk7spe0O8pmTLSVI5lRuFDbxLBsnvwxRpoZCuje0AVNiJUMqsbA0g0YDrF6NcF
	n6RsgDw3ojKwdMm4EU236rNN41xzOun774ylARxJ1wkoV+X84xUAdENmE+lvpgHOWzGeV2
	Rx568j9AX9jSqr2jFGF/pMh0nFV6r1gdqnTrYLNMce6uwHiN4H4Bi0JTn3pStr0/63RPbH
	MvbbkDZaapu+dfvub1BvJ0X+ESe9iZlzuIleJNlT7+PGKP178k4SzOPtKZLQdAAZi/c47C
	9JMmg00KA2N7WL8/EFy1QzDo3m6sVrlLuOR3yhdNwn8KJIsBLnxmDapBquBqnQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790886622; a=rsa-sha256;
	cv=none;
	b=BaHsUc/ZFMwfSR/9WEn9y+gm9HnveLScmFh7a6Z+B8iKagrRLRnFlostvA591SB5TcE3JY
	mE1KPQ6sJ3l06i0hPc+ScyQuDedPQ2nPVAz7O1N/45fTIbk1KOa0J2y4P4NZpnA532pj+q
	Wby2I1tID2+HYX3tWuTZAFB8x7OzX92d5fgLm6XLCGgfFz/R6HCiYw+aItgftswQaZLd+C
	V35FK7yd4p/M5BpyzjmbQAHJ12E2uZ9x1sdoLqFPNAMC2NUjauKwe0KXpI+AHOQH5dOwL5
	pjQ5KOdpLeHybaimAHewWPk+zpANeoptdJOpBE2BP4cIdEPKbm3KdTx2BeiApQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886622;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=N/JLKKvh0Vws8LAckjxDFlMHBvY67bmoGtiS3Kd0OXg=;
	b=G487bKSKNgDN+vIvdaKpw1RyaGCmKnIARXniIvO9xjr8q6MkUf+wFsD6CsiZnHvw5OhLrU
	F2C811Jmhhxqp7vZCftKwGZnLlJWFOswwRc5oPBqTfPx6sczu8N1FTWYoMCmgvSKx6/Ap+
	PHgWdmdCjfoKHKakUZRQoieiMRIZj1P38crO+Ugk5IASZDayfgSjnPu9nM/wltYjfzmOkh
	jFYRRSQ+I/lpcpI1zH5ShWdSxHhlcWKF+wvAa45p0BgNNjj+guUHi+69YXPgSrR+w+8vut
	8L0A6Q8kx5dNGscMrdzQhQy/EfqqTrqFm7vAm2oFBLNoshhyNkdkhGXn+OvTQw==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 5F814FF876;
	Thu, 01 Oct 2026 22:30:22 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Florijan Plohl <florijan.plohl@norik.com>
Cc: upstream@lists.phytec.de
In-Reply-To: <20261001104309.2616488-1-florijan.plohl@norik.com>
References: <20261001104309.2616488-1-florijan.plohl@norik.com>
Subject: Re: [PATCH] ARM: dts: imx6: phycore: Fix pin settings for ADIN1300
 PHY
Message-Id: <179088662237.3013617.1852988161176181544.b4-ty@pengutronix.de>
Date: Thu, 01 Oct 2026 22:30:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_133028_588646_6BA7254A 
X-CRM114-Status: UNSURE (   5.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 01 Oct 2026 12:43:09 +0200, Florijan Plohl wrote:
    > Change drive strength: > - TXC 57 Ohm > - TD0-3 76 Ohm > - TX_CTL 76 Ohm
    > > Remove pull ups from following pins so the won't interfere wit [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-60.59 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.98)[99.89%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: CC5302001BD
X-Stat-Signature: sjsrddi766xxfjkzui7j1y1frcufdupj


On Thu, 01 Oct 2026 12:43:09 +0200, Florijan Plohl wrote:
> Change drive strength:
>  - TXC 		57 Ohm
>  - TD0-3	76 Ohm
>  - TX_CTL	76 Ohm
> 
> Remove pull ups from following pins so the won't interfere with strap
> pin latching of the PHY:
>  - ENET_TX_CLK
>  - RXC
>  - RD0-3
>  - RX_CTL
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: imx6: phycore: Fix pin settings for ADIN1300 PHY
      https://git.pengutronix.de/cgit/barebox/commit/?id=4f8473e272dc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



