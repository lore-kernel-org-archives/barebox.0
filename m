Delivery-date: Wed, 28 Sep 2022 12:20:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odUAp-00HG09-9r
	for lore@lore.pengutronix.de; Wed, 28 Sep 2022 12:20:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odUAn-0002pm-3I
	for lore@pengutronix.de; Wed, 28 Sep 2022 12:20:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+0PAKt0VI84hOUhCrkpbqc48UVGGfVN0OylROu/mAbk=; b=Q1s1Rbk2nulYNwv+MITvjF1Jnm
	B1n+BhzUMvlhRR9+9NWjtHYUie3rGKX6Zstx7nQ73KC66hYucuobZ1Hp871KEqfVZaBzRmSU81b3A
	MIf0pO7HBjb/JivEnFfYU0WbssDst6G4UrNcVDx61IIRAOoHuidczhE31UOh8sMuOwEAfagNk4xtV
	eadq8XmxRNPHQaW7rB6E1pvfYtRD9YYX3WvE9tengVf1nzrvYWG+xnxtB/WwRWfBz2pVxV3K2mr54
	oe03X1teMPLA/qhoW8RBY4Crq4mDKqKuJVcZiHafBO9ERs43dCmA1fRMUFSVq8lIvGEU9lCpJJFyt
	YHNQ4F4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odU96-00FY3I-Dx; Wed, 28 Sep 2022 10:18:28 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odU8x-00FY0K-BS
	for barebox@lists.infradead.org; Wed, 28 Sep 2022 10:18:20 +0000
Received: by mail-ed1-x531.google.com with SMTP id m3so16587716eda.12
        for <barebox@lists.infradead.org>; Wed, 28 Sep 2022 03:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=skymem-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=+0PAKt0VI84hOUhCrkpbqc48UVGGfVN0OylROu/mAbk=;
        b=4Lknjh+wANjo57w7IIi6hcv5hNAJTrvRtvqAVBEIVwy/af+pjQviosDlNeXNeWWK7O
         WHFQ0cye3BWBjkBRMO6SfYaQ92DcCnb54j3fC1g+fOu5o1KVk/ksPfbWDHju8XsebXUa
         9XDKhuaf4rM4MHni5YB2yJCTTEpqnV4vjVnuQTLj7i+7AWJc3Jr3i0EMxaX45EVcAyGj
         LdfGdrB0QvlqC3RsL/zFutRxeUGqBsa44dAnatjrvbfHBLbQKd63da2ocSBlG8HEuo0u
         c2hT2bJE6Cn117kQ3B+4WrcI8MvwUDPSA+rpGMSiTtuR2suAK2upqXCz3dMjydoe8lxn
         cSqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=+0PAKt0VI84hOUhCrkpbqc48UVGGfVN0OylROu/mAbk=;
        b=IyBWVKr1OgOKYXiofVpbhgUf8KYTvzcHbWBpANWIAcICP9CqHZlVwSZyidjQX/Oqcv
         jvG2HdaedR4LqvMF/ql+HSZuLJ1PZ/vpHojD3lMm8+Jecqonx7mPlTfCnld7+1fp9dvL
         ce+UQ9k4B94Os1Dzygj2nXQ0Uu2l9QuqGKsrKNx8kPFbiw4bXBkakWXw8TT4IHxC5PPC
         wV9teEohKzGask/D+entHZ7mqEfispNThfYKg3pTcbmS7hbt4srp+5uKQpVyUuO18rze
         2N9kc9Jv5FF223skB6nMcRjM/uGVIJvSLWlW156/uC9XFxuiskeuce2MaUJBFre96Zxq
         kBVg==
X-Gm-Message-State: ACrzQf2+vLVC/af66vVAX6uNYHZAr2XzFHSsvzCGQNEFcf8cTf2JilAm
	ql96YYYZeVoZyl5KHmxNFeypyoVJsSTGsXAz3sk8334QDWH7it9iZmo=
X-Google-Smtp-Source: AMsMyM6TPMPg2DbFl21HEmzMjZI+YcGOUDlYWLQm9Byskw7dl8H38oeDbRGPGMVWhW4it9cGEjfj3NUj3X93chJcU6Y=
X-Received: by 2002:a05:6402:847:b0:453:943b:bf4 with SMTP id
 b7-20020a056402084700b00453943b0bf4mr32248781edz.301.1664360296667; Wed, 28
 Sep 2022 03:18:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220927173101.1696673-1-a.fatoum@pengutronix.de>
In-Reply-To: <20220927173101.1696673-1-a.fatoum@pengutronix.de>
From: Info Skymem <info@skymem.com>
Date: Wed, 28 Sep 2022 12:18:04 +0200
Message-ID: <CAKvd=_hjXcUTcg5qz2Zwmk2Ofd7r9+1dFMp+yM-+_1BAC+aUKQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, 
	=?UTF-8?Q?Hans_Christian_L=C3=B8nstad?= <hcl@datarespons.no>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_031819_438320_4E1FD59C 
X-CRM114-Status: GOOD (  15.29  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] imx-usb-loader: skip initial SDP_ERROR_STATUS
 query for SDPS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,
thank you for your information.

On our website you can find email addresses of companies and people.
https://www.skymem.info

In short, it=E2=80=99s like Google for emails.

Best regards,
Robert,
Skymem team

On Tue, Sep 27, 2022 at 7:33 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrot=
e:
>
> We do an initial do_status() every time, which fails for i.MX8MP and
> i.MX8MN:
>
>   found i.MX8MP USB device [1fc9:0146]
>   4 in err=3D-9, last_trans=3D0  00 00 00 00
>   status failed
>
> If we instead skip it for SDPS (i.e. hid_endpoint), upload works as
> expected (tested on i.MX8M Nano).
>
> Reported-by: Hans Christian L=C3=B8nstad <hcl@datarespons.no>
> Fixes: 23e2203150b6 ("imx-usb-loader: Add i.MX8MP support")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/imx/imx-usb-loader.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index 1242f2dedda5..a98ab0e33f8a 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -1628,10 +1628,12 @@ int main(int argc, char *argv[])
>                 goto out;
>         }
>
> -       err =3D do_status();
> -       if (err) {
> -               printf("status failed\n");
> -               goto out;
> +       if (!mach_id->hid_endpoint) {
> +               err =3D do_status();
> +               if (err) {
> +                       printf("status failed\n");
> +                       goto out;
> +               }
>         }
>
>         if (initfile) {
> --
> 2.30.2
>
>


