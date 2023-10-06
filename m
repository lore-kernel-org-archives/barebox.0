Delivery-date: Fri, 06 Oct 2023 12:22:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qohyO-008G6w-9n
	for lore@lore.pengutronix.de; Fri, 06 Oct 2023 12:22:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qohyN-0001zH-CH
	for lore@pengutronix.de; Fri, 06 Oct 2023 12:22:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AINXE07Dl85NZk7aKHb7hGPm6jnTnC/owkn+S+QRZhc=; b=ixx4i8TUUSmk0Ew2lTQyS+S1kO
	4b7ppaBuenpeylVLnAF3/bIOC0yvoeddVu71xMhFpy2bFlDKfGinFjuB9tl+63yx2hbWyYAfqE4RF
	TIQkM8JYIQtKGnnL2cB3EdYHpSiJQS4g5dbbYirp0i9vKTCuQqQAnCq4EW56IQwRHu1lwPtk9e2Rt
	LK+4SrrYyuul0iJw0DQee3aqXMoW9AKn88QAmb1P/CBbBZdukTOk91oXaV9ThudJ8kVc7cscVqhyU
	0mQkZhIR8pJbWRqEMkE/V1LEk1zvVJgWB+SusV2StFochcQ6wUw+TqRMlRmLVVJh40UC4G13spkmr
	1Fmml+dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qohxB-005X7u-19;
	Fri, 06 Oct 2023 10:21:05 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qohx8-005X5C-1V
	for barebox@lists.infradead.org;
	Fri, 06 Oct 2023 10:21:04 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-27752a1e184so1524902a91.3
        for <barebox@lists.infradead.org>; Fri, 06 Oct 2023 03:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696587661; x=1697192461; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AINXE07Dl85NZk7aKHb7hGPm6jnTnC/owkn+S+QRZhc=;
        b=P3pjrC8tQTWpO4ufPuXsbW4xwWhwTxUrBurpxP+67a1BidoQTxXyEFGNtjkEJxBnuo
         BKFQa9SI6PrX8x4+CuyqmrdTYD1WETVDcj873+qSZcTAwDsZNsGdO+ZKf2WjomraI10Z
         X64e4V3VM7kH8nd+urtv37+nkaoX+eO/anVi6GUucFmocO/p8XeFYnd926j3wB3gRtNA
         iAEUxLRXofPjqgsA2Px/xN+LYHY3PNaNy6usLvEFnbjCr+SAqSAgvocqzv06XA10hXUh
         s2DfA8Nwo17n539GycsUShaTS01Gg/HafsISKTan2HSSIHAfclN7h2kTcyqgVejY6krA
         kweQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696587661; x=1697192461;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AINXE07Dl85NZk7aKHb7hGPm6jnTnC/owkn+S+QRZhc=;
        b=q579l0HvTY94HAif/kYS/ONVbDLsIlkgc6VrFmWxvhdIRvWAkW5vnK2sW1XXCc9DIs
         qb/fJEi25tTeQMmPDEwShSPGkPtjt732wDIPCqGs2g4OpEZ263fbycYMdzzunPcIpK7z
         q/dgXgHh1RoVwIecFy/NykMzlSwWSqp7RqjQ52s+lhKZVNEpZ7Ur1D9HRI0lHU0StktB
         m860InltiPDtjsr0RrQVQYn4GtgfQXijwh2ORggiMexT9XDV57vowKzZNKfcidPzRuu6
         6UJaBTyDNeGpglM4yFTRINMWCx+GEFBFanhp8APbuFt6xTS9sNlBp6XU9Z4qc33wfQFF
         Gbug==
X-Gm-Message-State: AOJu0Yzp+XHozHqdn6aodJcW8U4hnEv0fYQoQRG0izR/lh3GEN41EDMv
	RHynZjZkxAyzi8k6gx82/lAxrrj48OO6NOPrWwEvNaW57UGxvQ==
X-Google-Smtp-Source: AGHT+IH9kQG+iA1Vf6HwZvqSCQHyHqKHdNbZY06xF6ShMVKfPg4y6QDVik20KzuDTjjz2ffgZr4WCUj7nc8UjInzjhc=
X-Received: by 2002:a17:90a:ce83:b0:26b:c3f:1503 with SMTP id
 g3-20020a17090ace8300b0026b0c3f1503mr7904407pju.17.1696587661328; Fri, 06 Oct
 2023 03:21:01 -0700 (PDT)
MIME-Version: 1.0
References: <20231006054812.4343-1-eagle.alexander923@gmail.com> <4820f5dc-6e80-2970-864c-852739f4163e@pengutronix.de>
In-Reply-To: <4820f5dc-6e80-2970-864c-852739f4163e@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 6 Oct 2023 13:20:49 +0300
Message-ID: <CAP1tNvSL9p4HhvVN-yhVwDtOTCdJ8hoXomU-BinaR_P2VeSROA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_032102_513263_13BB436D 
X-CRM114-Status: GOOD (  16.82  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] nvmem: Add Rockchip OTP controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

rk3568 :) I verified the work with this CPU.

=D0=BF=D1=82, 6 =D0=BE=D0=BA=D1=82. 2023=E2=80=AF=D0=B3. =D0=B2 13:04, Ahma=
d Fatoum <a.fatoum@pengutronix.de>:
>
> Hi Alexander,
>
> On 06.10.23 07:48, Alexander Shiyan wrote:
> > +static __maybe_unused const struct of_device_id rockchip_otp_match[] =
=3D {
> > +     {
> > +             .compatible =3D "rockchip,px30-otp",
> > +             .data =3D &px30_data,
> > +     },
> > +     {
> > +             .compatible =3D "rockchip,rk3308-otp",
> > +             .data =3D &px30_data,
> > +     },
> > +     {
> > +             .compatible =3D "rockchip,rk3568-otp",
> > +             .data =3D &rk3568_data,
> > +     },
> > +     {
> > +             .compatible =3D "rockchip,rk3588-otp",
> > +             .data =3D &rk3588_data,
> > +     },
>
> Just out of curiosity: Which SoC of these are you using?
>
> Cheers,
> Ahmad
>
> > +     { /* sentinel */ },
> > +};
> > +MODULE_DEVICE_TABLE(of, rockchip_otp_match);
> > +
> > +static int rockchip_otp_probe(struct device *dev)
> > +{
> > +     struct rockchip_otp *otp;
> > +     const struct rockchip_data *data;
> > +     struct nvmem_device *nvmem;
> > +     struct resource *res;
> > +     int ret, i;
> > +
> > +     data =3D of_device_get_match_data(dev);
> > +     if (!data)
> > +             return dev_err_probe(dev, -EINVAL, "failed to get match d=
ata\n");
> > +
> > +     otp =3D kzalloc(sizeof(*otp), GFP_KERNEL);
> > +     if (!otp)
> > +             return -ENOMEM;
> > +
> > +     res =3D dev_request_mem_resource(dev, 0);
> > +     if (IS_ERR(res)) {
> > +             ret =3D PTR_ERR(res);
> > +             goto err_free;
> > +     }
> > +
> > +     otp->data =3D data;
> > +     otp->dev =3D dev;
> > +     otp->base =3D IOMEM(res->start);
> > +
> > +     otp->clks =3D kcalloc(data->num_clks, sizeof(*otp->clks), GFP_KER=
NEL);
> > +     if (!otp->clks) {
> > +             ret =3D -ENOMEM;
> > +             goto err_free;
> > +     }
> > +
> > +     for (i =3D 0; i < data->num_clks; ++i)
> > +             otp->clks[i].id =3D data->clks[i];
> > +
> > +     ret =3D clk_bulk_get_optional(dev, data->num_clks, otp->clks);
> > +     if (ret)
> > +             goto err_clk;
> > +
> > +     otp->rst =3D reset_control_get(dev, NULL);
> > +     if (IS_ERR(otp->rst)) {
> > +             ret =3D PTR_ERR(otp->rst);
> > +             goto err_rst;
> > +     }
> > +
> > +     otp_config.size =3D data->size;
> > +     otp_config.priv =3D otp;
> > +     otp_config.dev =3D dev;
> > +
> > +     nvmem =3D nvmem_register(&otp_config);
> > +     if (!IS_ERR(nvmem))
> > +             return 0;
> > +
> > +     ret =3D PTR_ERR(nvmem);
> > +
> > +     reset_control_put(otp->rst);
> > +
> > +err_rst:
> > +     clk_bulk_put_all(data->num_clks, otp->clks);
> > +
> > +err_clk:
> > +     kfree(otp->clks);
> > +
> > +err_free:
> > +     kfree(otp);
> > +
> > +     return ret;
> > +}
> > +
> > +static struct driver rockchip_otp_driver =3D {
> > +     .name   =3D "rockchip-otp",
> > +     .probe  =3D rockchip_otp_probe,
> > +     .of_compatible =3D DRV_OF_COMPAT(rockchip_otp_match),
> > +};
> > +device_platform_driver(rockchip_otp_driver);
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


