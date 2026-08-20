Delivery-date: Thu, 20 Aug 2026 16:37:01 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wx3t6-005Fix-2L
	for lore@lore.pengutronix.de;
	Thu, 20 Aug 2026 16:37:01 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E74DB202234
	for <lore@pengutronix.de>; Thu, 20 Aug 2026 16:36:56 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="eh/Mhm1U";
	dkim=pass header.d=gmail.com header.s=20251104 header.b=F8eLLpRi;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("google.com:s=arc-20260327:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2eWXMnXDEGn1NCGGDDyam+/DxLZu3Tkaj6yRKATT1Os=; b=eh/Mhm1UmKxxHkLrLqBQbUMdbL
	jlSrxpwTcSap4pCiQO0gODVpk1wdcRmDLpfw53gGLDEQxRxyAEFcav9kZIo/wsJRVA+cpoejebPzn
	O/Mm/KaRlIzIkXT6d7tefJVktyYkGiAsSDUaWmkW7pCFkjasPLIrtwCLVfmDGOVLddTWjeEj9hc5Q
	R46TNbUTEBSjuAXVnqoGIxVaPH0Xk1QKbo3dib/xd1nw6xmIOFpHq7MpCVE3/Adv57A6qQl5NW1kh
	WsWnp9oqorYxXKkjiisK06YenuV5sn2n4nmw4T8Ksnk5PurdyydTl0p31vwQu9mO58XH/qWTuXRtr
	nIf/gaeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3rn-0000000BiZZ-0G5s;
	Thu, 20 Aug 2026 14:35:39 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3rk-0000000BiYs-0w3p
	for barebox@lists.infradead.org;
	Thu, 20 Aug 2026 14:35:37 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-c1671ec8692so343883066b.0
        for <barebox@lists.infradead.org>; Thu, 20 Aug 2026 07:35:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787236534; cv=none;
        d=google.com; s=arc-20260327;
        b=HpfcV2h4OdPRhxOuiUo7q552uir5nT/DJ1GO6ibcAPQKMba6AblbaXfaf/72oMxKLN
         lBZt+z4H4LkFWaVhY4YX4P4AXUvnjgJ74GsExPhGS+aS8IIQAgoMBRTKUAclUzjgzHCX
         o2Q4do0dk9upjblknkkGDXSK+yOh2nW0wV9stCM/EiMiFzj3PzqzhwBmD/RpubWsXmDy
         XQvimZVKdIcernWj7tmi8uB+IB45ZtI/iFB8S3td4LHR0z2LLr50QP+V+g/iYPZsqQ6q
         GKSimG2njCFHShbnZBPASrfLupV/ME9Yfy1uVqQ+JH2gGauOCiviiU8uGqGYlRoTOv94
         pK3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2eWXMnXDEGn1NCGGDDyam+/DxLZu3Tkaj6yRKATT1Os=;
        fh=5it1KIvwVtoCTUbH2lPKvazShxWMt6Nku+COQ9sXEaE=;
        b=ddvHe6wnmX9rJxiyAt1GxxfXpsCmm1MRM/1lGBvVcZwI6vNsFqUsUaHWkexHVz3pgZ
         YFwXGDBXwLIVDqLK5fnwjsCdTj3JMbuo16ZzJBGEG60lytIF51HDHFGOwbvgHX7VhkTU
         bD53TofAJCY7TQ4YrJGzNG5sbqQjFphU9mXuhmiR7jfGRfyrOUDVkmUSR09P3c/aiSHW
         E+8M+6ZBmN7u/RqJMAaXV/DmeUKDGyNKCn40r+YvI08gt5NgFYcHy9k1QV/ZVU9rrPhx
         EoI6JyZXiU4NxLo1/3qvw7BS0YtxCgI12S1S6cTzXGfciq4hy/cKxJwuNS16ZbTDQMSI
         yt9Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787236534; x=1787841334; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=2eWXMnXDEGn1NCGGDDyam+/DxLZu3Tkaj6yRKATT1Os=;
        b=F8eLLpRiPoubTHgTPmB5gfqQ4sVAgL+zjQaNOHcS04R/XwENFVrxA+8GGMaYC/58e/
         qQmzH5cmpXucQQwLFdhkBGxSGdoBwFSt/YhgiTmNbZkhU8PKdTBTTTKcBvjH2nb/KNEy
         TccNzs9+PnkpzopDFoIvgD5hVPrv4TSj8HjN1H3xDxYAnkxBnj0zzkzfGMI34LoY05Bv
         hgQB9A0RQjLL4yWMHe+sX0DgsBK4PRadVqQNSHfRCi2I504olbbP3E3UhkI9d/fzbBg2
         Qxmhx2hr2slPxcavhrWKleG50MEL+hDc4NygoFeqJ8xM/wwau0Comf7HAugCgRxDgLPv
         ehmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787236534; x=1787841334;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2eWXMnXDEGn1NCGGDDyam+/DxLZu3Tkaj6yRKATT1Os=;
        b=XWZRFQssAFzgN+0af8a/eQewZl/bbtbv3W9SDsLJ6Y3x7bfFOobcFE+K3FdnrW7aWA
         6YGM1l14p/sovZvNz4jGD/eCg7x1U43ziRj/Rl8TToT+fymyao/THYQ/nAUg3Z0cNeUy
         LvBueqUUg4N301pDnB2cBSNqkSHrcQXBukse/7bcZgwIdjSxLJteTTStNptjXqIC45mL
         37RIG06Jnb1wvYxOn0hnei7Mpn7w+PJ5SrWJnLkcK4iu1XrQkcLEUnTyzvHyVKYrvVjl
         mTsA1QYoQmWnaj1TxeH7OZ2GaaX9Yd4zGwChjqyq5GRVPkqeP+57BZwDwSNJk4jxrRy4
         MOzw==
X-Gm-Message-State: AOJu0Yy1cF9a+uqkrj90xAUQvgE6IUNIJ7YwC3p4Mvgoz6bfTLrwH2yz
	TaYDwaXKl/tyuQy6s9I9C2ijVTL8iHoE+DnjfG238nLQGQLQ73oGyaxVyMFh50e4Nxo8uM7rBp3
	1SPAK82BTQdrHazk/wWsxAHXMMg0Y928=
X-Gm-Gg: AR+sD1289CH8bD1Lwem7Y2EMtsLkSxyaFxpmpBX3grjpu7c5ZS14USxMm5dyTVo+TVB
	pv0f0xGTeiTq5PvtON2IR0L5l7tZl1ZZn5rOFsRyRIL4s0vx3WxCfAokdmoUC/sjObxoJR9Y7ZC
	lxR178FvUjuQITcJii7jVuxUUivBNBYVWuqIy4YyIvIJjmvBf2BsLWfy8fQUJ35Nx4JL1eOrDYD
	Irt3yePAJ51PbZWCMIUL/nT4WhC2Bsa+qiyNP6pN0K2dM4+E0vaF1xMukuN3v1Vfbzzf1hvOjuH
	+sIBZPrbAE283SO9OslA5qNrt9E+FBIDQtExueMkiw==
X-Received: by 2002:a17:907:6094:b0:c24:42b1:3092 with SMTP id
 a640c23a62f3a-c2442c07d43mr943012666b.15.1787236534271; Thu, 20 Aug 2026
 07:35:34 -0700 (PDT)
MIME-Version: 1.0
References: <20260813-rn102-rn104-series-v4-1-f932ac63efa0@gmail.com> <E1wvs81-00GOzc-1k@pengutronix.de>
In-Reply-To: <E1wvs81-00GOzc-1k@pengutronix.de>
From: Luca Lauro <famlauro93l@gmail.com>
Date: Thu, 20 Aug 2026 16:35:08 +0200
X-Gm-Features: AcwNN1XO-wityc0AjUn7lz0ggmZGOCia7jAYr5Bo5Z8-dePq7P3HgRkWO6D0ios
Message-ID: <CANRe2WK7E9XVPHKS+Z5sktewTONRrptm+7TG7dpqxHFBHEt8gw@mail.gmail.com>
Subject: Re: [PATCH v4 01/14] ARM: mvebu: add Netgear RN102 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>, ukleinek@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_073536_296164_957A3030 
X-CRM114-Status: GOOD (  32.33  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Sascha, about the NAND node: the upstream DTS does contain
    the NAND configuration properties, but they are placed inside the `nand@0`
    child node. Barebox pxa3xx-nand reads these properties from the controller
    [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:62b listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [famlauro93l(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: p6n8d8fjrhb4jadgo3oehqtimz7ubrhh
X-Spamd-Result: default: False [-8.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[famlauro93l@gmail.com,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::62b:received];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	FROM_NEQ_ENVFROM(0.00)[famlauro93l@gmail.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: E74DB202234

Hi Sascha,

about the NAND node: the upstream DTS does contain the NAND configuration
properties, but they are placed inside the `nand@0` child node. Barebox
pxa3xx-nand reads these properties from the controller node instead, so
the upstream layout is not sufficient for barebox to probe and configure
the NAND controller correctly.

For this reason the overlay needs to replicate NAND configuration
properties in the controller node. Without them, barebox does not apply
settings and NAND doesn't work.

The only part that is truly duplicated is `status =3D "okay"`, which I can
drop in v5.

Thanks for the review.


Il giorno lun 17 ago 2026 alle ore 09:51 Sascha Hauer
<s.hauer@pengutronix.de> ha scritto:
>
> On 2026-08-13 17:26, Luca Lauro via B4 Relay wrote:
> > +                                      filetype_kwbimage_v1);
> > +
> > +     return 0;
> > +}
> > +
> > +static const struct of_device_id rn102_of_match[] =3D {
> > +     { .compatible =3D "netgear,rn102" },
>
> How is the driver probed? The string "netgear,rn102" is in no dts.
> Unless I am missing something this should be "netgear,readynas-102".
>
> Same for the rn104 patch.
>
> > +/*
> > + * NOTE:
> > + * armada_370_xp_barebox_entry() cannot be used here because the
> > + * upstream SDRAM size detection for Armada 370-XP misinterprets
> > + * the DDR_SIZE_CSn registers on this board and reports an incorrect
> > + * memory size (256MB instead of 512MB on RN102).
> > + *
> > + * Until the generic detection code is fixed, we compute the SDRAM
> > + * size manually using the DDR_SIZE_CSn values.
> > + */
> > +static unsigned long armada_370_xp_memory_find(void)
> > +{
> > +     unsigned long mem_size =3D 0;
> > +
> > +     for (int cs =3D 0; cs < 4; cs++) {
> > +             u32 ctrl =3D readl(ARMADA_370_XP_SDRAM_BASE + DDR_SIZE_CS=
n(cs));
> > +
> > +             /* Skip non-enabled CS */
> > +             if ((ctrl & DDR_SIZE_ENABLED) !=3D DDR_SIZE_ENABLED)
> > +                     continue;
> > +
> > +             mem_size +=3D (ctrl | ~DDR_SIZE_MASK) + 1;
> > +     }
> > +
> > +     return mem_size;
> > +}
>
> The only difference I can spot here between this function and the
> existing variant in arch/arm/mach-mvebu/common.c is:
>
> #define  DDR_SIZE_MASK                       0xff000000
>
> whereas the common.c variant uses:
>
> #define ARMADA_370_XP_DDR_SIZE_MASK     0xffff0000
>
> The latter goes down to this:
>
> > commit 7351b6b5c59c7a280787998006f39a5cd3a2f18b
> > Author: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> > Date:   Tue Jun 13 00:37:49 2017 +0200
> >
> >     ARM: mvebu: fix size mask for RAM window
> >
> >     The size field in the window control register occupies bits 31:16. =
So
> >     adapt ARMADA_370_XP_DDR_SIZE_MASK accordingly. This fixes detection=
 of
> >     RAM chips smaller than 32 MiB and so probably doesn't affect any
> >     supported machine.
> >
> >     Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.d=
e>
> >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >
> > diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.=
c
> > index 06bfb72615..fa971da11e 100644
> > --- a/arch/arm/mach-mvebu/common.c
> > +++ b/arch/arm/mach-mvebu/common.c
> > @@ -47,7 +47,7 @@
> >  #define ARMADA_370_XP_SDRAM_BASE       (IOMEM(MVEBU_REMAP_INT_REG_BASE=
) + 0x20000)
> >  #define ARMADA_370_XP_DDR_SIZE_CSn(n)  (0x184 + ((n) * 0x8))
> >  #define ARMADA_370_XP_DDR_SIZE_ENABLED BIT(0)
> > -#define ARMADA_370_XP_DDR_SIZE_MASK    0xff000000
> > +#define ARMADA_370_XP_DDR_SIZE_MASK    0xffff0000
> >
> >  /*
> >   * Marvell MVEBU SoC id and revision can be read from any PCIe
>
> @Uwe, Where did you get that information from. Could it be that we
> should just revert this one given that it seems to be untested on your
> side?
>
> > +
> > +&nand_controller {
> > +     compatible =3D "marvell,armada370-nand", "marvell,pxa3xx-nand";
> > +     status =3D "okay";
>
> These two properties are already in the upstream dts files, please drop.
>
> Sascha
>
>


