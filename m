Delivery-date: Tue, 24 Nov 2026 08:05:27 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xVkak-002iK6-2J
	for lore@lore.pengutronix.de;
	Tue, 24 Nov 2026 08:05:27 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 49271205A10
	for <lore@pengutronix.de>; Tue, 24 Nov 2026 08:05:27 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1FCQS9U6;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=cwNyUCAf;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503927;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=5CUYG6i9SSeqq/16csh1Mmu5iVe3wiGyVnvzhOpNFic=;
	b=E8ijy3HyMLTiwcU5T1KodljeGb/zDkYGCaiq2UJWEtC1uD/l+hj+e8qnX242JPI3CiHDqC
	iXFcq/g7NWgTqpOuzACLB8XgPBAAV8u06YehGgYINXYw52ZRoCK0le3M8tIh/noDE0CUbn
	QREEEaBaQsWVWmc+MOc6rYtyMN4lJpDJkm6cQUm4kGDXXD7IIfp3myVnhjkBifn9Dx3X2X
	Q6Z6/o6CsxFPBtYVDC9tEkxn3P3KVOerfAmZ+YqL14LPDXQvXqfxozexBI7TIAIWWJAYfy
	qlgmvupzmAYRu+1Czn2lJWyBJ7J03/9hguTRaM7AvOurbQPKGz/W/aSiCKWExA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1FCQS9U6;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=cwNyUCAf;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795503927; a=rsa-sha256;
	cv=pass;
	b=ZtYAkODxs4mL0YdueMSVkpIi8umF1/fOZabtnV+8AR2j89OS+B7Oxhkv9dgzqXoKVYfCZr
	XiaJwgDsW46Kwkw1q8Jl8KPvr2mXfkWtrAAAjx/5z0lyauX95YIFY8IsOCLyADUW3PkPUO
	TjeY5cFtKFBGxPqUnH3Kedz5LjNlDXLeyPMiqEFBqDIlwTILE8EnV49Htu24/r2Dg1G1Q/
	xb0khxxxbUz/evYsUqKil9KLJn9Kp4FRn+cfLjWNnbdRINOuCZ82rwQXW//fn5tEQzY7RU
	8hqzr8w0Gpv5mNdjoiP/rgKRaG5dXkDkHiWChNRZxzqd126Mv73JXXwxQrodMA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Cc:To:Subject:
	From:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5CUYG6i9SSeqq/16csh1Mmu5iVe3wiGyVnvzhOpNFic=; b=1FCQS9U6oDati/dRWggpFrlYCF
	XJ3evX86FcUDEdx8sY/ShzrtBTbdNj5y9j4AWJHbWHTzkiyoe8WK/jMUWG7BwAGqyowpsL0N3owDi
	sfxmuuhdurHldzVJsPS3PrYzrbNv1adrkl/yjB5VW2SB1jaP+SZ2hqrEcfalMWKssjAKS7j6eO9TH
	fgLS/MSexNxjDeB63OXvbL9HcrPcY1I/LkhECoN8UEnSVk6l96D+hHtZgJ8GMvPsMn2THs2TPOjkg
	9sslJwLlP1zT22SnxFNHTPKMfuqzNpc6xC3ucwEQ6va0EDwvhQAGW8P62zZQBoMhXNWQFd4rqb0sO
	uD3nlceQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkZn-00000005i6y-36hb;
	Tue, 24 Nov 2026 07:04:27 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkZk-00000005i5s-229c
	for barebox@lists.infradead.org;
	Tue, 24 Nov 2026 07:04:26 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5c0a:3200:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 71B6A205A10;
	Tue, 24 Nov 2026 08:04:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503862;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5CUYG6i9SSeqq/16csh1Mmu5iVe3wiGyVnvzhOpNFic=;
	b=cwNyUCAfquNgWXZgHVVt/L4IrhSxgTA05iE9KCbTs9cCv3ChLcwQlggqPhN0lDRpdMz5WP
	k+up6w/npnWRVSbx/pPCplHW+nv+gnmL1Cyif7HqFQ33MXGHI2Qq6EBZIpgLa7XBhfk1pK
	0hTUH+FQeXp/7s7R9RUEjavR5dzsqz76y0Xu13pSTbh/N7lTbEgkSXfHyRMFsZPap/rD3m
	LPl5apIpF1uKZg5EjSiYeCacabNuEHwY+GPAKAokES0iMpVHR0Kd8RIpy4ahlVCmLlawfU
	VqgsvDE1wMQi7SwT/MSsRGOM/Qcc3t+26woMHB8aX+VNjbGvxycqneZs2yy7Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503862;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5CUYG6i9SSeqq/16csh1Mmu5iVe3wiGyVnvzhOpNFic=;
	b=Vet6Cp2OrUynMnIbERLuu4hSp+ZEi2QbEP6Z3vJoEMMLm1s33+MwI1G1vNwSYh5U4Phq/S
	CWTk6bqlMCDGdXMEW4p+WXpXUFBYq211u/Hd+GEuB7SDJb9cmIXSUgfonAU5U1COs0jy+r
	+3e1l+qZPXZ0dxCugVXVuIkblMjE0Z+cXlPXlaAU/uc0mWz0ExCIj9yO1dL1DxkBiJmrNa
	gKRSRUIEK0AfXBu0EoNJ6l5ehuOsOlVe66dOj8ym8U8uLxb45mAJ6lgMZ2SlYx+LXUfofZ
	K+Odr73ASTtZD+P8g2rJiAKeXFEQq7YtJiX5QyNOGVBRqMZo5JcCbpAzXOqSSA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795503862; a=rsa-sha256;
	cv=none;
	b=M2vlRdyX9l5GlnKi4zskQGJnJtbTMxZIgBoQPZEdnNd6SJ2I/RN8YX9iB4XUI8q3y4tgYb
	iT2aFG43OnZXidqSFYbyae5yvz3iixA6ky9d50baJ3QYfwiMXtLcPZedHh8PyUuNSxOIv1
	9AJEzNKLBPhirl/TANx9Ft1fzWB+3eQX3QemSGd7/KXCbcNySC2vqkCVyNeiJzSkTegi/L
	/Icj1GsgOytkxwF/wc6NxOTy8EYW5s2NsWoaDGXN0u5cuypyE7929VmhXx9p4FPX6OwaOq
	37QCZMtTYpzClyFUif1TWm8ie7Tt7Mw+FiEcmf6QzgYQpubiEQLTOyiLj+VsiQ==
Message-ID: <14eee258-1f49-4983-a47e-09126c10570a@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] fs: fat: fix build of the fuzz test without FS_FAT_LFN
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, "Ahmad Fatoum" <a.fatoum@barebox.org>
In-Reply-To: <20261119084042.2161333-1-a.fatoum@pengutronix.de>
References: <20261119084042.2161333-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Nov 2026 07:04:21 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_230424_693605_474765CA 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-11-19 09:40, Ahmad Fatoum wrote: > From: Ahmad Fatoum
    <a.fatoum@barebox.org> > > The lfname and lfsize members of FILINFO only
   exist with long file name > support, so guarding their use with I [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Stat-Signature: gemorszpddkj4fmeuofzco8spx8c5fpb
X-Spamd-Result: default: False [-58.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 49271205A10

On 2026-11-19 09:40, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <a.fatoum@barebox.org>
>=20
> The lfname and lfsize members of FILINFO only exist with long file name
> support, so guarding their use with IS_ENABLED() isn't enough and the
> build fails with CONFIG_FS_FAT_LFN disabled.
>=20
> Declare the buffer and assign the members in a single #ifdef block, and
> zero-initialize the FILINFO per directory entry rather than memset() it.
>=20
> Fixes: f585092b1737 ("fs: fat: add fuzz test for FAT filesystem")
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  fs/fat/fat.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

Already applied as 78244e2080 ("fs: fat: fix building without CONFIG_FS_FAT=
_LFN")

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



