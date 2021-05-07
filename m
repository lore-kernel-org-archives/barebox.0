Delivery-date: Fri, 07 May 2021 12:28:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lexiw-0004F0-12
	for lore@lore.pengutronix.de; Fri, 07 May 2021 12:28:46 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lexiv-0001Vn-0L
	for lore@pengutronix.de; Fri, 07 May 2021 12:28:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+XSiV+CKeZCjAzuhcD5hlsI38NCnKOZzJ6XZF1Y7DRo=; b=FH4VeGm3YQlA8XkqEpJCqCvgF
	hcQnyWPywFPxY8YbzB+5F/pOlCDbf5XOGambboVcZI9KADh9OauqzHHxkkHlw4xOtJ0FgYxHrirQY
	Q3ICnSdVjs2anIXNFvArzzvJ4JGK6RmIs2lKt+pqLjBnn8tF/TOU6WyXrA9PDKW1TR0BV6MEPfucq
	1Vxf7ujsaSH1em9wBbF78r67/5i1fBmYtZDs1ttjTWQvBCpxz38cr0kmXwQG4xE0LJW7FRA/iLknL
	gZAeQWp2N2SVWrGIapafwLbbEpqdI3f0G+A39sg/G6HxXTu5ySzJFhCVeaPwKgLsBfhOGilopS+a0
	doUfKMYQA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lexhq-006p4w-4y; Fri, 07 May 2021 10:27:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lexeC-006ndz-Af
 for barebox@desiato.infradead.org; Fri, 07 May 2021 10:23:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=ZPeqDT6PYSMmOQKdh2Fnl2N7JOHVA6+90hoHQdaG2Fk=; b=uTbdnM+H3w4FdqRrlBlPC3Ck/d
 2wyv6rImIBcacb2k4SHv3NLVqEHloMcG371053igWa6byDV0bTzsomqlMQfNpoLO8FqKcFTF4xQb2
 xGrAFH8GDDVqsp4Pm4pDFnyySaxAhkYsr+lFvGV/1mBEG9bjmmjo1MRcW3nvReXFUzU0G09mB4KjH
 fInvSo//96+PaarW5jbv2WgGc4sysgmNYHwGgJONtV/Xip+VD2vQAvd+AXPMNNZZIMGAAIgHLHtyw
 zXRMrLzu0VgkUNfGEBdPq481AK84iCpwkL1+JVW82I4gfgx4rJzd1pDUMQA59Fym1ql8kmrNT/Bdk
 bBvUAAhQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lexe9-006mIp-Ho
 for barebox@lists.infradead.org; Fri, 07 May 2021 10:23:51 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lexe7-0000Io-Ts; Fri, 07 May 2021 12:23:47 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <331e6c41-2ced-22f0-ba69-27d0213897c9@pengutronix.de>
Date: Fri, 7 May 2021 12:23:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210506220834.223350-1-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_032349_629679_D6DFECFC 
X-CRM114-Status: GOOD (  18.01  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/11] RISC-V: add LiteX SoC support; resurrect nmon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 07.05.21 00:08, Antony Pavlov wrote:
> Changes since v1:
> 
>   * rebased on top of next branch;
>   * new patches are introduced:
>     * clocksource: timer-riscv: select CSR from device tree
>     * RISC-V: make RISCV_SBI and RISCV_M_MODE explicitly mutually exclusive
>     * RISC-V: make it possible to build RV32I multi-image with DEBUG_LL=n
>   * almost all of Ahmad's notes are fixed (e.g. unused header files inclusions are dropped);
>   * NOT FIXED: gpio-74xx-mmio still uses dev_get_drvdata(), not device_get_match_data()

Why?

> 
> Antony Pavlov (11):
>   clocksource: timer-riscv: select CSR from device tree
>   RISC-V: make RISCV_SBI and RISCV_M_MODE explicitly mutually exclusive
>   RISC-V: make it possible to run nmon from PBL C code
>   RISC-V: boards: erizo: make it possible to use nmon
>   serial: add litex UART driver
>   gpio: add driver for 74xx-ICs with MMIO access
>   spi: add litex spiflash driver
>   net: add LiteEth driver
>   RISC-V: add LiteX SoC and linux-on-litex-vexriscv support
>   RISC-V: add litex_linux_defconfig
>   RISC-V: make it possible to build RV32I multi-image with DEBUG_LL=n
> 
>  arch/riscv/Kconfig                         |  22 +-
>  arch/riscv/Kconfig.socs                    |  18 +-
>  arch/riscv/boards/Makefile                 |   1 +
>  arch/riscv/boards/erizo/lowlevel.c         |   5 +
>  arch/riscv/boards/litex-linux/Makefile     |   3 +
>  arch/riscv/boards/litex-linux/lowlevel.c   |  20 ++
>  arch/riscv/boot/Makefile                   |   1 +
>  arch/riscv/boot/nmon_entry.S               |  13 +
>  arch/riscv/configs/erizo_generic_defconfig |   1 +
>  arch/riscv/configs/litex_linux_defconfig   |  77 +++++
>  arch/riscv/cpu/time.c                      |   7 +
>  arch/riscv/dts/Makefile                    |   1 +
>  arch/riscv/dts/erizo.dtsi                  |   2 +
>  arch/riscv/dts/litex-linux.dts             |  96 ++++++
>  arch/riscv/dts/litex_soc_linux.dtsi        |  49 +++
>  arch/riscv/include/asm/debug_ll.h          |   3 +
>  arch/riscv/include/asm/debug_ll_litex.h    | 123 +++++++
>  arch/riscv/include/asm/riscv_nmon.h        |  49 ++-
>  arch/riscv/include/asm/timer.h             |   1 +
>  common/Kconfig                             |   4 +
>  drivers/clocksource/timer-riscv.c          |  19 +-
>  drivers/gpio/Kconfig                       |  14 +
>  drivers/gpio/Makefile                      |   1 +
>  drivers/gpio/gpio-74xx-mmio.c              | 166 +++++++++
>  drivers/net/Kconfig                        |   8 +
>  drivers/net/Makefile                       |   1 +
>  drivers/net/liteeth.c                      | 376 +++++++++++++++++++++
>  drivers/serial/Makefile                    |   1 +
>  drivers/serial/serial_litex.c              |  96 ++++++
>  drivers/spi/Kconfig                        |   3 +
>  drivers/spi/Makefile                       |   1 +
>  drivers/spi/litex_spiflash.c               | 241 +++++++++++++
>  images/Makefile.riscv                      |   4 +
>  33 files changed, 1388 insertions(+), 39 deletions(-)
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

