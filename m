Delivery-date: Sat, 11 Mar 2023 17:57:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pb2Wj-000BpA-MS
	for lore@lore.pengutronix.de; Sat, 11 Mar 2023 17:57:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pb2Wj-0007lO-HW
	for lore@pengutronix.de; Sat, 11 Mar 2023 17:57:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EIomLG7UnQJj876RAoaqIkfKcALzjeNdqoIdaS6cOuA=; b=CuavUOpj/f00Ht6Wn2YN0ViDpy
	0MOVGyntCRBpjlMrASb4D1BCxNSs1Posn7x58OcRwN38gUQ6dFrCR7Tp8XPcBWcFU/S82VS8OsFW9
	SwEeWkstKWXR2kIKJmUjE/jhk1LP5RWoa+CAD+vBObTw9tK6amrXhDjnUndCJNSEzcaCPL/TwsVST
	A08V+afl5VFDjYktTyWmmUxH3oB/Ob8sZHrk3nLBqLwFQoEH8Yee+kOo6EBLnfXRXZItBKyRmC5QE
	9aGtoD+YIL3Bl6ezeFJzkEnKHi5QI8AaK+prb0AtHt+REGwAJ5ZD6r9166ScDDPcV31TBhrW3I9oA
	89n4GSbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pb2V2-000uqm-H7; Sat, 11 Mar 2023 16:55:16 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pb2Ux-000upv-Qr
	for barebox@lists.infradead.org; Sat, 11 Mar 2023 16:55:13 +0000
Received: by mail-qv1-xf30.google.com with SMTP id nv15so5648548qvb.7
        for <barebox@lists.infradead.org>; Sat, 11 Mar 2023 08:55:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1678553710;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EIomLG7UnQJj876RAoaqIkfKcALzjeNdqoIdaS6cOuA=;
        b=S7/hJZquj/hdw3Vrzd5x+R8e/Mm0fjBCdrv4gxJSldMkrCDu+vEuEJ88+dnBJpoX+b
         fUvHDM3sXXhfA+bQ8tRmgyIx07JuEGRJ0+ac4yXRbrNPYerCRJzAvIPXhDrpj5UVdSoS
         UPG7hQRaNCJYbIPB8O8RCnkNpPsVWbrKSHaZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678553710;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EIomLG7UnQJj876RAoaqIkfKcALzjeNdqoIdaS6cOuA=;
        b=V6JY/23Kd3XRdnWI6QhznvKFTtwLXdDgzLzyCIrt6tAtS9kHtOYXZgMDMn6gAEsm+A
         athlRifrWyBJvhlO1RtFZQpG7JLSti7Dmnyin8BS+G+gRXgepEjHMqGTnIym6Zb4WnDQ
         gQIEvfmIH9UO7VGJFtLIvF7XtT3EOnVDg1Dx8iyDGOhVuRX/U2qK1f/bkSa0BSNomI8d
         JrpB+myxiRG+HOrnK67pvdmUL+IZAslXZhQd9onscAw1lypqNVVdlH3+XvLUMSA2YaMI
         fkWKwOnhpmH3uhUW3dXYns+sAwaLhi38pXFj8uMrdiyawX8IRS7WGzJ+Yey8i94JMqAk
         Q/Jg==
X-Gm-Message-State: AO0yUKWjgdWCFkv9gm64Uzlt/aw/XgJO9xGJ/zvgRRIomj3e21dHUXES
	5h1R1Kt/cRQiZqOrkDsRHc8R0Q==
X-Google-Smtp-Source: AK7set+jc34nG16Iv3yaR0QZYNu/Re47mZ/FVzqaCs0fWfCvaN09bMctjtbX7adZwq53L84o9rBuPw==
X-Received: by 2002:a05:6214:258f:b0:5a3:fffa:f600 with SMTP id fq15-20020a056214258f00b005a3fffaf600mr377474qvb.26.1678553709699;
        Sat, 11 Mar 2023 08:55:09 -0800 (PST)
Received: from bill-the-cat (2603-6081-7b00-6400-0000-0000-0000-036b.res6.spectrum.com. [2603:6081:7b00:6400::36b])
        by smtp.gmail.com with ESMTPSA id i4-20020a05620a248400b0074357fa9e15sm2110419qkn.42.2023.03.11.08.55.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 08:55:09 -0800 (PST)
Date: Sat, 11 Mar 2023 11:55:07 -0500
From: Tom Rini <trini@konsulko.com>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <20230311165507.GN3041508@bill-the-cat>
References: <20230310183717.RESEND.1.Idaaf79c3e768b85750d5a7eb732052576c5e07e5@changeid>
 <bae2702e-3570-f461-b86f-e56ce82a636e@infradead.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nKkts6aBvDQ9fwd+"
Content-Disposition: inline
In-Reply-To: <bae2702e-3570-f461-b86f-e56ce82a636e@infradead.org>
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230311_085511_923873_24FACAEE 
X-CRM114-Status: GOOD (  24.98  )
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
Cc: barebox@lists.infradead.org, Nicolas Schier <nicolas@fjasle.eu>, U-Boot Mailing List <u-boot@lists.denx.de>, U-Boot Custodians <u-boot-custodians@lists.denx.de>, Simon Glass <sjg@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Nick Desaulniers <ndesaulniers@google.com>, LKML <linux-kernel@vger.kernel.org>, linux-doc@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>, Masahiro Yamada <yamada.masahiro@socionext.com>, Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RESEND PATCH] kconfig: Proposed language extension for multiple
 builds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--nKkts6aBvDQ9fwd+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 10, 2023 at 09:39:15PM -0800, Randy Dunlap wrote:
> Hi--
>=20
> On 3/10/23 18:37, Simon Glass wrote:
> > (I am sending this again to get more feedback)
> >=20
> > In the case of Linux, only one build is produced so there is only a
> > single configuration. For other projects, such as U-Boot and Zephyr, the
> > same code is used to produce multiple builds, each with related (but
> > different) options enabled.
> >=20
> > This can be handled with the existing kconfig language, but it is quite
> > verbose, somewhat tedious and very error-prone, since there is a lot of
> > duplication. The result is hard to maintain.
> >=20
> > Describe an extension to the Kconfig language to support easier handling
> > of this use case.
> >=20
> > Signed-off-by: Simon Glass <sjg@chromium.org>
>=20
> IMO Masahiro has already answered this multiple times and I agree with hi=
s answers.
>=20
> For others, the full previous thread is at
>   https://lore.kernel.org/all/20230219145453.1.Idaaf79c3e768b85750d5a7eb7=
32052576c5e07e5@changeid/

Well, I think what was unclear, or maybe we just wanted to confirm the
answer was "none at all", was this. As good community neighbors, we see
a generic issue in the Kconfig language, a tool used frequently outside
of just the Linux kernel, and would like to contribute back. Ideally
without having first gone off, designed and implemented something, and
then been told it's all wrong and to rewrite it first. So what level of
interest is there in this?

As I pointed out in that thread, I believe barebox has examples where
some keyword like we're proposing here would help them (and yes, there's
only a dozen or so symbols so it's also manageable without anything
special), and Simon believes Zephyr will be in a similar situation soon
enough (which doesn't use the kernel's implementation of the language).
Frankly, I keep going back to "tristate" is just the original example of
what we're talking about here (CONFIG_FOO=3Dn, CONFIG_FOO_MODULE=3Dy), not
that I'm suggesting we would remove the tristate word.
So we would really like to make sure as many people and projects are
aware, as possible.

And as Simon asked in the thread, what about code refactoring that makes
further maintenance easier? Clearly, such patches would need to be
against the current appropriate tree.

--=20
Tom

--nKkts6aBvDQ9fwd+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAmQMsmcACgkQFHw5/5Y0
tyx+wwv/dmFZaZi7VhdtJ2VaNC4i1XByc8cyBYW3rT8yVRK75dzQ9I/p0FGL8LCx
73GpQdSlx+n8S+qPu3d71WUpv5dZBBdqSjD6s4olHY3p+xuriV9Qd1UM9qiEyYXf
sQH+bVlvK+82C3xADqUiKdgTzKqMKxW2zhUj88qTIHxKpdbzF/7Y7TnuMLH3sAhP
Ho8dpmM+PKxL0J4i9aMX664hpwU7I4yDBnc0oXa2ROgRdogu0yKt+6TGecs9qsL2
IUnl9Cp8x6EtFVQd2otm/UUAQrbyGBW+WZDVWcuS99Bs0bGi1Bl7B+IBsP8JOmD0
jlMcn/IJlo1b7cAKri8mlPGBEXtIcthBJ/TYPmx/MwmG9Oj0WjQPLsfYVuppb/bu
7i2nHzVRl3+UBWMppuyrsUROhBBdlBEqPJRZJhCHEfHa6kKGucClIoqM7RqmOxtC
dOSQrs/XyC9gCJ4TUDep5eSiNizYzpl14QcJpxv+iQu86W96tWE5fc4Q4zZSEl5m
YzXxsFiQ
=OI2Z
-----END PGP SIGNATURE-----

--nKkts6aBvDQ9fwd+--


