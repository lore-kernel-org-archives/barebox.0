Delivery-date: Wed, 16 Oct 2024 18:14:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t16fY-0058LT-0E
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 18:14:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t16fX-0001xP-Er
	for lore@pengutronix.de; Wed, 16 Oct 2024 18:14:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dbIil1wVvhW7VzoOKrELoqglD32IFJrIc+o0zdPnqDM=; b=qZCYA+bXB13UKHAJ5D4eMNPbR4
	ZqQ1EC67UMG5HjQ8rKovoYfUSUfkV37SBqpJIOWF/hJ94TW72kPaM1DkOiWf00//o07va24t7TjpZ
	CUffvviVCXGttvxLKWVHMwpXhCfUUNHAsL1aviNZ2Pv/QMVu0FsUwzeYe7tV8HFqhwHFU1YQe6tF6
	TGAk+Ykw1RXjUQj8/cQ7qP7GdKWwXauZJYL9jU3kbm8YC+2YdswqGkD8haiddaKG0LJOibUTth5sF
	UA3pFXVrj3rjU1ktOWwSPvu2A+hoGQEKMBmlKQZM+Ev6zO/fMtn/99wo/hjswd/vbbPHYPyKOdDCW
	EM+SID9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t16eq-0000000CNcI-18Wi;
	Wed, 16 Oct 2024 16:13:56 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t16Zi-0000000CMbz-47Fn
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 16:08:40 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-20c8b557f91so57567605ad.2
        for <barebox@lists.infradead.org>; Wed, 16 Oct 2024 09:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729094917; x=1729699717; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dbIil1wVvhW7VzoOKrELoqglD32IFJrIc+o0zdPnqDM=;
        b=amNjn2ov0WY+y4b1u8C9s4t1LZ9+qIzvOuG398nJRi10dIdhCP6QQJlOaHMaHGNuxA
         JlxB4331LEHKEGdCwxSbB5gHtXneIMgHfnBYQ1ZUkg9YlstHmbv+c+cTVw9t6fB1IvL3
         tE6nkNqzIlB9o9B89PEhwFqJfvcbon8LHnd/OUwhBMs6r6iqC09b3vUUR0qKzYlCigeF
         28VDDX8X0tMSnnSjAw1/wuBBMP5Wfoof34gue/bBXhNTXaYVkDLDINIC3reJ6qWjVw6M
         IoaXsTXOv+yH71DOl2empJjjJ9zKb1x8adHbLVniPnT5vRlRnPcAmJebRoGLlGHHKJv3
         Mbqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729094917; x=1729699717;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dbIil1wVvhW7VzoOKrELoqglD32IFJrIc+o0zdPnqDM=;
        b=pSJ5GJ3bL1y0JXkM+kiS6wsZzqutbwDcK8MH5GKNxdNJJiMzzPgG6hL+WqNttF4kJ0
         cumvMZcOaYVgPaDs7vzluPYyyXM+9jbe1PRjx3RZWakvHbH88X7uZFFdkWo91oI+BXNA
         rvCn+yHqcgoYllUCJUP59qfKVQ3S2QGSY0Fr+OXDnZzq3A+mu5xYlooIc1lw6niolDMA
         miXhTNNpfI68Rgxebqk3inkHX6B5tjPH6s01el97b1+NX4MJmT6GhHpO0ykYrFH4zBdw
         zRG3JgbIyY27OV2cdDZpgJhZJbt+ZKeQ241NX1OxM6RvGRV1wApVedHmCp2ldBymL7DV
         I+6A==
X-Gm-Message-State: AOJu0Yxm5WjTjgdK74PejjvgiOZNtLkgpZEGgcYs5qf+LFhRt1Fq4L35
	Se4r387VqijdRsn1ZQl4/yev1JniIoIGgcRNWYLbbjk5RflKmXG4L5YWblNXFmk+x92vNqNpIGW
	Ln47dkKBh/G/lGNpf9TAVwwYiHbGDx9oAPsg=
X-Google-Smtp-Source: AGHT+IGdLLKbWdQt04409+m/IHlX4NrM4mPkeoFa19Bo5m77VH1onyCR8v2R4QWPhVWixcRfG/BxqvkYWVBeLJi2A34=
X-Received: by 2002:a17:902:e807:b0:20c:c3fe:1ac8 with SMTP id
 d9443c01a7336-20d27f276cemr58281945ad.41.1729094917508; Wed, 16 Oct 2024
 09:08:37 -0700 (PDT)
MIME-Version: 1.0
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
 <20241015-rockchip-spi-rk808-v1-5-e276b4b59603@pengutronix.de>
 <CAP1tNvQZ+-DXG862KJ1PMBJb5Z_pmngMqcCr7CrMDFs+MQOZ1g@mail.gmail.com>
 <CAP1tNvT6P9v9n74K=fdvnQoOx1FuEKhWT_W7c7f98riRFg0W5Q@mail.gmail.com>
 <Zw-A1UWpcffBeb1g@pengutronix.de> <CAP1tNvRXQiiSY-tv0q+4VVc0o6Se9jfE7TB6JCbGYBT-ApR6yg@mail.gmail.com>
 <Zw-Z4X0I-yhYxB4y@pengutronix.de>
In-Reply-To: <Zw-Z4X0I-yhYxB4y@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 16 Oct 2024 19:08:24 +0300
Message-ID: <CAP1tNvTv15iVnfgEmQOkG0oBZOextR7HrtsgaA03MBXcG47vcw@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_090839_048213_DF0EB5EB 
X-CRM114-Status: GOOD (  27.55  )
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

I'm just saying that we can use i2c-gpio driver on SPI pins since in
rk806 pins are common for i2c/spi :)

=D1=81=D1=80, 16 =D0=BE=D0=BA=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 13:48, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> On Wed, Oct 16, 2024 at 12:13:28PM +0300, Alexander Shiyan wrote:
> > As an example, this can be tested with i2c-gpio driver, is'nt it?
>
> We have a rockchip i2c driver in barebox. I just don't have a board
> where the RK806 is connected via I2C.
>
> Sascha
>
> >
> > =D1=81=D1=80, 16 =D0=BE=D0=BA=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 12:01,=
 Sascha Hauer <s.hauer@pengutronix.de>:
> > >
> > > On Wed, Oct 16, 2024 at 10:07:57AM +0300, Alexander Shiyan wrote:
> > > > Oh, I see that in [4/7]. Sorry for the noise.
> > >
> > > I think you are misreading the patch. Indeed the RK806 can work in I2=
C
> > > mode and my patch series currently doesn't support this. I have two
> > > different of_device_id tables, one used for I2C and the other for SPI=
.
> > > RK806 currently only is in the SPI table, not in the I2C table.
> > >
> > > I2C support for RK806 is likely only a matter of adding the compatibl=
e
> > > entry. I can add it, but I cannot test it. Do you have a hardware to
> > > test this on?
> > >
> > > Sascha
> > >
> > >
> > > >
> > > > =D0=B2=D1=82, 15 =D0=BE=D0=BA=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 17=
:46, Alexander Shiyan <eagle.alexander923@gmail.com>:
> > > > >
> > > > > =D0=B2=D1=82, 15 =D0=BE=D0=BA=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 =
14:21, Sascha Hauer <s.hauer@pengutronix.de>:
> > > > > >
> > > > > > This adds support for the RK806 to the rk808 driver. Additional=
ly to
> > > > > > I2C this variant comes with SPI support, so add SPI probe suppo=
rt to the
> > > > > > driver.
> > > > > >
> > > > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > >
> > > > > Hello Sascha.
> > > > >
> > > > > RK806 can also work via I2C. Can you add this compatibility toget=
her?
> > > > >
> > > > > Thanks!
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


