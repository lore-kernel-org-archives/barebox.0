Delivery-date: Fri, 15 Dec 2023 09:37:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE3hF-003UzS-1C
	for lore@lore.pengutronix.de;
	Fri, 15 Dec 2023 09:37:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE3hF-0005v3-L8
	for lore@pengutronix.de; Fri, 15 Dec 2023 09:37:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	References:To:From:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Resent-Message-ID:Resent-Date:Resent-To:Resent-From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Sender:Resent-Cc:List-Owner;
	bh=F+LQ0Qz2eIh4H9wLglnb0pq7veeO1SZOVO9hPbwQH/4=; b=gQ4ee9qLXyqG65xiNxpIeHx4aR
	5C5xqYj0DYBnS89ejw9CCk/scDDpUNmcgxulclvmZXGh43QGWOVwSpXGLZ8N7xn402ybL5bRCunrb
	zw1tYcsBgiit3GSfiz0fgN2qCa+UPfPkAzMsyacKiEg0u6SZfjfSnahNSpu+ORf1EbxBQUEnRGhpC
	+UwN7FBm4EPEvxAP6nNBsK8MPeTnb3ltPrZfKHh1k7QJjtpxpdjsKnUK/eRlEXktVv/XqB2JMrHEI
	huVty26jFH2xwsjY5O1qjSmYau0H3n6zHReIxS2Ep3OY1owYjc8yXC7koMTw6VoWz8BYnSbW2Zccv
	PmMIqVRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE3g4-002UTn-2o;
	Fri, 15 Dec 2023 08:36:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE3g1-002USB-2z
	for barebox@lists.infradead.org;
	Fri, 15 Dec 2023 08:36:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rE3fz-0005jg-Gs
	for barebox@lists.infradead.org; Fri, 15 Dec 2023 09:36:07 +0100
Resent-From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Resent-To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Resent-Date: Fri, 15 Dec 2023 09:36:07 +0100
Resent-Message-ID: <9c334d3f-11e6-445c-b22d-5017f6f90b1f@pengutronix.de>
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <sebastien.bourdelin@rtone.fr>)
	id 1rE3Xq-0004lt-2K
	for a.fatoum@pengutronix.de; Fri, 15 Dec 2023 09:27:42 +0100
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40c236624edso4371555e9.1
        for <a.fatoum@pengutronix.de>; Fri, 15 Dec 2023 00:27:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702628860; x=1703233660;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=F+LQ0Qz2eIh4H9wLglnb0pq7veeO1SZOVO9hPbwQH/4=;
        b=HLEOhQefXLzBWHg9REqE4VtVn+foLENNE8ox5qcAPynT5moa65KQN2N0LjEfCr0wP9
         KbFDC4WOwT0grXeEezqP55XU++iEe1W1XhyJL6dmHhktimvkxgSXy0sqNLF8mMK663rZ
         Bx6tGU+to1QL25jBoKUxP/SEejxribKZi/6AJ1PyG/wE7LRlqqh2v1gAkR5ovSQqt5CN
         gxbP2BNne/fkFIFS+rCKlwtUmYvhuhKcDbNIZgLBd4baNHhbopL1tTxYsPLa3jHlkNEB
         vXzdNyP71Oruf4jdwJIOJCTPNFo/e3kVs+5WQzWb1cxxtOtEjtKINIovLbsRzWH/zCOd
         4rRA==
X-Gm-Message-State: AOJu0YxV280J2yNokmdxrna1DREcK4+GtSMIxLnwi6OGHCPpQHJpeUt8
	BE/ITzO8Sg0bIGbNf5IhN0ZqIdyVtClJxI1+2f4=
X-Google-Smtp-Source: AGHT+IGGpiBiE1z1KVreUec/hK3JaXk4Xn7T2wuez1Of7IMyUACl2LLcLDUTZrwAqrOfQOmPR6KJwQ==
X-Received: by 2002:a7b:ce8f:0:b0:40c:35b5:7013 with SMTP id q15-20020a7bce8f000000b0040c35b57013mr5999446wmj.132.1702628860471;
        Fri, 15 Dec 2023 00:27:40 -0800 (PST)
Received: from localhost ([2a01:e0a:1b8:9000:35e4:6034:77c6:2307])
        by smtp.gmail.com with ESMTPSA id t6-20020a5d6906000000b003364c7a8f2csm2018335wru.60.2023.12.15.00.27.40
        for <a.fatoum@pengutronix.de>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Dec 2023 00:27:40 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 15 Dec 2023 09:27:39 +0100
Message-Id: <CXORK466R1V7.3UMEVY1W9Y3KL@rtone.fr>
From: "Sebastien Bourdelin" <sebastien.bourdelin@rtone.fr>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
X-Mailer: aerc 0.15.2
References: <20231214163520.2232412-1-sebastien.bourdelin@rtone.fr>
 <5fc2e0c4-8bf7-4bab-8652-4a9d7aa98721@pengutronix.de>
In-Reply-To: <5fc2e0c4-8bf7-4bab-8652-4a9d7aa98721@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_003609_961573_6C5C95C0 
X-CRM114-Status: GOOD (  20.65  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
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

Hello Ahmad,

No i didn't check specifically for the CM4S, i assumed the CM4S is not
different then the CM4 and RPI4 on that part and kept the same logic
then:
https://git.pengutronix.de/cgit/barebox/tree/arch/arm/boards/raspberry-pi/r=
pi-common.c#n646

I'm actually not sure how to validate that.

Cheers,
Sebastien.

> Cheers,
> Ahmad
>
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




