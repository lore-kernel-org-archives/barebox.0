Delivery-date: Tue, 06 Jun 2023 11:25:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6SwH-00Crlk-N9
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 11:25:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6SwF-0005ax-Ad
	for lore@pengutronix.de; Tue, 06 Jun 2023 11:25:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dJm/RI2RhvTIJTqppGvUa0pVmYfNHyRZfrfvJWZMNRc=; b=CNvcasro587B7I+dCiGwHtKyIq
	D9aPX0iTEMilL9X/hSnkpOuSudEyKBNHg0vTzp+mkYOS2jU7q8agEi2uQ7PxC8sK6U86V933OjAHY
	DEXHv0yunIOAhpD21PJtuXVlrOWhNe0LseRf4FgQg46QVlgfaQUEFFEO2fLqLTc1V9Tp2Nmvy9pLQ
	8I4VBqoWu3s7sUMSD+BuGAbVDPPL/sx1jS+vyJKP8CyA/Qb/ALMbEBzeor23PZgNIYKa42YvsM5/8
	Oa9FdE+iyJ15/ZstupwPs+AV/SJF0Z7iLtam/6GxPWYAo0xi2tYuPPkbyWu8sLJok0RvdVzrUKDNj
	LPBiZ8aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Sv8-000zMh-1J;
	Tue, 06 Jun 2023 09:24:06 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Sv5-000zM6-0F
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 09:24:04 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-256931ec244so5059271a91.3
        for <barebox@lists.infradead.org>; Tue, 06 Jun 2023 02:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686043442; x=1688635442;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dJm/RI2RhvTIJTqppGvUa0pVmYfNHyRZfrfvJWZMNRc=;
        b=WHylUPzcM+wuxXRczCi6qTiGGguDChSdBo5HINrrI6weZYsDRQEBPRm1yEysPoj03C
         oyTNMgByKtiP7ncDGHorbutlBHnfCz8xBgT0k9h1Oqz/VOUbsZ64m+9wwbUff7/zyYOJ
         rXbCzBBPdA8zFh3bK3LACiKvk5OglE3A/PJ1hXgPUsahlkb3xwqXu5COfGtV8cLKh++d
         OTQ+kzWUdvjZAOcTFMLU/x1JES/Gw6CqFWa7SZKHgZTjgJbxkWFUVbIvUY3dpvwZHm3q
         QeBLifs8Laga8mLwAHWmgiV4lg6/22curoP/lgzJCEUTDahKGYoL0pJAUUMQ1VkT6+iS
         ECoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686043442; x=1688635442;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dJm/RI2RhvTIJTqppGvUa0pVmYfNHyRZfrfvJWZMNRc=;
        b=Esw7VK6IXfryiTOq5qlm7Qd6PnSURY30X+JSd3r2AV7eiWO0/SKMyDGLxOtgtG/1EB
         o5DmZd9xjj4899rz1FwBfQk/RIomgBVbD5tY1S0gWXck7hdgZDY60jtNPMrLbJj5SPou
         NrVpYOgb7lVFZ0FpUgeZIKF6C/6P/SbJStY76OJXIUtG2B2y+q1zzLjqsxLHwkI2zyok
         zQdE/J1dtg86Vg7/A1hsnGB4X1fd3eWBn4+IBS/bXmzPfjnLE9Rb7q4SvcLE/8P4Nrda
         IHSKuRCkB0JLeeoOKseS86eFD4Otiek3HFGKhrbNLicOHk0RsfT7kBh92BDuVfZiqECu
         7L7g==
X-Gm-Message-State: AC+VfDwNNv/kbjUmVwzuJp+tQzvNHZp/q82YBRZlJlV/oiNWChVC68Bd
	iGTEeq2FRFG4RL2fxxoXTpsCvXZCaIaN53c7NJ8=
X-Google-Smtp-Source: ACHHUZ5c/IUou4azpD3vpbLBYt2HTicthXz/4BSD/Pid3be6AQUBm1nhKGa2TczVHVsu+XYUT7DpaH008x79UMlNdhU=
X-Received: by 2002:a17:90a:c20b:b0:259:43e8:f68c with SMTP id
 e11-20020a17090ac20b00b0025943e8f68cmr1578087pjt.17.1686043441939; Tue, 06
 Jun 2023 02:24:01 -0700 (PDT)
MIME-Version: 1.0
References: <20230605202634.42175-1-denorl2009@gmail.com> <20230605202634.42175-12-denorl2009@gmail.com>
 <bb708297-3966-59ce-0366-3d29a8175923@pengutronix.de>
In-Reply-To: <bb708297-3966-59ce-0366-3d29a8175923@pengutronix.de>
From: Denis Orlov <denorl2009@gmail.com>
Date: Tue, 6 Jun 2023 12:23:50 +0300
Message-ID: <CALHb5ujFX=0QUsdeFDNmvoL6W4+79aXwnsn0j4+hnWOVQ6P=aQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_022403_116462_7DDE7EC3 
X-CRM114-Status: GOOD (  19.52  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/17] MIPS: Makefile: sign-extend TEXT_BASE value on CONFIG_64BIT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 6 Jun 2023 at 12:04, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> On 05.06.23 22:10, Denis Orlov wrote:
> > The code that uses TEXT_BASE will fail on reading truncated 32-bit
> > address if running with 64BIT enabled. As we only support running from
> > compatibility segments (i.e. no 'proper' 64-bit base addresses), simply
> > make sure the value is sign-extended when passing it as a define.
>
> Below is not really a sign extension. e.g. 0x0000_0000 would be turned
> into 0xffff_ffff_0000_0000. Is that ok?

Yeah, we can only handle KSEG0/KSEG1 segments, i.e. text base should be
somewhere in 0x8000_0000/0xa000_0000. So for those, this might be
considered a sign extension, I guess.

Regards,
Denis

>
> >
> > Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> > ---
> >  arch/mips/Makefile | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> > index bad6e574c4..65a00379ab 100644
> > --- a/arch/mips/Makefile
> > +++ b/arch/mips/Makefile
> > @@ -57,7 +57,13 @@ cflags-$(CONFIG_CPU_MIPS64_R1) += $(call cc-option,-march=mips64,-mips64 -U_MIPS
> >  cflags-$(CONFIG_CPU_MIPS64_R2) += $(call cc-option,-march=mips64r2,-mips64r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS64) -Wa,-mips64r2 -Wa,--trap
> >  cflags-$(CONFIG_CPU_GS232)     += $(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) -Wa,-mips32r2 -Wa,--trap
> >
> > -KBUILD_CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
> > +ifdef CONFIG_64BIT
> > +MIPS_TEXT_BASE = $(subst 0x,0xffffffff,$(CONFIG_TEXT_BASE))
> > +else
> > +MIPS_TEXT_BASE = $(CONFIG_TEXT_BASE)
> > +endif
> > +
> > +KBUILD_CPPFLAGS += -DTEXT_BASE=$(MIPS_TEXT_BASE)
> >
> >  ifndef CONFIG_MODULES
> >  # Add cleanup flags
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>


