Delivery-date: Fri, 23 Jun 2023 11:36:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCdDC-000QGn-C4
	for lore@lore.pengutronix.de; Fri, 23 Jun 2023 11:36:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCdD9-000688-Om
	for lore@pengutronix.de; Fri, 23 Jun 2023 11:36:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1qofKqDPnuTFNAocWz/Q+zXuseKKSHKvcSCQuFpXq3s=; b=fHgr/P3CiCVE7EoOm5XiZR0ucg
	R+pzmpIKd2HyIlVXx32IPXqsEcIQ1hwvJHDLfcshpk42Q4japeJ14SBRU4O37iI2O6zmIBTFPlGWi
	21ulIMzDE37DB/T52yZYNWOQ9u1SpdXuLffSWGDFOSTRWgfrQyZpEfyjfmqWnzc6/G51O9tYfoYIy
	ZdMbXC5ivh+TdhHugq+Yy4aclJnroVLsN/4zAu0MqSRia1XBGBHw0HrhkJ+UtYo0ZQ1ovGi07CXO3
	ZrEl8dD6G1KTvgg68OflPf3qzQ0HtfPg/rf9+MHsQP+Od4XPwPXMHjJT5P3fT9kCCUy8xRR0P1iyc
	AsPsli4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCdBc-00329V-2Q;
	Fri, 23 Jun 2023 09:34:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCdBY-00328H-2k
	for barebox@lists.infradead.org;
	Fri, 23 Jun 2023 09:34:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qCdBT-0005Wj-AF; Fri, 23 Jun 2023 11:34:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qCdBT-0004J2-42; Fri, 23 Jun 2023 11:34:27 +0200
Date: Fri, 23 Jun 2023 11:34:27 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230623093427.GN18491@pengutronix.de>
References: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230623_023432_887697_9A94906C 
X-CRM114-Status: GOOD (  23.79  )
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
Subject: Re: [PATCH v2 0/9] gpio: add proper gpiod API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 22, 2023 at 09:23:20AM +0200, Ahmad Fatoum wrote:
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

Applied, thanks

Sascha

> 
> v1 -> v2:
>   - drop unrelated help command patch
>   - drop gpio-mux patch for separate sending out
>   - rebase onto next
>   - fix and add stubs for !CONFIG_GPIOLIB
>   - rename internal gpioinfo_ functions to gpiodesc_
> 
> v1 was here:
> https://lore.barebox.org/barebox/20230621092700.GE18491@pengutronix.de/T/#t
> 
> Ahmad Fatoum (9):
>   driver: include dev_print and family from <driver.h>
>   include: linux/printk: define new dev_errp_probe
>   gpio: have gpiod_ functions return and accept pointers
>   gpio: gpiolib: rename struct gpio_info to gpio_desc
>   gpiolib: export proper gpio descriptor API
>   bitmap: implement bitmap_{to,from}_arr{32,64}
>   gpiolib: factor out finding gpio property
>   gpiolib: add support for requesting and setting gpiod arrays
>   gpiolib: rename gpioinfo_ to gpiodesc_
> 
>  drivers/gpio/gpio-pca953x.c              |   9 +-
>  drivers/gpio/gpiolib.c                   | 528 +++++++++++++++++------
>  drivers/mci/mci_spi.c                    |  13 +-
>  drivers/mtd/nand/atmel/nand-controller.c |  40 +-
>  drivers/mtd/nand/nand_base.c             |   6 +-
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
>  include/linux/gpio/consumer.h            | 224 ++++++++++
>  include/linux/mtd/rawnand.h              |   4 +-
>  include/linux/printk.h                   |   3 +
>  include/video/mipi_dbi.h                 |   7 +-
>  lib/bitmap.c                             | 103 +++++
>  31 files changed, 1019 insertions(+), 389 deletions(-)
>  create mode 100644 include/linux/gpio/consumer.h
> 
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


