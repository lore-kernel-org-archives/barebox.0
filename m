Delivery-date: Tue, 23 Aug 2022 16:34:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oQUzM-0088z6-Qf
	for lore@lore.pengutronix.de; Tue, 23 Aug 2022 16:34:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oQUzK-0003eJ-G9
	for lore@pengutronix.de; Tue, 23 Aug 2022 16:34:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8xl0FKYIvAso5ynk32qKkbnV8Cbjlkm/OuHyhN7etRI=; b=CXlAZKCsbFxvjW7N5lmrRa23hF
	2GxX+xgxh2uhbSrklOrb9rCgAgzsQ1okPiPbtW7P3eZD4OCV78mn49sY1Vh9Zd8B6QoEhDV2gM50k
	qBDLuLwtZ7p0v5HmNOKQ3+HAT+zW4SLj7ZhuRNN366rhHrUnJ1ygHO+MPjYgsclzkJuDefmkYDQmq
	GQarmoCw71B0hOoE0UohHu/9697o5UGFQlyoFFNBL0uLUhcd0HmV8D7mK1LD1C6D0R8410pCBiXqt
	9QRwEzHe6HfDOkw0oqS2xUg7IRZHmXq9sGmEziI6vTmU1I55jQD+CCb7iXgltUv72Y5GRviV0Gk0M
	qe8YptFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQUxQ-006e4r-1J; Tue, 23 Aug 2022 14:32:44 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQUxL-006e2q-Vj
	for barebox@lists.infradead.org; Tue, 23 Aug 2022 14:32:41 +0000
Received: by mail-lf1-x12c.google.com with SMTP id s6so8704774lfo.11
        for <barebox@lists.infradead.org>; Tue, 23 Aug 2022 07:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc;
        bh=8xl0FKYIvAso5ynk32qKkbnV8Cbjlkm/OuHyhN7etRI=;
        b=FN/6BdsmpW+cw4n285s9SQr2aKqTHJE+XD47oqL0+BinS1rx8ZchaueLH/zYYAawyK
         smph1OEqFkq84psjCLCFKG9soGCbM8XzjiRdTppCQ5xBcUE8ky8DYr4HEkeZUVzjIyTG
         Ykd7OdZiZGyeeHIUcmUTvzgOMbZal62VJ/zVI3V/BN7VPVyxxqb4daNA7rFufy2fA7Oc
         ZG8Nf7CjXqsHwrPRZ945xls9td7SWK1P2NmRnyABuvm/OshNRIuDKdy1ElzSPVIRCuZM
         ScOXQgUrYA/3sdfWDJ7EsFp5LAK32K5g55lF8BXsEiD4LnyOOqwoWskyKJH7h5gGP4E8
         aqbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=8xl0FKYIvAso5ynk32qKkbnV8Cbjlkm/OuHyhN7etRI=;
        b=0MFfp7obj1ExY/H0O3W2vOKvgO3+ASRmxFaIbuF1Y+HWymFqM6mz86mYwaIOEyBI2G
         nE/nHwvkv6IZCjmFxD4BiraVZxFrTCaG+kZ8C1GMJF/N21vLQZOJqmUA655WrSa0k/+T
         7omSL7SYm196TDVdtV2SbOpxa5MCcOp5DG4dOTAF8PDSQKwsVmF4jiSV0uNywNdCGIpn
         M+auDue9wyQkFmI2jNWHB+pdlQr472LgCWRngeE5buWGuRaZoDVp9TYFEvvnNajFZe65
         W9mQhHl0Xg2LwnitmGGKqBw4wSq7W8hL5dNssgVNMCYIIxtpYtWr98K6ImjXMlTMgMvg
         ooNw==
X-Gm-Message-State: ACgBeo2446SbdHT7lwZ1Ko/0MctbEers+RBTjVLhwdIt6rZrcSEsX8Ey
	2GJb/KciLqhnrw30F6znu0Wp4g3gt50=
X-Google-Smtp-Source: AA6agR7qwx9Ycs6Pe2/ianbNKm0YzlL/n9Dxl/8cu6Cwqz8hFS2wqVauyVC6Xrg4d5CppUsktDNMCA==
X-Received: by 2002:a05:6512:3409:b0:48a:ef20:dda with SMTP id i9-20020a056512340900b0048aef200ddamr9372335lfr.649.1661265155560;
        Tue, 23 Aug 2022 07:32:35 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
        by smtp.gmail.com with ESMTPSA id n19-20020a0565120ad300b00492eeabd6f8sm793723lfu.52.2022.08.23.07.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 07:32:34 -0700 (PDT)
Date: Tue, 23 Aug 2022 17:35:26 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <ahmad@a3f.at>, barebox@lists.infradead.org
Message-Id: <20220823173526.72add109d20cb0b195bb74ed@gmail.com>
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
X-CRM114-CacheID: sfid-20220823_073240_041454_57CAAB56 
X-CRM114-Status: GOOD (  15.47  )
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

Hello Ahmad,

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
>=20

I suppose I can install qemu-system-riscv*7.0 from bullseye-backports (see =
=20
https://packages.debian.org/bullseye-backports/qemu-system-misc).

--=20
Best regards,
=A0 Antony Pavlov


