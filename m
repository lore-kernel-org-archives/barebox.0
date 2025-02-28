Delivery-date: Fri, 28 Feb 2025 07:08:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tntXU-007wLo-2U
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 07:08:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tntXT-0006sn-GS
	for lore@pengutronix.de; Fri, 28 Feb 2025 07:08:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GfKOTGqXiUh5GemHQaoTOY2O5+B57vXcMr57jQjhtuE=; b=hguuGk/eCgtTLL7mCEKnZ1DEfC
	t6I8ulEankDv0xmlmKC+QinG6FPxRVLwW5z61fl/PN4GaWrLSyYRAjZk6bGhFQmbTWXleHFgTMYGy
	gk508zLOuazohQ+fVNXd1kQRz67L4vXsog5RtrhmMCxkaEpb8qHie2Fm6CeJiu0ASDz9mooRxN//o
	zmBaISxRTEazg17Umoj0BSEoSSG4u288r4kQWGQgmuhe8m6azZPTGTa0uZXpHC8nI2i+j8uu1HoLl
	Cy0nPq+MPUFqlgJmCVxUcegDNB0QJDAXJ5Uvk4HzyqUjqIPhWM80O2UZ1T9oEW8HAYTekqrCa1n4D
	j4ZDhWgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tntWh-00000009qQo-0GWt;
	Fri, 28 Feb 2025 06:07:11 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tntWe-00000009qPz-0bKt
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 06:07:09 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-2fa5af6d743so2729126a91.3
        for <barebox@lists.infradead.org>; Thu, 27 Feb 2025 22:07:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740722827; x=1741327627; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GfKOTGqXiUh5GemHQaoTOY2O5+B57vXcMr57jQjhtuE=;
        b=EDgYjm1YNVLiMUN54T2vLRoZiHPhW616EJYv/CMx2a1J1siVZN3gmevsQeiJwPKEHS
         VgRT9dDto5a1yV1WFppg5dkQjbe2a9oM+ewBeXA8n1fenhJFXKMWs1lJeP1os/UjfVCJ
         VZtiZhKdLLS3q6TPoqDPu8lI6q/IiipD8fDiILTDeuVfFv5RxF20XBqbZ9cg06YGQroO
         KxfVkuectGar4qlX+AieayozfJrT4F/BGKZn0nTEBQcdSKZnE3NmcRV3QjrCsuhNjUdJ
         RivTnFF9IG2giTS+o7WCIV/rLjjuhbjXu7zSCk8iAukFZ8MCnOo/r5KIZC85pDd9e3nK
         qm1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740722827; x=1741327627;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GfKOTGqXiUh5GemHQaoTOY2O5+B57vXcMr57jQjhtuE=;
        b=M8FxfnpAVC8gtVO5epif6/zY0ZNOgj93FupipM94oWQIbhhDLBSMvc2rgXqeajB+lR
         B/Oi7NTBte5PkPkjdqkT+QTNcGGzyNa/G72BKL43traUowoNbwWj7x2QbdVgioplnnK+
         MF13PO2ELzr6Y1dbdhDj8fNg0qfcW21g1A2cBhKoUc3Pp77B/vIxUj+KBgzBL1WQul04
         xRLnaa1OHCDKVmKNqBVX+9HGA72tbIhthfkzN3a+LInL6rAnztATrKaY32QYOVBsTlW5
         L5LHtw5Bk3RJxcDeoUSERKGSoMi/Cs6cfA3I3K+a9jJsjmsI7yeZMzyCy3tW6y3aLIYS
         qYCw==
X-Gm-Message-State: AOJu0YzAQq6/BEPWt2tgk45jrOBN6uDhiYQJNDdBkuN1qnhnbTW/mFsU
	TQFlwgxGsBQvYoXQ/fiDiEw9AeNyvgMgkKYi07Q1qeNK0c0fkT+9VRy/USj3HkyY6N9aLjkab1K
	qkPjDQKcEVcFQofDkP0ynQ+kk03673HHP
X-Gm-Gg: ASbGncvqWjgNgCB7gddryVCbbb/2xPRmKjWugllggyQWc0liXKlSOocRIJFFfOSvPGX
	A2ROU+7cMJwDRWMlPNLg2w0CIkagMbDtSaE2V/te2Ifh7iIbE0BDl03roWywNvmSgPnXj8HM5L9
	607WDZjSQ=
X-Google-Smtp-Source: AGHT+IGr+OiayZpinzr+4+jHmPZsdg0zzBofnPQvQGsoglAbipTy1TWUfOi8Mp0z8PrUtcM3rsKmQ2NzWAIMKtu4fAE=
X-Received: by 2002:a17:90b:4acb:b0:2ee:e518:c1cb with SMTP id
 98e67ed59e1d1-2febab2ed94mr3909868a91.7.1740722827023; Thu, 27 Feb 2025
 22:07:07 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvToG8WGLUo4_e2dSdovFZBAbcdOFUqm+F+W4gWoaVnrgQ@mail.gmail.com>
 <Z8CaS4gLesWjG81q@pengutronix.de>
In-Reply-To: <Z8CaS4gLesWjG81q@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 28 Feb 2025 09:06:55 +0300
X-Gm-Features: AQ5f1JoKzFLmBMt6M96t1iyDLe93xm9lr1gvxBsOwm1hDevb2i502FrpEIGhopU
Message-ID: <CAP1tNvQFhZHobkaYL_v9aQ8FAqEtd--pkGxW3C6v81zMUaM-PQ@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_220708_181908_A1A93A55 
X-CRM114-Status: GOOD (  22.51  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: automount doesn't work without GPT table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha.

The error occurs in the cdev_mount_default() function.
cdev_get_mount_path() returns "/boot".
And indeed, the partition is mounted here for some reason...
I don't understand yet why this happens.

barebox@Mega-Milas Informer SAMA5D2:/ mount
none on / type ramfs
none on /dev type devfs
/dev/mmc1.0 on /boot type fat

Update:
I found that this happens if the CONFIG_OF_BAREBOX_ENV_IN_FS option is used=
.
When disabled, mounting occurs as expected, but in this case I cannot
use environments from a file from a partition on the SD card.
It is not yet clear how to get out of this situation...

Thanks!

=D1=87=D1=82, 27 =D1=84=D0=B5=D0=B2=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 20:0=
1, Sascha Hauer <s.hauer@pengutronix.de>:
>
> Hi ALexander,
>
> On Thu, Feb 27, 2025 at 09:37:37AM +0300, Alexander Shiyan wrote:
> > Hello All.
> >
> > I found that automounting does not work without a GPT table.
>
> So you mean it doesn't work when the device has a MBR instead of a GPT?
>
> > In the example below, it is not possible to automatically mount a
> > partition from an MMC card.
> > However, if I add the full paths to the command manually, everything wo=
rks.
> >
> > barebox 2025.02.0-00690-ga6a0a0ba4f61 #12 Thu Feb 27 08:27:56 MSK 2025
> > Board: Mega-Milas MM-SM-SAMA5D2
> > AT91: Detected soc type: sama5d2
> > AT91: Detected soc subtype: sama5d27c_d1g
> > ...
> > sdhci-at91 b0000000.sdio-host@b0000000.of: registered as mmc1
> > mmc1: detected SD card version 2.0
> > mmc1: registered mmc1
> > ...
> > barebox@Mega-Milas Informer SAMA5D2:/ ls /mnt/mmc1.0
> > mount: Device or resource busy
>
> -EBUSY is a strange error code from mount(). Can you follow where it
> comes from?
>
> I can't reproduce it here. I tried both with a MBR and a GPT.
>
> Sascha
>
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


