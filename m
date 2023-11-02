Delivery-date: Thu, 02 Nov 2023 15:14:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qyYSw-00FRZX-5l
	for lore@lore.pengutronix.de; Thu, 02 Nov 2023 15:14:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qyYSq-0004RN-TB
	for lore@pengutronix.de; Thu, 02 Nov 2023 15:14:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bLxTjobhf+IiOUewUQt2qlEuU1FU9fyxUgsnb+FAtRw=; b=22hFddIzIyM4KhjSJv/ZWnyEyJ
	tCLtNeahboyxu/2I5V9MrWibK/kFOADcbV+YUx279w+NpyecgTPKzb79TeqdIyON0ruq4JOyTOVnn
	9xKFR4C7bsme1moTOh5IyTrghMkN+B6Opf7kVZt1LVBKXVKVGWWA0ziAHZGelp7q/hwWO1aS7lNOH
	wnZVA+K2RbP8ZGbF5lfOqp9YA0MYClx/BqWll19ucp4lQs80fa4pCvbcvT1PqIYU+Q55frcRuZ4BL
	F9xb+wBY5Q4mSzMkn9XaXottq0NsOiNmQXoCzs923sBQd9QFcqKOeV3oqb+1NdyzciQ9/e1/xRfRX
	ruO3X9lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qyYR4-009c9v-2f;
	Thu, 02 Nov 2023 14:12:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qyYQz-009c9E-00
	for barebox@lists.infradead.org;
	Thu, 02 Nov 2023 14:12:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qyYQr-00047a-Tf; Thu, 02 Nov 2023 15:12:25 +0100
Message-ID: <7b035953-f359-f616-9d90-df37da1890a1@pengutronix.de>
Date: Thu, 2 Nov 2023 15:12:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231102_071233_036527_1168F1C6 
X-CRM114-Status: GOOD (  23.58  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/22] Add initial Texas Instruments K3 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 03.08.23 12:49, Sascha Hauer wrote:
> This series adds initial basic support for the TI K3 Architecture.
> Currently only the AM62x is supported and within there the BeaglePlay
> board (https://www.beagleboard.org/boards/beagleplay).
> 
> The current support is enough for bringing up barebox 2nd stage after
> U-Boot has initialized the SoC. The SoC boots from a FAT partition on
> SD/eMMC, the u-boot.img therein can be replaced with a barebox image.
> 
> The SoC has a core dedicated to handle clocks, power domains and other
> stuff. Communication to this core is done with a mailbox interface and
> this series contains patches to implement that interface based on that
> a clk driver and a power domain driver.
> 
> So far only SD/eMMC is working, so there's plenty of room to add further
> support for networking, USB, SPI and I2C. It's a start.

let's merge this?

Cheers,
Ahmad

> 
> Sascha
> 
> Sascha Hauer (22):
>   pm_domain: Add onecell support
>   gpio: davinci: Redesign driver to accommodate ngpios in one gpio chip
>   gpio: davinci: Add support for GPIO controllers on TI K3 SoCs
>   ARM64: Add support for debug_ll on TI AM62x SoCs
>   Add initial mailbox support
>   mailbox: Add TI K3 Secure Proxy Driver
>   serial: ns16550: Add support for UARTs on K3 SoCs
>   firmware: Add basic support for TI System Control Interface (TI SCI)
>     protocol
>   lib: Add generic binary search function
>   clk: Add K3 SCI clock driver
>   soc: ti: Add ti_sci_pm_domains driver
>   mci: fix define
>   mci: make debugging output more useful
>   mci: sdhci: Add common wait for idle function
>   mci: sdhci: wait for idle before stopping clock
>   mci: Add am654 SDHCI driver
>   ARM: Add Texas Instruments K3 architecture
>   ARM: k3: Add initial BeaglePlay board support
>   ARM: k3: BeaglePlay: Work around non working SD card
>   ARM: k3: BeaglePlay: generate FIT image
>   doc: K3: Add documentation
>   ARM: multi_v8_defconfig: Enable K3 SoCs
> 
>  Documentation/boards/k3.rst           |   29 +
>  arch/arm/Kconfig                      |   14 +
>  arch/arm/Makefile                     |    1 +
>  arch/arm/boards/Makefile              |    1 +
>  arch/arm/boards/beagleplay/Makefile   |    1 +
>  arch/arm/boards/beagleplay/entry.S    |   29 +
>  arch/arm/boards/beagleplay/lowlevel.c |   33 +
>  arch/arm/configs/multi_v8_defconfig   |   10 +-
>  arch/arm/dts/Makefile                 |    1 +
>  arch/arm/dts/k3-am625-beagleplay.dts  |   30 +
>  arch/arm/include/asm/debug_ll.h       |    2 +
>  arch/arm/mach-k3/Kconfig              |   11 +
>  arch/arm/mach-k3/Makefile             |    1 +
>  arch/arm/mach-k3/common.c             |   24 +
>  common/Kconfig                        |   16 +-
>  drivers/Kconfig                       |    1 +
>  drivers/Makefile                      |    1 +
>  drivers/base/power.c                  |   76 +
>  drivers/clk/Makefile                  |    1 +
>  drivers/clk/ti-sci-clk.c              |  630 ++++++
>  drivers/firmware/Kconfig              |   15 +
>  drivers/firmware/Makefile             |    1 +
>  drivers/firmware/ti_sci.c             | 2745 +++++++++++++++++++++++++
>  drivers/firmware/ti_sci.h             | 1533 ++++++++++++++
>  drivers/gpio/Kconfig                  |    4 +-
>  drivers/gpio/gpio-davinci.c           |   70 +-
>  drivers/mailbox/Kconfig               |   22 +
>  drivers/mailbox/Makefile              |    2 +
>  drivers/mailbox/mailbox.c             |   92 +
>  drivers/mailbox/ti-msgmgr.c           |  402 ++++
>  drivers/mci/Makefile                  |    1 +
>  drivers/mci/am654-sdhci.c             |  680 ++++++
>  drivers/mci/arasan-sdhci.c            |   13 +-
>  drivers/mci/atmel-sdhci-common.c      |   25 +-
>  drivers/mci/dove-sdhci.c              |   23 +-
>  drivers/mci/mci-bcm2835.c             |   13 +-
>  drivers/mci/mci-core.c                |   13 +-
>  drivers/mci/rockchip-dwcmshc-sdhci.c  |   16 +-
>  drivers/mci/sdhci.c                   |   24 +
>  drivers/mci/sdhci.h                   |    1 +
>  drivers/serial/serial_ns16550.c       |    6 +
>  drivers/soc/Kconfig                   |    1 +
>  drivers/soc/Makefile                  |    1 +
>  drivers/soc/ti/Kconfig                |    7 +
>  drivers/soc/ti/Makefile               |    1 +
>  drivers/soc/ti/ti_sci_pm_domains.c    |  196 ++
>  images/Makefile                       |   10 +
>  images/Makefile.k3                    |   13 +
>  images/k3-am625-beagleplay.its        |   29 +
>  include/linux/bsearch.h               |   33 +
>  include/linux/types.h                 |    2 +
>  include/mach/k3/debug_ll.h            |   49 +
>  include/mailbox.h                     |   36 +
>  include/mci.h                         |    4 +-
>  include/pm_domain.h                   |    9 +
>  include/soc/ti/k3-sec-proxy.h         |   25 +
>  include/soc/ti/ti_sci_protocol.h      |  657 ++++++
>  lib/Makefile                          |    1 +
>  lib/bsearch.c                         |   34 +
>  59 files changed, 7596 insertions(+), 125 deletions(-)
>  create mode 100644 Documentation/boards/k3.rst
>  create mode 100644 arch/arm/boards/beagleplay/Makefile
>  create mode 100644 arch/arm/boards/beagleplay/entry.S
>  create mode 100644 arch/arm/boards/beagleplay/lowlevel.c
>  create mode 100644 arch/arm/dts/k3-am625-beagleplay.dts
>  create mode 100644 arch/arm/mach-k3/Kconfig
>  create mode 100644 arch/arm/mach-k3/Makefile
>  create mode 100644 arch/arm/mach-k3/common.c
>  create mode 100644 drivers/clk/ti-sci-clk.c
>  create mode 100644 drivers/firmware/ti_sci.c
>  create mode 100644 drivers/firmware/ti_sci.h
>  create mode 100644 drivers/mailbox/Kconfig
>  create mode 100644 drivers/mailbox/Makefile
>  create mode 100644 drivers/mailbox/mailbox.c
>  create mode 100644 drivers/mailbox/ti-msgmgr.c
>  create mode 100644 drivers/mci/am654-sdhci.c
>  create mode 100644 drivers/soc/ti/Kconfig
>  create mode 100644 drivers/soc/ti/Makefile
>  create mode 100644 drivers/soc/ti/ti_sci_pm_domains.c
>  create mode 100644 images/Makefile.k3
>  create mode 100644 images/k3-am625-beagleplay.its
>  create mode 100644 include/linux/bsearch.h
>  create mode 100644 include/mach/k3/debug_ll.h
>  create mode 100644 include/mailbox.h
>  create mode 100644 include/soc/ti/k3-sec-proxy.h
>  create mode 100644 include/soc/ti/ti_sci_protocol.h
>  create mode 100644 lib/bsearch.c
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



