Delivery-date: Tue, 20 Oct 2026 15:59:34 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJANK-0013HK-0K
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 15:59:34 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 54CC520227A
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 15:59:34 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=29JcQ5BH;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=SAnWmBPV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792504774; a=rsa-sha256;
	cv=pass;
	b=UHRPSnOOIdv80af4fO/wd1TIFBsNWOYjgeWOrbL9iycs8hWQFbLw++vlP12uPZ8TEJML/O
	sSYWNqOxgskSOh0vZIOxD4l4ohtYAUX9XgsA71+DBRP684rDSVQ8yyE42lXg/gy63henu2
	Q+KkBndLPjiac+vvdGKeRj73Jr7Gz/Mnp2/9VJ3yKG5JjFkPZBNgJZ7QQZ3bFxb/1/2lcW
	1KMY+CBlSuVoHtt3djGe2ZcCPBzWJQRJgvG9QxvfNwHIseRBN0/Ies0bIvNHLAt9FvfWwt
	GKzfCFyfCnhBTmCvMAh6fNudLJS9aJ6h7r8S3rzWzwOIJmoDyIFPReJB7DTarQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=29JcQ5BH;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=SAnWmBPV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504774;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=DJ2/CsMOvrfACH8WFlEL5iBYxfwyfAri20Pi0c23jh8=;
	b=A3r3cNLgKApn3XAW7KdY30EysXjCxguOCJxRAyuY9a2xZnHejpqzr8rFdKgksWzqFJ0ETU
	uda1tpWNypXD8yC21koGjX2EXTMEvY6moY5oG2J/kLzCbos04iUjzBv2u+4Z4Enm+nL97P
	9Q2JO14AaN3flT5UG125QFpqUT2xZ4D24HOtzm13Yrjwy5KavtgNp11Dx4uXL/FrIS+mel
	VUXMTvGPQzm6lnJV7WhI37Hq138JSsdiE0UUvFiK2WXltmts1G3pJLfJmJzjrUJH3NHfXG
	ySKfjUDvzlUVyIInSGCH2M3/Y8fpJ5X/ucWAS3GW+bGwWkuoNsSIZBjHRJw2IQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DJ2/CsMOvrfACH8WFlEL5iBYxfwyfAri20Pi0c23jh8=; b=29JcQ5BHrQCEGBrfgDa7wBzDrB
	9Xwv4jYibRkJcogpnyOo/0Lx+pKJiQgMI+2uulqgisVmtmzHGmHFHFfB4yXmN4RnOCi0qThBllEUQ
	MMz5toxdpDh670HVtvKl3da/tThAgH602pR7t6iZ7r91+ZmGZoSYdwgY/bHD4EPjTBrcB4+RGVO9Y
	2SpkUmrYOCd6xOETiDJUh0JCCwviziC+NdrehbzFNqkwP0AiL02ZpfVYZYuntDIVLx4HQYs0Px6+R
	7jzgxgO25GutnXN2RlhKg3g1kAVQMXJH8kQy1KXXCeiSXn0b3GukX56Xoh/n3V0KooJnVokX5zon8
	TSn/ZQ2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAMO-00000009qut-3ScW;
	Tue, 20 Oct 2026 13:58:36 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAMK-00000009qtl-3pUq
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 13:58:35 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4B65D201B9F;
	Tue, 20 Oct 2026 15:58:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504711;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DJ2/CsMOvrfACH8WFlEL5iBYxfwyfAri20Pi0c23jh8=;
	b=SAnWmBPVzT7RBnZ55bupb9Ay2bHWc9yph6Z1HjZ/MugNdJ0zZNidP3fX7beIgMBuyeAlEy
	NDQMJIeKQQRXbv8j8Y2MmeRcHD52WwJqb80HjE97yauPsH8DZ+AESAb2GAmO/m4y5uwz2X
	6gvKjrnaBqUXgTx3nqsLW2+Mmx7iWAUIo3qzLJ5RF8tgWkAyjA+DZVe91aeQpH63qKh3zj
	PVlPYgocX2zsfAowTsIB3nvQktRbUSyyc/YpH+HWW3NrAcE+HCemsDFYpf9wkP+q5Z4oDi
	B4yzJ+6PXmB5jcwt7sgoIMyXP+Lz/g0/CdnoweBGEZkRR5MB6c5tm7ehwT1Waw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792504711; a=rsa-sha256;
	cv=none;
	b=CLXZHQVoLGBqqe+oFSlGSO2CkcpL2dG0sm1osQ+9EVrPpGmsiLC1qxU3q7IjkwyMAOdfG0
	v2huq21DCtO0ZgAVH8GOTFYWPBt9gMbBt4NAPe46kVprwKupL8HhK/tFKz5suMqK6DpQfB
	m65TEvssu40WNfqLkIjTu4rjdQUk0g8viBRcCYnQ76O6/TC8GSyyyhEN1yM405d4aeUVqr
	7YC2AS7USbdcMFL2xlyETAByM4ac5zzEMq4LSQhpf4FjawRtyZPka0gD6IZdwii+kXNJY2
	W/lnJftZnMDCQAcSjzhwx71a7u/lohplgHEirMqjwefUuSYtaDVJ700gpfC44g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504711;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DJ2/CsMOvrfACH8WFlEL5iBYxfwyfAri20Pi0c23jh8=;
	b=Gw8P4tIYssYqNM5rjAm/Fba78hD6qhOqYG3pmAdNoHTkjpg8xjiwlQZ8U0jTQ/8pt6a1B1
	KysQu5oydOydH6lqif72PdmtfiKFg8NlHRIORdGtPt0OY5TF7EwEzra4XUIM+ZjF10CKGx
	O31OuQywkWetRlFm0nzAwluy17Epyv3rsL6MDcsQL28vpGlvGDVQxDZf1cG7YpZ/mmdeBW
	mSF+RRrQdfFMeSbcW6wY3aPCmcmOZihSCkwBimTexttAusma68Ox06JsB98ILa4C5WU7Wf
	tjjiY7Pd7fzfvfdeEq4qRhDqm5+32hU0N57K9AoyQrnazxriR7RSt8B/e9r1vQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 3C65DFFA47;
	Tue, 20 Oct 2026 15:58:31 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261015141050.1329095-1-a.fatoum@pengutronix.de>
References: <20261015141050.1329095-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] ubootvar: reject copies too small for their header
Message-Id: <179250471124.2719553.6829430633953292111.b4-ty@pengutronix.de>
Date: Tue, 20 Oct 2026 15:58:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_065833_797576_35FFE8F5 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 15 Oct 2026 16:10:49 +0200, Ahmad Fatoum wrote: >
    Probe subtracts the size of the CRC and flag header from the size of > each
    copy unchecked. For a partition smaller than that, the size wraps [...] 
 
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
X-Rspamd-Queue-Id: 54CC520227A
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.98%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: hbigo9czux5gxpcue8cqideac8bnrpqo


On Thu, 15 Oct 2026 16:10:49 +0200, Ahmad Fatoum wrote:
> Probe subtracts the size of the CRC and flag header from the size of
> each copy unchecked. For a partition smaller than that, the size wraps
> around and the CRC is computed over most of the address space.
> 
> Let's fail probe with -EINVAL for such a copy instead.
> 
> 
> [...]

Applied, thanks!

[1/1] ubootvar: reject copies too small for their header
      https://git.pengutronix.de/cgit/barebox/commit/?id=b6729fe4930d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



