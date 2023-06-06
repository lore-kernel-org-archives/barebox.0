Delivery-date: Tue, 06 Jun 2023 11:40:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6TAm-00CslL-AR
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 11:40:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6TAj-0008Jx-V8
	for lore@pengutronix.de; Tue, 06 Jun 2023 11:40:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sFxdhyTVrqsEUCJglDjCrpimhNSpQOh81t7J9m6tux0=; b=tJXDgHi3FnrUpqLhukPphpYKU1
	hJsjFuVhkggu1JfCFeo+XykkwSaM+bR0e5FPzZHiBVXpl95L3zxczuaG5Pyb4yqIfRoiVUMVL+2OV
	1B74HHS/rHaGhzZFsQBI1sUbUnyD/vkWAwTQItNRH49T7+IBZEYW7zerrMengnP2Mnahj0Hn8yOYV
	PSMeNN6JG5TJWnGn9Gk8+iAcQseP6bF8yB0wgGCzc2q+ZqG/vmq9h3QDOQplFAxCTdBk8J0+qmo9C
	5106kCuX8KOwmg56JWLW3AHEDs9B09saP2QFxHXiiLy8SKRScKxkuDiqnzSWU/3rkfAIcnM4NGzfW
	VprtBjaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6T9a-0012T9-2c;
	Tue, 06 Jun 2023 09:39:02 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6T9W-0012SB-1k
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 09:38:59 +0000
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-39ab20e2a06so1496801b6e.3
        for <barebox@lists.infradead.org>; Tue, 06 Jun 2023 02:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686044335; x=1688636335;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sFxdhyTVrqsEUCJglDjCrpimhNSpQOh81t7J9m6tux0=;
        b=E+an01yFw8L25KeCfR0q/pgf3YcuEoVwNIXYZLBKCr2mhB1RX8Btkh92JrlvJybxq1
         XnS4w26fQ7QKOsDRAj1aRowdWIBkVbFwwLmA/pcyoXraMySf0AVEtcr2Kth9gofXsNVA
         ODglvVy/yHe28zd976a+tOrZ8cbACWq16okV7DLnlGpogTTeOWlLIK0TiLonIr6HqT13
         QpVB2imYIfeqeLPqpQ2vZISDHB9tTpAMuNKLsO4+6pqDDEDcrwuPY++U2W/LxcWy0Euo
         t+HsuVuswCZMooy+rql1vF2SZr5EybNTzZ2zg5iK4fIUseYqi7uws3g8pnWLK9wp3VgZ
         QHQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686044335; x=1688636335;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sFxdhyTVrqsEUCJglDjCrpimhNSpQOh81t7J9m6tux0=;
        b=N+TCZnoy8qmSPKbcYjTUzx8sAHlBj9eCuzBtE3AKhfk3zZvPb+0j8jSSUwXq0Gw+9t
         5EJ2JW2d5ZWxv4NrtbtvqPrUmFlR2tKoQCyOmnMglyO6sqO1eMgqL1N75KycplZZCgm2
         ztKHqInmRZX6nQgJKkSIKpY3IL4HzkggTbOls97SokT1qabSXYB/BIBBSgtupeH2E0nv
         vCQnyiJSR5KvAC4ykDHAp8HElAuobrkUIO428sF/bEvNA3d05yOHImTl79Onez8zInLx
         h47J6YcCbVJXrzHMiozQ2xi/0ktDyA2FmX6j+gK3eIOkibMegzWM8L2lIhZLiPfnnvOm
         WdDQ==
X-Gm-Message-State: AC+VfDwTUmCabCslYxwDpFzKl+z68eyGeKslCzyjoh0Zt0Mqym64WiIK
	g6f8s5wPVgt/fq38NG8kMugycKqeUMUAVkpDG9z6sU1tItefVw==
X-Google-Smtp-Source: ACHHUZ57B5gywf/NwSyFZ8yXAc6qQc/UVKIbFkFFLFzO5qL1LEfkvphZ50BqL9ZTveXQKGjsCr6fJ7cpa5YE+ofgHI8=
X-Received: by 2002:a05:6808:90d:b0:39c:4653:615c with SMTP id
 w13-20020a056808090d00b0039c4653615cmr757100oih.22.1686044335464; Tue, 06 Jun
 2023 02:38:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230605202634.42175-1-denorl2009@gmail.com> <20230605202634.42175-5-denorl2009@gmail.com>
 <2b45c583-276c-b4f1-ac11-07062033c7ce@pengutronix.de>
In-Reply-To: <2b45c583-276c-b4f1-ac11-07062033c7ce@pengutronix.de>
From: Denis Orlov <denorl2009@gmail.com>
Date: Tue, 6 Jun 2023 12:38:43 +0300
Message-ID: <CALHb5ujwxX2FLioQGqJNL95ZA2HkAeBituRfPPMRYZa64Dui2g@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_023858_578278_5F3A709B 
X-CRM114-Status: GOOD (  21.41  )
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
Subject: Re: [PATCH 04/17] MIPS: o32: provide ta0..ta3 register definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 6 Jun 2023 at 11:13, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> On 05.06.23 22:10, Denis Orlov wrote:
> > This allows to write generic assembly code that will compile under both
> > o32 and n64 ABIs, as otherwise the register definitions would conflict.
> >
> > Taken from Linux kernel sources, commit 'MIPS: O32: Provide definition
> > of registers ta0 .. ta3.' (3ba1e543ab4b02640d396098f2f6a199560d5f2d).
> >
> > Signed-off-by: Denis Orlov <denorl2009@gmail.com>
>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>
> I must say, this file looks odd though. _MIPS_SIM is apparently
> defined by the compiler and it's compared against _MIPS_SIM_ABI32,
> which barebox defines...

AFAICS, the compiler defines _MIPS_SIM with the value of some number,
_MIPS_SIM_ABI32, on the other hand, gives a symbolic representation
(as another define) for this number. This just adds more sense to what
we are actually comparing against. But this header also seems to be
quite old, maybe nowadays there is a better way to check for those.

Regards,
Denis

>
> > ---
> >  arch/mips/include/asm/regdef.h | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/arch/mips/include/asm/regdef.h b/arch/mips/include/asm/regdef.h
> > index 1300251661..df87582e8e 100644
> > --- a/arch/mips/include/asm/regdef.h
> > +++ b/arch/mips/include/asm/regdef.h
> > @@ -3,6 +3,8 @@
> >   * Copyright (C) 1985 MIPS Computer Systems, Inc.
> >   * Copyright (C) 1994, 95, 99, 2003 by Ralf Baechle
> >   * Copyright (C) 1990 - 1992, 1999 Silicon Graphics, Inc.
> > + * Copyright (C) 2011 Wind River Systems,
> > + *   written by Ralf Baechle <ralf@linux-mips.org>
> >   */
> >  #ifndef _ASM_REGDEF_H
> >  #define _ASM_REGDEF_H
> > @@ -27,9 +29,13 @@
> >  #define t2      $10
> >  #define t3      $11
> >  #define t4      $12
> > +#define ta0     $12
> >  #define t5      $13
> > +#define ta1     $13
> >  #define t6      $14
> > +#define ta2     $14
> >  #define t7      $15
> > +#define ta3     $15
> >  #define s0      $16     /* callee saved */
> >  #define s1      $17
> >  #define s2      $18
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>


