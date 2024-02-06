Delivery-date: Tue, 06 Feb 2024 05:42:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXDHb-005CHE-3B
	for lore@lore.pengutronix.de;
	Tue, 06 Feb 2024 05:42:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXDHc-0008Gg-KH
	for lore@pengutronix.de; Tue, 06 Feb 2024 05:42:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jfl3ndTm8/U/bYdudVP4wX1Wks4LIdIZml02O8QDkZk=; b=GEMfKhdG9V3y/kH1x4nbLC1t3B
	sZQOqw36m82JDMMpo67h82MmW5uB1UZT/OZAB5QwPyONPGC/YCydAiNnJ7o75/gpyzdnczPUm1J8w
	1JSq2srA/o5S9Q+q8DBXwIz9PUhE3gEUR2qZf+qqfbPIFjG6Bc/3EdWdldYY7Xy/oCYtfjj8UYHg7
	EvyLbCLDBu96bMuyaN/aX0wleRMWcyQMsC5UEhuCicyyDEWHmgRo3VHT8ivGCbfBF1dBOZnZLfUfc
	Cj0gk0EPIk85PWkftnsCVybGs0FXr0S5H0MTxLRv7wUW2nG1YIPm/C6laAyrgWrvdC/N2x/jT27o8
	8zmQAOWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXDGz-0000000637X-1XkU;
	Tue, 06 Feb 2024 04:41:29 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXDGv-0000000636n-3oo2
	for barebox@lists.infradead.org;
	Tue, 06 Feb 2024 04:41:27 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2d0b4ea773eso13995251fa.0
        for <barebox@lists.infradead.org>; Mon, 05 Feb 2024 20:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707194482; x=1707799282; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Jfl3ndTm8/U/bYdudVP4wX1Wks4LIdIZml02O8QDkZk=;
        b=nKLn7H7ygSMvblDOsQcbA+51Mj6HTVT7nH0Twg2Cxnl+UjfAhMGQHVXC8NuE2soBs1
         FAMqSnBDG0uMKZ+wnmlCUsN2U5wGukYwJuyD0ktQrVc6ckyTexblf5dZQ8270ddh6zsG
         sEepzxofBhBwOPybteeyf18bvKp+dpVwP/ZDiI+lq+xr9gyDMtiiBnaRW5xHpcOOJqby
         DeM5nWuY8Q8SkFoc15dm/j+zD8P+dvFGrfbbUlNrfqwiFbHMavcTVMpMA2/ESFt0gsXD
         YQx/EGseNgMZQtnbwM1XoWJMAopG40ajVNXTWebZsuKTMrRk87xkb9VP7VKYMzzxGznw
         /Rzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707194482; x=1707799282;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jfl3ndTm8/U/bYdudVP4wX1Wks4LIdIZml02O8QDkZk=;
        b=YzZvaKXsltzGlO0boyGZ2lx0EJUMSTAOaGpcRL4eCBxzIsXsxai9b1x+f8rgeYwk+q
         wVLlT+Kho/3oTN5eaurKTPMIiCWo41N13v/72wmGdUzCiOe0uM6SG/38Z1QtYoeB3W5p
         J5FO1hUJc8H22jmaJqk4IRCYIgpRmm/Xh405GuxWkGQnbRMJq7HHyrxIB2N0GLPv6f5I
         llJFoeEB1rTg9FBYY5eqxTWNi1+ryJi5DBqvAhIorucFjU4aUWVECweMlm7Yi0YvCCK9
         L78khB4TVx6kBD4VSexOBd5cMhZTwlItJCs6YpsiyXXw0FN1+57aqdefgKIhPCeH87eu
         gG/g==
X-Gm-Message-State: AOJu0YwhiPCEXMgSQ/2UNR+HqED4KgS7uAyYsU1xnw6vAvG/drqXPhwp
	FUIzLJW03VT/j/RBW/YqpoJd1KvXTCozAzBlpr5u0QCvuYPi5NpN0OTc5LzH+qp8ok4fE4/JfCB
	K2UJB/6wC7wx23W022QQL9dY6yXRZ+5IfIRY=
X-Google-Smtp-Source: AGHT+IGaqQnV0XqqqdFOZidmvFfPDv5U8HNLP0yMbajQCfTzyuZklhmq+ZByPS4Gr8nmXy/tq7o3drD5s4Vm49/UkYA=
X-Received: by 2002:a05:651c:1991:b0:2d0:adde:da6b with SMTP id
 bx17-20020a05651c199100b002d0addeda6bmr866187ljb.2.1707194482199; Mon, 05 Feb
 2024 20:41:22 -0800 (PST)
MIME-Version: 1.0
References: <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
 <a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de> <20240205214125.166802e0ece35280b563d728@gmail.com>
In-Reply-To: <20240205214125.166802e0ece35280b563d728@gmail.com>
From: Dan Shelton <dan.f.shelton@gmail.com>
Date: Tue, 6 Feb 2024 05:40:00 +0100
Message-ID: <CAAvCNcByUskEuqLMPmO6mbCOZHhYNx_OXZKYO+HKyz_=Cs2RCQ@mail.gmail.com>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_204125_970345_8CE35983 
X-CRM114-Status: GOOD (  26.14  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, 5 Feb 2024 at 19:31, Antony Pavlov <antonynpavlov@gmail.com> wrote:
>
> On Wed, 31 Jan 2024 22:37:50 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hi all!
>
> > Hello Dan,
> >
> > On 31.01.24 22:03, Dan Shelton wrote:
> > > Hello!
> > >
> > > Does barebox support booting from a NFSv4 filesystem, e.g. boot from
> > > NFSv4 filesystem into a Linux NFSv4 netroot (diskless machine)?
> >
> > The barebox network stack only does UDP/IP. There have been attempts to
> > bring a TCP stack into barebox, but none have so far succeeded to
> > make it mainline. This is a hard requirement before we can consider
> > supporting NFSv4. I hope that lwIP could fill this gap in the future,
> > but no one is actively continuing this work as far as I am aware[1].
> >
> > > We need NFSv4, because it does not need rpcbind, and combines
> > > filesystem, lockd and other stuff all in one TCP port (2049). Site
> > > policy also does not allow NFSv2/NFSv3, but allows NFSv4.
> >
> > Please note that this only concerns barebox and that kernel nfsroot is
> > unaffected. You can load kernel and device tree over TFTP and supply a
> > suitable command line argument to the kernel to use a NFS root.
> >
> > The standard net boot target does just that:
> > https://elixir.bootlin.com/barebox/v2024.01.0/source/defaultenv/defaultenv-2-base/boot/net
> >
> > It specifies TCP, but hardcodes v3 currently. I guess we could drop the v3 and let
> > the kernel decide on its own what version it will use? If that doesn't work, you can
> > override the file locally in your environment, e.g. via CONFIG_DEFAULT_ENVIRONMENT
> > pointing at a directory that contains a boot/net file with the appropriate
> > changes (or just call your boot target something else like boot/nfsv4).
> >
> > Hope this helps.
> >
> > [1]: Some attempts I am aware of:
> >      https://github.com/a3f/barebox/tree/lwip
>
> It looks like lwip is BSD-3-clause-licensed. Can we use the BSD-3-clause code in barebox?

I think yes

Dan
-- 
Dan Shelton - Cluster Specialist Win/Lin/Bsd


