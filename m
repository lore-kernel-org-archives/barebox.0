Delivery-date: Tue, 17 Aug 2021 12:19:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFwBa-00065E-98
	for lore@lore.pengutronix.de; Tue, 17 Aug 2021 12:19:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFwBV-0004gt-Rw
	for lore@pengutronix.de; Tue, 17 Aug 2021 12:19:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFPplQjjF1UsLMZqk9ssVPHfCqDCPLx6vWGrBp8yxok=; b=33JFnpfvwiSCvv
	rgYumUKYYfRto9hc5FoQrUidLn346DAnN1eoafnKUuLbjskAHMvU2Fr2UWdal+ejrWOZRLUlyTPP1
	58i3pOW2B01Np3su92Xm6t1RBD/eivfKYkJ5TK6ZcvlDrGh9gLtzB96jzGNbQquAjNKzIz9xMu13r
	6/Pc2W92UUun4E1LWwcPtiNAIYD3E7Zx/hJDSd/rw4cZbELnAAXjv04Wxg+vcBrj5xnpolH5iHREK
	Eb7PTufbiRIkHU5JgZQ81CfcrpGWV+12Ah0HpIYowL+7ELJWiSVBwBkOZCftLwvuufhm6bHBIHcEX
	cCDYWxWGjBvKAzL3GiFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFw9n-0024N4-RE; Tue, 17 Aug 2021 10:17:20 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFw91-00245I-Od
 for barebox@lists.infradead.org; Tue, 17 Aug 2021 10:16:36 +0000
Received: by mail-lj1-x22b.google.com with SMTP id s3so3058597ljp.11
 for <barebox@lists.infradead.org>; Tue, 17 Aug 2021 03:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VqZP5splOQhWTDuVJOW7OO0pbPcUPKlsnfasBvj4xWg=;
 b=Xed6+T8MmiDZgUyWnm9XKAwKaoN6jgwPz1jGaIQsXcXhMxO5Cr3WcOpbMlUeY55gh5
 kRsXJmm6mLB4EBJ4pMDHUeQOm6No/mLDqGo0Rq0H4/HgKsLFo49QMDVyaMwLK4jVY6qg
 GKlGsXSRJxHKQmgYxvneZujRrRYz6nQgGKYFTCcXzpH9pk8DI7i0dnZoq48Lwz+JhhqK
 sIAIS9XqMlm2cv4OmKDMPetGfmgrfzf0IUTE4oYJn2PtREP2xVcLbRmR6eh3B1Ir41Am
 OlmKgbKEOzgQjx5s/4huDHQqDhy0tWtXE05N1fBt/DBL4owT2Jt7YvGX5RedX8zniIvr
 0LnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VqZP5splOQhWTDuVJOW7OO0pbPcUPKlsnfasBvj4xWg=;
 b=C/QjFSReYK76BHY11SAExSNMOoKg5d5I6HvGjtZE/fu+uRVNHugudOvizV084sqgma
 Yo9C4suxd9nFalZzjSqtosVDJSZxuGiJIOp4COgu+FDJ4+qOGWPpoJrdlfCwBkSPI4VN
 XSy6n2ZsVT0VtyB1yc0u200ITaDqTdRWLWTXSfl6Bf+vo4FnvJXqPGu+9VppSHzw38vK
 jdUh6hxnahj/j5DttRL7S61UuOUbab7z/Os50fTaX5uORyzX3bXf+44ikIAWOrrkPlaP
 X5egwpBNDvrVdov7dnfKDrppaJHA3cdW3BlPXnxivkRg++QAI8lbFv/QeppFy8aqzVjy
 fk8A==
X-Gm-Message-State: AOAM531eS808hNy0VqBXNH62LG9QwV2Lk2bjEjDkHJaOwsL0hhHeDsg/
 lkQSBjlVgeZu2mshxBks4F0=
X-Google-Smtp-Source: ABdhPJyeb18SY3mxkPHptPEkFaUjSkI0WKsf1ICZphb5EU+ooDVN17NLnoVIKjiDFqUkXx1RS4rjGA==
X-Received: by 2002:a2e:b80f:: with SMTP id u15mr2518359ljo.232.1629195389667; 
 Tue, 17 Aug 2021 03:16:29 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id u15sm147003lfs.118.2021.08.17.03.16.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 17 Aug 2021 03:16:29 -0700 (PDT)
Date: Tue, 17 Aug 2021 13:16:28 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20210817131628.3a7483f1ec121fb8822bdc99@gmail.com>
In-Reply-To: <32db3d61-f04c-5940-600c-fb2435808beb@pengutronix.de>
References: <20210525071952.18045-1-antonynpavlov@gmail.com>
 <32db3d61-f04c-5940-600c-fb2435808beb@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_031631_901935_394AA9C6 
X-CRM114-Status: GOOD (  26.55  )
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
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 00/10] RISC-V: add LiteX SoC support; resurrect nmon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 11 Aug 2021 10:52:53 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Ahmad!

> Hello Antony,
> =

> On 25.05.21 09:19, Antony Pavlov wrote:
> > Changes since v2:
> > =

> >   * rebase on top of master branch (f873c7ff2497) +
> >     "RISC-V: extend multi-image to support both S- and M-Mode"
> >     (http://lists.infradead.org/pipermail/barebox/2021-May/036086.html).
> >   * "litex serial: add setbrg callback" patch by Marek Czerski is added
> >     for review;
> >   * fix "clocksource: timer-riscv: select CSR from device tree" patch;
> >   * change gpio IP-block base addresses in litex dts;
> >   * gpio-74xx-mmio uses device_get_match_data() now.
> > =

> > Changes since v1:
> > =

> >   * rebased on top of next branch;
> >   * new patches are introduced:
> >     * clocksource: timer-riscv: select CSR from device tree
> >     * RISC-V: make RISCV_SBI and RISCV_M_MODE explicitly mutually exclu=
sive
> >     * RISC-V: make it possible to build RV32I multi-image with DEBUG_LL=
=3Dn
> >   * almost all of Ahmad's notes are fixed (e.g. unused header files inc=
lusions are dropped);
> >   * NOT FIXED: gpio-74xx-mmio still uses dev_get_drvdata(), not device_=
get_match_data()
> > =

> > Antony Pavlov (9):
> >   clocksource: timer-riscv: select CSR from device tree
> >   RISC-V: make it possible to run nmon from PBL C code
> >   RISC-V: boards: erizo: make it possible to use nmon
> >   serial: add litex UART driver
> >   gpio: add driver for 74xx-ICs with MMIO access
> >   spi: add litex spiflash driver
> >   net: add LiteEth driver
> >   RISC-V: add LiteX SoC and linux-on-litex-vexriscv support
> >   RISC-V: add litex_linux_defconfig
> > =

> > Marek Czerski (1):
> >   litex serial: add setbrg callback
> =

> I'd like to give this a try eventually while following:
> https://github.com/enjoy-digital/litex/wiki/Use-LiteX-on-the-Acorn-CLE-215
> =

> Do you intend to submit a new revision soon? Is it ok for you if I respin
> this series?

Sorry for delay with reply, I was on vacation.

I have just resend litex patchseries v4.
I have tested it with linux binaries from this repo:

   https://github.com/frantony/arty-linux-on-litex-vexriscv-prebuilt

What do you want to respin in the litex patchseries?

-- =

Best regards,
=A0 Antony Pavlov
 =

> Cheers,
> Ahmad
> =

> >  arch/riscv/Kconfig.socs                  |  14 +
> >  arch/riscv/boards/Makefile               |   1 +
> >  arch/riscv/boards/erizo/lowlevel.c       |   4 +
> >  arch/riscv/boards/litex-linux/Makefile   |   3 +
> >  arch/riscv/boards/litex-linux/lowlevel.c |  22 ++
> >  arch/riscv/boot/Makefile                 |   1 +
> >  arch/riscv/boot/nmon_entry.S             |  13 +
> >  arch/riscv/configs/litex_linux_defconfig |  76 +++++
> >  arch/riscv/dts/Makefile                  |   1 +
> >  arch/riscv/dts/erizo.dtsi                |   2 +
> >  arch/riscv/dts/litex-linux.dts           |  92 ++++++
> >  arch/riscv/dts/litex_soc_linux.dtsi      |  49 +++
> >  arch/riscv/include/asm/debug_ll.h        |   3 +
> >  arch/riscv/include/asm/debug_ll_litex.h  | 123 ++++++++
> >  arch/riscv/include/asm/riscv_nmon.h      |  49 ++-
> >  common/Kconfig                           |   4 +
> >  drivers/clocksource/timer-riscv.c        |  24 +-
> >  drivers/gpio/Kconfig                     |  14 +
> >  drivers/gpio/Makefile                    |   1 +
> >  drivers/gpio/gpio-74xx-mmio.c            | 165 ++++++++++
> >  drivers/net/Kconfig                      |   8 +
> >  drivers/net/Makefile                     |   1 +
> >  drivers/net/liteeth.c                    | 376 +++++++++++++++++++++++
> >  drivers/serial/Makefile                  |   1 +
> >  drivers/serial/serial_litex.c            | 103 +++++++
> >  drivers/spi/Kconfig                      |   3 +
> >  drivers/spi/Makefile                     |   1 +
> >  drivers/spi/litex_spiflash.c             | 241 +++++++++++++++
> >  images/Makefile.riscv                    |   4 +
> >  29 files changed, 1370 insertions(+), 29 deletions(-)
> >  create mode 100644 arch/riscv/boards/litex-linux/Makefile
> >  create mode 100644 arch/riscv/boards/litex-linux/lowlevel.c
> >  create mode 100644 arch/riscv/boot/nmon_entry.S
> >  create mode 100644 arch/riscv/configs/litex_linux_defconfig
> >  create mode 100644 arch/riscv/dts/litex-linux.dts
> >  create mode 100644 arch/riscv/dts/litex_soc_linux.dtsi
> >  create mode 100644 arch/riscv/include/asm/debug_ll_litex.h
> >  create mode 100644 drivers/gpio/gpio-74xx-mmio.c
> >  create mode 100644 drivers/net/liteeth.c
> >  create mode 100644 drivers/serial/serial_litex.c
> >  create mode 100644 drivers/spi/litex_spiflash.c
> > =

> =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

