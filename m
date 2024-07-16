Delivery-date: Tue, 16 Jul 2024 20:01:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTmUC-0002s1-0l
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 20:01:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTmUC-0001ML-E1
	for lore@pengutronix.de; Tue, 16 Jul 2024 20:01:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tfMP/IOYj+6tQTjdKSOFmgUSZdP5iBu7St0So2Hnc1E=; b=d9ye/WVziCGOGKPZG1asuxtxjV
	J2caeyRlbFbm62NxB9KfQ9nY5LGjOz+Q2NehiiezhKdqugfQ6ulx8yif/rgzmZKLzZv5vwSzF7J+g
	Q5R0zX8INBqj5TBQWp2PgqH4tPCUybyg1ZlhbULlWZ238EQzPS6cgL4hidayEHHEi93GpjXDiwKmw
	hP5F1q3dZ29+MJslubm6pT0g7IAY9GFnGYNYKYH/MSARurgCR5Odmy4SCIdpwBhVKXLCtGIzLpO84
	nCo7GwiZVS7ft26nQ+IRgy/RNnXUvPIpu5XAI+4F5zJYKr/27URq3nC2HAOf+r40P9KZjiF5aIkw3
	z9+LFEgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTmTU-0000000BCxG-3lQ0;
	Tue, 16 Jul 2024 18:00:28 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTmTQ-0000000BCvt-30UC
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 18:00:27 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-25e0d750b73so2421467fac.3
        for <barebox@lists.infradead.org>; Tue, 16 Jul 2024 11:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1721152823; x=1721757623; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tfMP/IOYj+6tQTjdKSOFmgUSZdP5iBu7St0So2Hnc1E=;
        b=uKvRzSC3Tga/Vvi1WsJ4hp7DvwUn6zRZBSjbek0oevDxuSlRYSN1zt1w6kDJeDJDqV
         ws3+lNlSruwtmLvJPGeolG+U6DN1RGW6flbhZDXKYqRyhNC+3RO2U34pCI3gQl3W6vBw
         2MIvzFPk4XO+q8qzU6YUwnXP314wQIxNJ41Bc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721152823; x=1721757623;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tfMP/IOYj+6tQTjdKSOFmgUSZdP5iBu7St0So2Hnc1E=;
        b=Doi32V0PSC/36jpDCgHZxv+uwholGFrpxb94JNfmcCCh3eY+ptnJx4jirc3SQO6stJ
         BS48ImVtskw2aWVUyIjnXXVKbscN2Vta2mzIkaZsCkIayYwS+jTvHPM7DlaztGweyL13
         sKTD9FpI4ZVgvoUFUAMYtatNg9SGmlu8s2KBdpbdDrC58X+BUHhMAJQrvFw501oAeqCy
         dXKHdTeSXqp8E13x4DoujcXU9IVB2fOZFnpRd8NWKZbqmZKwgMbpUqbdIpAKMwhuMWD5
         9RJhTg7GfY7yn98pHYQSkgojmjAMaObs6qXfXlBb3xYCDO15yQD6pL1/NbjQ4RzQYczR
         wy3A==
X-Forwarded-Encrypted: i=1; AJvYcCXmj/3RzkOa89EUm+Qrxf+oh+pafcYLsz3UYsY6uzwUaFH3iSL/erPRxU87ohytsg5Ky8xB0XzC9FoYRXUppExAxzuriZzPNWdAcfc=
X-Gm-Message-State: AOJu0YxaEtinUWBRtMvqeDQIjecjRDvxJxKyFKeLKL4Szd1yrnJOhxKV
	UQ702rE7wThHy4BcXy4Od4in0x42negcaChIIUZKx0qfFjFYxJ4uvsWS/0rTI0k=
X-Google-Smtp-Source: AGHT+IHnxvrlfipvi67EBmnOrknbbZDZuvsIj47eqXXPtx31bbyu0aF3Y4qlKUsNcnnZ6yGLGcqMFA==
X-Received: by 2002:a05:6870:1258:b0:25e:b632:b772 with SMTP id 586e51a60fabf-260bdddbb9fmr1766298fac.28.1721152822889;
        Tue, 16 Jul 2024 11:00:22 -0700 (PDT)
Received: from bill-the-cat (fixed-189-203-103-45.totalplay.net. [189.203.103.45])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-260750db105sm1441444fac.12.2024.07.16.11.00.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 11:00:22 -0700 (PDT)
Date: Tue, 16 Jul 2024 12:00:20 -0600
From: Tom Rini <trini@konsulko.com>
To: Richard Weinberger <richard@sigma-star.at>
Message-ID: <20240716180020.GH561963@bill-the-cat>
References: <2561107.TLnPLrj5Ze@somecomputer>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="176EOECzmln74KwL"
Content-Disposition: inline
In-Reply-To: <2561107.TLnPLrj5Ze@somecomputer>
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_110024_799494_12D7C7DB 
X-CRM114-Status: GOOD (  28.66  )
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
Cc: u-boot@lists.denx.de, barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Various Integer Overflows in dlmalloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--176EOECzmln74KwL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 16, 2024 at 11:16:27AM +0200, Richard Weinberger wrote:
> Hi!
>=20
> While inspecting various security aspects of U-Boot I noticed some
> issues around dlmalloc and asking for your feedback, especially for the
> first issue.
> I'm CC'ing Barebox folks since Barebox seems to be based on the same
> dlmalloc-implementation as U-Boot does.

Thanks for digging in to all of this.

> 1. Integer Overflow While Computing Allocation Size
>=20
> malloc/realloc/memalign take an arbitrary request size and apply
> padding.
>=20
> First, the length is (imperfectly) checked and the the conversion happens:
>=20
>   if ((long)bytes < 0) return NULL;
>=20
>   nb =3D request2size(bytes);  /* padded request size; */
>=20
> The problem is that the request2size() macro is casting the requested
> size to an signed long and adds SIZE_SZ + MALLOC_ALIGN_MASK:
>=20
> #define request2size(req) \
>  (((long)((req) + (SIZE_SZ + MALLOC_ALIGN_MASK)) < \
>   (long)(MINSIZE + MALLOC_ALIGN_MASK)) ? MINSIZE : \
>    (((req) + (SIZE_SZ + MALLOC_ALIGN_MASK)) & ~(MALLOC_ALIGN_MASK)))
>=20
> So, any allocation request between LONG_MAX - (SIZE_SZ + MALLOC_ALIGN_MAS=
K) - 1 and LONG_MAX
> will cause an overflow and as a consequence the caller will get
> less memory than requested.
>=20
> e.g. on an 32bits system malloc(2147483647) will succeed but allocates
> only 16 bytes (MINSIZE). I've tested this with U-Boot on i386 and ARM.
>=20
> This is a beefy vulnerability for exploit writers since unbound allocatio=
ns
> do happen. Like in the ext4 and squashfs symlink code, I'm sure there are=
 more.
> If you don't care about verified boot, it's less of an issue, though.
>=20
> I'm not so sure what the best fix is.
> Mostly because I'm not sure why request2size() is anyway casting to long.
> The original dlmalloc.c implementation doesn't do so. It has also a more
> sophisticated overflow check, which is also missing in both U-Boot and Ba=
rebox.
> See https://research.cs.wisc.edu/sonar/projects/mnemosyne/resources/doc/h=
tml/malloc-original_2src_2dlmalloc_8c-source.html
> Lines 01938 to 01962.
>=20
> I tracked down the bug to ppcboot, it's there since day 0.
> So I don't know what's the intention behind casting.
>=20
> On the other hand, since over commit is not supported, we could also just=
 fail
> if the requested size is larger then the total amount of system memory.
> I'm a little in fear that more overflows are lurking in the code.

The "why" is likely lost due to time and I could only speculate and wave
my hands about funny compiler issues at the time. Since we don't support
overcommit, I'd be inclined to go with just failing if we're exceeding
SYS_MALLOC_LEN.

> 2. Integer overflow in sbrk() (U-Boot only)
>=20
> sbrk() does:
>         ulong new =3D old + increment;
>=20
>         /*
>          * if we are giving memory back make sure we clear it out since
>          * we set MORECORE_CLEARS to 1
>          */
>         if (increment < 0)
>                 memset((void *)new, 0, -increment);
>=20
>         if ((new < mem_malloc_start) || (new > mem_malloc_end))
>                 return (void *)MORECORE_FAILURE;
>=20
>=20
> If old + increment overflows (increment is a ptrdiff_t) then
> sbrk() wrongly thinks we're shrinking the heap and memsets an invalid
> range.
>=20
> I propose as solution, applying memset() after the range check.

OK, sounds good.

> 3. Wrong ptrdiff_t type (U-Boot only)
>=20
> U-Boot defines __kernel_ptrdiff_t to int for both i386 and x86_64.
> As a consequence, large allocations on x86_64 will overflow the increment
> parameter of sbrk() and less than requested is allocated.
> I suggest defining __kernel_ptrdiff_t on x86_64 to long.

OK, sounds good.

--=20
Tom

--176EOECzmln74KwL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAmaWtTAACgkQFHw5/5Y0
tywoIwv/TrYUuDq4c9Ols9IwfRrYB6aXPo9UqhTEex3NS/YbNWf9UnXvRoculZTq
KwPdnX7hK285DOTwY3FX/mnpGtfiyqB8ZG1gboVX+0G3T4NRU2NmZN/p3RBp04sF
hhfiBgarsJSngvfZi2W3dTF2aC4vCIXaSRRRGzMOUKavbt5cNSFH5ElKo0C6TjFh
YbscSPJANoisHe550tpXF8sDxktGb2DnJ45oixy/MYpIwGJWfOYHFMgqQgNV/mbs
asCJ60TeMQ4GiE1xstLSlXw4JYSafx6y2anOOfAkJ82lMElB+eAhq58bYTTS4iQL
foWLnJwe5ydSq7cDmh4cSKE7hnhLvQoXJBYRPa8T1lkfMPBIh9Oa4rim9QGAyHQs
ooCzOzFUv72Rw3ty4o4IwMuyijvOLnE1umn6EPPMXCw7uBbIjYSQwPF6Xwzslx3G
1xsGbk70fQy3SM50zP/HLQSQqkUAC3irw+MKSNbOdJjzsxw01SV3cI1rtOiGATDf
QjlAgR68
=M2Ik
-----END PGP SIGNATURE-----

--176EOECzmln74KwL--


