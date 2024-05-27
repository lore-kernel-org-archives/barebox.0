Delivery-date: Mon, 27 May 2024 11:45:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBWvW-000eWT-0E
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 11:45:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBWvV-0000WT-E8
	for lore@pengutronix.de; Mon, 27 May 2024 11:45:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eAxYX5H4kJVs05jR5YzeqUSV/GGgUlyWAKTwSzvt08Y=; b=nMXfNgssmVCjDdbQSIi2uONf+a
	4C4ISR6HnqTa8KFqTZpUNNr5AxkmNBIAkHT22o61Rsy9vV5Yn2jR3tCbm/O4UzH0SnCZqhJd1dLuG
	ihwHw7ook4K9jEQ4Y1spk7NqRbxyi9CbTbfkiDHG7iWh15SYCzb1ryzIbI3PS5OfWMuk7QdOHD4qv
	jm9DuV9QhMzwQZLZZSk3u2qqtQDoOBxX71A+hcVbPdRm2KSGWcAV41OsabEYursDxVXI+keSdd3ix
	78tLGjDooIgoI9yxfVWF+c8kPGHi3aH6GdiygdjtJywKM/mJXSYqxD8I8eap58AvMmUQetVLpZZYn
	mTjYuAUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWux-0000000EUTa-0cdo;
	Mon, 27 May 2024 09:45:23 +0000
Received: from mail-ua1-x929.google.com ([2607:f8b0:4864:20::929])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWuu-0000000EUT7-2n9T
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 09:45:22 +0000
Received: by mail-ua1-x929.google.com with SMTP id a1e0cc1a2514c-7fe97255d03so2067919241.0
        for <barebox@lists.infradead.org>; Mon, 27 May 2024 02:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716803119; x=1717407919; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eAxYX5H4kJVs05jR5YzeqUSV/GGgUlyWAKTwSzvt08Y=;
        b=XouTJxeStVWk7sY/SdryOkQAPsret6zz3ctcTMQ5bCv59+LFXaZ+mQmDmf785VYMGa
         kLZpzrDzQou7N6pdtaMUxcCFFeVYLNuhw/2N9eWvqJPx2MTWsm6bnMgad4TFODJ7Xe8o
         XYr7swwby5l3b5l0kzeJYnGuQGYwPEG659UIDFIL2hB3nZ28kig5chcLF5TyPJQ3/YSk
         fuYfDtEPNNKn75lifazKDR+cAEn1H6TWVarcivKIslywgR0zXr9/7tT6LAIC0MP62Vr+
         Ae3I5D86PdMLtiBU83l+u6pNJMCn+C/5dBdwqqRk3lfGX+I7PHBqEUNmyKuOqOm27vY+
         0NLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716803119; x=1717407919;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eAxYX5H4kJVs05jR5YzeqUSV/GGgUlyWAKTwSzvt08Y=;
        b=UAG89+nbNfh2GFGteoRk4rfE0jXi39e/h5pwCKCfrIPLNjMVGQHcb/gNSrY1uWrgnZ
         2TuQONCl7fUewftxMlpRG20DATC3S15uMi9+Utc/EZj7GDw45R8OMCTyiwYAbp9BrZxT
         bFypUZTdAhdKmVfL/iLP5Awz94fpj7aB7rRXudHLouS2ywa6c5lBCv3+SW5pP9/tG+Bb
         eSVIn7cq/3thnvhpdG48lMYxiuW+Mb1xPsLC9/pnZ3NWVOEThoInItobxcZjovzIMznV
         S9ENCfElGhB5pNmdZv2ICLx9lzTqbBOUqLH7N+HCvI4LV8c7jTHvlr3p7ME9Z/s4F+nb
         OUNw==
X-Gm-Message-State: AOJu0YxiTRK94Qqr6wc2BjCKCB9foNiO+Nri6oAxIrREpg8BHy11OFGB
	Lmtcn8+Xz3bE7E1VEjhjvESEWrWAWKUE5gN5wtH6jSL/AA5QXH1yD7tU0yPEgmt+76W/3BCJKHa
	mgz412OIkCTstxtsiL1A9YmQd70C31CeI
X-Google-Smtp-Source: AGHT+IFuQevyVPG2RvA5Z7+Lrxpv7tXYdVBQN32irZltGqhO+jTRabo34lWSoB65bd9rBQT6hbWCvzL7VRcPmqpLYFI=
X-Received: by 2002:a05:6102:36a:b0:47c:248d:cfee with SMTP id
 ada2fe7eead31-48a3855a401mr7614198137.15.1716803118551; Mon, 27 May 2024
 02:45:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAMn3X6NejkLSeyFvJ7Z-0APaUHK8eTWRgFKvbft3SLJp4nO1YQ@mail.gmail.com>
 <ZlQ5Ge4r9nP4CCBn@pengutronix.de>
In-Reply-To: <ZlQ5Ge4r9nP4CCBn@pengutronix.de>
From: jianqiang wang <wjq.sec@gmail.com>
Date: Mon, 27 May 2024 11:45:07 +0200
Message-ID: <CAMn3X6Mx8ZJjiMR8Nb48bwm2DnnA-Spq7t5rR-KT52xeUVETtg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_024520_736219_B631DDBB 
X-CRM114-Status: GOOD (  27.72  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: Heap overflow vulnerabilities in network implementation of barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

Thanks for your work. I noticed that if the device does not use DMA,
it will probably have this problem. Yes, what you mentioned the
smc91111 driver has the same vulnerability. However, I didn't check
them carefully for each device driver.

Best


Sascha Hauer <s.hauer@pengutronix.de> =E4=BA=8E2024=E5=B9=B45=E6=9C=8827=E6=
=97=A5=E5=91=A8=E4=B8=80 09:41=E5=86=99=E9=81=93=EF=BC=9A
>
> Hi,
>
> On Thu, May 23, 2024 at 06:51:01PM +0200, jianqiang wang wrote:
> > Dear Barebox devlopers,
> >
> > I found several heap overflow vulnerabilities in Barebox.
> >
> > The Barebox implementation assumes that the network packet received is
> > less than PKTSIZE, that is 1536 bytes. For example, the /net/net.c
> > file ping_reply function assumes that the packet received is 1536
> > bytes and allocates a 1536 bytes buffer then copies the packet data
> > into the buffer.
> >
> > However, in the driver layer, it lacks a proper check of the packet len=
gth.
> > For example, in drivers/net/cs8900.c cs8900_probe function, it
> > allocates a PKTSIZE buffer and assigns it to rx_buf. In cs8900_recv
> > function, the length is read from the device register:
> >
> > len =3D readw(priv->regs + CS8900_RTDATA0);
> >
> > After that, the data is read from the register in a loop without a
> > boundary check.
> > The same vulnerability happens to the following drivers:
> >
> > drivers/net/ks8851_mll.c function ks8851_rx_frame, it only and the
> > packet length with RXFHBCR_CNT_MASK (4095 bytes,) which is not
> > consistent with the upper layer length check.
> >
> > drivers/net/liteeth.c function liteeth_eth_rx, It checks if the length
> > is larger than 2048 which is inconsistent with the upper layer.
> >
> > drivers/net/smc911x.c function smc911x_eth_rx. The packet length is
> > read from the register without checking.
> >
> > It would be good to add a proper and consistent boundary check for
> > these drivers otherwise it will lead to potential heap overflow
> > vulnerability.
>
> Thanks for noting this. I've just sent a series fixing the drivers you
> explicitly mentioned. Additionally I have checked a few other drivers
> and it seems at least the smc91111 driver has this issue as well. Are
> you aware of other drivers?
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


