Delivery-date: Fri, 10 Jun 2022 10:34:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nza6M-009pc6-5f
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 10:34:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nza6K-0007Zh-N7
	for lore@pengutronix.de; Fri, 10 Jun 2022 10:34:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yw4iT5jjvRcDi+q1LXboGAB1/KTSwRY3Hmrc+/JRhwc=; b=B4h196oRTrk+AR35/VK85MEMjb
	Zzm4dKMocOT2CtjDAUzu3PzLw03J276PHAxwITj6AnilMDlfO7BXgrxCINm+TtjjRzIBdHVlphutG
	2zVuIQOBVejf2Mxce5399nt7uONyXztOmcxHtRYcmhk1iDgOhtStwIKs7GaNww+ns4SrYWwoCf+SX
	5bDeimaiU95akmuNC33mPvpHLpLEbUdgbsW0k4ReX7sUSLMUFuBTqUz1pguHWN2x7Lx1s/ZjF/dCF
	kKGupQwBhxYP43/V9DJI/fbct0mUlGt3fbTFMe3watGWIvye3Sew8Zki8mZIpFKv1cfQ5zPmSRxMM
	Ak621wsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nza4x-006oHt-6r; Fri, 10 Jun 2022 08:33:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nza4r-006oGR-IK
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 08:33:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nza4q-0007Pm-56; Fri, 10 Jun 2022 10:33:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nza4p-0001ku-Sb; Fri, 10 Jun 2022 10:33:07 +0200
Date: Fri, 10 Jun 2022 10:33:07 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220610083307.GI1615@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_013309_659720_E27C675A 
X-CRM114-Status: GOOD (  31.13  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/21] ARM: rpi: add basic Raspberry Pi 4 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 09, 2022 at 07:59:01AM +0200, Ahmad Fatoum wrote:
> Just basic support, so we get a shell on mini-uart and SD
> working and can boot a Linux kernel with all cores usable.
> Needs more work for USB and Ethernet, but I'll leave that
> to others now that the initial hurdle is overcome.
> =

> I tested this series on Raspberry Pi 3b (both 32-bit and newly
> added 64-bit support) and Raspberry Pi 4b (both 32/64-bit).
> =

> v1 -> v2:
>   - add new common barebox-raspberry-pi.img that includes all
>     enabled DTs. The old approach with barebox-dt-2nd.img proved
>     inadequate, because VideoCore applied overlays to barebox DT,
>     when they were needed for the kernel and it made support
>     for Raspberry Pi kernel (with different bindings) harder.
>   - Use mailbox in PBL to determine which DT to use
>   - Use compressed DTBs
>   - fix breakage for existing 64-bit platforms due to
>     how CPU/SYS_SUPPORTS_64BIT_KERNEL was mishandled
>   - fix /env/boot/rpi for 64-bit
>   - replace ns16550 driver hack with DT hack

Applied, thanks

Sascha

> =

> Boot log:
> =

>   >Deep probe supported due to raspberrypi,4-model-b
>   Switch to console [cs0]
>   =

>   =

>   barebox 2022.05.0-00152-g628da31493e4 #14 Wed Jun 8 22:35:07 CEST 2022
>   =

>   =

>   Board: Raspberry Pi 4 Model B
>   Deep probe supported due to raspberrypi,4-model-b
>   reserved-memory: region /memreserve 0x00000000-0x00000fff
>   WARNING: dwc2 fe980000.usb@7e980000.of: dwc2_core_reset: Timeout!
>   Waiting for Core Soft Reset
>   ERROR: dwc2 fe980000.usb@7e980000.of: probe failed: Connection timed out
>   WARNING: bcm2835_mci fe340000.mmc@7e340000.of: Failed to get 'vmmc'
>   regulator (ignored).
>   bcm2835_mci fe340000.mmc@7e340000.of: registered as mci0
>   malloc space: 0x1d87f1e0 -> 0x3b0fe3bf (size 472.5 MiB)
>   mci0: detected SD card version 2.0
>   mci0: registered disk0
>   environment load /boot/barebox.env: No such file or directory
>   Maybe you have to create the partition.
> =

> Ahmad Fatoum (20):
>   ARM64: asm: implement read_cpuid_id()
>   dma: add dma_sync nop stubs for PBL
>   ARM: rpi: move bcm2835_add_device_sdram() into header
>   ARM: rpi: support PBL use of mbox
>   ARM: rpi: split out mbox helpers to share code with PBL
>   ARM: rpi: switch to ARM_USE_COMPRESSED_DTB
>   ARM: rpi: add generic Raspberry Pi image
>   ARM: rpi: support FDT in x0 for 64bit configurations
>   serial: ns16550: rpi: remove ungating now done by proper clk driver
>   ARM: cpu: prevent recursive dependencies via CPU_SUPPORTS_64BIT_KERNEL
>   ARM: cpu: remove unnecessary CONFIG_SYS_SUPPORTS_64BIT_KERNEL
>   ARM: cpu: remove unused SYS_SUPPORTS_32BIT_KERNEL
>   ARM: rpi: add Raspberry Pi 3 64-bit build support
>   ARM: rpi: rpi3: disallow MMU_EARLY && 64BIT
>   clk: rpi: add Raspberry Pi 4 support
>   clocksource: bcm2835: bump below architeced timer for AArch64
>   ARM: rpi: add Raspberry Pi 4 support
>   ARM: rpi: add debug_ll support for Raspberry Pi 4
>   doc: bcm283x: reference newer firmware
>   ARM: rpi: use correct kernel8.img as name for 64-bit
> =

> Uwe Kleine-K=F6nig (1):
>   mci: bcm2835: add bcm2711-emmc2 (Rpi4) support
> =

>  Documentation/boards/bcm2835.rst              |  17 ++-
>  arch/arm/Kconfig                              |  10 +-
>  arch/arm/boards/raspberry-pi/Makefile         |   1 +
>  arch/arm/boards/raspberry-pi/lowlevel.c       | 129 +++++++++++++++---
>  arch/arm/boards/raspberry-pi/lowlevel.h       |   5 +
>  arch/arm/boards/raspberry-pi/mbox-helpers.c   |  73 ++++++++++
>  arch/arm/boards/raspberry-pi/rpi-common.c     | 129 ++++++------------
>  arch/arm/configs/rpi_v8a_defconfig            | 111 +++++++++++++++
>  arch/arm/cpu/Kconfig                          |   7 -
>  arch/arm/dts/Makefile                         |   1 +
>  arch/arm/dts/bcm2711-rpi-4.dts                |  18 +++
>  arch/arm/include/asm/cputype.h                |  22 ++-
>  arch/arm/include/asm/system_info.h            |   6 +
>  arch/arm/mach-bcm283x/Kconfig                 |  29 +++-
>  arch/arm/mach-bcm283x/Makefile                |   2 +-
>  arch/arm/mach-bcm283x/core.c                  |  57 ++++----
>  arch/arm/mach-bcm283x/include/mach/core.h     |  23 ++--
>  arch/arm/mach-bcm283x/include/mach/debug_ll.h |  26 ++++
>  arch/arm/mach-bcm283x/include/mach/mbox.h     |   4 +
>  arch/arm/mach-bcm283x/include/mach/platform.h |   5 +-
>  arch/arm/mach-bcm283x/mbox.c                  |  26 ++--
>  arch/arm/mach-imx/Kconfig                     |   2 +-
>  arch/arm/mach-layerscape/Kconfig              |   2 +-
>  arch/arm/mach-rockchip/Kconfig                |   2 +-
>  common/Kconfig                                |   7 +
>  drivers/clk/clk-rpi.c                         |  42 ++++--
>  drivers/clocksource/bcm2835.c                 |   3 +-
>  drivers/mci/mci-bcm2835.c                     |   4 +-
>  drivers/serial/serial_ns16550.c               |   4 -
>  images/Makefile.bcm283x                       |  10 ++
>  include/dma.h                                 |  19 +++
>  31 files changed, 593 insertions(+), 203 deletions(-)
>  create mode 100644 arch/arm/boards/raspberry-pi/mbox-helpers.c
>  create mode 100644 arch/arm/configs/rpi_v8a_defconfig
>  create mode 100644 arch/arm/dts/bcm2711-rpi-4.dts
> =

> -- =

> 2.30.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

