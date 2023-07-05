Delivery-date: Wed, 05 Jul 2023 11:33:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGytE-00G2xv-U3
	for lore@lore.pengutronix.de; Wed, 05 Jul 2023 11:33:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGytC-00086S-Dz
	for lore@pengutronix.de; Wed, 05 Jul 2023 11:33:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5mEiNtqHj23L2BQPk6G9+WJ4V8mrxyzEryK52ggFZEg=; b=i+v1DaHe8/ndUF4v9U1yBJQbh4
	m1xRTnX4eeoQPYcyDntdyoX+zstbKbrLZbDvU3h9zuZKq6Fx5nXTnTqaV3CFtQiX2H5Nwkrm+ubrz
	d1IpGgoUb0/O+2QdKlNgcPJ08cGA8yZ0vgsOLH6arW2H4AgDysDPQFtMsiW/SQVEbIInE2aximGLN
	72Hv6fNL9C8cU5slmRgHutcdd9xdm31UwX243Eh74CY8SMBqBujMC81YNS/wwkOkloVCScqxOseij
	Pctw9BjnB4WoMMtkVlUhyAyxDIwvB1hCBzEdop9CAV8uI6Grd0bfydQPKPyJx4jtR4cHUkWvIUObG
	hUtC0t6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGyrT-00FMmN-1z;
	Wed, 05 Jul 2023 09:31:47 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGyrQ-00FMlC-0L
	for barebox@lists.infradead.org;
	Wed, 05 Jul 2023 09:31:45 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f954d7309fso656839e87.1
        for <barebox@lists.infradead.org>; Wed, 05 Jul 2023 02:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688549500; x=1691141500;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5mEiNtqHj23L2BQPk6G9+WJ4V8mrxyzEryK52ggFZEg=;
        b=TfCpP9a9YgNaeTKLyZEg6kgH6o0tCdSyjJRx2E/AchwLNRWoykS2eLDF2QZplsDWcH
         j8Rh550x6BhPvwVG0biXGnHGh6DA973/f4/0rZ5VEQr4rszXwm/tT9qZ0AC4erV24EZt
         Kw1XSHLrlf8l//OcDesZfbflxRAcKTQi4kxrMTS32x/u+8yyRbI2wTvPztmYtwTuAcwe
         tL6CzmcYxdWSptFNPgCah/Qlp9w+11Dr6akeko8dy7PDaUchI56p2ggDwbg5agfvvJQv
         /s7OVJ1OtZGQGTaVF0AMToepBeOOsq3gxQcaSsuJzxjnURONKRwCRhQuvz2m3jPWR4GM
         Bnvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688549500; x=1691141500;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5mEiNtqHj23L2BQPk6G9+WJ4V8mrxyzEryK52ggFZEg=;
        b=Vzw9AyZ7GPVno4ZMYEgTJ2TUIMCnrHdQkgvGVlZVGXqI3GYrINBPExEe2oddsYr5so
         Dw2cunePCvqGG8FySef5iWExlWqIJAGmG++BSHiy0WLnOaV44gynQ2obx9diiLMp9Ou6
         okioUfLexNp4youvn61SacyefMo3LTdcB7S0M21XubtXZ2jDivKXTeb91Rnhe6HuV6O+
         bNYTw5SHy5qTEQLRetA/pgc+XthOVpUCTn0V1xneiGBgqHvnBpt1lQXJqXJAQbQVvXSH
         ri4JPxOdmUZMsPs2UxotEbNFRrLjDr4FWGmc9hOpXfUVBJ83GC1phgqBfIrQqXj/Onqw
         H6BQ==
X-Gm-Message-State: ABy/qLaliCRhezU648qXa7GPn81hxQBMlohO2fzdCSjaBNI99uelQqex
	pb7AZvvGKwmh5L4PAq0HmjI=
X-Google-Smtp-Source: APBJJlGy6svzpziJ0qWZXy1X8yb0UWYtEmEZ6G4t/G/rRy1H/rzgtgxQmFogNtX3Sw0q7RDOqKSheQ==
X-Received: by 2002:a05:6512:4016:b0:4f6:56ca:36fc with SMTP id br22-20020a056512401600b004f656ca36fcmr652348lfb.6.1688549499411;
        Wed, 05 Jul 2023 02:31:39 -0700 (PDT)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id w14-20020ac2598e000000b004fb7d1149e1sm4339998lfn.290.2023.07.05.02.31.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 02:31:38 -0700 (PDT)
Date: Wed, 5 Jul 2023 12:37:27 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20230705123727.a70825cc4fb03f0c92511257@gmail.com>
In-Reply-To: <20230704120356.GD18491@pengutronix.de>
References: <20230610103220.566369-1-antonynpavlov@gmail.com>
	<20230704120356.GD18491@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_023144_144464_6217732E 
X-CRM114-Status: GOOD (  27.46  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC 0/4] Run barebox on sc6531e-based feature phone
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 4 Jul 2023 14:03:56 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Antony,
>=20
> This has stayed unanswered for some time.
>=20
> I am not sure what I should do with it. In the current form I think it's
> a bit too basic to be useful. Maybe we can add it once the LCD and
> Keypad driver is ready?

It's just RFC. With LCD and keypad support SC6531E barebox port will be a n=
ice
demo for barebox presentation and can be added to mainline repo.

There are some ready-to-use SC6531E drivers in the https://github.com/stron=
gtz/linux-sprd repo.
LCD display is connected via SPI so drivers/spi/spi-sprd.c can be used,
also we need backlight driver.
Keypad is supported by drivers/input/keyboard/sprd_keypad.c.


> Sascha
>=20
> On Sat, Jun 10, 2023 at 01:32:16PM +0300, Antony Pavlov wrote:
> > This patch series adds initial support for SC6531E chip.
> >=20
> > SC6431E chip is specially designed solution for creating
> > feature phones. It contains
> >=20
> >   * ARM926EJ-S core (up to 208 MHz)
> >   * embedded PSRAM
> >   * peripherals: USB, SPI, UART, IIS, PCM, I2C, keypad, LCD
> >   * SIM card and GSM/GPRS/FM/BT stuff
> >=20
> > This work is based on FPDoom, see [1], [2], [3] for details.
> >=20
> > At the moment only timer and debug_ll output via USB
> > are supported.
> >=20
> > After adding lcd and keypad driver running bareDOOM [4]
> > on SC6531E will be possible.
> >=20
> >   [1] https://github.com/ilyakurdyukov/fpdoom
> >   [2] https://habr.com/ru/articles/706766/
> >   [3] https://www.youtube.com/watch?v=3Dtln_Iace1O8
> >   [4] https://github.com/a3f/bareDOOM
> >=20
> > Antony Pavlov (4):
> >   clocksource: add sc6531e driver
> >   ARM: add sc6531e and F+ Ezzy 4 phone support
> >   sc6531e: add debug_ll support
> >   Documentation: add sc6531e instructions
> >=20
> >  Documentation/boards/sc6531e.rst          | 187 +++++++++
> >  arch/arm/Kconfig                          |  10 +
> >  arch/arm/Makefile                         |   1 +
> >  arch/arm/boards/Makefile                  |   1 +
> >  arch/arm/boards/ezzy-4/Makefile           |   6 +
> >  arch/arm/boards/ezzy-4/env/init/automount |  27 ++
> >  arch/arm/boards/ezzy-4/lowlevel.c         |  19 +
> >  arch/arm/boards/ezzy-4/usbio.c            | 449 ++++++++++++++++++++++
> >  arch/arm/configs/ezzy-4_defconfig         |  49 +++
> >  arch/arm/cpu/uncompress.c                 |   7 +
> >  arch/arm/dts/Makefile                     |   1 +
> >  arch/arm/dts/ezzy-4.dts                   |  22 ++
> >  arch/arm/include/asm/debug_ll.h           |   2 +
> >  arch/arm/mach-sc6531e/Kconfig             |  17 +
> >  arch/arm/mach-sc6531e/Makefile            |   3 +
> >  drivers/clocksource/Makefile              |   1 +
> >  drivers/clocksource/timer-sc6531e.c       |  70 ++++
> >  include/mach/sc6531e/debug_ll.h           |  17 +
> >  18 files changed, 889 insertions(+)
> >  create mode 100644 Documentation/boards/sc6531e.rst
> >  create mode 100644 arch/arm/boards/ezzy-4/Makefile
> >  create mode 100644 arch/arm/boards/ezzy-4/env/init/automount
> >  create mode 100644 arch/arm/boards/ezzy-4/lowlevel.c
> >  create mode 100644 arch/arm/boards/ezzy-4/usbio.c
> >  create mode 100644 arch/arm/configs/ezzy-4_defconfig
> >  create mode 100644 arch/arm/dts/ezzy-4.dts
> >  create mode 100644 arch/arm/mach-sc6531e/Kconfig
> >  create mode 100644 arch/arm/mach-sc6531e/Makefile
> >  create mode 100644 drivers/clocksource/timer-sc6531e.c
> >  create mode 100644 include/mach/sc6531e/debug_ll.h
> >=20
> > --=20
> > 2.39.0
> >=20
> >=20
>=20
> --=20
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


--=20
Best regards,
=A0 Antony Pavlov


