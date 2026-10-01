Delivery-date: Thu, 01 Oct 2026 09:40:49 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCBPN-008MWd-0X
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 09:40:49 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9A799202013
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 09:40:48 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2yeJaYPU;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NucZng2j;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790840448; a=rsa-sha256;
	cv=pass;
	b=SYgQ71VDIRwZQjFRbod0pTz8/7DkK1OagclWLInFPLRzNnoYu2Dj6ICbtF+Y7+mKExpqrn
	a7nnShPGewBJRMWQl9Z7ExdL9ETmI5n9hXBlMX4OtV0/zfbp1ahC3IPvrPde83qmusX0An
	7MUKVARFPiU7HX8NBPDhdqY9LYgX7TTrxyXLestAeC9ETwMXCN9dFuyfTpjoOPDLfsyzyh
	Z0xXH6sEk2bZUuaKBGA2uvYuiQSAxwWWlWM2XSEO59lwaakvirPTZNjNs4oYuaBwPmAUfL
	uZggeRBxrjQ0HIc5z/29BQYzzmKhO7EhuGGQ+xv8/XvLMjSgIIyobvdNp3j6XA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2yeJaYPU;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NucZng2j;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790840448;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=ASNTRduyrCgDbajHtmElBcyNSi3tSsE+6mg1nUDnVOs=;
	b=X8/LyD1Riley3XdwXgZul+8cHEC3m6XUot7TeZkfAMh4JaMeHEj4p1TLI2cd8a0fcTUoz4
	mlxM4e4UVXYz4zu9YvMW7UDBvpXYrPE1prXGwGtr30WksqiQ2kTEH3kBMe3SfwDXBP8oup
	rsQeYA9UX1CIJHa3y/VlT49BfUX0eqARiR6fhFwts90qDaXVYrccLqQmgGc9k6sVcPy+v1
	NBogjN6Pa4HgRoNmKvo6DAlO0a8EjZyNkpdJa83SyusIQlW04Nbb3mUnKkqx+uE/Ewn5q1
	bPyUWa2u/XskK/lSpmVxN+/kT1USllj3sBpE+ELDx+J4VKTVMlR2Bw2kHYYAbA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ASNTRduyrCgDbajHtmElBcyNSi3tSsE+6mg1nUDnVOs=; b=2yeJaYPULtGmNnb274aeS/hWOI
	VWshVYgKSpf2yVOHOgyxMbTBYtZTk7qL0bhzxmnqmnaIzAgZ0RTCRxikJgGJiMLPAH6TXoHGbc7Fk
	RNsprjRA3KekondszoJy3i8OzoLWm0f0Qa05jfpPjAlsDj2zjFIOh9I6GwGD8/MV8XVNoihMLerHP
	Wv5ps+0EEdWARGHZQev8cRit2l6UjM5hH2oxWyejUBvCO3syRCWPB0C3NWRuR8gXXrYra+YxasyP1
	7hRWaTYOegBgVa8r3lTuUotQqVriCqB9EMWRWNrgkpzjD/oOhhjQLIoQYuZNW4TEysl0lPSuppkMc
	Y/WsF7DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBO6-000000081cT-0AHD;
	Thu, 01 Oct 2026 07:39:30 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBO2-000000081c4-3P9a
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 07:39:28 +0000
Received: from ptx.office.stw.pengutronix.de (ptx.office.stw.4.pengutronix.de [10.9.0.3])
	(Authenticated sender: relay-from-ptx.office.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5B773201547;
	Thu, 01 Oct 2026 09:39:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790840363;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ASNTRduyrCgDbajHtmElBcyNSi3tSsE+6mg1nUDnVOs=;
	b=NucZng2j/sXPI4sCjBEjtoBpkqUl1Ft0tpqUUOIAi2DmBFmaESKNYzl+sStCtU/7xxahsN
	oL2U724P6095UR+i0Ruv7utBzQr8B0q/YEaP7/sR1nMdu7bUahm+r9POF23zAf284zjbCL
	LxAQAO/putk/fTZheyeMAFrucARwo/BuaOendeSw51gY5tgucsI91ie7lAgiF0Bv1s00ND
	c5/QsvMl7+ZgD0/y7oKRm0KhnOhpeQPGUibC60n3jJp9Z5uvFpEqlJS1p2N+ZETUyfq3tC
	l1s9cgUO295/QkOqIDibaU7/Q6RDZGtBf5TTQMWOSUIx1G4y9RzrtVbLQBkoKA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790840363; a=rsa-sha256;
	cv=none;
	b=efvw3rXpttpXffiZvCEg2z6KDxn1LWZhi06zswXOvjpb85b9pIh83FLvDlNf7qRYO2xOXF
	HMHKIFZiRqDiWuHtkGurdgh8bO1uzDaMs47UdcBLIDPTGYiBccxbr7+qkH+pzVVWS8dIu/
	zb+GmCbb1Xri+O98XAVX5tU96x4uLlcg+Czm/xc02qW8YJ+Tlf8PC8c5cWGKLmr3A1jEJz
	r+ltIKUUbUbElvbDTR0+w1cBwb6E+WqOIGJHjIsRpWB4cq3kliCMaxq8He6Bh2T5Ib0mrB
	rr566nUT4C815Vjho3FKUEvmv4NM1soT7vHZmEbHEFq/ig+piHcdCwNE9lw1gQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-ptx.office.stw.pengutronix.de smtp.mailfrom=mfe@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790840363;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ASNTRduyrCgDbajHtmElBcyNSi3tSsE+6mg1nUDnVOs=;
	b=grltm7Y7mYxrDvH1HtwajAiSMKT2VmL+zPFV4S9Ier7gFCNdh0AElj70uQk1fdNZTyNe7z
	XkHFrRhWX07MbY/AMCVYC4YL+u28WOgn6+rS8j4Ut57yvncqpVAJ0AD3Zwwjd5rXVMELYb
	Ji/5AMRyTYzl/7l+HQ45DeEQqJpucWqoeEozqoT7Z7Aqdsnmm6wYs70oUR0fo+WaBiO4iW
	ZeFHKTTHcDTERREhlChiDQ0rqU1sxWpQqmO5FunlzYPL8E8hQUjpT+1qYh/OI0UAhFgpxI
	xOazCdDBvva+UqmyKjWDU7zeRKSN269L/WnNj4EaZIcGj0U+XS53yrtv8kE0yQ==
Received: by ptx.office.stw.pengutronix.de (Postfix, from userid 1064)
	id 423711BFBED; Thu, 01 Oct 2026 09:39:23 +0200 (CEST)
Date: Thu, 1 Oct 2026 09:39:23 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Subject: Re: [PATCH] ARM/RISC-V: pbl.lds: drop ALIGN before _text and assert
 entry at start
Message-ID: <uh3vv4l2ks7s2fxv4vzpdki6fjryjsqk7wl7sdakqkgo6xuib6@2kx3lf5cde7j>
References: <20261001065247.152618-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20261001065247.152618-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_003927_026631_825AA527 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Sascha, On 26-10-01 08:52, Sascha Hauer wrote: > .image_start
    and ._text only hold the zero-sized __image_start and > _text markers, so
    the location counter is still 0 when it reaches > the ALIGN(4) in front [...]
    
 
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
X-Spamd-Result: default: False [-59.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 9A799202013
X-Stat-Signature: u1qdy9p3iy6iigp46pjumu56ck8c67mo

Hi Sascha,

On 26-10-01 08:52, Sascha Hauer wrote:
> .image_start and ._text only hold the zero-sized __image_start and
> _text markers, so the location counter is still 0 when it reaches
> the ALIGN(4) in front of ._text. The ALIGN was only meaningful while
> PRE_IMAGE could place data of arbitrary size there. RISC-V copied the
> sequence from ARM.
> 
> The PBL must start with its entry code: it is started from its first
> address, the image size is taken as __image_end, and code copying the
> image uses __image_start and _text interchangeably. Assert that
> instead of silently relying on it.
> 
> Assisted-by: Claude:claude-opus-5-5

The change is fine, but you missed your s-o-b.

Regards,
  Marco

> ---
>  arch/arm/lib/pbl.lds.S   | 3 ++-
>  arch/riscv/lib/pbl.lds.S | 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
> index c4abfc5989..2c96034c4e 100644
> --- a/arch/arm/lib/pbl.lds.S
> +++ b/arch/arm/lib/pbl.lds.S
> @@ -40,7 +40,6 @@ SECTIONS
>  
>  	.image_start : { *(.__image_start) }
>  
> -	. = ALIGN(4);
>  	._text : { *(._text) }
>  	.text      :
>  	{
> @@ -152,4 +151,6 @@ SECTIONS
>  
>  	_barebox_image_size = __image_end;
>  	_barebox_pbl_size = __bss_start;
> +
> +	ASSERT(_stext == __image_start, "PBL entry code must be at the image start")
>  }
> diff --git a/arch/riscv/lib/pbl.lds.S b/arch/riscv/lib/pbl.lds.S
> index 17cd61ff75..e580ec06f3 100644
> --- a/arch/riscv/lib/pbl.lds.S
> +++ b/arch/riscv/lib/pbl.lds.S
> @@ -14,7 +14,6 @@ SECTIONS
>  
>  	.image_start : { *(.__image_start) }
>  
> -	. = ALIGN(4);
>  	._text : { *(._text) }
>  	.text      :
>  	{
> @@ -87,4 +86,6 @@ SECTIONS
>  
>  	_barebox_image_size = __image_end;
>  	_barebox_pbl_size = __bss_start;
> +
> +	ASSERT(_stext == __image_start, "PBL entry code must be at the image start")
>  }
> -- 
> 2.47.3
> 
> 


