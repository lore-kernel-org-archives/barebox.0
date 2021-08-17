Delivery-date: Tue, 17 Aug 2021 12:12:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw4p-0005ri-GH
	for lore@lore.pengutronix.de; Tue, 17 Aug 2021 12:12:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw4j-00036L-VH
	for lore@pengutronix.de; Tue, 17 Aug 2021 12:12:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J7Vf2vRnsWDCxKGbwh4vU8bxjdn0EFQHu0EAoQcXBQQ=; b=LvSED/FJK4X+fz
	04kJCq5MW67oIRp213PZRyHz11zmaYH4QAXExJS+b0qydTTAwVKQpib/lhqMRzsbT0FKeBPzOqqN4
	e1x2+xwurKnp1YkIxiQk2ApPIGKYHip1wrA5roBrMhFnx0hVlazkqEzgVgDqhwcPNcPic3aC1iDYZ
	E/9JBHgnhodWm7o6zjTrY6D4dWRTr4tzONnMdS4FAGg/baGUk2JSVkGOCvODwA6oN+a8dKt7gyCKh
	w+Bi/jsOa8FAL00vf/9hZlCCY42igOQh46tuBLkb98PgVIkMboifb4DnJyQm3re/Tj+GcH9iP8z48
	QIsDf9hK1AGY8E2C4hZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFw3D-0021RZ-A1; Tue, 17 Aug 2021 10:10:31 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFw36-0021Qt-C5
 for barebox@lists.infradead.org; Tue, 17 Aug 2021 10:10:28 +0000
Received: by mail-lf1-x132.google.com with SMTP id c24so40285501lfi.11
 for <barebox@lists.infradead.org>; Tue, 17 Aug 2021 03:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Cor1B1IWWCfWHY9TKWbuK1OdrZOGztE+EiORXghco50=;
 b=IQRf4m0a1YF1+1gxqvKbRaFJmHdU1GGT+c9M924BciYeB4wZpNiddX05j1FGpB0VCz
 ke2bRX6XbYAqBrUCI9HHGOmJn0mKQQ92PM3QH0g+YwQhp9odibpndQVwGjSoyKZy5Hvo
 C/KalDsPNhAd4o2AXXBmohDWP4WhyoyNLbOuFxycIi+AsWKdNVMQUg4EuFBs4Nmc9isk
 30JwKclCRXlDLQ97D8By6VmBoEPa9ImEkky+cLy6I3w6U77xr0+9587lgizMM4asjXbq
 ZKGMIv9CC6RbeBDOUgUmu8fvlhTZWtDrLRhPNL6+crjiVyqkBjwRBRGSNezFHwqE9equ
 Mx7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Cor1B1IWWCfWHY9TKWbuK1OdrZOGztE+EiORXghco50=;
 b=GlIvyB3XUZVCSvlk+uECJNVPETgqbVDkoKp8jMDA75fUZ429QvmW0IKxE0oFdjbjw/
 CBGjy8pVk/mCMYH4330x499k8KO64r99+tU33YFBFkl0LHIxs88peJo0eBuGtch6MKAj
 XEqPDxLEkv6KDlgESv8+TLqYJ1ESMt1svGRx9r9jA+wNNJN8WwMv+B3W3ENrsEC7pKN7
 a6FXnwgnxV8qwwWgvtyEEzUHQQROAsPX5J3paERsgDx4rslUe8DbyvdZR9Wsg6FMAjy+
 3akl1YdWVieM1n8pgp1SuMK2JsGCYFhfou1pnZOAuS/zCH0qV7ewvk+5ErUt48KsrIfm
 odKg==
X-Gm-Message-State: AOAM530kfhWYhkzoAy1Eoj5ZB2m32BdCDA9qYlpGLQf3B1bVBHgibpKM
 QEH6l6hRhaVwHex/fJUgtBsnc/sqx+s=
X-Google-Smtp-Source: ABdhPJx/lmIMxbO2jSjFZmDAHzi7iOn2dNKM53L/s9lZ0pkgWXLtYadkjJTkxiDvgSfp3ukT8PpY6g==
X-Received: by 2002:a05:6512:33bc:: with SMTP id
 i28mr1801184lfg.304.1629195022777; 
 Tue, 17 Aug 2021 03:10:22 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id z8sm144865lfs.177.2021.08.17.03.10.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 17 Aug 2021 03:10:22 -0700 (PDT)
Date: Tue, 17 Aug 2021 13:10:21 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20210817131021.674041b1630520e20dbe6995@gmail.com>
In-Reply-To: <20210817100435.114756-1-antonynpavlov@gmail.com>
References: <20210817100435.114756-1-antonynpavlov@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_031024_456972_05CF7B86 
X-CRM114-Status: GOOD (  17.52  )
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
Subject: Re: [PATCH 0/8 v4] RISC-V: add LiteX SoC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 17 Aug 2021 13:04:27 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

I have used git format-patch in a inproper way. Sorry!

I'll resend the patchseries.


> Changes since v3:
> =

>   * rebased on top of next branch;
>   * the "console: support set baudrate for fixed baudrate drivers" patch
>     is introduced so the "litex serial: add setbrg callback" patch is dro=
pped;
>   * update mac0 IP-block base addresses in litex dts according to latest
>     SoC configuration.
> =

> Changes since v2:
> =

>   * rebase on top of master branch (f873c7ff2497) +
>     "RISC-V: extend multi-image to support both S- and M-Mode"
>     (http://lists.infradead.org/pipermail/barebox/2021-May/036086.html).
>   * "litex serial: add setbrg callback" patch by Marek Czerski is added
>     for review;
>   * fix "clocksource: timer-riscv: select CSR from device tree" patch;
>   * change gpio IP-block base addresses in litex dts;
>   * gpio-74xx-mmio uses device_get_match_data() now.
> =

> Changes since v1:
> =

>   * rebased on top of next branch;
>   * new patches are introduced:
>     * clocksource: timer-riscv: select CSR from device tree
>     * RISC-V: make RISCV_SBI and RISCV_M_MODE explicitly mutually exclusi=
ve
>     * RISC-V: make it possible to build RV32I multi-image with DEBUG_LL=
=3Dn
>   * almost all of Ahmad's notes are fixed (e.g. unused header files inclu=
sions are dropped);
>   * NOT FIXED: gpio-74xx-mmio still uses dev_get_drvdata(), not device_ge=
t_match_data()
> =

> =

> Antony Pavlov (8):
>   clocksource: timer-riscv: select CSR from device tree
>   serial: add litex UART driver
>   console: support set baudrate for fixed baudrate drivers
>   gpio: add driver for 74xx-ICs with MMIO access
>   spi: add litex spiflash driver
>   net: add LiteEth driver
>   RISC-V: add LiteX SoC and linux-on-litex-vexriscv support
>   RISC-V: add litex_linux_defconfig
> =

>  arch/riscv/Kconfig.socs                  |  14 +
>  arch/riscv/boards/Makefile               |   1 +
>  arch/riscv/boards/litex-linux/Makefile   |   3 +
>  arch/riscv/boards/litex-linux/lowlevel.c |  22 ++
>  arch/riscv/configs/litex_linux_defconfig |  75 +++++
>  arch/riscv/dts/Makefile                  |   1 +
>  arch/riscv/dts/erizo.dtsi                |   2 +
>  arch/riscv/dts/litex-linux.dts           |  92 ++++++
>  arch/riscv/dts/litex_soc_linux.dtsi      |  49 +++
>  arch/riscv/include/asm/debug_ll.h        |   3 +
>  arch/riscv/include/asm/debug_ll_litex.h  | 123 ++++++++
>  common/Kconfig                           |   4 +
>  common/console.c                         |  10 +-
>  drivers/clocksource/timer-riscv.c        |  24 +-
>  drivers/gpio/Kconfig                     |  14 +
>  drivers/gpio/Makefile                    |   1 +
>  drivers/gpio/gpio-74xx-mmio.c            | 165 ++++++++++
>  drivers/net/Kconfig                      |   8 +
>  drivers/net/Makefile                     |   1 +
>  drivers/net/liteeth.c                    | 376 +++++++++++++++++++++++
>  drivers/serial/Makefile                  |   1 +
>  drivers/serial/serial_litex.c            |  96 ++++++
>  drivers/spi/Kconfig                      |   3 +
>  drivers/spi/Makefile                     |   1 +
>  drivers/spi/litex_spiflash.c             | 241 +++++++++++++++
>  images/Makefile.riscv                    |   4 +
>  26 files changed, 1318 insertions(+), 16 deletions(-)
>  create mode 100644 arch/riscv/boards/litex-linux/Makefile
>  create mode 100644 arch/riscv/boards/litex-linux/lowlevel.c
>  create mode 100644 arch/riscv/configs/litex_linux_defconfig
>  create mode 100644 arch/riscv/dts/litex-linux.dts
>  create mode 100644 arch/riscv/dts/litex_soc_linux.dtsi
>  create mode 100644 arch/riscv/include/asm/debug_ll_litex.h
>  create mode 100644 drivers/gpio/gpio-74xx-mmio.c
>  create mode 100644 drivers/net/liteeth.c
>  create mode 100644 drivers/serial/serial_litex.c
>  create mode 100644 drivers/spi/litex_spiflash.c
> =

> -- =

> 2.32.0
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

