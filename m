Delivery-date: Mon, 17 Aug 2026 09:53:22 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvs9o-0043VY-26
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 09:53:22 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D96A520075B
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 09:53:20 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=m799wQy+;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=A+XtCxrr;
	dkim=fail ("headers rsa verify failed") header.d=ku-gbr.de header.s=x header.b="p raWTrN";
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=xhEsMiGv6UFCnrdNh4iv4K80pcAl53C2f8nqrCeZiso=; b=m799wQy+s5QfKPDGET3736Sgyy
	6OQkg9t32psoFBVEdzmp9QBVY4sTud/oZzEfoUFc+bFB+tHc9DnS1zTOIwVld1UGpsByOuOe4U7Xv
	bN/YEH32J8flTs750t0f9vKk+RAK5Ptrl8DjODC4Lq7N1yzRTYr+Kp2CPYa25nXueanYp2loE/73/
	xFmpPZOI6WAomaWKSgNt9YN0umwdfKLtPwDeeXt6QdKsTJ6X35c/VVDFXmLgXIC/pc08Cc76cDT8H
	e3ZrrQVhabjoYN0HICpvw+r9B++EoOEOhhV0KzmBEWYCO0xyCcQtXBlgJ2yqwdkB1xNJOAdakn2Sk
	fq52uJ6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvs8b-00000005bNz-3JsX;
	Mon, 17 Aug 2026 07:52:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvs8a-00000005bNC-1Jkm
	for barebox@bombadil.infradead.org;
	Mon, 17 Aug 2026 07:52:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Message-ID:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:Sender:
	Reply-To:MIME-Version:Content-ID:Content-Description:References;
	bh=xhEsMiGv6UFCnrdNh4iv4K80pcAl53C2f8nqrCeZiso=; b=A+XtCxrrdLo8dYUZXlO89+qwYM
	X4yBpVzdz3LEmZaOimEqoeOJ0nXM67gGJhWzGB5Ufhn1DuW7x8qPMIVKWwyhcgj2dWpBg7pneSCIZ
	1CPTt6i2gQfxo1tKxdvXGPM4+xYJu//Cs5NCtC5jJqKnnhK82mil5+jMFrOWbpW7uGUnS/aQaQZpc
	7aXCe+IS+SKyvkYkkai4cJELDwJW759bXd3Sh35A6HjNqc1E/ba5ZhdlsX24BfRkUZzCedAAfZXyG
	p8Ny3Aeqhf0AEK17ecsJvauFLqKoO3Nghq0ZuvXC3jmmsUND1naVOe3rqbTI2ix/gTgbFG6egEBBo
	VPEJgzWQ==;
Received: from mail.ku-gbr.de ([2a02:790:4:9::dead])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wvs8V-00000000asf-3HbC
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 07:52:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=ku-gbr.de;
	s=x; h=Message-ID:Date:Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:
	To:Subject:From:Sender:Reply-To:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
	List-Owner:List-Archive; bh=xhEsMiGv6UFCnrdNh4iv4K80pcAl53C2f8nqrCeZiso=; b=p
	raWTrNhOOG4kjvs3XH/9oNIxkzMmkP0wck/q8MGE0kwm0edHNZIFHGG2kc2tuIk/QYdmRL9kW5zs1
	JtRCStoL7u9bNhhTSZZNmkN1KO+LXrL7eOMGrf0n6IJY/OVbtO0lobs68nNYmYRpz/CFh+WTqasa9
	bS6rn/vTkhEUR59mhOhBErLD/nT41rCXCR+qQ8V202y7ZeHuOQwgiELd3TObT1zoweLymqH2NhnGz
	cIAoEh3F8KBQiRQ0H4Aqy7D9kCzxYoq+g6AV6evkglJyiV1Yeu9yqM8Vx04U479lfmk1TcC8HUUE9
	mGlJiSDfH0pwUfYVJ3zA7QxiN2VzNouHA==;
Received: from [2a02:560:5d1c:bd00:9ebf:dff:fe00:fdb5] (port=46830 helo=[127.0.0.1])
	by mail.ku-gbr.de with esmtpsa (Exim 4.96 #2 (Debian))
	id 1wvs81-00GOzc-1k;
	Mon, 17 Aug 2026 09:51:29 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v4 01/14] ARM: mvebu: add Netgear RN102 support
To: "Luca Lauro via B4 Relay" <devnull+famlauro93l.gmail.com@kernel.org>
In-Reply-To: <20260813-rn102-rn104-series-v4-1-f932ac63efa0@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 17 Aug 2026 07:51:28 +0000
Message-ID: <E1wvs81-00GOzc-1k@pengutronix.de>
X-ACL-Warn: Adding Message-ID header because it is missing!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_085200_100235_6B69F4DE 
X-CRM114-Status: GOOD (  23.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-13 17:26, Luca Lauro via B4 Relay wrote: > + filetype_kwbimage_v1);
    > + > + return 0; > +} > + > +static const struct of_device_id rn102_of_match[]
    = { > + { .compatible = "netgear,rn102" } [...] 
 
 Content analysis details:   (0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>, ukleinek@kernel.org, Luca Lauro <famlauro93l@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 5nbqumiz8sin4jfnyyzxwcmo1u5yszks
X-Spamd-Result: default: False [-2.61 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	CC_EXCESS_BASE64(1.50)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+famlauro93l.gmail.com@kernel.org,m:barebox@lists.infradead.org,m:ukleinek@kernel.org,m:famlauro93l@gmail.com,m:devnull@kernel.org,s:lore@pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630,ku-gbr.de:s=x];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,ku-gbr.de:-];
	TAGGED_RCPT(0.00)[famlauro93l.gmail.com];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: D96A520075B

On 2026-08-13 17:26, Luca Lauro via B4 Relay wrote:
> +					 filetype_kwbimage_v1);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id rn102_of_match[] =3D {
> +	{ .compatible =3D "netgear,rn102" },

How is the driver probed? The string "netgear,rn102" is in no dts.
Unless I am missing something this should be "netgear,readynas-102".

Same for the rn104 patch.

> +/*
> + * NOTE:
> + * armada_370_xp_barebox_entry() cannot be used here because the
> + * upstream SDRAM size detection for Armada 370-XP misinterprets
> + * the DDR_SIZE_CSn registers on this board and reports an incorrect
> + * memory size (256MB instead of 512MB on RN102).
> + *
> + * Until the generic detection code is fixed, we compute the SDRAM
> + * size manually using the DDR_SIZE_CSn values.
> + */
> +static unsigned long armada_370_xp_memory_find(void)
> +{
> +	unsigned long mem_size =3D 0;
> +
> +	for (int cs =3D 0; cs < 4; cs++) {
> +		u32 ctrl =3D readl(ARMADA_370_XP_SDRAM_BASE + DDR_SIZE_CSn(cs));
> +
> +		/* Skip non-enabled CS */
> +		if ((ctrl & DDR_SIZE_ENABLED) !=3D DDR_SIZE_ENABLED)
> +			continue;
> +
> +		mem_size +=3D (ctrl | ~DDR_SIZE_MASK) + 1;
> +	}
> +
> +	return mem_size;
> +}

The only difference I can spot here between this function and the
existing variant in arch/arm/mach-mvebu/common.c is:

#define  DDR_SIZE_MASK                       0xff000000

whereas the common.c variant uses:

#define ARMADA_370_XP_DDR_SIZE_MASK     0xffff0000

The latter goes down to this:

> commit 7351b6b5c59c7a280787998006f39a5cd3a2f18b
> Author: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> Date:   Tue Jun 13 00:37:49 2017 +0200
>
>     ARM: mvebu: fix size mask for RAM window
>   =20
>     The size field in the window control register occupies bits 31:16. So
>     adapt ARMADA_370_XP_DDR_SIZE_MASK accordingly. This fixes detection of
>     RAM chips smaller than 32 MiB and so probably doesn't affect any
>     supported machine.
>   =20
>     Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
>     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>
> diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
> index 06bfb72615..fa971da11e 100644
> --- a/arch/arm/mach-mvebu/common.c
> +++ b/arch/arm/mach-mvebu/common.c
> @@ -47,7 +47,7 @@
>  #define ARMADA_370_XP_SDRAM_BASE       (IOMEM(MVEBU_REMAP_INT_REG_BASE) =
+ 0x20000)
>  #define ARMADA_370_XP_DDR_SIZE_CSn(n)  (0x184 + ((n) * 0x8))
>  #define ARMADA_370_XP_DDR_SIZE_ENABLED BIT(0)
> -#define ARMADA_370_XP_DDR_SIZE_MASK    0xff000000
> +#define ARMADA_370_XP_DDR_SIZE_MASK    0xffff0000
>=20
>  /*
>   * Marvell MVEBU SoC id and revision can be read from any PCIe

@Uwe, Where did you get that information from. Could it be that we
should just revert this one given that it seems to be untested on your
side?

> +
> +&nand_controller {
> +	compatible =3D "marvell,armada370-nand", "marvell,pxa3xx-nand";
> +	status =3D "okay";

These two properties are already in the upstream dts files, please drop.

Sascha




