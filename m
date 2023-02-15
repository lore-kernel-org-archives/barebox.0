Delivery-date: Wed, 15 Feb 2023 16:14:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSJU6-008XKk-1I
	for lore@lore.pengutronix.de; Wed, 15 Feb 2023 16:14:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSJU3-00070E-FB
	for lore@pengutronix.de; Wed, 15 Feb 2023 16:14:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JISBD6RkhL0xcAfEjAgkvqomZWHn6X3JcZBZmBoMXp0=; b=Sw+X3pq1VW5EQxvXZmuHByV4N8
	JXK6N+EBkUwk3xizbTRpHpwQZvv8ees4WY8/dY6W9XWx+E2vLCkm1uMRtIpz5HLoy7szLKIXqBXj7
	BeSjNbZJhChcO72FXKX5HZIEGt0FydDor976NNGA5QJktLwICsG1XVXSPGswzK5hkaUnMMqe0egVC
	oyzDmk4ARcHD5Fla84WXNpafD3jG8GR6nm0AcqF8lc81LAOpx/OvGXlLkQgWZ2WD2dVpeAFC6CdvU
	0B//dqK0w1aIKnQsLHCj4r6o3NVzgPE7+15d3zg/j/hOwT/GeKTQWca5vGf4lrpHkjv6e30ns+8QZ
	WNjbG7Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSJSp-006LYL-Vv; Wed, 15 Feb 2023 15:12:56 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSJSm-006LX6-0h
	for barebox@lists.infradead.org; Wed, 15 Feb 2023 15:12:53 +0000
Received: by mail-lj1-x22d.google.com with SMTP id x29so22628868ljq.0
        for <barebox@lists.infradead.org>; Wed, 15 Feb 2023 07:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JISBD6RkhL0xcAfEjAgkvqomZWHn6X3JcZBZmBoMXp0=;
        b=C2yjtV+64r9yTnGpP+aB+kvrhML68GDGQxfS1WVa226R4qeC867eEzvlxu/qMn2pL8
         g7ygN5RfFKARSkAnBnUzFveoAUnGVmUn61DZ+vIH81Zfp3adzzyC50C67Per1WagvJH8
         sA92DDe1t7vBfgbKeYdxL7SONRWeggvqoSi1z09VFfc+cxZsh6x8P7lqjG84IQvh43wT
         H0Rg66IeSvuP3fkNaLkywE7f3wGE1bboHij+iHNbOHnFlZ3xjpSxk22Bb3lodBU3APxn
         Q3fkkkj5BzaAevoNm6en9HyK75NN6BSkXGmRpDWDrFUoGCVGSXBoEQlqVPhmPUtvpZZj
         f6jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JISBD6RkhL0xcAfEjAgkvqomZWHn6X3JcZBZmBoMXp0=;
        b=48E0Fm0Y4QismExhv3xbnGfdpBM1EgPTi+FrnFT1dS8BWIuMgNtUa+cA9WirxyXxZk
         2TMvwEd5mH3X6vM+0l6NtBFgpWADWuS9EHogrzqgYVaiHhOMgA3RCcRcIjZSRYwiZUnx
         grhIfZh44UOx8O4Vj0c6FeOuHKa9lzrikH6NjCi21udT29ba9jdP8WtMWl34ILm20ZCw
         Bi+o46to2FL1+WI25HA3pLNJI7U1Hu+F5fLggslMiVg/e/4/RyLFme5tpHknO8+i4zRU
         RaJgLCtIZUdoMwosi2is8s+8rI7SDzLNMgx3zBMArYOkRIrjtG3rVC89w0JXgrmqGWtP
         jVnw==
X-Gm-Message-State: AO0yUKUdpeLwvnggrcgG1bcdQfMsyv+NvZvx+r38yiTqfVkK4mo6bo7l
	GepDeT+dhMeqvcZPOOQa4wq/iXgoj2tkhjeMYCI=
X-Google-Smtp-Source: AK7set8xzVC4FbEh11lM6FpHzDTbW8XWrcINFVGn7aC2OAx7s+ynGha4iJYsBH5qfVXCwkQ6Xk41FtnhIhGTZVGw7SE=
X-Received: by 2002:a2e:b539:0:b0:28e:54f:b187 with SMTP id
 z25-20020a2eb539000000b0028e054fb187mr677002ljm.5.1676473968057; Wed, 15 Feb
 2023 07:12:48 -0800 (PST)
MIME-Version: 1.0
References: <20230203135011.2061939-1-m.felsch@pengutronix.de>
 <12e370a3183d04572da1c5749d8e64dcf5091a0c.camel@linuxfoundation.org>
 <acf8b79c23675a2b4c7225e55e4ab369fbcf7f54.camel@pengutronix.de>
 <7f5ebf2315c969ce7c76d024ec373f45cc8eff3f.camel@linuxfoundation.org>
 <CAP9ODKokQpGL3ttukqRaq3-8m0ci7qp8mckbgudGJx1HOu-fPw@mail.gmail.com>
 <CANNYZj8_RkjMASpozi+oSu3XOHCW04n9YUC5UgHKy+2vm=cDrQ@mail.gmail.com>
 <CAP9ODKqjkCuhyVkfhskOSdF3g57=R9MO6Bcy2R5zBV9fVd6wZQ@mail.gmail.com>
 <CANNYZj_jLK-FXrGx+bF6fXrSsc-so6G_kpyZKNTpatqJKxQeRg@mail.gmail.com> <721e4d45d0d67a03be6ea4953351f5cb0c4ac36d.camel@pengutronix.de>
In-Reply-To: <721e4d45d0d67a03be6ea4953351f5cb0c4ac36d.camel@pengutronix.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 15 Feb 2023 16:12:36 +0100
Message-ID: <CANNYZj8UMuzxfXjXx4-pn+a1RXxmccqsq2uiXceqE8VM2NdTBg@mail.gmail.com>
To: =?UTF-8?Q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>
Cc: Otavio Salvador <otavio.salvador@ossystems.com.br>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, Marco Felsch <m.felsch@pengutronix.de>, 
	openembedded-core@lists.openembedded.org, yocto@pengutronix.de, 
	barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_071252_102465_8DF90346 
X-CRM114-Status: GOOD (  24.37  )
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
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [yocto] [OE-core] [PATCH 1/2] barebox: add initial support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There was a parallel conversation on the irc meanwhile; we've
concluded that Enrico will look into adding qemu based tests for
barebox into oe-selftest like we already have for EFI bootloaders, and
there will be a new patchset then.

Alex

On Wed, 15 Feb 2023 at 16:01, Enrico J=C3=B6rns <ejo@pengutronix.de> wrote:
>
> Am Mittwoch, dem 15.02.2023 um 15:11 +0100 schrieb Alexander Kanavin:
> > On Wed, 15 Feb 2023 at 14:53, Otavio Salvador
> > <otavio.salvador@ossystems.com.br> wrote:
> > > I think the Barebox inside OE-Core allows a bigger integration and
> > > reuse of existing tooling for signing and other classes currently wel=
l
> > > integrated with U-Boot. For me, a critical point for decision is if
> > > Pengutronix will commit to support it.
> >
> > You should be well aware there's a history of people contributing
> > stuff to core and even assigning themselves as maintainers, then
> > disappearing.
>
> If possible I would add my name with the above-mentioned Mailing list to =
the maintainers file.
> This ensures I am responsible but not the only one reading the mails.
>
> > And then it falls (largely) on me to keep things
> > (barely) going. What happens if ptx withdraws its commitment? Can I
> > then send a commit that removes barebox from core? Imagine the angry
> > lynch mob that will show up after my head.
>
> I am fully ok with removing barebox again if we fail maintaining it prope=
rly.
>
> Should I sign this somewhere? ;)
>
> > Adding things to core is a decision that cannot be easily reversed, so
> > I'd rather have barebox in meta-barebox for a while, with any needed
> > fixing to classes and infra in core.
>
> It has been in meta-ptx since 2015 and in meta-barebox since 2016. I woul=
d call that 'a while' :)
>
>
> Best regards, Enrico
>
> --
> Pengutronix e.K.                           | Enrico J=C3=B6rns           =
     |
> Embedded Linux Consulting & Support        | https://www.pengutronix.de/ =
|
> Steuerwalder Str. 21                       | Phone: +49-5121-206917-180  =
|
> 31137 Hildesheim, Germany                  | Fax:   +49-5121-206917-9    =
|
>


