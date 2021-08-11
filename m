Delivery-date: Wed, 11 Aug 2021 11:26:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDkV3-0002aZ-Dj
	for lore@lore.pengutronix.de; Wed, 11 Aug 2021 11:26:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDkUy-0005V6-Ou
	for lore@pengutronix.de; Wed, 11 Aug 2021 11:26:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+SviMYJsq3+Z1eWzj1HVtkk+k0LJFl2YbdOV5LV5gEc=; b=S/ACwHnyfmNaW1uixDnRgZtjUV
	VfBI6gdNGwNd/g5RBPUTzq6nQ3u2UWZUk+89apuxfXwe2QOgchYlRIjmbC1SpWzM4J+TcxY3UFckW
	U26fNjzs/4esp242/RuTTeQNqxdqql4wrTn/JvPTCWLIVRPMHAZd473Qf+Xe65udPQIX24pQiB18a
	iLAK9r3CwN1mmyjLhomHc1dusPaFgUjNc3uPtkEW7PmSpa8EHFNnhUBXOULPPL47j640ZqDuxUD9H
	U57WUQEViFRajYct4VBkiG3JOHFOYZyNNw+yuJEi84XqUMEaPEAvVHVBAAF5xe7QPC3ySLScRKK29
	S1KPxeng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDkSk-006H11-Je; Wed, 11 Aug 2021 09:23:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDjys-0067zE-GY
 for barebox@lists.infradead.org; Wed, 11 Aug 2021 08:53:02 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mDjyo-0000IY-EY; Wed, 11 Aug 2021 10:52:54 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210525071952.18045-1-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <32db3d61-f04c-5940-600c-fb2435808beb@pengutronix.de>
Date: Wed, 11 Aug 2021 10:52:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210525071952.18045-1-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210811_015258_639971_015B063B 
X-CRM114-Status: GOOD (  21.52  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 00/10] RISC-V: add LiteX SoC support; resurrect nmon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 25.05.21 09:19, Antony Pavlov wrote:
> Changes since v2:
> 
>   * rebase on top of master branch (f873c7ff2497) +
>     "RISC-V: extend multi-image to support both S- and M-Mode"
>     (http://lists.infradead.org/pipermail/barebox/2021-May/036086.html).
>   * "litex serial: add setbrg callback" patch by Marek Czerski is added
>     for review;
>   * fix "clocksource: timer-riscv: select CSR from device tree" patch;
>   * change gpio IP-block base addresses in litex dts;
>   * gpio-74xx-mmio uses device_get_match_data() now.
> 
> Changes since v1:
> 
>   * rebased on top of next branch;
>   * new patches are introduced:
>     * clocksource: timer-riscv: select CSR from device tree
>     * RISC-V: make RISCV_SBI and RISCV_M_MODE explicitly mutually exclusive
>     * RISC-V: make it possible to build RV32I multi-image with DEBUG_LL=n
>   * almost all of Ahmad's notes are fixed (e.g. unused header files inclusions are dropped);
>   * NOT FIXED: gpio-74xx-mmio still uses dev_get_drvdata(), not device_get_match_data()
> 
> Antony Pavlov (9):
>   clocksource: timer-riscv: select CSR from device tree
>   RISC-V: make it possible to run nmon from PBL C code
>   RISC-V: boards: erizo: make it possible to use nmon
>   serial: add litex UART driver
>   gpio: add driver for 74xx-ICs with MMIO access
>   spi: add litex spiflash driver
>   net: add LiteEth driver
>   RISC-V: add LiteX SoC and linux-on-litex-vexriscv support
>   RISC-V: add litex_linux_defconfig
> 
> Marek Czerski (1):
>   litex serial: add setbrg callback

I'd like to give this a try eventually while following:
https://github.com/enjoy-digital/litex/wiki/Use-LiteX-on-the-Acorn-CLE-215

Do you intend to submit a new revision soon? Is it ok for you if I respin
this series?

Cheers,
Ahmad

>  arch/riscv/Kconfig.socs                  |  14 +
>  arch/riscv/boards/Makefile               |   1 +
>  arch/riscv/boards/erizo/lowlevel.c       |   4 +
>  arch/riscv/boards/litex-linux/Makefile   |   3 +
>  arch/riscv/boards/litex-linux/lowlevel.c |  22 ++
>  arch/riscv/boot/Makefile                 |   1 +
>  arch/riscv/boot/nmon_entry.S             |  13 +
>  arch/riscv/configs/litex_linux_defconfig |  76 +++++
>  arch/riscv/dts/Makefile                  |   1 +
>  arch/riscv/dts/erizo.dtsi                |   2 +
>  arch/riscv/dts/litex-linux.dts           |  92 ++++++
>  arch/riscv/dts/litex_soc_linux.dtsi      |  49 +++
>  arch/riscv/include/asm/debug_ll.h        |   3 +
>  arch/riscv/include/asm/debug_ll_litex.h  | 123 ++++++++
>  arch/riscv/include/asm/riscv_nmon.h      |  49 ++-
>  common/Kconfig                           |   4 +
>  drivers/clocksource/timer-riscv.c        |  24 +-
>  drivers/gpio/Kconfig                     |  14 +
>  drivers/gpio/Makefile                    |   1 +
>  drivers/gpio/gpio-74xx-mmio.c            | 165 ++++++++++
>  drivers/net/Kconfig                      |   8 +
>  drivers/net/Makefile                     |   1 +
>  drivers/net/liteeth.c                    | 376 +++++++++++++++++++++++
>  drivers/serial/Makefile                  |   1 +
>  drivers/serial/serial_litex.c            | 103 +++++++
>  drivers/spi/Kconfig                      |   3 +
>  drivers/spi/Makefile                     |   1 +
>  drivers/spi/litex_spiflash.c             | 241 +++++++++++++++
>  images/Makefile.riscv                    |   4 +
>  29 files changed, 1370 insertions(+), 29 deletions(-)
>  create mode 100644 arch/riscv/boards/litex-linux/Makefile
>  create mode 100644 arch/riscv/boards/litex-linux/lowlevel.c
>  create mode 100644 arch/riscv/boot/nmon_entry.S
>  create mode 100644 arch/riscv/configs/litex_linux_defconfig
>  create mode 100644 arch/riscv/dts/litex-linux.dts
>  create mode 100644 arch/riscv/dts/litex_soc_linux.dtsi
>  create mode 100644 arch/riscv/include/asm/debug_ll_litex.h
>  create mode 100644 drivers/gpio/gpio-74xx-mmio.c
>  create mode 100644 drivers/net/liteeth.c
>  create mode 100644 drivers/serial/serial_litex.c
>  create mode 100644 drivers/spi/litex_spiflash.c
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

