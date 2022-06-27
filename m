Delivery-date: Mon, 27 Jun 2022 15:15:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5oaN-00GQXv-0b
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 15:15:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5oaP-0005Wv-3j
	for lore@pengutronix.de; Mon, 27 Jun 2022 15:15:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Oo8fH8o6mr0rXpMaL50jMblF1X0EQ3nEQ0AZxP3Kfvo=; b=M4xRFNjHiwIljHnEx84f46KfcG
	Sed2G5379Lm4oRsxE6H6ZsjVY/nF8ZUYuso/cZdqLBE1B8hX5g2phZWOYd7kJRtGDuCyLR2ufrd8j
	u+nlmnO/Gaxo/+ElTCNNMWMllQxVEuNx61h6WMlsKYa75OXl0laNb7+DC+jiqOepqMqNPzo0LdE1/
	VM2pYbFiqooBtmsaXQQqDXWv6bkKNCrwxV1EzoA7rYwwlly7NjD53/0e9+husNUwT0XTDZsMUXD6D
	2G4keB5qdvJb7eaIn58S3FtzZpQMsovZnOeGd7qZs/XJk5IVNkWOJ5fihlEBI4I4UXWg/eFwkXitq
	y28HdHCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5oYZ-0015zv-1Z; Mon, 27 Jun 2022 13:13:35 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5oYP-0015wn-TF
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 13:13:31 +0000
Received: by mail-pf1-x429.google.com with SMTP id n12so9051850pfq.0
        for <barebox@lists.infradead.org>; Mon, 27 Jun 2022 06:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Oo8fH8o6mr0rXpMaL50jMblF1X0EQ3nEQ0AZxP3Kfvo=;
        b=VXDrFer0bNEvdueUtjf7iCehAszPZ+Jzuy/CdxpBqq+ZQHOHh6oMYKS+zvmPMGVstl
         v+tHQgsgncoj/c/UBYEXdDkryz7o8tTiSA0yAyo1hgei6Pv9fO5bt8e0wNchqRc1LJgw
         fKKaURFQjCf+nXtifsvZEzVZg93jU/uHQFc8kLEZB+LCnNyZyIkkCydZN+uHq+TL0c89
         yQgsS8n+60gYtbCtexmvCA21/QF94OMfTUZ+TTEnO0Aaqae+/p+DtoLzZ3cL/0U5DEHP
         i8ra5YZhgcuc+FHN2UVtVl9nlCIwYqGXTG+HJMqpe88ZMjlWvQ7XUDsSFXGQu5CZVrhd
         OTlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Oo8fH8o6mr0rXpMaL50jMblF1X0EQ3nEQ0AZxP3Kfvo=;
        b=h5cWtbg2K51NgPbEl8X2bX6izNFt4e4wS0EDtIf/3gf66tVRYc9BWYdZSKAjE309G+
         IIRF3SMBEovbG3x02GmOhOSsc7HhHbb39GVTnpzKOYNVUeB1Fmqa33Qq0NX9IGKY3+uT
         MsqmdfeQh+DurDhjueYcu67xxqWImeSf3Yn1ZC8123HdNV3MfmxMbeHqsN3sUn5xqFWo
         Yb5s4+OSL2+ir6m080bgeFiXGU/uEz1wWHS7HY8RBMCXgk+MfTAdzlC0rKqNFcVjy2Rg
         5DOLRPaMNPVt3UuntemyMgtIVxCmckTGKDqY1yGBQonB64r83BlPqW00TkLXM3ddGsZs
         cTFg==
X-Gm-Message-State: AJIora/5CmRaHgCqMLIuFjBi+Dj1T2uOTxsCLp65bcqy90BiHLI6uOnw
	qAov3G1Pbbt5th5CFLhMiZ2Ut06HkT2K+EPczwE=
X-Google-Smtp-Source: AGRyM1urxbyhrnqQ8FV7D3M5Kp3ojEJE/dSOtvaBpWcENiDsEwstwEC3lHaFQtbNYe6eKPSsapUD4YtTxFCFpb5x/Mc=
X-Received: by 2002:aa7:9885:0:b0:525:2b50:a423 with SMTP id
 r5-20020aa79885000000b005252b50a423mr14690776pfl.14.1656335604814; Mon, 27
 Jun 2022 06:13:24 -0700 (PDT)
MIME-Version: 1.0
References: <20220627103358.34487-1-u.kleine-koenig@pengutronix.de> <20220627103358.34487-2-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20220627103358.34487-2-u.kleine-koenig@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 27 Jun 2022 16:13:09 +0300
Message-ID: <CAP1tNvTAjA3xLXoO_vu3c6Sfgj=yGPrCeBvUp1a3gJsbhGNq0g@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_061326_013091_188DEF11 
X-CRM114-Status: UNSURE (   6.17  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] clk: imx25: Add comments to clk list with offsets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello.

=D0=BF=D0=BD, 27 =D0=B8=D1=8E=D0=BD. 2022 =D0=B3. =D0=B2 13:34, Uwe Kleine-=
K=C3=B6nig <u.kleine-koenig@pengutronix.de>:
> This greatly simplifies to determine the offset of a given clk.
...
>  enum mx25_clks {
> -       dummy, osc, mpll, upll, mpll_cpu_3_4, cpu_sel, cpu, ahb, usb_div,=
 ipg,
> -       per0_sel, per1_sel, per2_sel, per3_sel, per4_sel, per5_sel, per6_=
sel,
> -       per7_sel, per8_sel, per9_sel, per10_sel, per11_sel, per12_sel,
> -       per13_sel, per14_sel, per15_sel, per0, per1, per2, per3, per4, pe=
r5,
> -       per6, per7, per8, per9, per10, per11, per12, per13, per14, per15,
> -       csi_ipg_per, epit_ipg_per, esai_ipg_per, esdhc1_ipg_per, esdhc2_i=
pg_per,
> -       gpt_ipg_per, i2c_ipg_per, lcdc_ipg_per, nfc_ipg_per, owire_ipg_pe=
r,
> -       pwm_ipg_per, sim1_ipg_per, sim2_ipg_per, ssi1_ipg_per, ssi2_ipg_p=
er,
> -       uart_ipg_per, ata_ahb, reserved1, csi_ahb, emi_ahb, esai_ahb, esd=
hc1_ahb,
> -       esdhc2_ahb, fec_ahb, lcdc_ahb, rtic_ahb, sdma_ahb, slcdc_ahb, usb=
otg_ahb,
> -       reserved2, reserved3, reserved4, reserved5, can1_ipg, can2_ipg, c=
si_ipg,
> -       cspi1_ipg, cspi2_ipg, cspi3_ipg, dryice_ipg, ect_ipg, epit1_ipg, =
epit2_ipg,
> -       reserved6, esdhc1_ipg, esdhc2_ipg, fec_ipg, reserved7, reserved8,=
 reserved9,
> -       gpt1_ipg, gpt2_ipg, gpt3_ipg, gpt4_ipg, reserved10, reserved11, r=
eserved12,
> -       iim_ipg, reserved13, reserved14, kpp_ipg, lcdc_ipg, reserved15, p=
wm1_ipg,
> -       pwm2_ipg, pwm3_ipg, pwm4_ipg, rngb_ipg, reserved16, scc_ipg, sdma=
_ipg,
> -       sim1_ipg, sim2_ipg, slcdc_ipg, spba_ipg, ssi1_ipg, ssi2_ipg, tsc_=
ipg,
> -       uart1_ipg, uart2_ipg, uart3_ipg, uart4_ipg, uart5_ipg, reserved17=
,
> -       wdt_ipg, clk_max
> +       /*   0 */ dummy, osc, mpll, upll, mpll_cpu_3_4, cpu_sel, cpu, ahb=
, usb_div, ipg,
> +       /*  10 */ per0_sel, per1_sel, per2_sel, per3_sel, per4_sel, per5_=
sel, per6_sel,
> +       /*  17 */ per7_sel, per8_sel, per9_sel, per10_sel, per11_sel, per=
12_sel,
> +       /*  23 */ per13_sel, per14_sel, per15_sel, per0, per1, per2, per3=
, per4, per5,
> +       /*  32 */ per6, per7, per8, per9, per10, per11, per12, per13, per=
14, per15,
> +       /*  42 */ csi_ipg_per, epit_ipg_per, esai_ipg_per, esdhc1_ipg_per=
, esdhc2_ipg_per,
> +       /*  47 */ gpt_ipg_per, i2c_ipg_per, lcdc_ipg_per, nfc_ipg_per, ow=
ire_ipg_per,
> +       /*  52 */ pwm_ipg_per, sim1_ipg_per, sim2_ipg_per, ssi1_ipg_per, =
ssi2_ipg_per,
> +       /*  57 */ uart_ipg_per, ata_ahb, reserved1, csi_ahb, emi_ahb, esa=
i_ahb, esdhc1_ahb,
> +       /*  64 */ esdhc2_ahb, fec_ahb, lcdc_ahb, rtic_ahb, sdma_ahb, slcd=
c_ahb, usbotg_ahb,
> +       /*  71 */ reserved2, reserved3, reserved4, reserved5, can1_ipg, c=
an2_ipg, csi_ipg,
> +       /*  78 */ cspi1_ipg, cspi2_ipg, cspi3_ipg, dryice_ipg, ect_ipg, e=
pit1_ipg, epit2_ipg,
> +       /*  85 */ reserved6, esdhc1_ipg, esdhc2_ipg, fec_ipg, reserved7, =
reserved8, reserved9,
> +       /*  92 */ gpt1_ipg, gpt2_ipg, gpt3_ipg, gpt4_ipg, reserved10, res=
erved11, reserved12,
> +       /*  99 */ iim_ipg, reserved13, reserved14, kpp_ipg, lcdc_ipg, res=
erved15, pwm1_ipg,
> +       /* 106 */ pwm2_ipg, pwm3_ipg, pwm4_ipg, rngb_ipg, reserved16, scc=
_ipg, sdma_ipg,
> +       /* 113 */ sim1_ipg, sim2_ipg, slcdc_ipg, spba_ipg, ssi1_ipg, ssi2=
_ipg, tsc_ipg,
> +       /* 120 */ uart1_ipg, uart2_ipg, uart3_ipg, uart4_ipg, uart5_ipg, =
reserved17,
> +       /* 126 */ wdt_ipg, clk_max
>  };

Maybe this enum should be updated from linux/drivers/clk/imx/clk-imx25.c fi=
rst?


