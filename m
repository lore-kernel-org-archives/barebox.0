Delivery-date: Wed, 14 Jun 2023 11:13:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9MYo-006RW9-H7
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 11:13:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9MYm-0003WU-5J
	for lore@pengutronix.de; Wed, 14 Jun 2023 11:13:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DElPX1DEugvuHRI0EPBNLID/YjDVLrc6Rf8Ffk4ePow=; b=448sefKw5sn4AXE4t4/eJokMJA
	CwFkljrN9ZVuSyMyzAY2XITuPSCnQhsp/UIDdEIFvuo310qwbIGP/XNlT5wTEVZ8kE3oBTkysxiFf
	L69tNZnfpQi9F1ETgTjAaKkShAQXeZ6Yh8MFJfwYYA9gU0zBHikBCES0gwc8A2Z21O4kgLIhpDcJS
	3LQsam3uAsYE5AsuARVBWvd+CJ77uEG4iV/iz2ZOm2HsqjK9z7l4dMMifg1UolV9GZeBHVd04nujO
	z38mKQu9NYFsYeCRsaFpghqt8cA+aOESDkGgLz68B6ARpS3Lwjsq2aDhfR4Ymy+RjdP1tnHtU93/A
	tEI8bqjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9MXb-00B16R-3B;
	Wed, 14 Jun 2023 09:11:47 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9MXZ-00B15E-0E
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 09:11:46 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2b1a46ad09fso5399501fa.2
        for <barebox@lists.infradead.org>; Wed, 14 Jun 2023 02:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20221208; t=1686733899; x=1689325899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DElPX1DEugvuHRI0EPBNLID/YjDVLrc6Rf8Ffk4ePow=;
        b=fJnBdwwXh/J7NTmA6ohy/oP1LPKochGm7g38UaUsScJB5s9ZT0btDQ3jNacsRXltOF
         HVAZ004PgIcMB/Bv0boG9QORw/jRlmq4/dCbrYSwFH76nYqcdQ63Xe74qzoMiyC/Na5O
         781MxXpexmQu2/jUtJJqvnKUznIytf/9ZTwCgrkXjCb77gc46H4RJOCHPrv/Nva9s2G/
         BUbidTVyYDCL0Iff1URoGQQeOzCwpfF33HH9Jq4NJr6c8eGzAGNOii9wD/FOIQvvrXcP
         bxEsbmCZPyAbSiSTsrjza45X1EEjGXZ7BvXufhxX0TWM36B/qQJQNS+jXkYzGvmIDv3e
         bM8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686733899; x=1689325899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DElPX1DEugvuHRI0EPBNLID/YjDVLrc6Rf8Ffk4ePow=;
        b=fi6jZNoO1v/gU9Ygi5aiytlX1Pe1RW7j270JoxTPEdm8WJuhVrdA5m39GF3M1jPh3y
         QdWhKc7QeaID/7Mp4xQ4axaVLJ2jaOwm0RpXINpZHiRwmKPABvWYYOdj+eKmrifZO0pV
         2xUllXNmhN1NW74pex6swja++qDGleuGudzjN8RuTfC4RfCdUSUXJZ8PivczxLLLSjO0
         s4c56MiRIkZhKAs2grlAa/XN60UatPIlp7D7Cpo1IgsnrThcl/Ai0mF5w95cLm0Frk1a
         mjHInhlNVUZcB+cknclTJmB1QZJPDwh3Nk3dvrt4JCsDKIvWremEczgqDqNLWR0iHOiM
         hAbA==
X-Gm-Message-State: AC+VfDwwS6mNQv+QkbrL6HgN/lfZh6e7zJaThvh6HMSZYhhjYFdjfmii
	bulIa4RAHqKoAOJXhw3QH2Rtv+QJnEH174e5ziEk5ZHN
X-Google-Smtp-Source: ACHHUZ61EAKZTYCGKQh7TkKEv+HCfAySk5BrydiL0oqi9xJXMbfIuy8JWbuJ7xjwWPZmhiOCoKXITDzIPhnBUY/nWEU=
X-Received: by 2002:a2e:9111:0:b0:2b3:4c3e:35f with SMTP id
 m17-20020a2e9111000000b002b34c3e035fmr440995ljg.34.1686733899194; Wed, 14 Jun
 2023 02:11:39 -0700 (PDT)
MIME-Version: 1.0
References: <20230614080919.1716578-1-yegorslists@googlemail.com> <833c4f35-2fe1-ede5-a305-d2d600c84e8b@pengutronix.de>
In-Reply-To: <833c4f35-2fe1-ede5-a305-d2d600c84e8b@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Wed, 14 Jun 2023 11:11:27 +0200
Message-ID: <CAGm1_kvTSO=+7rmxFvm_hYJkcA8Ng+usXHTzQjVkjDRTBKP9SA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_021145_108454_E4B6F327 
X-CRM114-Status: GOOD (  21.07  )
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
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH][RFC] lib: zstd: resolve maybe-uninitialized warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Wed, Jun 14, 2023 at 10:55=E2=80=AFAM Ahmad Fatoum <a.fatoum@pengutronix=
.de> wrote:
>
> Hello Yegor,
>
> On 14.06.23 10:09, yegorslists@googlemail.com wrote:
> > From: Yegor Yefremov <yegorslists@googlemail.com>
> >
> > Perform memset() at the very beginning of the ZSTD_getFrameParams()
> > routine.
>
> I saw this too a while back and I came to the conclusion that this
> is a false positive. I wasn't able to reproduce this with
> GCC 12, but saw it with GCC 11 IIRC.

You're right. I could reproduce it with GCC 10 but not 12. So, the
patch can be dropped.

Yegor

> Cheers,
> Ahmad
>
> >
> > Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> > ---
> >  lib/zstd/decompress.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/lib/zstd/decompress.c b/lib/zstd/decompress.c
> > index 19bf712881..78df7d660a 100644
> > --- a/lib/zstd/decompress.c
> > +++ b/lib/zstd/decompress.c
> > @@ -207,6 +207,7 @@ static size_t ZSTD_frameHeaderSize(const void *src,=
 size_t srcSize)
> >  size_t ZSTD_getFrameParams(ZSTD_frameParams *fparamsPtr, const void *s=
rc, size_t srcSize)
> >  {
> >       const BYTE *ip =3D (const BYTE *)src;
> > +     memset(fparamsPtr, 0, sizeof(*fparamsPtr));
> >
> >       if (srcSize < ZSTD_frameHeaderSize_prefix)
> >               return ZSTD_frameHeaderSize_prefix;
> > @@ -214,7 +215,6 @@ size_t ZSTD_getFrameParams(ZSTD_frameParams *fparam=
sPtr, const void *src, size_t
> >               if ((ZSTD_readLE32(src) & 0xFFFFFFF0U) =3D=3D ZSTD_MAGIC_=
SKIPPABLE_START) {
> >                       if (srcSize < ZSTD_skippableHeaderSize)
> >                               return ZSTD_skippableHeaderSize; /* magic=
 number + skippable frame length */
> > -                     memset(fparamsPtr, 0, sizeof(*fparamsPtr));
> >                       fparamsPtr->frameContentSize =3D ZSTD_readLE32((c=
onst char *)src + 4);
> >                       fparamsPtr->windowSize =3D 0; /* windowSize=3D=3D=
0 means a frame is skippable */
> >                       return 0;
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
>


