Delivery-date: Wed, 06 Jul 2022 08:15:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8yJb-007MdJ-F1
	for lore@lore.pengutronix.de; Wed, 06 Jul 2022 08:15:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8yJd-0004Cu-Al
	for lore@pengutronix.de; Wed, 06 Jul 2022 08:15:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a+cC4LYR0PFsEshX7nP4wOD7alT1ePaqZfB7GTsFhSU=; b=E7cr2UxBnznDCcAtt7sMSROGZf
	xZirXWJJnJo5BMaA+VcR/WXjjtIHbI1wXxr+5YMalU/o7qqceLc70jCTYTkRh0rfRM8va4eEO0hV0
	dN8Cx2gIlaKyprgIKhxN0OzMho8JIySBh+iThzyp9LZKG/3b1yflID5u/yyZBs8I3FHJL27JTDxTE
	E+JRt+ZpKewHC/mKMfoqBYK6ydeKxZz29vIv9oM4UQK2MU3tNi4yPlR5t/r3P33nV19Cg221ISLSw
	zW4Mdc9QMrv8+msHgDXTZUzRc0Q8te68wsMyTBWa/oS5IvBdMaIfmUTlXOS8ftW1+BhDiziFIKEaT
	ngvYKxew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8yI6-006aXP-5Q; Wed, 06 Jul 2022 06:13:38 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8yI1-006aVN-2c
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 06:13:34 +0000
Received: by mail-yb1-xb30.google.com with SMTP id e80so18437445ybb.4
        for <barebox@lists.infradead.org>; Tue, 05 Jul 2022 23:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=a+cC4LYR0PFsEshX7nP4wOD7alT1ePaqZfB7GTsFhSU=;
        b=pccrFGm+SgHC6P7u/I3OdoifSzzelwel+V0WEIqluZBePJIkE6exKdtcLmAIqrL14/
         ne9WT8YgIZQwC5zRO5sPwuG/xgBg7PQ1UfyFmSLa3TUYw4IcoV4BcTceZZQghNrQszRB
         LZeASo5eFAkykCJsqUf/T265qVxxcUCabMXanM+93zybP7p7GTtgKHTHB606cnDKFMvb
         id9YCJcXoDLiFgBbjqybdd7YX/I67MR/9IWF/SYRuOJejcvJLNsa5vWX0I14rPOQoz/W
         TeJt3OvJ13GE0FCdT4xe6pT/ft+9c2KSIi+1MbJOAUnS7gVzq/nLNs6obeErPq9a3tb6
         hlew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=a+cC4LYR0PFsEshX7nP4wOD7alT1ePaqZfB7GTsFhSU=;
        b=filv93O8qHBwRBHCyHGWm77IvctfZu2goIDnf1lNqpJ3/05PYeWqezD7CPSNy3Dp3Z
         otlq7c7x9W34e5SrDbV56wULh61DJLFYgJ6FKqC+VNVpDeMVb2ed+T88NMP8e5lfwjV3
         DJl71C7w8DMZ2vWfELWlDghrcy0Li9zOP74vRwkTGKfD8enlIX/yjNeS7QiM1aZmcG8q
         aBbGobj4S+pi+cROjI90/k+R706Ol0TjNhQbEnGK3IkdrLmpAoRATkQHE+i05JH1t8ou
         I/Y/P7b6jaW2P/flIkqWY3BUk0uP3hSolVzzCB3jpWHqZk3YHh2aY+KxcORG3999Sj+V
         Iz3A==
X-Gm-Message-State: AJIora922CoU8PyHUZs2IIGX9jO/eDqGNLCeNRDxATk9NmnFzX+aFitF
	WQ4OgQ1P968GjznTso4eBPiN5tV4a0yb6qK3LuC+mlNSRLI=
X-Google-Smtp-Source: AGRyM1t35ukmM/16UoeMN0WozgdgbA662B2IOGxUPjI3MDYPq20aDN6nUESbo2YMVSdw88XEGhXJv9wKm7bA22YOtDc=
X-Received: by 2002:a05:6902:348:b0:64a:d339:a75f with SMTP id
 e8-20020a056902034800b0064ad339a75fmr39299398ybs.63.1657088009678; Tue, 05
 Jul 2022 23:13:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220704114959.15635-1-yegorslists@googlemail.com> <3a5f9fec-30ff-cd06-7333-ea1e56236322@pengutronix.de>
In-Reply-To: <3a5f9fec-30ff-cd06-7333-ea1e56236322@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Wed, 6 Jul 2022 08:13:18 +0200
Message-ID: <CAGm1_kv2og5txkW6sJgryS12U+CCQh_Oarsd4qEQbEmD9ad68Q@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>, Sascha Hauer <sha@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_231333_179166_F9B9F22A 
X-CRM114-Status: GOOD (  19.66  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: am335x: update cpsw nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Wed, Jul 6, 2022 at 7:44 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Yegor,
>
> On 04.07.22 13:49, yegorslists@googlemail.com wrote:
> > From: Yegor Yefremov <yegorslists@googlemail.com>
> >
> > Switch to cpsw switchdev definition.
>
> Both bindings should be supported by the same driver in barebox.
> Is this just to align with your Linux DT or did you experience breakage?

barebox couldn't start, because cpsw initialization failed.

Aligning with the upstream Linux DTS was also required, otherwise, the
MACs were set for the old network nodes, and switchdev ones used
internal MAC from TI.

Yegor

> > Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> > ---
> >  arch/arm/dts/am335x-baltos-minimal.dts | 29 ++++++++++++++++----------
> >  1 file changed, 18 insertions(+), 11 deletions(-)
> >
> > diff --git a/arch/arm/dts/am335x-baltos-minimal.dts b/arch/arm/dts/am335x-baltos-minimal.dts
> > index dff901f050..e55a2d7cbb 100644
> > --- a/arch/arm/dts/am335x-baltos-minimal.dts
> > +++ b/arch/arm/dts/am335x-baltos-minimal.dts
> > @@ -399,33 +399,40 @@
> >       };
> >  };
> >
> > -&mac {
> > +&mac_sw {
> >       pinctrl-names = "default", "sleep";
> >       pinctrl-0 = <&cpsw_default>;
> >       pinctrl-1 = <&cpsw_sleep>;
> > -     dual_emac = <1>;
> >
> >       status = "okay";
> >  };
> >
> > -&davinci_mdio {
> > +&davinci_mdio_sw {
> > +     status = "okay";
> >       pinctrl-names = "default", "sleep";
> >       pinctrl-0 = <&davinci_mdio_default>;
> >       pinctrl-1 = <&davinci_mdio_sleep>;
> >
> > -     status = "okay";
> > +     phy1: ethernet-phy@1 {
> > +             reg = <7>;
> > +             eee-broken-100tx;
> > +             eee-broken-1000t;
> > +     };
> >  };
> >
> > -&cpsw_emac0 {
> > -     phy_id = <&davinci_mdio>, <0>;
> > +&cpsw_port1 {
> >       phy-mode = "rmii";
> > -     dual_emac_res_vlan = <1>;
> > +     ti,dual-emac-pvid = <1>;
> > +     fixed-link {
> > +             speed = <100>;
> > +             full-duplex;
> > +     };
> >  };
> >
> > -&cpsw_emac1 {
> > -     phy_id = <&davinci_mdio>, <7>;
> > -     phy-mode = "rgmii-txid";
> > -     dual_emac_res_vlan = <2>;
> > +&cpsw_port2 {
> > +     phy-mode = "rgmii-id";
> > +     ti,dual-emac-pvid = <2>;
> > +     phy-handle = <&phy1>;
> >  };
> >
> >  &mmc1 {
>
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


