Delivery-date: Thu, 30 Jun 2022 21:06:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6zUj-002HNm-B8
	for lore@lore.pengutronix.de; Thu, 30 Jun 2022 21:06:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6zUl-00082y-72
	for lore@pengutronix.de; Thu, 30 Jun 2022 21:06:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kExUhV41bGBdZAlb/Nr3VOexWUCa7TEvay3VF2GL60g=; b=Ae8I0DL8MHlRklC52b2O/t7UjL
	w17fvQK59QHtWGUt2yhX2yUPmWk6yUNAhbzIA2EGy1wAiHVQvTV1JgqHWcyAXJVuKOYNm6ZFrRFhL
	6gnSD6s4OCxeNa8/gie+rl/xz9oIVuviNkOERGjK7Iecdq3R1bX5uKmaH5MhO3tUC5ugR8IJ3lhGO
	ugcDIBk0jaTnCKGV+N3oeK27ckV2UdBdTZQiBmwiX3w5yxfxwvSXVsPfMompBGtnouKF6tA/dv0I+
	IINDviKGRP8z8AT7imXGvTyW9fD8aBOJcT5X6NQJUQly/tdOjP+FznSV+wlzqDEaJN2e6AM29D096
	o9Oe1t2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6zTK-0018ug-95; Thu, 30 Jun 2022 19:05:02 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6zTF-0018tW-Az
	for barebox@lists.infradead.org; Thu, 30 Jun 2022 19:04:58 +0000
Received: by mail-pj1-x102b.google.com with SMTP id g7so371980pjj.2
        for <barebox@lists.infradead.org>; Thu, 30 Jun 2022 12:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=kExUhV41bGBdZAlb/Nr3VOexWUCa7TEvay3VF2GL60g=;
        b=ecxUUkNK1impWSQFs8FcfEZJTRMZp68Ke7hPLOou1MrybLX9ZxnBFTd9k8h2TSnnwd
         z3thwkyJsdDs62eXzptqNtclv8SAF/h7QbTlWKT6RYJ8UogC7ujlUtJ0scBOv/73Fwpi
         DP2iu/pivDns08DQUA4v4svh0hmAY8dk4Cfepe4/XckfLbrKm+oQZQlaHqmSkzPvfDnb
         2ujPcLAOs07s7vtpV8u3lpHGfM12NKw4B1taJnbIb8jX45QsLj67iFemhJvJbO1d4zuz
         kdFXWnSEuwkP6jBHj8ejHnws/zU8VV7ekbdW5bKY07YfM5GMEIIEapqptmUy8EY/NTTA
         grhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=kExUhV41bGBdZAlb/Nr3VOexWUCa7TEvay3VF2GL60g=;
        b=3pSLfVSW8k4zFGiTL+NTrG0CMO+/l5RZ3QeQ5Hhbp4TjdrciOu9Y1rphiM/GByFqYd
         unI7XHfu/QFPF4E/WFiS3T6S7VDZ9DoAJ96rqnb734uwrBmr5XPz0VluMI+TIIY7qK6l
         xkkxzp+2RFwEzT3hI/mSHPPntnUdaY4NkPYjNha8gT0uQvLvcbJej5mOm415qz7UXVKe
         Mvcu2qKyg3i5HqplTaC33/PzD/QnleruHlZ6hEpb17pr2UQjrojTioHQsSMsz3tfKrpX
         L+vamXFH6VnPILg7KZDThHUExiQJTc3tTP9Oyla1v5H7759y9h/aacrzrTQ6mEsE9ePi
         h4ew==
X-Gm-Message-State: AJIora+FQtwcfCaUYhueftNF19lVgkA/jO1vcSt6XEA4pIjz8KKEuX6C
	VZToRXHXns1MC9iY2imR9lrTHE7flKdI/KVeA7rHYI9KRMc=
X-Google-Smtp-Source: AGRyM1uCL8qcpngwXgXMY/4fBgaKXgAsCfeTNFVU1Xf7flrqT4gC+lwFzMtYefrcZtjxSmQHOlRVdRdIDo/r+AqwceA=
X-Received: by 2002:a17:90b:1d09:b0:1ec:bafd:d3a8 with SMTP id
 on9-20020a17090b1d0900b001ecbafdd3a8mr13436040pjb.200.1656615895957; Thu, 30
 Jun 2022 12:04:55 -0700 (PDT)
MIME-Version: 1.0
References: <20220628061941.24199-1-eagle.alexander923@gmail.com>
 <20220628061941.24199-2-eagle.alexander923@gmail.com> <20220630185853.GC2387@pengutronix.de>
In-Reply-To: <20220630185853.GC2387@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 30 Jun 2022 22:04:44 +0300
Message-ID: <CAP1tNvS0AG1t5sxyCP1hokrHvHjPgNaA-KJarisy4h5YbKbwow@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_120457_438952_CF138A61 
X-CRM114-Status: GOOD (  16.78  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] drivers: firmware: arm-scmi: Use core_platform_driver() macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Can this struct be renamed to arm_scmi_driver?

=D1=87=D1=82, 30 =D0=B8=D1=8E=D0=BD. 2022 =D0=B3. =D0=B2 21:58, Sascha Haue=
r <sha@pengutronix.de>:
>
> On Tue, Jun 28, 2022 at 09:19:40AM +0300, Alexander Shiyan wrote:
> > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> > ---
> >  drivers/firmware/arm_scmi/driver.c | 7 +------
> >  1 file changed, 1 insertion(+), 6 deletions(-)
> >
> > diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_=
scmi/driver.c
> > index ef3d76b3f4..ad91a60e0c 100644
> > --- a/drivers/firmware/arm_scmi/driver.c
> > +++ b/drivers/firmware/arm_scmi/driver.c
> > @@ -1252,6 +1252,7 @@ static struct driver_d scmi_driver =3D {
> >       .of_compatible =3D scmi_of_match,
> >       .probe =3D scmi_probe,
> >  };
> > +core_platform_driver(scmi_driver);
>
> Had to drop this one as well. The core_platform_driver macro expands
> to an initcall named drv##_register which becomes scmi_driver_register,
> but that function already exists in include/linux/scmi_protocol.h.
>
> Sascha
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


