Delivery-date: Tue, 30 May 2023 17:40:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q41SV-002wZg-QN
	for lore@lore.pengutronix.de; Tue, 30 May 2023 17:40:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q41ST-0002Gh-Bo
	for lore@pengutronix.de; Tue, 30 May 2023 17:40:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NKTvgQLnR9DoGPY7vlFfTeypfT+e+cpeDoOBe1T5SDw=; b=Darh2jbS+W62TGR05paJxQZvL0
	ZLVNyL6PSrOCbuYCW7Bm5Dt+/fFfVWASkx49lyAepGxfYVip72W1PKPQ5V9InM0c9J4PHtXOEYoX5
	ZVxzaVAaqp5QR1BbjAb6TeRmDUSoM9o/Xx0+MfpfUjfJ/CPxF+1+Wr9Piv76LqmC7FuLfFMne8iDs
	v8ujSWgMC1Y0QztwfunBS585QuGtw3BG5JTJWFaUeWWHNmzaElyiQcNGyGlFCBI0Ms5pte+/MyBWo
	YHr1CsZBetjp1SjvS9ZGMnmp8lBuWZEuXyfGFCvn0JHnychk6mg8qg6XjuNuIqEYJ+8jq+bqPV0dZ
	37wegQWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q41R8-00EQyj-1o;
	Tue, 30 May 2023 15:39:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q41R5-00EQxn-0z
	for barebox@lists.infradead.org;
	Tue, 30 May 2023 15:39:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 457E362C66
	for <barebox@lists.infradead.org>; Tue, 30 May 2023 15:38:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A85A0C433EF
	for <barebox@lists.infradead.org>; Tue, 30 May 2023 15:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685461137;
	bh=7WKLwovQlELfuMaftYlTtX4hgR6q12ttyqz9pdBBkmw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=RMjxZvaPlMNbH0g7C2OX8cvW2me5Fm/NTQSoTQLjnbGrkgLZjrArUCvCCKTrUTSci
	 HhoZPG7ONKSsCFkAuvl/QxZ7XR2jtUxjTunWoR7XqgwDbOVFts8UIuQBd4azrqThNf
	 r9X/RrgcuWJBPtqSff2VzQbcItAWwBVaftQ0C+VffXYX0fClP6w+itUyk/fEIulmNA
	 NHivyEoBu0zZvJj04qJoQOl3Hvohiy8D/mM6BNpsWKdWiwfPXJZVwCZJx/+DE3WVE7
	 NHSvVADYvw5WgNChRGYQOntjePgACsFT8G4PCwVp5xtuvb07duMCKvm4ZPS/hI0I6s
	 7BJ1LO9B++mjA==
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-397f3aec11aso3151994b6e.1
        for <barebox@lists.infradead.org>; Tue, 30 May 2023 08:38:57 -0700 (PDT)
X-Gm-Message-State: AC+VfDzZcGUdgFnoDF5vACUhrKSjojxUQZ76egl0myjSI0Or/9ckO5SG
	zg4tqE+5EO3hvMPtjeUzd7fCPFD4+XNpYXImjiA=
X-Google-Smtp-Source: ACHHUZ7FMFz3l2Tl+ENuh1UQB0GVmBKo6I5RG6pMVRESxYdgzB/wtHp+t/OV3E6PP3UAnpvZgI4Ti+S3i2xrq2ahpkY=
X-Received: by 2002:aca:dec1:0:b0:38e:a925:8f95 with SMTP id
 v184-20020acadec1000000b0038ea9258f95mr5012085oig.26.1685461136925; Tue, 30
 May 2023 08:38:56 -0700 (PDT)
MIME-Version: 1.0
References: <20230523094035.3452447-1-a.fatoum@pengutronix.de> <20230530123845.GA15436@pengutronix.de>
In-Reply-To: <20230530123845.GA15436@pengutronix.de>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 31 May 2023 00:38:20 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ1jB-r+gKtL-=+dKZ=7jz3yB0BD4vuS4YWOcya=NDw7g@mail.gmail.com>
Message-ID: <CAK7LNAQ1jB-r+gKtL-=+dKZ=7jz3yB0BD4vuS4YWOcya=NDw7g@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_083859_448403_B00F0240 
X-CRM114-Status: GOOD (  32.72  )
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
X-Spam-Status: No, score=-104.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] efi: payload: iomem: add commented out #define DEBUG 1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 30, 2023 at 9:38=E2=80=AFPM Sascha Hauer <sha@pengutronix.de> w=
rote:
>
> Picked some outdated address from Masahiro, so once again:


The macro name is misleading - perhaps, it should have
been named as __is_defined_as_1().

I do not know if __is_defined() is future-proof.
IS_BUILTIN, IS_MODULE, etc. are official,
but __is_defined() is internal.





>
> On Tue, May 23, 2023 at 11:40:34AM +0200, Ahmad Fatoum wrote:
> > The code uses __is_defined, which only works for undefined macros and
> > defined ones with a value. This is different than the debugging prints
> > that accept empty defined DEBUG, so add a commented out #define DEBUG 1
> > to alert those seeking to debug the code.
> >
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> >  common/efi/payload/iomem.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/common/efi/payload/iomem.c b/common/efi/payload/iomem.c
> > index 6b92ca993aa7..550d832668ed 100644
> > --- a/common/efi/payload/iomem.c
> > +++ b/common/efi/payload/iomem.c
> > @@ -3,6 +3,7 @@
> >
> >  #define pr_fmt(fmt) "efi-iomem: " fmt
> >
> > +// #define DEBUG 1
>
> I don't like this very much.
>
> Generally being able to do this is really appealing:
>
>         if (__is_defined(DEBUG))
>                 ...
>
> Indeed this is so appealing that others may copy this. Having to
> remember then that there's a subtle difference between __is_defined() and
> #ifdef is not so nice though.
>
> We could add
>
> #define __ARG_PLACEHOLDER_ 0,
>
> to include/linux/kconfig.h. With this __is_defined() and #ifdef should
> do the same thing. It would even better to add this to the Linux
> upstream version of this file. I am not sure though if that has any
> unwanted side effects. Masahiro, do you have an opinion about this?
>
> Another option would be to add this somewhere:
>
> #ifdef DEBUG
> #undef DEBUG
> #define DEBUG 1
> #endif
>
> Sascha
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|



--=20
Best Regards
Masahiro Yamada


