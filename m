Delivery-date: Thu, 01 Oct 2026 08:55:42 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCAhi-008LkI-0U
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 08:55:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7E7A42004BB
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 08:55:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=upfkJDAJ;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=IJZgGL9i;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790837741; a=rsa-sha256;
	cv=fail;
	b=Opqgsw3a1uHxOPfQ5fLdvUM4UmSbF8qzLR9r1F++MmA/SSZTVWpZm7fItIV7Zh+ILQbZOG
	TK0yBMyyBX2RmeiTtmlCGInWo1T86xUqKW9q50/XQkatxtoT93m1dhEuHUv4JmQgATD8nO
	aQdhmRG/O9koNGLxL5OaltG/K+Qw/llQ+w6MS5DK3IGnmXVicraJQKYLNLqYO3eM8f6qLV
	ZUdR8GxmwnZFTBspHBfSLCDvH+E3nB104zVq+dxkD+sk8TT6CSpGApCsMWmWwvMVlnJEdD
	E0kmWGdejk57MCfvQFU1MkN62C9vcscS89lCzvQyRT1eIyco42S7i5BNui60iA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=upfkJDAJ;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=IJZgGL9i;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790837741;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=NVnAJA+Q+XohfwwGtqe3ectjK89i90l0Do8VdGEee+U=;
	b=XVijQ6nSSFJ+LmOPFdx5dcgLIOXsOsgI7IoOXiUOnFypNwEqxKZ4y65IrzyhmH9WwI+wNk
	VXLP2NIb/h5KAU5o/C84lFtr5zj5PJCXBe1QRBn7mYDNid1I6reazapfWt9wtynGovHiDQ
	stcYxTIvECguVUexlHSg0D3X8y+/VL1WQEwbN689QBIlK2KUUXuwLsF5gpcEIMo25QSqNc
	ojX6/SGkm/H2AxC2iH79hDAatrWH1oZk+AM90UVeVGKRf02U2TKwzUN9ze7JW/qOHjHWXN
	/bcHksa1PCV2vSIpTBWrsJd6ZG8jshP6OrnwnV95cs3kus0OGfqn+SoMQv/PxQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NVnAJA+Q+XohfwwGtqe3ectjK89i90l0Do8VdGEee+U=; b=upfkJDAJ7MTi2DBG1LQ14fjeTD
	wueNu3HLuuL8gjrckKRTTiqX1LC0ZYbr5dkdFCpdzcf9PRo36jIKI0GlHbBWJjMrevkEA3+Q0H3IK
	DCfICWEDY6Wu1gIqkw2e+FHVTzLLS+pCXIFbxomp8mJKkPVQ0ir+xMXEsblhh6g5ATa3SvkInrvGo
	ZmV2c6pAEipp7D6WADO6HOFzn8rkv4nk/26cG2B5W2IsIvTU1ZDpjWiujQae5i2MzQa7tnwO7i7u0
	BQQsIALFxO80f64KEmnL3pW74uityNDdZxyZsil0KaMycCbS+Gxrth12WMp17sUmCq/JV1sRwXCXm
	HA/gQr4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCAgO-00000007vlV-0gEE;
	Thu, 01 Oct 2026 06:54:20 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCAgK-00000007vkY-2JpH
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 06:54:18 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9D7CE201BC6;
	Thu, 01 Oct 2026 08:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790837654;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NVnAJA+Q+XohfwwGtqe3ectjK89i90l0Do8VdGEee+U=;
	b=IJZgGL9i/Juhvcf6dHO87QCRRuMI6ctqOfw4lJvgmQU4ibYf0PvzR4OYuY7j6/pBMCS0oa
	6PkJZLeVFrAsAvTKgVcugll3s/ErGdlwrgsxL2x0wFFHtr6ALrZmWci+UobpNiHe1US7aB
	IUa+HislBm9wbdIJM8bZXKSyfdaGXZ0BAIv87yeNKQyg8ubppvRUX1eaqjFCgCQ2ddbUzJ
	CwzeoexxKpURza/A9xUfL6h6pynTKTibB3ji/smSDPSFuYDI37HsXvIrvt8g1Uk5istwAF
	IWX67+wZ/leXkIV3Ll9/g0I3IoopC3hfySh4NPf0otfR+XzvJ62tohjW8lfTLw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790837654; a=rsa-sha256;
	cv=none;
	b=Mj+I12nI1ngvCGDS/iwXKXTEiJeCMIGc+uOH5yuZiEMBvyvueHDQRpg8I/OG+mI0OZAvZJ
	sqUwKBGP/vD8STQhvWboCuwG9aYaenqhNIK6z6VefbkUl18ImIxMeoqdQToUp+1dJDV56I
	zqKG+VO6nxLChObotK8Tk+bOOVoVLtMmQBIqBETiwGqVJBdq5N+i4UUYgHTl+GQOJtR6QV
	ksfr+et1sNSdekfLr6nlBxV5H0os6lbOTdkE40aGNFEMp6hmqw1WGyPGE6l4hS1S7TmhbX
	iBGOUvps1RR6H1zKzWcsiFwVZ7hunev7BZ6WJ+rJ4iWh2Lpwrdu8KZ/wbZdRWA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790837654;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NVnAJA+Q+XohfwwGtqe3ectjK89i90l0Do8VdGEee+U=;
	b=TpgWATz1aednRqJxzmKNnESoDhWaKvjbctQhsYR/ShNrSVvJvnCwj70W2lLEhJBnyFc//u
	pu7TpUMsmpr3udAYJO/V6mDYevEqs2mAQ5Y22WcrCn5z0ns0DMfsE8Hx25ntmo5LIjZ2m+
	A9It2dJsoRUSQcEWkT59IyCmdENGzWu+LS0dlwzSjwB8gAk/+Dk+v59iS4/FHbpUEibsq+
	PfezgLuEHMlDw6DkyefBiMLb11f+fEwuOek3h8w965DiKk+GcC3MRHtN6iuzSbOf/Sj3lt
	MZp7m+p1DXQkwqJ4CuuLVg/ItGlzp2DrO2PNqsQnN36vxdIArURYn3fcNZYbRg==
Message-ID: <493e38ef-a168-48fa-974a-25104ce370ef@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] ARM/RISC-V: pbl.lds: drop ALIGN before _text and assert
 entry at start
To: "Sascha Hauer" <s.hauer@pengutronix.de>
In-Reply-To: <20261001065247.152618-1-s.hauer@pengutronix.de>
References: <20261001065247.152618-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 01 Oct 2026 06:54:14 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_235416_979689_C520A49A 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-10-01 08:52, Sascha Hauer wrote: > .image_start and
    ._text only hold the zero-sized __image_start and > _text markers, so the
    location counter is still 0 when it reaches > the ALIGN(4) in fron [...] 
 
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
Cc: Barebox List <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-54.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_MIXED(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 7E7A42004BB
X-Stat-Signature: r9wa9h3zxs84z5on1uqznmdxso43ar1a

On 2026-10-01 08:52, Sascha Hauer wrote:
> .image_start and ._text only hold the zero-sized __image_start and
> _text markers, so the location counter is still 0 when it reaches
> the ALIGN(4) in front of ._text. The ALIGN was only meaningful while
> PRE_IMAGE could place data of arbitrary size there. RISC-V copied the
> sequence from ARM.
>=20
> The PBL must start with its entry code: it is started from its first
> address, the image size is taken as __image_end, and code copying the
> image uses __image_start and _text interchangeably. Assert that
> instead of silently relying on it.
>=20
> Assisted-by: Claude:claude-opus-5-5

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

> ---
>  arch/arm/lib/pbl.lds.S   | 3 ++-
>  arch/riscv/lib/pbl.lds.S | 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
> index c4abfc5989..2c96034c4e 100644
> --- a/arch/arm/lib/pbl.lds.S
> +++ b/arch/arm/lib/pbl.lds.S
> @@ -40,7 +40,6 @@ SECTIONS
> =20
>  	.image_start : { *(.__image_start) }
> =20
> -	. =3D ALIGN(4);
>  	._text : { *(._text) }
>  	.text      :
>  	{
> @@ -152,4 +151,6 @@ SECTIONS
> =20
>  	_barebox_image_size =3D __image_end;
>  	_barebox_pbl_size =3D __bss_start;
> +
> +	ASSERT(_stext =3D=3D __image_start, "PBL entry code must be at the imag=
e start")
>  }
> diff --git a/arch/riscv/lib/pbl.lds.S b/arch/riscv/lib/pbl.lds.S
> index 17cd61ff75..e580ec06f3 100644
> --- a/arch/riscv/lib/pbl.lds.S
> +++ b/arch/riscv/lib/pbl.lds.S
> @@ -14,7 +14,6 @@ SECTIONS
> =20
>  	.image_start : { *(.__image_start) }
> =20
> -	. =3D ALIGN(4);
>  	._text : { *(._text) }
>  	.text      :
>  	{
> @@ -87,4 +86,6 @@ SECTIONS
> =20
>  	_barebox_image_size =3D __image_end;
>  	_barebox_pbl_size =3D __bss_start;
> +
> +	ASSERT(_stext =3D=3D __image_start, "PBL entry code must be at the imag=
e start")
>  }
> --=20
> 2.47.3
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



