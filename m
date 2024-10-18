Delivery-date: Fri, 18 Oct 2024 07:13:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1fIz-005lFM-2b
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 07:13:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1fIz-0007bV-3c
	for lore@pengutronix.de; Fri, 18 Oct 2024 07:13:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nP6Lmw/2pLtrc8wHk5tzSoLtqh/GGTBpeJtjXLkLboY=; b=bqlgEj+FyX4+XmQJw7tUlp1ynu
	uXRSTFzK+MRHCIqHG56HM5RjF4hNBLBmYNNPoaw3ZQaueCW+/Yb972PRTnYt/sceFHaA5vaBLScRW
	BhKmUo60hIbYI3xNeZjR3zPV2KftSjVzJEgwTZnUDaO429JIWWXTxxGiZvv0l7JWCQoIQTJ729YeH
	9kI5CTiURSErPo/Hp8tObO9y74psDLmTXrwXI2c+Tixs7EXJ2jmto6HGJ2x8OshrI04FU5jskLT9F
	I4VJn5zWAHYJb6olEa95mwMe1zPQuY960zH3LZp+ydpYrvu0A8D2Br9gFyA5PP9VDXn9ixq9krqnf
	Pwhh7JPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1fIG-0000000Gw66-0yov;
	Fri, 18 Oct 2024 05:12:56 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1fID-0000000Gw5A-2a4V
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 05:12:55 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-7db90a28cf6so1927400a12.0
        for <barebox@lists.infradead.org>; Thu, 17 Oct 2024 22:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729228372; x=1729833172; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nP6Lmw/2pLtrc8wHk5tzSoLtqh/GGTBpeJtjXLkLboY=;
        b=mtNGArF7S9U6ef+apVR1ZAV0mJddCkGWxF/GED7DL10BGKt8NRwPJIKUtaczdASQG3
         8/G1ecfAxXFBAipVNx0R2mFP1heC7Wzm3RqlNNICZSqylWKrwjGeYSxQXg4eUCMSHk+H
         zsmJrIz5+vdnuLzl6L9uwh1niA1I1QijvgBUUz3acYh/TBkhDNiQNT3IJ1SHtp7uIIKu
         8kiKMgYc2XFVHWdExd3VejxudL0xffaS5bnpREEBFsG5X/PqhY09b90xQ5RNXLQ6DR66
         C/1FTF6cpw6k4ad0PAX8/nmuKTExF4yZcN99QkcE0Qp9f/PIXgONF2t1wU8H0wOln5Ni
         GMuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729228372; x=1729833172;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nP6Lmw/2pLtrc8wHk5tzSoLtqh/GGTBpeJtjXLkLboY=;
        b=c4j3daMeCAr9a0SpokEQ3O/mQ9TRYkurJ37vID9hffVT8LPHXEj7BWp4oLZwQIBDcT
         MKVe9y3l4L8qM/3Jtmz0ynsTPMUWMEMMDiG6K/fJvn8TbY7xu6NoGGJzqZDvtccuACxr
         qhdZ0+IJ4QPnfH1RJRtJ6kq5lZMINWIFXL3HZAT42wtBaz0kwWiBbhnMusQYlLI7S1wf
         gBHeuxhqEQ+W3Gkszn8PEYC+zxdNg9vWatJ4h+A+w4aeHUoHpq07p4L/0IbxMR5aC661
         uQPr2ggNn29LI//Oan94kyfHlFkpH73Akn6lq2JAIsId/004Zzm0P/Y92gwzp/Dra95L
         NZCg==
X-Gm-Message-State: AOJu0YxnLKNgSuJd0Q5SlJEc8I5WwIryxHdcdoGsCwFziU8UJ7H6iX8Z
	wviGJx2R9SrXch3xBBPIM/Yu4NmLOoeDFUct/19JFtZ5d54ttLo8B0Y625Sfob9J8naWVfP5gdF
	HQ7kLJ/h4HLN9Y+L+RUe/cNQfckrNXEffp1I=
X-Google-Smtp-Source: AGHT+IFIZ60FPiKmxFb0HaXNhtrBvK4uYz8ahodnUmWqMPhLiV6Di71PqmOdloXdhB7gEdKhK5RgZYEfaHo/HAHJ8T8=
X-Received: by 2002:a17:90a:2c06:b0:2e3:109:5147 with SMTP id
 98e67ed59e1d1-2e3dc5d69e5mr8202389a91.17.1729228372238; Thu, 17 Oct 2024
 22:12:52 -0700 (PDT)
MIME-Version: 1.0
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
 <20241015-rockchip-spi-rk808-v1-5-e276b4b59603@pengutronix.de>
 <CAP1tNvQZ+-DXG862KJ1PMBJb5Z_pmngMqcCr7CrMDFs+MQOZ1g@mail.gmail.com>
 <CAP1tNvT6P9v9n74K=fdvnQoOx1FuEKhWT_W7c7f98riRFg0W5Q@mail.gmail.com>
 <Zw-A1UWpcffBeb1g@pengutronix.de> <CAP1tNvRXQiiSY-tv0q+4VVc0o6Se9jfE7TB6JCbGYBT-ApR6yg@mail.gmail.com>
 <Zw-Z4X0I-yhYxB4y@pengutronix.de> <CAP1tNvTv15iVnfgEmQOkG0oBZOextR7HrtsgaA03MBXcG47vcw@mail.gmail.com>
 <ZxDve8R0y3-uz3Jc@pengutronix.de>
In-Reply-To: <ZxDve8R0y3-uz3Jc@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 18 Oct 2024 08:12:40 +0300
Message-ID: <CAP1tNvQM9U7d5nty4OHWhogCqT-rQk+YgRVvBjpkhT49BR5VFg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_221253_677277_16A944B3 
X-CRM114-Status: GOOD (  30.74  )
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

Hello Sascha.

Since you're here, I've found another new patch for the driver:
https://patchwork.kernel.org/project/linux-rockchip/patch/20241017-rk809-dc=
dc3-v1-1-e3c3de92f39c@gmail.com/

=D1=87=D1=82, 17 =D0=BE=D0=BA=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 14:05, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> On Wed, Oct 16, 2024 at 07:08:24PM +0300, Alexander Shiyan wrote:
> > I'm just saying that we can use i2c-gpio driver on SPI pins since in
> > rk806 pins are common for i2c/spi :)
>
> Ok, that could work. We would still bootstrap the RK806 for I2C mode
> instead of SPI mode. Anyway, I am not keen on doing that.
>
> Sascha
>
> >
> > =D1=81=D1=80, 16 =D0=BE=D0=BA=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 13:48,=
 Sascha Hauer <s.hauer@pengutronix.de>:
> > >
> > > On Wed, Oct 16, 2024 at 12:13:28PM +0300, Alexander Shiyan wrote:
> > > > As an example, this can be tested with i2c-gpio driver, is'nt it?
> > >
> > > We have a rockchip i2c driver in barebox. I just don't have a board
> > > where the RK806 is connected via I2C.
> > >
> > > Sascha
> > >
> > > >
> > > > =D1=81=D1=80, 16 =D0=BE=D0=BA=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 12=
:01, Sascha Hauer <s.hauer@pengutronix.de>:
> > > > >
> > > > > On Wed, Oct 16, 2024 at 10:07:57AM +0300, Alexander Shiyan wrote:
> > > > > > Oh, I see that in [4/7]. Sorry for the noise.
> > > > >
> > > > > I think you are misreading the patch. Indeed the RK806 can work i=
n I2C
> > > > > mode and my patch series currently doesn't support this. I have t=
wo
> > > > > different of_device_id tables, one used for I2C and the other for=
 SPI.
> > > > > RK806 currently only is in the SPI table, not in the I2C table.
> > > > >
> > > > > I2C support for RK806 is likely only a matter of adding the compa=
tible
> > > > > entry. I can add it, but I cannot test it. Do you have a hardware=
 to
> > > > > test this on?
> > > > >
> > > > > Sascha
> > > > >
> > > > >
> > > > > >
> > > > > > =D0=B2=D1=82, 15 =D0=BE=D0=BA=D1=82. 2024=E2=80=AF=D0=B3. =D0=
=B2 17:46, Alexander Shiyan <eagle.alexander923@gmail.com>:
> > > > > > >
> > > > > > > =D0=B2=D1=82, 15 =D0=BE=D0=BA=D1=82. 2024=E2=80=AF=D0=B3. =D0=
=B2 14:21, Sascha Hauer <s.hauer@pengutronix.de>:
> > > > > > > >
> > > > > > > > This adds support for the RK806 to the rk808 driver. Additi=
onally to
> > > > > > > > I2C this variant comes with SPI support, so add SPI probe s=
upport to the
> > > > > > > > driver.
> > > > > > > >
> > > > > > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > > >
> > > > > > > Hello Sascha.
> > > > > > >
> > > > > > > RK806 can also work via I2C. Can you add this compatibility t=
ogether?
> > > > > > >
> > > > > > > Thanks!
> > > > > >
> > > > >
> > > > > --
> > > > > Pengutronix e.K.                           |                     =
        |
> > > > > Steuerwalder Str. 21                       | http://www.pengutron=
ix.de/  |
> > > > > 31137 Hildesheim, Germany                  | Phone: +49-5121-2069=
17-0    |
> > > > > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-2069=
17-5555 |
> > > >
> > >
> > > --
> > > Pengutronix e.K.                           |                         =
    |
> > > Steuerwalder Str. 21                       | http://www.pengutronix.d=
e/  |
> > > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0=
    |
> > > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5=
555 |
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


