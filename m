Delivery-date: Fri, 15 Dec 2023 09:34:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE3eH-003UtW-0u
	for lore@lore.pengutronix.de;
	Fri, 15 Dec 2023 09:34:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE3eH-0005Xq-GK
	for lore@pengutronix.de; Fri, 15 Dec 2023 09:34:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:
	From:Subject:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F0T1jugBg1sm+eM3HqJHtlH3P4+XbZiR8VwPyELCE8g=; b=smMwRBI/NIjcvo7fcd1WJf4XqJ
	oMnhxwnIqwLCUc3Jl7AA54X1lPF4MZhR63uusazzumxORGkEUO+uCUzlXto9c8ZhMBjz5DLeg0mc0
	n3qnPFUjuJy1Vvf2eBSDzn3LDoSqxfrlM0NJmsFPTxk5gmjN7pKimP/Hu9CY8g7JkP6ezoXRrLLLN
	Dj3zkMvs2+RLmo0VS6J2HKmQe0OzY/G8atlWPQwppULSrNl0a9jhFiYxiQab8E1MvNQUiu0KBwZn0
	TUwuoWiKsLGlDMEhD1gMS0IGj0VLTjDtomEsAr5SvY9ALBpixRkXj1trqC1QG2MyS3ycM1QL7EI68
	sV5N3qiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE3cn-002Txt-0k;
	Fri, 15 Dec 2023 08:32:49 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE3cj-002TxW-2D
	for barebox@lists.infradead.org;
	Fri, 15 Dec 2023 08:32:47 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40c2308faedso4890165e9.1
        for <barebox@lists.infradead.org>; Fri, 15 Dec 2023 00:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rtone.fr; s=google; t=1702629163; x=1703233963; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F0T1jugBg1sm+eM3HqJHtlH3P4+XbZiR8VwPyELCE8g=;
        b=cxzyF4gOUGyPVo/QDR6X3F9L3y/AGFNnW07SmI1v03ntKPW3O1yyAWQIYzSCkJSfna
         BPKmLyEMoN2ghBilab4XzowAU7YQWI0r6DOFgyM2fRvQHLoKNTO1TuhdLvfM0tLBhhAQ
         Ez/ZPRvCWpuUNdQBbUTZV4g1KToraARaP6t74=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702629163; x=1703233963;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=F0T1jugBg1sm+eM3HqJHtlH3P4+XbZiR8VwPyELCE8g=;
        b=DvqIZdW7ulgCIRhfqmwQIobnrP3oo00GOUm2+0vqSStSgz9jDM7BAWZ84m+0PePdaj
         skXxXb26GSMYpstosmb50eAscrreEXixi7d7MdhIN41OcUfuAOxpW8XyZ7PW6AsgE59y
         naVhREpPcqncNxfEcT35FLBqHnm1Y+T7OgeH6dGhOGLPSfhhdtCgweIxMPxKs46lltIC
         GUtzZ3dzvHrkt7CaIA5CLCFC4X4TyEgxCl1dB6ZJvL++Ciy/KuAFLZh3aSEG0PPh+Th2
         M7PL4rZ/rQLOK/IcW6C2Xvxg05MEDYy4lPwOlN7Ked3m2nYBtB1cS51neWO8qZOAYB/Z
         2VwQ==
X-Gm-Message-State: AOJu0Yxgo2okZ+ijw0w79QrdOK2p5AZiMACS0FYJAwry88+0Qi4SrigO
	NJC0NjQ6dro9dpmjGJTvHWgQ63v+yktFrFU3Xsw=
X-Google-Smtp-Source: AGHT+IF+8dioa0cOpHgFTyWze8e3GlYbf2BX+pZ6nceBAVIRLm+YrPb8LV4KCUV8f5LzbyDa8I1lRA==
X-Received: by 2002:a05:600c:45d0:b0:40c:4575:2044 with SMTP id s16-20020a05600c45d000b0040c45752044mr4844116wmo.174.1702629163430;
        Fri, 15 Dec 2023 00:32:43 -0800 (PST)
Received: from localhost ([2a01:e0a:1b8:9000:35e4:6034:77c6:2307])
        by smtp.gmail.com with ESMTPSA id az27-20020a05600c601b00b0040c34e763ecsm27331778wmb.44.2023.12.15.00.32.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Dec 2023 00:32:43 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 15 Dec 2023 09:32:42 +0100
Message-Id: <CXORNZD4X32H.12QB7V42XZXNR@rtone.fr>
From: "Sebastien Bourdelin" <sebastien.bourdelin@rtone.fr>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>, "Sebastien Bourdelin"
 <sebastien.bourdelin@gmail.com>, <barebox@lists.infradead.org>
X-Mailer: aerc 0.15.2
References: <20231214163520.2232412-1-sebastien.bourdelin@rtone.fr>
 <5fc2e0c4-8bf7-4bab-8652-4a9d7aa98721@pengutronix.de>
In-Reply-To: <5fc2e0c4-8bf7-4bab-8652-4a9d7aa98721@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_003246_012282_FE7104E9 
X-CRM114-Status: GOOD (  18.19  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: rpi: add CM4S device id
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu Dec 14, 2023 at 6:17 PM CET, Ahmad Fatoum wrote:
> Hello Sebastien,
>
> On 14.12.23 17:35, Sebastien Bourdelin wrote:
> > Introduce the device id for the raspberry CM4S accordingly to [1].
> >=20
> >  [1]: https://www.raspberrypi.com/documentation/computers/raspberry-pi.=
html#raspberry-pi-revision-codes
> >=20
> > Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>
> One comment below:
>
> > +	}, {
> > +		.hw_id =3D BCM2711_BOARD_REV_CM4_S,
> > +		.init =3D rpi_eth_init,
>
> Did you check that this is equally applicable on the RPI4?
> This ends up calling rpi_get_usbethaddr(), but that one
> calls GET_MAC_ADDRESS on the mbox interface, so I am not
> sure whether this is applicable to bcmgenet or not.
>
> Cheers,
> Ahmad
>

Hello Ahmad,

No i didn't check specifically for the CM4S, i assumed the CM4S is not
different then the CM4 and RPI4 on that part and kept the same logic
then:
https://git.pengutronix.de/cgit/barebox/tree/arch/arm/boards/raspberry-pi/r=
pi-common.c#n646

I'm actually not sure how to validate that.

Cheers,
Sebastien.

> >  	}, {
> >  		.hw_id =3D U8_MAX
> >  	},
> > @@ -682,6 +685,7 @@ static const struct of_device_id rpi_of_match[] =3D=
 {
> >  	/* BCM2711 based Boards */
> >  	{ .compatible =3D "raspberrypi,4-model-b", .data =3D rpi_4_ids },
> >  	{ .compatible =3D "raspberrypi,4-compute-module", .data =3D rpi_4_ids=
 },
> > +	{ .compatible =3D "raspberrypi,4-compute-module-s", .data =3D rpi_4_i=
ds },
> >  	{ .compatible =3D "raspberrypi,400", .data =3D rpi_4_ids },
> > =20
> >  	{ /* sentinel */ },
> > diff --git a/include/mach/bcm283x/mbox.h b/include/mach/bcm283x/mbox.h
> > index 908ba17dba..cf5143673a 100644
> > --- a/include/mach/bcm283x/mbox.h
> > +++ b/include/mach/bcm283x/mbox.h
> > @@ -175,6 +175,7 @@ struct bcm2835_mbox_tag_hdr {
> >  #define BCM2837B0_BOARD_REV_ZERO_2	0x12
> >  #define BCM2711_BOARD_REV_400		0x13
> >  #define BCM2711_BOARD_REV_CM4		0x14
> > +#define BCM2711_BOARD_REV_CM4_S		0x15
> > =20
> >  struct bcm2835_mbox_tag_get_board_rev {
> >  	struct bcm2835_mbox_tag_hdr tag_hdr;



