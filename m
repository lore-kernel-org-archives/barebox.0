Delivery-date: Thu, 01 Jun 2023 10:52:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4e2q-005Yk3-4n
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 10:52:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4e2n-0007RM-M6
	for lore@pengutronix.de; Thu, 01 Jun 2023 10:52:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=87mB74uPyq/Hfc0nWoQkev9ARKnezY4QFdNXXTcl6Xo=; b=BVL/tF1ngzKOgeQuRQJy7BANtO
	jrOmRp4Wz2yZdTTiLmsRb7p33a+9iVhXka3kvwY6Pj71cUCaHeP90nSaMpSlh9dDhsGlOytX8xdAs
	xnjohxOUCq1nU0C314XCKPfx6UOxq5ckvBwITpgP1L0UjneXZ9aoAbNLRd/S3nigA+p4GeRKEhlYp
	vfSk8OQMMcP4Qag9pZO1JnZfm2HCio+8qxVOvKP7ih4ndNkuMclP+3xKIYcIpe2bwLhuY91JbqnAK
	WvaHlwfUrWVgWjJdsgSu3d4O58bGn7mhf7IzqrhTMZZX4jNJ85EZvUDA581Ab5rffPcpPVknU1oRy
	3w4WFVNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4e1l-002czS-1N;
	Thu, 01 Jun 2023 08:51:25 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4e1i-002cxx-0C
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 08:51:23 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-bab8f66d3a2so572843276.3
        for <barebox@lists.infradead.org>; Thu, 01 Jun 2023 01:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20221208; t=1685609478; x=1688201478;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=87mB74uPyq/Hfc0nWoQkev9ARKnezY4QFdNXXTcl6Xo=;
        b=VdqbkiPG+gHENyugJZMhzXU36PMGyXCcLGyEu5BxSLP4oRYZ8MOooL0TiM3tokSV8J
         Nl68/JfGadQ/3sZChJed8kefxE1owicfTDAWCHK04fAR4SQxWNLWY42vypWfCE5BoO5e
         Qx3mpdc/bCLRYMW8Ok0pBQYNkHKiwwMcM9qeLsW3YBBXnuP88HCeHma4iEEl85FMDLRu
         N1JRpn6CpMuIAY9LHOQfY9WIJvtEfuSecCW3KZ3Zsh0IMcr9ogyqn1+TRsoq4MTryKQu
         oN6k7EnTFK+vzkHFSDMF58Q0M8wLERKuhQgI3RvA2o/LKicnRFIfubc/qmB35a8zoXwy
         kihg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685609478; x=1688201478;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=87mB74uPyq/Hfc0nWoQkev9ARKnezY4QFdNXXTcl6Xo=;
        b=CcDteLk7jbc1iRjS4Uu75yRQIDcG020gEgUTzQDnmXLjzCE0D+e6XM3S4Vd9sSvABL
         0zrLvUcFyBGZ2kfvF1RrPQdcX9nLnXYx3e8tcWAnFsNhQumEqZMZzQAAwpRu90pML5F8
         /CKUTSOrBRFeB+uK7ONqwKQQzq6fcCdgzhkpW3BuHtrd0t3NTHR9Tfjl7QZx6pdOBwC7
         Ah/baqSnojIRZTR0UouvxKY6QWdEwSGJrCxbqJJH0KNfy/fBqX4Wq28eN5tlii5tBs/M
         1Zg0OeqJDAWdYWDZ1Z00FMT7JnD34+r7BlcRnu6njU0hknh5XAhey4PVTScZ4z22wSC1
         oNxA==
X-Gm-Message-State: AC+VfDz/Mjfd/EqMksfoCsrsPxmYVSBqs0ybB3nIg2AosYtU61zTmDUc
	N5nrz0Au4rx5iSHefz+ywMC41KvE8RYmjqw361heW6A5coc=
X-Google-Smtp-Source: ACHHUZ7/p6SUMqtS0d0EEhar//fZCcrlY7aZbycxT1A//GOJ5K8J4W6u3ibjL1564PhqY9AnVacmXFdq41kda1uj270=
X-Received: by 2002:a25:4041:0:b0:b8e:cb88:1b69 with SMTP id
 n62-20020a254041000000b00b8ecb881b69mr8427453yba.34.1685609477950; Thu, 01
 Jun 2023 01:51:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230531143500.165837-1-yegorslists@googlemail.com> <20230601081716.GK18491@pengutronix.de>
In-Reply-To: <20230601081716.GK18491@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Thu, 1 Jun 2023 10:51:06 +0200
Message-ID: <CAGm1_ku_jsmK1Jji3YN+BXcnZpzDJ56tNbNf_TCnRJ8hRo2=AQ@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_015122_101170_1807C181 
X-CRM114-Status: GOOD (  26.98  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: phy: add driver for MotorComm PHY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On Thu, Jun 1, 2023 at 10:17=E2=80=AFAM Sascha Hauer <sha@pengutronix.de> w=
rote:
>
> Hi Yegor,
>
> On Wed, May 31, 2023 at 04:35:00PM +0200, yegorslists@googlemail.com wrot=
e:
> > From: Yegor Yefremov <yegorslists@googlemail.com>
> >
>
> Could you add a word here on which kernel version this is based on? It
> will help synchronizing with newer kernels later.

The driver corresponds to the kernel 6.1.x. The upstream kernel driver
supports more chips. But I have only this one. So, I cannot test other
chips. Is it OK for you to merge the reduced version or should I port
the complete one?

>
> > Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> > ---
> >  drivers/net/phy/Kconfig     |   5 ++
> >  drivers/net/phy/Makefile    |   1 +
> >  drivers/net/phy/motorcomm.c | 128 ++++++++++++++++++++++++++++++++++++
> >  3 files changed, 134 insertions(+)
> >  create mode 100644 drivers/net/phy/motorcomm.c
> >
>
> [...]
>
> > +static int yt8511_config_init(struct phy_device *phydev)
> > +{
> > +     int oldpage, ret =3D 0;
> > +     unsigned int ge, fe;
> > +
> > +     oldpage =3D phy_select_page(phydev, YT8511_EXT_CLK_GATE);
> > +     if (oldpage < 0)
> > +             goto err_restore_page;
> > +
> > +     /* set rgmii delay mode */
> > +     switch (phydev->interface) {
> > +     case PHY_INTERFACE_MODE_RGMII:
> > +             ge =3D YT8511_DELAY_GE_TX_DIS;
> > +             fe =3D YT8511_DELAY_FE_TX_DIS;
> > +             break;
> > +     case PHY_INTERFACE_MODE_RGMII_RXID:
> > +             ge =3D YT8511_DELAY_RX | YT8511_DELAY_GE_TX_DIS;
> > +             fe =3D YT8511_DELAY_FE_TX_DIS;
> > +             break;
> > +     case PHY_INTERFACE_MODE_RGMII_TXID:
> > +             ge =3D YT8511_DELAY_GE_TX_EN;
> > +             fe =3D YT8511_DELAY_FE_TX_EN;
> > +             break;
> > +     case PHY_INTERFACE_MODE_RGMII_ID:
> > +             ge =3D YT8511_DELAY_RX | YT8511_DELAY_GE_TX_EN;
> > +             fe =3D YT8511_DELAY_FE_TX_EN;
> > +             break;
> > +     default: /* do not support other modes */
> > +             ret =3D -EOPNOTSUPP;
> > +             goto err_restore_page;
> > +     }
> > +
> > +     ret =3D phy_modify(phydev, YT8511_PAGE, (YT8511_DELAY_RX | YT8511=
_DELAY_GE_TX_EN), ge);
> > +     if (ret < 0)
> > +             goto err_restore_page;
> > +
> > +     /* set clock mode to 125mhz */
> > +     ret =3D phy_modify(phydev, YT8511_PAGE, 0, YT8511_CLK_125M);
> > +     if (ret < 0)
> > +             goto err_restore_page;
> > +
> > +     /* fast ethernet delay is in a separate page */
> > +     ret =3D phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_DELAY_DR=
IVE);
> > +     if (ret < 0)
> > +             goto err_restore_page;
> > +
> > +     ret =3D phy_modify(phydev, YT8511_PAGE, YT8511_DELAY_FE_TX_EN, fe=
);
> > +     if (ret < 0)
> > +             goto err_restore_page;
> > +
> > +     /* leave pll enabled in sleep */
> > +     ret =3D phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_SLEEP_CT=
RL);
> > +     if (ret < 0)
> > +             goto err_restore_page;
> > +
> > +     ret =3D phy_modify(phydev, YT8511_PAGE, 0, YT8511_PLLON_SLP);
> > +     if (ret < 0)
> > +             goto err_restore_page;
> > +
> > +err_restore_page:
> > +     return phy_restore_page(phydev, oldpage, ret);
>
> This should likely return 'ret' and not the return value of
> phy_restore_page().

If I understand it correctly, phy_restore_page() will also propagate
the ret it gets as a parameter [1] under some circumstances.

[1] https://github.com/barebox/barebox/blob/master/drivers/net/phy/phy-core=
.c#L91

Yegor

> Sascha
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


