Delivery-date: Tue, 10 Jan 2023 16:06:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGDM-007rJI-Dg
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 16:06:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGDK-0002Br-5s
	for lore@pengutronix.de; Tue, 10 Jan 2023 16:06:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h4FoYMXqo65eROU4zPmME+5JGWWe5oCKLSQ58liJQ60=; b=o8O50RlrV3d3zw6cIKAUGyoHOv
	R7fX2x4bdOtQop0v16+cKMZkhcki7deQ5MmvGrxKyZNMa2MANaMoXiHAMMgZ3o+hgXfraeULjvrEI
	v1dLTpy7HGlNCztV58L6oV+IN2eDd7FcL4qkaEVC/I8HxoYJAPRvFeIVuxltWrsmkcBBermTkRO+A
	pge5npfaziroW2+Y2iEHForsYBKPdcZPmD48xAck8CQyLLGgDVmlYIpZxVUjjzOz66bT0DVHPDNTn
	vlI+cYOe0stiiOltf1GhFaoKnDLpHqPGUTMoJFNb3HwOtp6QqYsWkAJ5fh4saGoUlhMt+Rcgy9DkO
	GbwN4LfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGC5-007U0F-IA; Tue, 10 Jan 2023 15:05:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGBw-007Txx-KA
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 15:05:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFGBv-0001eA-53; Tue, 10 Jan 2023 16:05:31 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFGBu-0006R8-TC; Tue, 10 Jan 2023 16:05:30 +0100
Date: Tue, 10 Jan 2023 16:05:30 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230110150530.GR28911@pengutronix.de>
References: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_070532_699732_6AAB2781 
X-CRM114-Status: GOOD (  22.99  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/11] ARM: at91: sama5d4: add basic Wifx L1 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 09, 2023 at 02:08:11PM +0100, Ahmad Fatoum wrote:
> The Wifx L1 is a SAMA5D4 LoRaWAN gateway. It boots from NAND, but this
> can be overridden by inserting a bootable SD-Card.
> 
> This first port only provides second-stage SD-Card support. It enables
> use of UART, I2C/EEPROM, Ethernet and SD-Card. For NAND use on SAMA5D4,
> an updated Linux driver was ported to barebox.
> This will follow separately.
> 
> v1 -> v2:
>   - skip stack setup on SAMA5D2 (Sascha)
>   - Add Sam's Acked-by
>   - Rebase on upstream/next
> 
> Ahmad Fatoum (11):
>   ARM: at91: sama5: switch to nonnaked entry functions
>   ARM: at91: sama5d4: add entry point helpers
>   ARM: at91: sama5d4: enable for DT use
>   net: macb: match atmel,sama5d4-gem compatible
>   i2c: at91: extend for SAMA5D4 support
>   eeprom: at24: add 24mac402/602 support
>   driver: always ensure probe of RAM registered with mem_platform_driver
>   common: deep-probe: don't build without CONFIG_OFDEVICE
>   pinctrl: at91: make deep-probe compatible
>   ARM: at91: make bootsource code generic to all SAMA5
>   ARM: at91: SAMA5D4: add Wifx L1 support

Applied, thanks

Sascha

> 
>  arch/arm/boards/Makefile                      |   1 +
>  .../boards/microchip-ksz9477-evb/lowlevel.c   |   6 +-
>  .../arm/boards/sama5d27-giantboard/lowlevel.c |   4 +-
>  arch/arm/boards/sama5d27-som1/lowlevel.c      |   4 +-
>  arch/arm/boards/sama5d3_xplained/lowlevel.c   |   6 +-
>  arch/arm/boards/sama5d4_wifx/Makefile         |   4 +
>  arch/arm/boards/sama5d4_wifx/board.c          |  38 ++
>  arch/arm/boards/sama5d4_wifx/lowlevel.c       |  18 +
>  arch/arm/dts/Makefile                         |   1 +
>  arch/arm/dts/at91-sama5d4_wifx_l1.dts         | 358 ++++++++++++++++++
>  arch/arm/dts/sama5d4.dtsi                     |   9 +
>  arch/arm/mach-at91/Kconfig                    |  11 +
>  arch/arm/mach-at91/Makefile                   |   3 +-
>  arch/arm/mach-at91/bootm-barebox.c            |   3 +-
>  arch/arm/mach-at91/ddramc.c                   |   7 +
>  arch/arm/mach-at91/include/mach/barebox-arm.h |  23 +-
>  arch/arm/mach-at91/include/mach/cpu.h         |   1 -
>  arch/arm/mach-at91/include/mach/ddramc.h      |   1 +
>  .../mach-at91/include/mach/sama5_bootsource.h |   5 +
>  arch/arm/mach-at91/sama5_bootsource.c         |  36 ++
>  arch/arm/mach-at91/sama5d2.c                  |  15 -
>  arch/arm/mach-at91/setup.c                    |   3 -
>  common/Makefile                               |   2 +-
>  drivers/eeprom/at24.c                         |   2 +
>  drivers/i2c/busses/i2c-at91.c                 |  14 +-
>  drivers/net/macb.c                            |   1 +
>  drivers/pinctrl/pinctrl-at91.c                |  20 +-
>  images/Makefile.at91                          |   4 +
>  include/deep-probe.h                          |   7 +
>  include/driver.h                              |  13 +-
>  30 files changed, 572 insertions(+), 48 deletions(-)
>  create mode 100644 arch/arm/boards/sama5d4_wifx/Makefile
>  create mode 100644 arch/arm/boards/sama5d4_wifx/board.c
>  create mode 100644 arch/arm/boards/sama5d4_wifx/lowlevel.c
>  create mode 100644 arch/arm/dts/at91-sama5d4_wifx_l1.dts
>  create mode 100644 arch/arm/dts/sama5d4.dtsi
>  create mode 100644 arch/arm/mach-at91/sama5_bootsource.c
> 
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


