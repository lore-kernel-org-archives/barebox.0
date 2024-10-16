Delivery-date: Wed, 16 Oct 2024 11:12:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1056-0050SA-0l
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 11:12:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1055-0007Xf-Ll
	for lore@pengutronix.de; Wed, 16 Oct 2024 11:12:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZMfBjlyJS3DMmG5bmoroPAVhHALTZDGryeP/A1sUyRc=; b=1EN5xpZx29pzyo6zftbNOxiNfF
	qdH59Qxcxj1oRGRnN5h936ppR5P9b7X8mgg4jKGqCutQBHg0IdW9JuwQKuGFNacJ9+2zE/Bx0ntq4
	JO9Kbni07piNjHGW+eZy4yk+wm4yMgyRddpxeF+pUcrfVwzEQfXf1KVt7siOLOya535kt29rLhVnY
	gBZsbvGDBX9lysE4nG9hFP6d2jGhlomJPxuBo2l/gINmieOwl61KRNAQk7TxAFbf0DzLrOG+eVZph
	ewMWzZ12cvoxltcq08bbzVcteuSAPLjm/UtnFYkXm9aYJ85EHfoLXOglbC4/D0CCIJn7gRQg181IF
	MJDhfekw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t104Z-0000000BBbm-29Vi;
	Wed, 16 Oct 2024 09:12:03 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t104W-0000000BBbO-0mNl
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:12:01 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-2e3010478e6so4086312a91.1
        for <barebox@lists.infradead.org>; Wed, 16 Oct 2024 02:11:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729069919; x=1729674719; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZMfBjlyJS3DMmG5bmoroPAVhHALTZDGryeP/A1sUyRc=;
        b=K+923Zs4QWc9K/eVqDMD4slwGL6R5aycgkY/k4vXDigtvDOKsgKVfJbukSsCgQXGGg
         aSXu/dSVS9Xykr98NXbLAoCAiNxuoroKKFmPYDslCl0mq974rvncaZvwx6sblK7UMUZF
         RySJ+sK7WrNEfc2dBdhIdgEsRBKh2FTJNjQXMHWSMnpJNX6e7NWXoBDtOlV1UApWHvZD
         SpD//ioV8qyetTPEGlcntVjVhmT5BBqPX/idf96LP/qlUjxTY4Gwu+b01FzWZlvCs/P8
         UYpk+VoFyoamXWjJ1J0tL7I+8v2q4s7ec02GIy8cLFHlAHLQT/2sbhc1IWpn8J38cQ2B
         m6jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729069919; x=1729674719;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZMfBjlyJS3DMmG5bmoroPAVhHALTZDGryeP/A1sUyRc=;
        b=BdyFa82rW1+EBknl/cZvgJim7a90MgylWIB9PtJtVZbt0CY8VzrkTb0fSSpCFn3J8a
         RWtEIk0njvIaiw3O68oBqw5WpFrDFagQQh6hzaBZVTF6ZLTs5Z59l0hkSgJCtUHkx5XQ
         8K9OUHB43GDDEaxandzbw8h9ntREq+jGvKCRX08odf+hWkwivDR/TvPsDbmCIG2ViNKb
         9+/Ll/7BzqiP1qySWGHNd1RW/tsGz/1HgQNkAxl/eEAdHsCkmQSRMYKRlVmlHJ3PO9Us
         gfmJQ0wCajDXpV6p07INfzRO6rXu0g5UKXEc4a422K1r7jpYMiZg2Vie11co3bsMNSNR
         Pcvw==
X-Gm-Message-State: AOJu0YyqSMvI/q+VDlsk6j+JKJas6qjnRKGjUgSwBBON/IeFFJUyAAL3
	094XEG6IjEy1kikcY9iop9A03zyB6XN9o74E4MsLI/ZYo7+jIQuCFRzgGSMoMN9m1p0nfiUM+7g
	aYHgx7BzLeFgtA9sUBw8oRbcnkTA=
X-Google-Smtp-Source: AGHT+IGWevqtt30v3GFOOLJpfxuM12qq83aLBgfMO0MBPGpuDGcOXv4yN+Cln6bPppxqr7HGfEQ4jLWRjkO+HKx7+FA=
X-Received: by 2002:a17:90a:c28c:b0:2e2:8bce:3d16 with SMTP id
 98e67ed59e1d1-2e3152e3b20mr18411854a91.19.1729069919222; Wed, 16 Oct 2024
 02:11:59 -0700 (PDT)
MIME-Version: 1.0
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
 <20241015-rockchip-spi-rk808-v1-5-e276b4b59603@pengutronix.de>
 <CAP1tNvQZ+-DXG862KJ1PMBJb5Z_pmngMqcCr7CrMDFs+MQOZ1g@mail.gmail.com>
 <CAP1tNvT6P9v9n74K=fdvnQoOx1FuEKhWT_W7c7f98riRFg0W5Q@mail.gmail.com> <Zw-A1UWpcffBeb1g@pengutronix.de>
In-Reply-To: <Zw-A1UWpcffBeb1g@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 16 Oct 2024 12:11:47 +0300
Message-ID: <CAP1tNvSH3FP77Qsy+K9Wq7uuNvAAWuY02gkHOpodSCb-anTAgg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_021200_246503_D72C7FD9 
X-CRM114-Status: GOOD (  21.21  )
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

Hello.

Yes, we have developed a scheme and soon I will have a sample in my hands.

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


