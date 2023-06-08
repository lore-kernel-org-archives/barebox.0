Delivery-date: Thu, 08 Jun 2023 12:50:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7DDx-00FeUH-2Q
	for lore@lore.pengutronix.de; Thu, 08 Jun 2023 12:50:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7DDu-0004GK-Fg
	for lore@pengutronix.de; Thu, 08 Jun 2023 12:50:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q9m/ZVZ8Nx7QvkCvK8Wz3ebZAffbX19ktzDs7d0aQSY=; b=RELx6MgEW9UHCGRKnI9VCGVT6h
	gWt0IQn6hNgvUaD3yj2tUWHbtfVGB25uAtqY7Wmj2hW6mC+OX5lhJsO+cLHVJHMOevrEV5Y77tu/m
	xYi/DwC4OkOZY8BfUkQsGdfhB7h5VCCydoe5qYoPKROCfaxDT+riqlnGh7h12CsS3uXVM93BgcscC
	YwA9vY4bOMGYHcvNtL5Wp5HKVkLKr60drQN8SnH1PK8DBkKeFxOivmV9C/ca0p6dCJQ0+f9mWaCCl
	j4DStiw2otLW3HRee7Di5xG6CNVM+KKPH462OBJI1C+mxGDTyro+vR9NXf9HHYq4dpiiS/NPPRrHL
	LfX00Mnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7DCT-008z9i-3A;
	Thu, 08 Jun 2023 10:49:05 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7DCR-008z8u-0a
	for barebox@lists.infradead.org;
	Thu, 08 Jun 2023 10:49:04 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-bacfa9fa329so561200276.0
        for <barebox@lists.infradead.org>; Thu, 08 Jun 2023 03:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20221208; t=1686221339; x=1688813339;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q9m/ZVZ8Nx7QvkCvK8Wz3ebZAffbX19ktzDs7d0aQSY=;
        b=IKDMT9Qqu/eaIV3j0QZHaZCWfVGRYWCk/9FSYqWZrAK59EsKBT1wtoCezgSyusrtTT
         bfZjFStiAGYhJ7tu7hfJcXTEw/FyKqrPUGde5Z3R/UzHRZHLRq/FeivXhXFKnJN7H/y+
         Bjb0nEdp/uU4Np7+lO18y18ZvZOQ0nycwm5O44o50Qh5FuJqFz5ZYjdfqoIE7DnZ/xlY
         JZilun7r0RK3eVPPwoDt7SQJ5y9satR/mUGyAqOx0PEOKNAZG/eTPVtNYUXK2e/Gss45
         hgiRXO/pAOqz8W/Qh7cfmlDYwbSXN5+MiPpvG5WpV9+8H4tKWVMffhhMKpfbzCH2ZMdH
         H0FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686221339; x=1688813339;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q9m/ZVZ8Nx7QvkCvK8Wz3ebZAffbX19ktzDs7d0aQSY=;
        b=SrRCY9N3Z34UIso0MEU2B2YksGvz/NL87Ojm8IXFTxa7AzKNeyKobl9FXai2vrjtea
         WdPInBYJssP6Xh/iJ6URWfTvPGJW0O6mu8uSvsAxOWvJgdVDtNIeNqQpvcWSUe0FQ19q
         iH0ZOCrLfqQYCYc4Jdtssrxw0svAMRo7SzauqIkYV72dBTLz8tb4yVIFpm7V7GPBzmxm
         pZ+CyzEgpHibB2t0NAVlr8MX8cxxozFxqlePGf7nrNYDnVmxvp1qjzq3qh+oDnhWx1Xw
         qn87WDYoKDlHaolnzXAahbLyxpTeXQgwBfICstwW/15vDJVQ4jxcAtrt8INPWbKeTrKG
         WLhw==
X-Gm-Message-State: AC+VfDxrtdAky4hJvsXiYgdiuoyxWXsvTe/rjcqOutq+xhPEXN61LMKl
	ryDut6/X8objoqGRsIvXRllg9701w4LYd+HpNwsbf80y
X-Google-Smtp-Source: ACHHUZ5e3oN6FWwCN3t5Xco9A0GWoa6TLFbohwKFSfHQv26E/er0aFacbv87s/ox6OnDWa3YU1/d6FMp7AecePA/+5M=
X-Received: by 2002:a81:8605:0:b0:569:4442:fb6f with SMTP id
 w5-20020a818605000000b005694442fb6fmr9212212ywf.15.1686221339273; Thu, 08 Jun
 2023 03:48:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230606081718.2246807-1-yegorslists@googlemail.com>
 <CAGm1_ks5-ODLSi_xyXrFsWB+98y724Ky2UtV823BxPnvmjLM-w@mail.gmail.com> <20230606095851.GD18491@pengutronix.de>
In-Reply-To: <20230606095851.GD18491@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Thu, 8 Jun 2023 12:48:47 +0200
Message-ID: <CAGm1_ku-9qaGMZsEO0ME90rd3dnf5Q12XwjfUpYeXwciNmYvnw@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_034903_262426_33E49FEA 
X-CRM114-Status: GOOD (  14.26  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] net: phy: add driver for MotorComm PHY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On Tue, Jun 6, 2023 at 11:58=E2=80=AFAM Sascha Hauer <sha@pengutronix.de> w=
rote:
>
> Hi Yegor,
>
> On Tue, Jun 06, 2023 at 10:21:39AM +0200, Yegor Yefremov wrote:
> > Hi Sascha,
> >
> >
> > > +       ret =3D phy_modify(phydev, YT8511_PAGE, YT8511_DELAY_FE_TX_EN=
, fe);
> > > +       if (ret < 0)
> > > +               goto err_restore_page;
> > > +
> > > +       /* leave pll enabled in sleep */
> > > +       ret =3D phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_SLEE=
P_CTRL);
> > > +       if (ret < 0)
> > > +               goto err_restore_page;
> > > +
> > > +       ret =3D phy_modify(phydev, YT8511_PAGE, 0, YT8511_PLLON_SLP);
> > > +       if (ret < 0)
> > > +               goto err_restore_page;
> > > +
> > > +err_restore_page:
> > > +       return phy_restore_page(phydev, oldpage, ret);
> >
> > As for this approach, it is also used by some other drivers in the Linu=
x kernel:
> >
> > drivers/net/phy/realtek.c
> > drivers/net/phy/icplus.c
>
> It's ok like this. I didn't realize phy_restore_page() takes ret as
> argument and returns it.

The driver doesn't use a phy_id_mask for now and it causes problems
that unknown PHY will be assigned to MotorComm. What mask should I
use? 0xfffffff or 0x00000fff?

Regards,
Yegor


