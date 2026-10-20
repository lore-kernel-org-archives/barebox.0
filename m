Delivery-date: Tue, 20 Oct 2026 11:06:11 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJ5nP-000y2P-0A
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 11:06:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3B8FE201EC5
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 11:06:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4CwReQU8;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=UFrXlqZC;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792487171; a=rsa-sha256;
	cv=fail;
	b=E+sJv+BamMD81Un4WHbULtJOyXgVL47TmpHHWZW8VnZohHuYtZaBiD0Jiwv2OvdnXhLQkT
	tp5JKebwLASYZR1M7lOkorjh2qFhIwmYg8fsbTNVOEAcGBcyLGF0KKiwUgWkmlNiIQDbcS
	A0dTQZYQWuiW8+bvZ/QCo1RMAZpFwBwp5ZHB0Xos6C8KefFxK5e3BRoDdqjRd4BpX5l+h7
	/zeOZXC3QNcML5X8tyjVl28gltl2JF8/K2If20+rMW4G0lZkKdjaKNnvJlrlc5y1vYlFNk
	PFCev5M5uc7TqzNShKet0Rz4A98azdn1XidO3ZuIh03gJ7TvIu5D/niz8Bx7iQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4CwReQU8;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=UFrXlqZC;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792487171;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Z7LMje23BVMyevVlzV0Y1Y/NMdVtGTJ4buF7K4jklWo=;
	b=PFOhV0ivtbcdYnTDhHvBqrrJDCU1K41JAy6fYhfe7mklPnIjlwdMiQoaHwwWVaxxe8cwyC
	HHf4yDa3Vc6FemnNTlMKuBhnbArc+gcJkzBO5KaFnr9h1Lfkl0j4x36k9CQdD/PtQ2+Hh/
	Bn3Nz1EBgrJdiuOsSPJEoa1WTc0R/owk9mpV0R4OW1ZvmnztvwuY1oRUqXwGmeCmwHxbpJ
	5aGWnBhEFyuUPumNQm3UXDvkeqqZ2nwf3ihHEKmza+LcP/sozFX1asMxyqVc6C3NGNTdos
	MaKlsw3egaH+PvJKUFr+Hh5Y9NoFcpvaZt+aFXBMf2Wkwe/BsdVT2G8ySuJ5jw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z7LMje23BVMyevVlzV0Y1Y/NMdVtGTJ4buF7K4jklWo=; b=4CwReQU8nkPBnF1h9CvdDynP3c
	1M8pgFLEFRI4unxzbNslJ5dzaJjqNc5u76a4s/BvQjq6L3JT84ZCF1ykOV6UmA0dv1hGeejd5UpTB
	dmGPQZUAKvQxIejd6midgcM+pp2x7Z/E3L/xUvH0CAEBTn5IxlL1KKzgt+dvgv0kehNL/7KhzDWho
	zKsZ3FEaq2sXHFQAHPEvQ9nHTy8TC7mwnT1SfaJ/GT5UTqV2E9/eiUJQZfza+DZXmwE3D2fEpWrZ4
	/aDp1RrJogmMghh02G0iNqXD9+rQ+P9hnFVbbVElxkOwe0p1L/+pUYOh4H3Bjkw8W95ksMgDuRGr0
	SsRUmFkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ5mz-00000009G2f-2hjT;
	Tue, 20 Oct 2026 09:05:45 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ5mv-00000009G27-1FQ9
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 09:05:44 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 59EBA201EF3;
	Tue, 20 Oct 2026 11:05:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792487139;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Z7LMje23BVMyevVlzV0Y1Y/NMdVtGTJ4buF7K4jklWo=;
	b=UFrXlqZCW6W7fp8c26FbBOhHJsAK0T9msVKs9EEm9RpqatmEttNyOkPub9j5/aoD4/EGnV
	W0xh5affXPg8yrPpI+XzYwIICyTDvTLWG7yG6S9YXQCqeUjOodpqXhdI3qAAts/rjSPXpq
	g2d5umLY2gQjAPhwb5gQ45tXjNcgnjmkBUC2OSMJX4MaOtFtffsb3L7vOcbvgWX9IcKmUX
	3EhwDCkNiFmyqg1dl7O8q7GYHGaSmv7fNbklGJKgAyIrqSaFEmJPz4mL9mSk1h9RzCS/E4
	GyI/sxgE+YYFwiD37qGmxpQBFM1ZDF00ngYGHuryDFu72L1LfqGBSSxt4RSD7A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792487139; a=rsa-sha256;
	cv=none;
	b=cx7cA7hCTBo9qPEnU6kMs+wj3s+1s6nn6iAJU4Ycu0nP2Nr8a4gZA8HegXOyjfS8wtimPm
	yh1haHAbPMYS6pnPKJPNhOpTMsF1zVB48PyxpnZqCFJ9D7AE39T5HeVMlHirnPGtHKZpgH
	IvYLzyoE583KZ6gCVD3xS+X84hRAcBOIP6y3d8ZUvSj/rqOCZh46ghhUYCr9F6bt4gXOuX
	tqY1ReLwba7O0kWcplMePJHwlNwXVIeG2TZUsjdA4jSC1xVLLpiTjryYpbshmIpEEDeHmC
	sVMzvclgxxKaPEFVGeyRM5wemZ/4UUzXm9i/3Kc9qm6V2GEzTwxbaxcyQWFB9w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792487139;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Z7LMje23BVMyevVlzV0Y1Y/NMdVtGTJ4buF7K4jklWo=;
	b=XVGcT0dCgZweAfr+1V2WXZrKZJo1eRUUtYVe6Ce2ZkKX0prSw24ktmgivkU0elv4CmWd/H
	6xI0z+0ZHiummBDDXUgU2vm1mbUc6b3hdpnPS2soq9Bg7Zll3Ej6JGxJ61EpyllXXo4Yu/
	AjoLnfmLJkwb4XrYpdHK3YJluBgDMmB3MAolsfarb+PXOxzN8mHLZdYnoSvIE6QySV9/I8
	0g77/tmZJMbosu6/kKYzI35nkKLH8lx/iYZ+q3/8/2q/RiZmNP92jR1F/Avh/yFRYP4JUW
	KxB2eLj5ktcjTDKNeus3ICMYUWT1Y2wwQyhDBb0cvZ5cHHHlvevzTvU4RjD2vw==
Message-ID: <32955f6f-8cde-4bd6-a04e-7df94443262a@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] fixup! mtd: spi-nor: enable module in PBL
To: "Sascha Hauer" <s.hauer@pengutronix.de>
In-Reply-To: <20261020073955.3715289-1-s.hauer@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-2-f8fb2d2819da@pengutronix.de>
 <20261020073955.3715289-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Oct 2026 09:05:38 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_020542_513798_24D8B86E 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-10-20 09:39, Sascha Hauer wrote: > Building spi-nor.c
    for PBL breaks the sandbox build: the PBL only > provides get_time_ns() and
    is_timeout() with CONFIG_PBL_CLOCKSOURCE, > which sandbox only [...] 
 
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 3B8FE201EC5
X-Spamd-Result: default: False [-54.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_MIXED(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 5dxt1rzj5qxc1aa3ptsg74sohj9484bc

On 2026-10-20 09:39, Sascha Hauer wrote:
> Building spi-nor.c for PBL breaks the sandbox build: the PBL only
> provides get_time_ns() and is_timeout() with CONFIG_PBL_CLOCKSOURCE,
> which sandbox only selects with COMPILE_TEST, and sandbox links the PBL
> objects with --whole-archive:
>=20
>   undefined reference to `get_time_ns'
>   undefined reference to `is_timeout'
>=20
> Use the read_poll_get_time_ns()/read_poll_is_timeout() wrappers from
> <linux/iopoll.h>, which fall back to polling without timeout when there
> is no PBL clocksource, like read_poll_timeout() already does.
>=20

I decided for another approach: Add a dedicated config option CONFIG_MTD_SP=
I_NOR_PBL
which has to be selected when SPI NOR is used by the xloader.

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



