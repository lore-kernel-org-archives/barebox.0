Delivery-date: Tue, 04 Jul 2023 14:05:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGemQ-00ElBd-Qo
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 14:05:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGemN-0005Uy-JV
	for lore@pengutronix.de; Tue, 04 Jul 2023 14:05:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oawcvL9HraTCU6hV0qxhLkIjQjrkUH2p4lwxpfNF3mo=; b=kbrmPgwL2DYMG/AjECvHal1DH9
	q94+otQqOZyjM/VPQ/OZhvPLpIqFQNHqVJ0WBGa9hHQz9PTF0cLOBGaNBGGOdD+s3U9iKAs2HWrkG
	oqyvxgtLP5O3kmMOe9szbz9/NNLaV64yG39k+NvLz8w6jvwWGtDYiicfc3vUkTcMW/Le1sB5QtNm4
	UFeqsMHQaATkluh9by/elTiJ2xblaWmQda50yDAHcIFaRUHeob4YhPhAsw4EHzZbfdS5PICgl4cGs
	EzoFVT5BZf7OoI4iRKafQFG9kLPB8x8nd4HSCWLjr5GBIQNXbb58FskxP4zITQIw+Qyif3PxBrcZL
	+YXdSBwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGelF-00DC05-0H;
	Tue, 04 Jul 2023 12:04:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGelC-00DByk-0a
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 12:03:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGelA-0005FS-Sn; Tue, 04 Jul 2023 14:03:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGelA-00018u-Ec; Tue, 04 Jul 2023 14:03:56 +0200
Date: Tue, 4 Jul 2023 14:03:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230704120356.GD18491@pengutronix.de>
References: <20230610103220.566369-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230610103220.566369-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_050358_222072_A3B05557 
X-CRM114-Status: GOOD (  24.67  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC 0/4] Run barebox on sc6531e-based feature phone
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Antony,

This has stayed unanswered for some time.

I am not sure what I should do with it. In the current form I think it's
a bit too basic to be useful. Maybe we can add it once the LCD and
Keypad driver is ready?

Sascha

On Sat, Jun 10, 2023 at 01:32:16PM +0300, Antony Pavlov wrote:
> This patch series adds initial support for SC6531E chip.
> 
> SC6431E chip is specially designed solution for creating
> feature phones. It contains
> 
>   * ARM926EJ-S core (up to 208 MHz)
>   * embedded PSRAM
>   * peripherals: USB, SPI, UART, IIS, PCM, I2C, keypad, LCD
>   * SIM card and GSM/GPRS/FM/BT stuff
> 
> This work is based on FPDoom, see [1], [2], [3] for details.
> 
> At the moment only timer and debug_ll output via USB
> are supported.
> 
> After adding lcd and keypad driver running bareDOOM [4]
> on SC6531E will be possible.
> 
>   [1] https://github.com/ilyakurdyukov/fpdoom
>   [2] https://habr.com/ru/articles/706766/
>   [3] https://www.youtube.com/watch?v=tln_Iace1O8
>   [4] https://github.com/a3f/bareDOOM
> 
> Antony Pavlov (4):
>   clocksource: add sc6531e driver
>   ARM: add sc6531e and F+ Ezzy 4 phone support
>   sc6531e: add debug_ll support
>   Documentation: add sc6531e instructions
> 
>  Documentation/boards/sc6531e.rst          | 187 +++++++++
>  arch/arm/Kconfig                          |  10 +
>  arch/arm/Makefile                         |   1 +
>  arch/arm/boards/Makefile                  |   1 +
>  arch/arm/boards/ezzy-4/Makefile           |   6 +
>  arch/arm/boards/ezzy-4/env/init/automount |  27 ++
>  arch/arm/boards/ezzy-4/lowlevel.c         |  19 +
>  arch/arm/boards/ezzy-4/usbio.c            | 449 ++++++++++++++++++++++
>  arch/arm/configs/ezzy-4_defconfig         |  49 +++
>  arch/arm/cpu/uncompress.c                 |   7 +
>  arch/arm/dts/Makefile                     |   1 +
>  arch/arm/dts/ezzy-4.dts                   |  22 ++
>  arch/arm/include/asm/debug_ll.h           |   2 +
>  arch/arm/mach-sc6531e/Kconfig             |  17 +
>  arch/arm/mach-sc6531e/Makefile            |   3 +
>  drivers/clocksource/Makefile              |   1 +
>  drivers/clocksource/timer-sc6531e.c       |  70 ++++
>  include/mach/sc6531e/debug_ll.h           |  17 +
>  18 files changed, 889 insertions(+)
>  create mode 100644 Documentation/boards/sc6531e.rst
>  create mode 100644 arch/arm/boards/ezzy-4/Makefile
>  create mode 100644 arch/arm/boards/ezzy-4/env/init/automount
>  create mode 100644 arch/arm/boards/ezzy-4/lowlevel.c
>  create mode 100644 arch/arm/boards/ezzy-4/usbio.c
>  create mode 100644 arch/arm/configs/ezzy-4_defconfig
>  create mode 100644 arch/arm/dts/ezzy-4.dts
>  create mode 100644 arch/arm/mach-sc6531e/Kconfig
>  create mode 100644 arch/arm/mach-sc6531e/Makefile
>  create mode 100644 drivers/clocksource/timer-sc6531e.c
>  create mode 100644 include/mach/sc6531e/debug_ll.h
> 
> -- 
> 2.39.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


