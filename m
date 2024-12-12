Delivery-date: Thu, 12 Dec 2024 13:23:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLiEL-007BNT-1i
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 13:23:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLiEL-0006VK-Fl
	for lore@pengutronix.de; Thu, 12 Dec 2024 13:23:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yte801oSmfDpUB9iyQtHxtF9v/MTGFgUwaPpgUi9olE=; b=P8v7BE69cpCEZa3FQhgl7omAkC
	Ox3K+S6rvNGcskZTwL3721FS+6dcWQNUempkreQnUFLGEKQACbCBfmFBNyTGANiNelehHnDoJ4qhO
	DWsdFLTanhmNDmu7VMqwFPLTJ/ky+ChR+nTFY2DV7N5vfkWz08zqqK2TksLgZ0FDKWzLU6KocgfMk
	Kgv5IsHmo+gWkf3qZWNI7X8KcccwETIkB7R1rJK/HmngW4suwwp/blsTzWBIAshLMiXXlACHQy0Su
	P4tnIDBkJZN6KdfpSHSNTKYZ0b3BlmPzBDknDFKPOeOhSiad72IJ+qH/ujNjMsJtHYXcuFP+AmWXB
	BubGu+Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLiDu-00000000MOo-2Zcu;
	Thu, 12 Dec 2024 12:23:18 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLiDs-00000000MOI-1pGd
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 12:23:17 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-2166022c5caso4362935ad.2
        for <barebox@lists.infradead.org>; Thu, 12 Dec 2024 04:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734006195; x=1734610995; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yte801oSmfDpUB9iyQtHxtF9v/MTGFgUwaPpgUi9olE=;
        b=fwifp6P9gduqyU2SVJY0p76FvTsU6pilV1oHGOxcu8XG+3NgfiAzARDgY3QAZXEQYF
         +MJUhP719eQ2wNeNKu+irNG9Xhz+jXZUVuYS52N+hNIkI0vXAb9Vr+hP0x7Sm8IgHNQh
         e7A+o+fHzURfHLH4s3sOPi4dntMCDnEMap5MWQ86GWM4lZgV8V/lUttpI9DdpRclUwZb
         CYtU303qLCwJjlUgqvH9lD6FUBbqCV5YeCV8TamnxV7IdrxA/sN9aLb7+LVDJ2qQpvzS
         9G+Y5kHlnZU0HcNpK7kq3gvQim54um92t0gqev4ojjFpz0X1e+5G4S3su2Lw2lMcnp+g
         SudQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734006195; x=1734610995;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yte801oSmfDpUB9iyQtHxtF9v/MTGFgUwaPpgUi9olE=;
        b=FCknBBuZaTiwIsdyX9paGHOHoqRgjZ6WS18q1SpggM5EBJc1DewvcFDuv2deTPQ/jV
         5+WIQSj7x/de+cp1AiwflFtdxSlRR5ZD2ogoCkCvxwmB94qh6Je+E0UuBT/9lh1bTKZA
         L36S2t4hwaeeI9dd4zvWxgnqEasp0mZj9hjvJH+GGEIQUnB1vbLwN1ounL1rGcMnGw5s
         ir07W6U1G5CRWX/YuwDdymvuVU9HsXytm1VQIpjcyexJ6Av1ts16Z9M35peMtmiBjxea
         tcoZ2QYeJM/ZGzWDyJxZqR9USujSuFennGU0/sMVLgHHPwKFjiLIhVNoR/cFpE8Id1rf
         Nw0Q==
X-Gm-Message-State: AOJu0YyxX+4hRnhxgkWu65DeZWjslHRYvq5/AbW5XlJYBWnWev2nQFH6
	V+LyHJYiVilZNGTOTN6nhs5MEvC4zoUq1wF6bCw3wGfVeMZsXI6cbc2OiYgkKzkELdp2iuQfEWx
	1o1VN+xqRAEQ5FKBKBEp5x1FGrkE=
X-Gm-Gg: ASbGncu0wxUCUdlBShEdR+slnTmELhyMqC/Jd3o/D+Jr4c2mh1U9JtfUBSJxXORxa4l
	hzZ1ic9872C6ZdYNOWTS6jSIwQxio8Wh6kE6umAw=
X-Google-Smtp-Source: AGHT+IHJeHqw4yvym4LKgHAyfksJa8OnHIQmx5+BnhzG5XX0RA90yCd8SQhDmlysszOAhbay1wr/wH0gqylqLzwuYxc=
X-Received: by 2002:a17:90b:1d51:b0:2ee:c6c8:d8a2 with SMTP id
 98e67ed59e1d1-2f139293a02mr5858854a91.14.1734006195401; Thu, 12 Dec 2024
 04:23:15 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvQoUsjRNKMr-CZ_Q67-PKGfj_ZsoePeT3pgOe_DefriMg@mail.gmail.com>
 <Z1qm8cXe6SmEGxvM@pengutronix.de> <CAP1tNvRmBaoHOgvti4_cPexSir7isbuDuo+RMCoT35Avm+d21Q@mail.gmail.com>
 <Z1rJniSaV7iWgr6F@pengutronix.de>
In-Reply-To: <Z1rJniSaV7iWgr6F@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 12 Dec 2024 15:23:03 +0300
Message-ID: <CAP1tNvQPB3qEJVc+GMOR=dZi3Biyj+zWWU3a8r1Z8gfdwEf6eg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_042316_473050_F0EDC165 
X-CRM114-Status: GOOD (  15.86  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Possible regression 2024.12.0 in parsing "aliases"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Changes to:
if (adapter->nr < 0 && adapter->dev.of_node)
adapter->nr =3D of_alias_get_id(adapter->dev.of_node, "i2c");

fix adding mux-adapter. Is this correct?

=D1=87=D1=82, 12 =D0=B4=D0=B5=D0=BA. 2024=E2=80=AF=D0=B3. =D0=B2 14:31, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> On Thu, Dec 12, 2024 at 12:30:18PM +0300, Alexander Shiyan wrote:
> > Hello.
> >
> > There seems to be a bug in getting the ID in i2c_add_numbered_adapter()
> > It uses dev.parent instead of dev, for example:
> > of_alias_get_id(adapter->dev.of_node, "i2c");
> >
> > And with this everything works as expected.
>
> I don't understand this. In i2c-rockchip.c we have:
>
>         i2c->adapter.dev.parent =3D dev;
>         i2c->adapter.dev.of_node =3D dev->of_node;
>         i2c_add_numbered_adapter(&i2c->adapter);
>
> With that it shouldn't make a difference whether we do this:
>
> adapter->nr =3D of_alias_get_id(adapter->dev.parent->of_node, "i2c");
>
> or that:
>
> adapter->nr =3D of_alias_get_id(adapter->dev->of_node, "i2c");
>
> Should be the same device node both times.
>
> Sascha
>
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


