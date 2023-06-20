Delivery-date: Tue, 20 Jun 2023 07:53:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBUIn-00E3Ld-7f
	for lore@lore.pengutronix.de; Tue, 20 Jun 2023 07:53:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBUIk-0006cx-Mb
	for lore@pengutronix.de; Tue, 20 Jun 2023 07:53:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y4T6fdq4HUjs1x5oyBsI0JOSCjYvgqFjQ5VTI4CYUho=; b=jml33I6wLUnEWldpUahe0JmKYw
	H00z6ryr/IGmIEm6M04Pe8s84yQ+kNZsN5g6SevNXa3XHENDnEJOUEZalS36uhzEzMpHeTpjpwTU+
	GbHMISrI/T9tlj+L4AlSlOP8zvdhNXkfGTeB1myl8xM4fpJyD085WPQDr77rcVyrDKx2cJ5GdQgSc
	ejiJuHMkZzJaaSlzLiHFSIL2a119EJwu1q6tYZM4ipBspzobWBuuMCOSxoz7T1WhsOdLtQ8h10Z5A
	tJFk4HRPBMlyCaW3+FzTPGM0Bl82BmLOfugw4sHIXjI823Inb9lYpDcjTRaiAIYhbgxBubu0OkcGS
	RbvbGobg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBUHV-00ADdN-3D;
	Tue, 20 Jun 2023 05:51:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBUHS-00ADcx-2M
	for barebox@lists.infradead.org;
	Tue, 20 Jun 2023 05:51:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qBUHQ-0006YW-SH; Tue, 20 Jun 2023 07:51:52 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qBUHQ-0000Tl-KX; Tue, 20 Jun 2023 07:51:52 +0200
Date: Tue, 20 Jun 2023 07:51:52 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230620055152.hrebzk6c23inwirf@pengutronix.de>
References: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_225154_792041_461FC11E 
X-CRM114-Status: GOOD (  17.94  )
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
Subject: Re: [PATCH 00/10] gpio: add proper gpiod API and gpio-mux support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 23-06-14, Ahmad Fatoum wrote:
> The gpiod_ (GPIO descriptor) API used with Linux differs from barebox'
> normal GPIO API:
> 
>  - gpiod handles are opaque pointers and not an integer, which users
>    have an expectation of stability for
> 
>  - gpiod API uses logic levels by default with separate raw API for
>    physical level instead of physical level by default and separate
>    API taking active level into account.
> 
> The barebox gpiod_ API mimics the latter point, but still uses integers
> requiring ugly and arguably error prone conversions when porting kernel
> code.
> 
> This series fixes that by adding proper struct gpio_desc API like in
> Linux and then builds upon that to port the kernel gpio-mux driver.

thanks a lot for improving the code to be more aligned with Linux :)

Patches 1-9 lgtm, apart the minor comments in patch-5. So feel free to
add my:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> 
> Ahmad Fatoum (10):
>   driver: include dev_print and family from <driver.h>
>   include: linux/printk: define new dev_errp_probe
>   gpio: have gpiod_ functions return and accept pointers
>   gpio: gpiolib: rename struct gpio_info to gpio_desc
>   gpiolib: export proper gpio descriptor API
>   bitmap: implement bitmap_{to,from}_arr{32,64}
>   commands: help: ignore options after first regular argument
>   gpiolib: factor out finding gpio property
>   gpiolib: add support for requesting and setting gpiod arrays
>   drivers: port Linux mux framework and gpio-mux driver
> 
>  commands/help.c                          |  19 +-
>  drivers/Kconfig                          |   1 +
>  drivers/Makefile                         |   1 +
>  drivers/gpio/gpio-pca953x.c              |   9 +-
>  drivers/gpio/gpiolib.c                   | 528 +++++++++++++++++------
>  drivers/mci/mci_spi.c                    |  13 +-
>  drivers/mtd/nand/atmel/nand-controller.c |  40 +-
>  drivers/mtd/nand/nand_base.c             |   4 +-
>  drivers/mux/Kconfig                      |  29 ++
>  drivers/mux/Makefile                     |  10 +
>  drivers/mux/core.c                       | 472 ++++++++++++++++++++
>  drivers/mux/gpio.c                       | 103 +++++
>  drivers/net/designware_eqos.c            |  26 +-
>  drivers/net/ksz8873.c                    |  13 +-
>  drivers/net/ksz9477.c                    |  13 +-
>  drivers/net/realtek-dsa/realtek-mdio.c   |  10 +-
>  drivers/net/realtek-dsa/realtek-smi.c    |  18 +-
>  drivers/net/realtek-dsa/realtek.h        |   6 +-
>  drivers/net/sja1105.c                    |  25 +-
>  drivers/nvmem/starfive-otp.c             |  12 +-
>  drivers/pci/pcie-dw-rockchip.c           |  14 +-
>  drivers/power/reset/gpio-poweroff.c      |  14 +-
>  drivers/power/reset/gpio-restart.c       |  23 +-
>  drivers/regulator/fixed.c                |  27 +-
>  drivers/sound/gpio-beeper.c              |  14 +-
>  drivers/usb/misc/onboard_usb_hub.c       |  11 +-
>  drivers/video/mipi_dbi.c                 |   8 +-
>  drivers/video/panel-ilitek-ili9341.c     |  17 +-
>  drivers/video/panel-mipi-dbi.c           |  17 +-
>  drivers/watchdog/gpio_wdt.c              |  22 +-
>  include/driver.h                         |   1 +
>  include/gpiod.h                          |  79 +---
>  include/linux/bitmap.h                   | 101 +++++
>  include/linux/gpio/consumer.h            | 137 ++++++
>  include/linux/mtd/rawnand.h              |   4 +-
>  include/linux/printk.h                   |   3 +
>  include/video/mipi_dbi.h                 |   7 +-
>  lib/bitmap.c                             | 103 +++++
>  38 files changed, 1559 insertions(+), 395 deletions(-)
>  create mode 100644 drivers/mux/Kconfig
>  create mode 100644 drivers/mux/Makefile
>  create mode 100644 drivers/mux/core.c
>  create mode 100644 drivers/mux/gpio.c
>  create mode 100644 include/linux/gpio/consumer.h
> 
> -- 
> 2.39.2
> 
> 
> 


