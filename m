Delivery-date: Wed, 16 Oct 2024 11:18:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t10B9-0050Vo-21
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 11:18:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t10B9-00007X-1S
	for lore@pengutronix.de; Wed, 16 Oct 2024 11:18:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=810dmg6ihTvop8+cX5WeOVkNT/gKRPXvTEH7BqjU0yc=; b=EB8/xeFQwJAZEnvz/RFY+d7b6I
	cP2kTyHUFtmM+xsigoHyei0yNiEPmy8YXjrVip2ghvdqWbbVvfSEXWrNY5HIek+bd0Z9/+rknNZaK
	NJmjsSKmBo++h/OyRKJlS+0v9v1H8yrs12C1ITQp3rixo5jdVYn/CuVav75f6xHhzGW4Zwg1hKj4r
	bzyVxtt+GIm+5qaaN6uuNRMkiRvUvghipimVjyNnhCKpIuC6HFg7kAAoDB2giSXDZR5ujXeLurlKh
	OtHf19iLxS1w09vkrvZvDw23EwQYOLq0LDxoNnn6g3K1j84dDS/qAVxcZ2IF6Xd3A04lG7ISS22k7
	itG6JOiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t10Ag-0000000BCcd-4AVy;
	Wed, 16 Oct 2024 09:18:23 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1069-0000000BBvS-07by
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:13:42 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-20c7ee8fe6bso46146515ad.2
        for <barebox@lists.infradead.org>; Wed, 16 Oct 2024 02:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729070020; x=1729674820; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=810dmg6ihTvop8+cX5WeOVkNT/gKRPXvTEH7BqjU0yc=;
        b=G5dNrteo9uR4pyc7otjQ3UrVZMSg6yEWDcUVEYHNZYAdAODpT3r/0ICuS93nVW/7RF
         SGhsD6Qe6fg8ewQos47XFD5fY5wV1kMUmx4Usoo8MEOOzHWZFYcNZc4iDNVxb3SoiFM3
         hgPD8xzuqZG4KLLoXSo2QTukTvekmm8MjogHRC6swacKUavRweij2XYq+xGHuhdhTD0h
         4BTGZ3Rjvvy1TBi2QQuk1sx3zMYhfliWZxWSU0XPkPUe/vBVszF4D5lPuiBzMA/MC7q2
         wBUBxAmgsdvKLalpNlgHOqmxBEH/lgJrHtjKJPUPGAlhzM/IjZKM/xBeOJEaPY+X4bt1
         8Kvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729070020; x=1729674820;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=810dmg6ihTvop8+cX5WeOVkNT/gKRPXvTEH7BqjU0yc=;
        b=HhkkeVJ9jnA+1uthAAs8jMKvyjXOJ1GloOFIfyF0r0/v0Sz01B1Pt6Gb0nbpNboflZ
         UL0ast5PLmIjEp/ht42F3R7Fvkq5nEhTw4KnEsJxsqKNRpveEx9mvJcvSErs1zG79GuH
         8KPatZx/lGV3K92DvcYsLNtN0Ewz0Z1bUcS+eGCmTDZWTNcoEppSZiBJh/texhXk+317
         GHTejtzOAh8CZvQQpzyBA/nQMLe5W6Txg8pd82MgSPiHBlrUdk2bqvr/6/wURsXpXRO7
         D7FpGQmrhVZj+ctEpSxhWOoCHNFp5vJaf0fE+UUazo5Vb574yPvKZxZVMeOAXfCBvmh6
         0MNg==
X-Gm-Message-State: AOJu0Yz969l1AQ4ojI87YQ+X699kpAj1Zeh4n+EXGbSclNS22wuvEtw6
	2PBaaO/saEZDqKcA5ZjtUA229RHOEjI5Pqk304fvdidpfUdcR6SdynBcat913UXO/HeFVoP3OpI
	QtQs6pa3oPfvuDjBKcqQJzaOadcwaJi9Oacc=
X-Google-Smtp-Source: AGHT+IHugwRJTDvMZ5bTmadbSAvQfTBzktAK5pMbfjfVY+Nxf3Tnatz1nZBXI2gsx53zyFDV7Qt+IGGLQ4jhICzLJSU=
X-Received: by 2002:a17:90b:4b04:b0:2e2:ca67:dade with SMTP id
 98e67ed59e1d1-2e3ab8bc83amr3834135a91.32.1729070020254; Wed, 16 Oct 2024
 02:13:40 -0700 (PDT)
MIME-Version: 1.0
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
 <20241015-rockchip-spi-rk808-v1-5-e276b4b59603@pengutronix.de>
 <CAP1tNvQZ+-DXG862KJ1PMBJb5Z_pmngMqcCr7CrMDFs+MQOZ1g@mail.gmail.com>
 <CAP1tNvT6P9v9n74K=fdvnQoOx1FuEKhWT_W7c7f98riRFg0W5Q@mail.gmail.com> <Zw-A1UWpcffBeb1g@pengutronix.de>
In-Reply-To: <Zw-A1UWpcffBeb1g@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 16 Oct 2024 12:13:28 +0300
Message-ID: <CAP1tNvRXQiiSY-tv0q+4VVc0o6Se9jfE7TB6JCbGYBT-ApR6yg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_021341_148184_20EF3D81 
X-CRM114-Status: GOOD (  22.14  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 5/7] mfd: rk808: add support for RK806
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As an example, this can be tested with i2c-gpio driver, is'nt it?

=D1=81=D1=80, 16 =D0=BE=D0=BA=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 12:01, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> On Wed, Oct 16, 2024 at 10:07:57AM +0300, Alexander Shiyan wrote:
> > Oh, I see that in [4/7]. Sorry for the noise.
>
> I think you are misreading the patch. Indeed the RK806 can work in I2C
> mode and my patch series currently doesn't support this. I have two
> different of_device_id tables, one used for I2C and the other for SPI.
> RK806 currently only is in the SPI table, not in the I2C table.
>
> I2C support for RK806 is likely only a matter of adding the compatible
> entry. I can add it, but I cannot test it. Do you have a hardware to
> test this on?
>
> Sascha
>
>
> >
> > =D0=B2=D1=82, 15 =D0=BE=D0=BA=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 17:46,=
 Alexander Shiyan <eagle.alexander923@gmail.com>:
> > >
> > > =D0=B2=D1=82, 15 =D0=BE=D0=BA=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 14:2=
1, Sascha Hauer <s.hauer@pengutronix.de>:
> > > >
> > > > This adds support for the RK806 to the rk808 driver. Additionally t=
o
> > > > I2C this variant comes with SPI support, so add SPI probe support t=
o the
> > > > driver.
> > > >
> > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > >
> > > Hello Sascha.
> > >
> > > RK806 can also work via I2C. Can you add this compatibility together?
> > >
> > > Thanks!
> >
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


