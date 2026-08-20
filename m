Delivery-date: Thu, 20 Aug 2026 09:01:10 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwwlx-0058qU-2c
	for lore@lore.pengutronix.de;
	Thu, 20 Aug 2026 09:01:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5E8ED201514
	for <lore@pengutronix.de>; Thu, 20 Aug 2026 09:01:10 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DzI4CI6Y;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TR2yJoUT5lXPGZjFZkWAg3eeWCdQ2Sc34pSi6Bpi/WA=; b=DzI4CI6Ym1cPOJbI/XnhkhmR8B
	amlTo8Cnoz5vVWh9HY1x0mVsSknSI91yDjdkyHfkiawKy3JSYPQ1ehWIi9Mq2nk84pYMotBwO9YSp
	sQr9DdxZ4yw2Tcx/mQ4iqmSmmJu+VO4b/5Dp4T2SqjhFTIaflWVzmrD4uBnKan2YkpybgnO0KuL0m
	GsDO5UN38AEHh371flGQuycKX8wJWSgjcLqUli5naNmQPJCxGFlTh204xyxqmHHCOl1F0wjg0mDZt
	1lOzmS1Q5LyHv4jOttXiXmVxVmyZXkJDuuEBOozZ/eaydjhf56HOI6pGge6tbc5IK9vn2YrCZKCHr
	5iSZfKRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwwka-0000000Azez-0oYI;
	Thu, 20 Aug 2026 06:59:44 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwwkW-0000000Azdr-0PlH
	for barebox@lists.infradead.org;
	Thu, 20 Aug 2026 06:59:42 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 3D001201514;
	Thu, 20 Aug 2026 08:59:37 +0200 (CEST)
Message-ID: <c6e810bb-66fa-4101-af55-3ada942ebe65@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v3 5/8] ARM: layerscape: re-init pbl clocksource
To: "Stefan Kerkmann" <s.kerkmann@pengutronix.de>
In-Reply-To: <20260817-feature-pbl-get-time-ns-v3-5-9874c1438855@pengutronix.de>
References: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
 <20260817-feature-pbl-get-time-ns-v3-5-9874c1438855@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 20 Aug 2026 06:59:36 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_235940_293627_F404B008 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-17 16:01, Stefan Kerkmann wrote: > After setting
    the cntfrq the global PBL clocksource must be > re-initialized to function
    correctly. > > Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutr [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>, Stefan Kerkmann <s.kerkmann@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: hkbg6nmkwusftkyates16h4mp13i8kth
X-Spamd-Result: default: False [-3.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	CC_EXCESS_BASE64(1.50)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 5E8ED201514

On 2026-08-17 16:01, Stefan Kerkmann wrote:
> After setting the cntfrq the global PBL clocksource must be
> re-initialized to function correctly.
>=20
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
>  arch/arm/mach-layerscape/lowlevel-ls1028a.c | 6 +++++-
>  arch/arm/mach-layerscape/lowlevel-ls1046a.c | 5 ++++-
>  2 files changed, 9 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm/mach-layerscape/lowlevel-ls1028a.c b/arch/arm/mach-=
layerscape/lowlevel-ls1028a.c
> index fd013b2b52..ed9284d55a 100644
> --- a/arch/arm/mach-layerscape/lowlevel-ls1028a.c
> +++ b/arch/arm/mach-layerscape/lowlevel-ls1028a.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0+
>  #include <common.h>
>  #include <io.h>
> +#include <asm/hardware/arm_architected_timer.h>
>  #include <asm/syscounter.h>
>  #include <asm/system.h>
>  #include <mach/layerscape/errata.h>
> @@ -35,8 +36,11 @@ static void ls1028a_timer_init(void)
> =20
>  void ls1028a_init_lowlevel(void)
>  {
> +	const uint64_t cntfrq =3D 25000000;
> +
>  	scfg_init(SCFG_ENDIANESS_LITTLE);
> -	set_cntfrq(25000000);
> +	set_cntfrq(cntfrq);
> +	arm_arch_timer_init(cntfrq);
>  	ls1028a_timer_init();
>  	ls1028a_errata();
>  }

I had to squash this patch together with the next two to avoid
intermediate compile breakage. Otherwise we get an undefined reference
to clocksource_hz2mult().

One thing that strikes me here is that first arm_arch_timer_init() is
called and afterwards ls1028a_timer_init(). I have no idea what timer
ls1028a_timer_init() initializes and if that has anything to do with
the architected timer, but if it has the order should likely be the
other way round.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



