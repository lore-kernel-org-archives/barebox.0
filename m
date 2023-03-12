Delivery-date: Sun, 12 Mar 2023 12:08:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbJYq-001Agd-0u
	for lore@lore.pengutronix.de; Sun, 12 Mar 2023 12:08:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbJYp-0006hG-MR
	for lore@pengutronix.de; Sun, 12 Mar 2023 12:08:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+BgvrSse6VsxZvMcwQK+cRjK2o1osMlstxKdePM+r8=; b=duHDGoC1mM5uO5
	DF7JRlGObWl3srcYfoThCGKaxBcw7dMdYw9VM9tmAwhnj/1gc1e+/u+n2+YeS/vPi95fKw2/XgL9N
	0sqLf9vzs3S7Wq4Vw91xz9vyqghRVIimAva3pQzoOJ77oePpvECxogHViIJ+rhqDZoBU6XBsVuOrH
	6nMBb40FJhWS9Su4UvUHITotOsSLoX69Hc2IqzeyrgdUbg5X/oYCPB2GC9mFCHW48Vx1KalNBYtd5
	yYglY2SsGWy9ug91R9mOf8ozyDiMsgMn5JaC/AwUf7xhmdngTps82114Z1OAnsmeMjpq6odm+ohRH
	wEIDL5ofB5Fmpxn5FGBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbJX8-0028G4-Cp; Sun, 12 Mar 2023 11:06:34 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbJX1-0028El-Lc
	for barebox@lists.infradead.org; Sun, 12 Mar 2023 11:06:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3203AB80B08
	for <barebox@lists.infradead.org>; Sun, 12 Mar 2023 11:06:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7572C4339E
	for <barebox@lists.infradead.org>; Sun, 12 Mar 2023 11:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678619183;
	bh=GhXxQ3LGqBwu1PDYIRUrHFHxvh4REo5L/XF+09XJtA8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=UXEr1Gv/oTDMY7Vm7pkDh9fTv9KlV34UHz9IPWS6o0qb6h037dPedNzxigMD+cHES
	 8Zd9Swd1k75o1+RSblngXhEYO82KmetXLplpd3giDrkLYAxwLDU+UYu+3+yXMMNCHW
	 RV6Oh6d9lSw6z++ZdjWQWrGT5hNhAbia7XzNjTHa+4lNFCrcrMi3igT2oTqhMiM4Xq
	 CU9orID0wj8hCCjwvOOfAAXEMth0R3CVrx4zpVD8LyedqKIalnJg/TD36hAy+ITHGj
	 IQ4Q9M1dRck5G6vLhoCOs9DqLo1dpqbPBVebpCFtJay5cuzoNYecv6fTU1iyX972Kq
	 +oIm6I9XNx9Dg==
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-176b90e14a9so10934403fac.9
        for <barebox@lists.infradead.org>; Sun, 12 Mar 2023 04:06:23 -0700 (PDT)
X-Gm-Message-State: AO0yUKUNLXiH5MPkPfWQPpDZqtOTgwe5MohN2R06m/ry/Ucasj3Glg3I
	p4hMhtzXYVtlj7wRBG4D3k1m+BJwaGj7rTyE+A4=
X-Google-Smtp-Source: AK7set8N/yTqs/8oLs98VVUCh2i/kT0xhMJy8fcAHCei2tSBTmzoBxO7UBLop8YToq1+IztNPBywlwqoUZb9vHGB+b8=
X-Received: by 2002:a05:6870:b00a:b0:176:50be:85b4 with SMTP id
 y10-20020a056870b00a00b0017650be85b4mr11293648oae.8.1678619183114; Sun, 12
 Mar 2023 04:06:23 -0700 (PDT)
MIME-Version: 1.0
References: <20230310183717.RESEND.1.Idaaf79c3e768b85750d5a7eb732052576c5e07e5@changeid>
 <bae2702e-3570-f461-b86f-e56ce82a636e@infradead.org> <20230311165507.GN3041508@bill-the-cat>
In-Reply-To: <20230311165507.GN3041508@bill-the-cat>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 12 Mar 2023 20:05:46 +0900
X-Gmail-Original-Message-ID: <CAK7LNARQ-PgxiCh+gm2efpfXmNBkdTp18OTk3sHtqNsk6by5-Q@mail.gmail.com>
Message-ID: <CAK7LNARQ-PgxiCh+gm2efpfXmNBkdTp18OTk3sHtqNsk6by5-Q@mail.gmail.com>
To: Tom Rini <trini@konsulko.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_040628_132908_DA0194C7 
X-CRM114-Status: GOOD (  37.83  )
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
Cc: barebox@lists.infradead.org, Nicolas Schier <nicolas@fjasle.eu>, Jonathan Corbet <corbet@lwn.net>, U-Boot Custodians <u-boot-custodians@lists.denx.de>, Simon Glass <sjg@chromium.org>, Randy Dunlap <rdunlap@infradead.org>, Nick Desaulniers <ndesaulniers@google.com>, LKML <linux-kernel@vger.kernel.org>, linux-doc@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>, U-Boot Mailing List <u-boot@lists.denx.de>, linux-kbuild@vger.kernel.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [RESEND PATCH] kconfig: Proposed language extension for multiple builds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Mar 12, 2023 at 1:55=E2=80=AFAM Tom Rini <trini@konsulko.com> wrote=
:
>
> On Fri, Mar 10, 2023 at 09:39:15PM -0800, Randy Dunlap wrote:
> > Hi--
> >
> > On 3/10/23 18:37, Simon Glass wrote:
> > > (I am sending this again to get more feedback)
> > >
> > > In the case of Linux, only one build is produced so there is only a
> > > single configuration. For other projects, such as U-Boot and Zephyr, =
the
> > > same code is used to produce multiple builds, each with related (but
> > > different) options enabled.
> > >
> > > This can be handled with the existing kconfig language, but it is qui=
te
> > > verbose, somewhat tedious and very error-prone, since there is a lot =
of
> > > duplication. The result is hard to maintain.
> > >
> > > Describe an extension to the Kconfig language to support easier handl=
ing
> > > of this use case.
> > >
> > > Signed-off-by: Simon Glass <sjg@chromium.org>
> >
> > IMO Masahiro has already answered this multiple times and I agree with =
his answers.
> >
> > For others, the full previous thread is at
> >   https://lore.kernel.org/all/20230219145453.1.Idaaf79c3e768b85750d5a7e=
b732052576c5e07e5@changeid/
>
> Well, I think what was unclear, or maybe we just wanted to confirm the
> answer was "none at all", was this. As good community neighbors, we see
> a generic issue in the Kconfig language, a tool used frequently outside
> of just the Linux kernel, and would like to contribute back. Ideally
> without having first gone off, designed and implemented something, and
> then been told it's all wrong and to rewrite it first. So what level of
> interest is there in this?

Sorry, no interest.
If you want to get a clear answer, NACK.

>
> As I pointed out in that thread, I believe barebox has examples where
> some keyword like we're proposing here would help them (and yes, there's
> only a dozen or so symbols so it's also manageable without anything
> special),

Barebox keeps PBL in very limited, ad-hoc implementation.
PBL has no more than 10 user-configurable options.
Sascha Hauer designed it this way.



Linux kernel also has a small loader (a.k.a decompressor) in
arch/*/boot/decompress/.

For example, CONFIG_KERNEL_GZIP is a CONFIG option
for the decompressor instead of the main kernel.

In this sense, you could apply your theory,
"Linux kernel is also multi build-phases, so Kconfig should have this
extension to move CONFIG_KERNEL_GZIP to another build phase".
No, no. The main kernel and the decompressor are well separated
and the latter is small and simple.

Barebox is the same - the main Barebox and PBL are well separated
and PBL is really small and simple.

The problems you are suffering from do not exist in Barebox.



> and Simon believes Zephyr will be in a similar situation soon
> enough (which doesn't use the kernel's implementation of the language).

Zephyr does not share any Kconfig code with Linux.
They use Python implementation, a.k.a. Kconfiglib.
It is up to the Zephyr community, but this requires extra effort.

> Frankly, I keep going back to "tristate" is just the original example of
> what we're talking about here (CONFIG_FOO=3Dn, CONFIG_FOO_MODULE=3Dy), no=
t
> that I'm suggesting we would remove the tristate word.
> So we would really like to make sure as many people and projects are
> aware, as possible.

This is on the boundary.
We can make the tristate optional if it does not make the code too ugly.

But, if you do not add CONFIG_MODULES in your Kconfig file,
users will not see 'm' in the first place.

I know some help messages still mention 'm', but is this the problem
you want to solve?


> And as Simon asked in the thread, what about code refactoring that makes
> further maintenance easier? Clearly, such patches would need to be
> against the current appropriate tree.

If such patches clean up the code, they will be appreciated.

--=20
Best Regards
Masahiro Yamada


