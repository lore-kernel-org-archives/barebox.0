Delivery-date: Tue, 24 Nov 2026 08:03:23 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xVkYk-002iId-2W
	for lore@lore.pengutronix.de;
	Tue, 24 Nov 2026 08:03:23 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 574C2205A12
	for <lore@pengutronix.de>; Tue, 24 Nov 2026 08:03:23 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=PnxupxOv;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="GGPs+vL/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503803;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=kSZ1xVsP8J5LE3tJYclxPnlc7jkwusQEYL4sSSHMyhY=;
	b=KzZvK+c8fVZ7WcGyb8ITx/PBy5qKgfMkJsjMEFw7TyHEidCe4rt9o+Qx5Tsmzv1ohEicYk
	FlQvzSAigiGbHjSXWLYBWnV5LSIiMNJjciGeKa8A5uOTdT9fk/mztI6VsSzW6AZJUk9b/3
	TRlJ+W3dU4Tg6VZeUJrlGl3yOSl9qDMNFnMIjA9t9QOGu3x2q0GEuOqyEPoyKBNVz9+L4g
	6YdOWvhmSsvUVZPfTOHPq67/ZG0S+UHpUl9kKY1MvA6CAnTszo45Ve0xtvmWUta3xZiitQ
	D/SPf+4uijZDRXNH0XvVRk47sh59fnyVEeORAsOS33PvgShIae41UVf+I+nZSQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=PnxupxOv;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="GGPs+vL/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795503803; a=rsa-sha256;
	cv=pass;
	b=ba2aogY7N6vM7bOVcEMpJkAn55YUM0BWoc1RPLc8OETwfzs+GmFT2Y+OliaPrFn8IJC/qL
	6dk3g7q5xE+SG9OWPM74U0zg2NQZfvApyxtL5MrHULANorxNCs2Scrnq3BBD1TGDujSozG
	qgI8OOI7E6c6FEp2pzMwbibDp7qj0o31JKah4iMNnORZuLHg8Z22olZ7QBBd8Mh+gVajAc
	rxiz0ophEdLAWcekYUFiMxDhcX0XjrSeVvXGLflHnKO58f4ZsptaS/MUFjxh5jYvYCqbiT
	BcfZJjwtK4g8MWLVydjGa2frTf36bvVXof4vWNGYLXp3S7fVLnN/5waGDpKbZg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=kSZ1xVsP8J5LE3tJYclxPnlc7jkwusQEYL4sSSHMyhY=; b=PnxupxOv5fMHQG
	pgc+k5RNrNS1MpsPbkbPY//2CbKzk5UNWfoE357J5WJQkyZPZk0Dg5HqYZpiVG7OpBVe/5+FcjvYO
	bn7vw0v/64uNx3Ld/SmseR9guhmTsr+MzBFrMD7mOVvEK/deEDgfCABxqGiTOAc+rxsWv0cWrWle+
	1hfeTGAnhjFDrkIQroJ5O2gXteKIWmJBtezoYy22OL0PuQYW3QdeaFitNgqDE/37deMLpY64kwS+6
	fr0bUlTUzCKPd6pSlAnHS2tw3Lu+XL3zJd4CQVAb8bVN+A3PY4OeZ+r69QEllJz11L0TKWla+zqtV
	cy7KtfE8RHzXiS4yMIug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkXp-00000005hq2-3Z99;
	Tue, 24 Nov 2026 07:02:25 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkXl-00000005hpU-23fC
	for barebox@lists.infradead.org;
	Tue, 24 Nov 2026 07:02:24 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A10B4205A1F;
	Tue, 24 Nov 2026 08:02:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503739;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kSZ1xVsP8J5LE3tJYclxPnlc7jkwusQEYL4sSSHMyhY=;
	b=GGPs+vL/AhhAyHI+7aBCCrkUMZO4v+JpDjeKYIZPMIJl3fL8JP+PZQtfiDMfG7eKgStqau
	dE2C0Bt/Kf9pxnnEUpMirl0RhqvYVu1qii7fN4cYGuSv8EEzsMXC6Oc890tGMrNq3t6XPx
	/cpc8RPcvS0P8W9QmndGIiu+QSgb6FHNmjnUl0lYcK2eRvtkAjRzDyM0bNnveg0q6Nsb2T
	lxsXq703h/ozkXaIwv5m78gs+BBgL6D1gxKNy0fZe3u39QY+fwKsz3Pez4tzPk2DZUs5Pq
	AevmqeygJ7+M3uYnPncsb77b/IgmikLeE1hO4kYodHelFYetEa6872pwTx1uzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503739;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kSZ1xVsP8J5LE3tJYclxPnlc7jkwusQEYL4sSSHMyhY=;
	b=DzVEdz8D6W/mJkKv7sqEpS23e17nSFzmpOBrUemNgGeRNbxXAM2R8CSs8mKIkVfYdlZ4GB
	HyHziVgnptStGMmJLN2RqPMQg7itTf4XftVG0pr5n2as6/YPSwnYCyKpOgepouJu+wYtjL
	xQzYr9ALbtCFjCsNR/RippUouI0IjJeu5bHUgNg+F6jpSFAhHJ2DMnIQuHyv8mbFgz6jLf
	PjoNWnwVMLWju+sc8Atu/+KW4k91oC/kF6Y9zVpqK7Fw9za54BcsyjQN1cJp1zhCBq1tPp
	QlYoXCCqImduN2BTx4aDFm0o34sQweb4FwjLiI8WzXu5S6ouWNRAGTGnUrzSnQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795503739; a=rsa-sha256;
	cv=none;
	b=TrjoF/XXQ/4uA01ZccOXIQ5TMRoWx04ZKJkhTzBLSdi44yTOtUbxSUWtGLmwtLJRobQP81
	/fqYJcA2sBS3AV5I2MAMmqx8jA4NojIm8GpeL6guXAxMZhKO88+DYqPx4XC6PJhWPn4RGD
	jo3YPXwgH8IjkJDTWgi+LOXFsO49+hPTex3ZBm403+LuSmZJ520s3847e29mLSZz4RjqHV
	LKjagnWu1NXOgCsgdxubjZiKVhLw2tILIjffdDolVvY6pzm3tJpL381eawC2DkV0uD+7y3
	qAdCluONnmbe39iIWR0qHrVN4eA2mZZJVaK5DUg7crHSXbWHy7VaDNW0jNAf5A==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 91742FF9E6;
	Tue, 24 Nov 2026 08:02:19 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20261118145051.306697-1-eagle.alexander923@gmail.com>
References: <20261118145051.306697-1-eagle.alexander923@gmail.com>
Subject: Re: [PATCH] mfd: rk808: Add support for rk806 on i2c bus
Message-Id: <179550373959.373753.14409268403891374146.b4-ty@pengutronix.de>
Date: Tue, 24 Nov 2026 08:02:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_230223_582640_138E70B5 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 18 Nov 2026 17:50:51 +0300, Alexander Shiyan wrote:
    > Some boards connects the rk806 PMIC on an i2c bus. > Lets add support for
    these boards. > > Applied, thanks! [1/1] mfd: rk808: Add support for rk806
    on i2c bus https://git.pengutronix.de/cgit/barebox/commit/?id=dca6ceb2878c
    (link may not be stable) 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
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
X-Stat-Signature: 8z8z3hbzmthxqhcby33ium18gen1h5k8
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[lists.infradead.org,gmail.com];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 574C2205A12


On Wed, 18 Nov 2026 17:50:51 +0300, Alexander Shiyan wrote:
> Some boards connects the rk806 PMIC on an i2c bus.
> Lets add support for these boards.
> 
> 

Applied, thanks!

[1/1] mfd: rk808: Add support for rk806 on i2c bus
      https://git.pengutronix.de/cgit/barebox/commit/?id=dca6ceb2878c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



