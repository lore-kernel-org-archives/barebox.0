Delivery-date: Tue, 30 Aug 2022 13:06:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSz4n-001dai-Hf
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 13:06:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSz4j-00070l-PJ
	for lore@pengutronix.de; Tue, 30 Aug 2022 13:06:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vT3xpdAmIlx1SYTGKu/Mpa7wyfTKREnHtHIhHb0XIRE=; b=mnmrA/lTcfRz9EjlX/hHqPkhjJ
	fo/7PhsT7euGhpolpIYffxXOHISraJPygTO3g5UheZi7ItZBkCpYn2H4kmoRDQtqh5VRRMF8sCJW9
	MKVf9+nSmStPgwvOdpPSZ6n89NiaU59F7gyaoWyaA3MhmJfzyT2dm4hRpn9vBlxKyJQ2ZrBeSdXmL
	iUJfPU/ElBUFFfHyO0sVY7/+iErSfT5oV59zh5x7KYU1KQDNPPy2veVfGoaY6AwRZuIBr0WHLcqFP
	BCH54vRa9TvVxXV7aeU7E7gQoVbPCMqEMVy9M87aYH1GgQbKo4SXcPlm241BBv8jO3tiX8WyQJMJ8
	RJIYewkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSz1o-00GO94-KO; Tue, 30 Aug 2022 11:03:36 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSz0x-00GNmp-GR
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 11:02:44 +0000
Received: by mail-lf1-x12f.google.com with SMTP id p7so3864257lfu.3
        for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 04:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc;
        bh=vT3xpdAmIlx1SYTGKu/Mpa7wyfTKREnHtHIhHb0XIRE=;
        b=DBKq49xLa7YHcjgPcSDT44JXOAYZyJClev7d28YaZfXZ/s0QrL237avdmRZKOR29BB
         /qgHph6lUTpGHi4ZMndaH48yZB02WDgkZHuaIJ+rWiiM59lMWikKLb3oIKdT1wdYTHoX
         H0KDZWI+5t+W07P13AqqY2Njb/F/1b9eXVj1QxE6i7tu2HRivWtaYD738oUIr2FBglxA
         9mN1ItBzLS6tlVxpI2EAjjxDHidon6eu3Q/b44xLfy/TUDul/plWQU7FqiGByuxLO9dH
         fcoYgovEHp7Ijtk9+jkDSaIHamyT/VOZDcO+OgTD96FlVg3nJJfc2LsPHFfD3trP47TY
         RS2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=vT3xpdAmIlx1SYTGKu/Mpa7wyfTKREnHtHIhHb0XIRE=;
        b=YOZbBO7SwB9j58dKD34fbxGCiRaur6cAlS7SF7fm4JFRNM0o0NIOKN9f8rhrls7Rzq
         Lz2zIz0oVIXvOr+U35c+Xr9ZEgxxrBCrja+pe1tssH2p632NNfiDI4H64U6VR9HXJr/c
         ebIHoDQhaIXvblkR6D2oRiSUSsc3ZwqUjLL5ZiCwYuFmrojM+PMjDTweL3MniFMsKRcD
         2t62Z6cYzdBD/HFWNlYcvbdZanBDpHls1gchy9zaKpTRxFB13dbNCkLneUTxnpPC0S0S
         tzoBdymSlSbLM4K5atzA7TVEsvXer5mUUexV0V30of1++LvQmHPt9TF9GGnXdXylDJJm
         SPqQ==
X-Gm-Message-State: ACgBeo3LhtVLo2J6WQszNIo4L2uIoN31sWXxl30AUeCKATJVT8wVLMUS
	V2CP/6LrQrZiNzNwEHM7bs2vX0mTGjUGMg==
X-Google-Smtp-Source: AA6agR42VqZYSUqI9WFnCtIgvVHHbZzVcsrJ9uUytZJlu8qpUCXFs7/Lk2hzfnVyJV0yklH0vLAlzw==
X-Received: by 2002:a05:6512:13a4:b0:479:3b9f:f13c with SMTP id p36-20020a05651213a400b004793b9ff13cmr7259412lfa.380.1661857353408;
        Tue, 30 Aug 2022 04:02:33 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
        by smtp.gmail.com with ESMTPSA id x25-20020a056512131900b0048afbe8a6a1sm1571958lfu.241.2022.08.30.04.02.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Aug 2022 04:02:32 -0700 (PDT)
Date: Tue, 30 Aug 2022 14:05:33 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <ahmad@a3f.at>, barebox@lists.infradead.org
Message-Id: <20220830140533.deb229d3e3f32c827e6ff521@gmail.com>
In-Reply-To: <afdbea2b-35a5-840d-e8e0-3548fc6203fc@pengutronix.de>
References: <20220426064604.422292-1-ahmad@a3f.at>
	<20220426064604.422292-2-ahmad@a3f.at>
	<20220822143242.a7937c979f582c4989303380@gmail.com>
	<afdbea2b-35a5-840d-e8e0-3548fc6203fc@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_040240_076423_FC87DABA 
X-CRM114-Status: GOOD (  16.81  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] RISC-V: sifive: enable SPI Flash and SD in
 config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 23 Aug 2022 07:18:02 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Ahmad,

> Hello Antony,
>=20
> On 22.08.22 13:32, Antony Pavlov wrote:
> > On Tue, 26 Apr 2022 08:46:04 +0200
> > Ahmad Fatoum <ahmad@a3f.at> wrote:
> >=20
> > Hi Ahmad!
> >=20
> > I'm trying to run SiFive target with emulate.pl, e.g.
> >=20
> > barebox$ dd if=3D/dev/zero of=3D/tmp/1M count=3D1 bs=3D1M
> > barebox$ ./test/emulate.pl sifive_defconfig  -- -drive file=3D/tmp/1M,i=
f=3Dsd
> > ...
> > qemu-system-riscv64: -drive file=3D/tmp/1M,if=3Dsd: machine type does n=
ot support if=3Dsd,bus=3D0,unit=3D0
> > Error running emulator: 256
> >=20
> > I use QEMU emulator version 5.2.0 (Debian 1:5.2+dfsg-11+deb11u2), pleas=
e see https://gitlab.com/frantony/barebox-gitlab-ci-runner .
>=20
> I am running QEMU emulator version 7.0.0 (Debian 1:7.0+dfsg-2~bpo11+2), w=
here the above
> worked for just fine.
>=20
> > If I skip the '-drive file=3D/tmp/1M,if=3Dsd' qemu option then I see "L=
oad access fault", e.g.
> >=20
> > barebox$ ./test/emulate.pl sifive_defconfig
> > ...
> > barebox 2022.08.0-00162-g7fce4ae853b0 #1 @1661158478
>=20
> Without -drive if=3Dsd, MMC controller is probed, but no card can be dete=
cted:
>=20
>   WARNING: mci0: Cannot reset the SD/MMC card
>   WARNING: mci0: Cannot reset the SD/MMC card
>=20
> No crashes here. Can you update to a newer QEMU version on your CI host?

I have update QEMU. At the moment almost all tests were passed successfully.

There is the problem with emulate.pl test_bselftest, please see https://git=
lab.com/frantony/barebox/-/jobs/2952886676#L242

Can you please run emulate.pl from the master branch in your software envir=
onment?

--=20
Best regards,
=A0 Antony Pavlov


