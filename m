Delivery-date: Wed, 01 Feb 2023 18:52:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNHHw-00ANy0-3g
	for lore@lore.pengutronix.de; Wed, 01 Feb 2023 18:52:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNHHt-00072k-Br
	for lore@pengutronix.de; Wed, 01 Feb 2023 18:52:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZlGXKRn3FLpWvYlu8e2Q1z3w5PzLVU4tOs/xrM/gvv4=; b=FGO8pLRiVAhTd2kkDS26O5dBl6
	TAkCRY2yxwVjOSRe9ZDlZkWsSaDiTDM4+70UvOmLhGaxZBFoYdMK+d7sMy7gVp39QAU5teeD6eVI0
	aWAyawVRJRqII4t2Zj5CAv9PYEQdcvexUMHy7SK/Z+t7G9tnlrVkPeR4edy+64eL6PRXTnQVp5ei7
	InmQSK9qvIHBaeMtT+r0tyaJuaE6w5vs+rJuwuPnQO8C3XJ7f55BVAmpLsQ872aSWBuoreWis+hGO
	hvOBixvDVSIOFGMOcb3rKzJV5jNCZxGxGjS31Kh9WcPC7oz1YxVO8OSZUA+P5LcgrLj4K13chNlzG
	dJoDsxtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNHGI-00D4li-1m; Wed, 01 Feb 2023 17:51:10 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNHGE-00D4k7-0M
	for barebox@lists.infradead.org; Wed, 01 Feb 2023 17:51:07 +0000
Received: by mail-pl1-x629.google.com with SMTP id k13so19289597plg.0
        for <barebox@lists.infradead.org>; Wed, 01 Feb 2023 09:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZlGXKRn3FLpWvYlu8e2Q1z3w5PzLVU4tOs/xrM/gvv4=;
        b=qGN3KWhv0GXaJIrQVRHXYwgwvKLUT/fp3Z07MijLy/BlukL4juom9ZfzrdRfTMnxrP
         9eALSWV3PkhEvAqdFOzU1j1wg4HUHNEacEocUBcTl8ifg7NpR9tToZ898emv495iDDXN
         OCGWdv1Zm1Xq3fSG7AEe6uf7RPaNc9OZ06RDchQ38WdnLKLSngLbArsixxi43B8WVZEw
         oSCIKkb6L7KJD/Clvl4aMrR/cQXsiImkmzhWiJ+zYSSODNqhHT04YVPV4Z71dGttOzBj
         v+dXjZLac6H1lY6MdWTWnmcLcabClqbWy05Aq5S3Ja1ch4eKXQHtW/TbHFbaR4czxffm
         lX7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZlGXKRn3FLpWvYlu8e2Q1z3w5PzLVU4tOs/xrM/gvv4=;
        b=HaQpqb02CNEeT5cn5cIFKuokec74pZx9lvEvFWhoC1e5C4WhVRmaVpso1G/0AfVqyA
         vSZpcl5w+VuYP3f7LSebINGD+1Ty9VNbNBJBA8uITwpouCzmWxhgyF7Or4Cu+Wxa+X3q
         qtw8YjfkxfcCi82VPyCDcGnUDfcH1v60j8XY75krsLiIwnZ2+PcwKcTeDIFC2d+u5ZXa
         qPqjo+9L6eRquHXrysl7YS+GWU1/qThcbhOzr5T9Xd2BJPKT76GBm/5inu9T++7JC4UA
         bcrIqfzSyfuLW9v1Fqteirg/syI1jJtM0Sl6dQMgnT10lH7PEcyLhrHwrlrnxW5TeYdR
         02iQ==
X-Gm-Message-State: AO0yUKWehmq8MwySRqn/szZ4w5GlBPDtDGAZS70pG6/mZVYd0UOjD0eZ
	5D4LSJJYTu/aXOyl/l3aMHUd4WgtAHbrySXE8jX096ERNhE=
X-Google-Smtp-Source: AK7set/xHGfSiKsCfeKaqAf2GpnsLx+Y0s+izvlLBudg0eY+KxqkaFB6mkVpjuMmnxCOuQ03woyh3mWjXI7kD1nYcCo=
X-Received: by 2002:a17:90a:5146:b0:230:4096:ad44 with SMTP id
 k6-20020a17090a514600b002304096ad44mr313338pjm.130.1675273862011; Wed, 01 Feb
 2023 09:51:02 -0800 (PST)
MIME-Version: 1.0
References: <20230126185643.104049-1-contact@jookia.org>
In-Reply-To: <20230126185643.104049-1-contact@jookia.org>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 1 Feb 2023 20:50:50 +0300
Message-ID: <CAP1tNvRo98Xoo2z3GmacoYZ-vR6FTnKcJYxrop3HJZi-QnFt6Q@mail.gmail.com>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_095106_071560_09CC5EFB 
X-CRM114-Status: GOOD (  16.91  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] I2C: i.MX: early: Use internal udelay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello!

Just a nitpick, udelay means milliseconds (udelay_(us)),
which isn't quite right in this case,
so I think we should use the "loops" value here (delay_loops() or so)).

Thanks!

=D1=87=D1=82, 26 =D1=8F=D0=BD=D0=B2. 2023 =D0=B3. =D0=B2 21:57, John Watts =
<contact@jookia.org>:
>
> udelay isn't provided in the PBL, so use our own definition.
>
> This avoids boards having to define udelay in their code.
>
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  drivers/i2c/busses/i2c-imx-early.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/i2c/busses/i2c-imx-early.c b/drivers/i2c/busses/i2c-=
imx-early.c
> index 6c8bdc7904..fcf279eff8 100644
> --- a/drivers/i2c/busses/i2c-imx-early.c
> +++ b/drivers/i2c/busses/i2c-imx-early.c
> @@ -90,6 +90,13 @@ static int i2c_fsl_acked(struct fsl_i2c *fsl_i2c)
>         return i2c_fsl_poll_status(fsl_i2c, 0, I2SR_RXAK);
>  }
>
> +static void __udelay(int us)
> +{
> +       volatile int i;
> +
> +       for (i =3D 0; i < us * 1000; i++);
> +}
> +
>  static int i2c_fsl_start(struct fsl_i2c *fsl_i2c)
>  {
>         unsigned int temp =3D 0;
> @@ -104,7 +111,7 @@ static int i2c_fsl_start(struct fsl_i2c *fsl_i2c)
>                           fsl_i2c, FSL_I2C_I2CR);
>
>         /* Wait controller to be stable */
> -       udelay(100);
> +       __udelay(100);
>
>         /* Start I2C transaction */
>         temp =3D fsl_i2c_read_reg(fsl_i2c, FSL_I2C_I2CR);
> --
> 2.39.1
>
>


