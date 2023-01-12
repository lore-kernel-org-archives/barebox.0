Delivery-date: Thu, 12 Jan 2023 15:24:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFyV7-009qqA-V1
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 15:24:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFyV5-0007CQ-Uj
	for lore@pengutronix.de; Thu, 12 Jan 2023 15:24:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QBmzQJKUWb46+bPOEuN11aoicsf3/hrC6zszv86OBmE=; b=16Y6MkN/NDhh7gcCA0bA0e1Jw/
	B5IsqMgQ8SgvIXHhwlvCARYj9mn9V4FaeaE3ThuouiEU/pBl0CpAr8U3i1rSCvuL4JDb+k2QUpdZB
	4B18G7xZM3ABG7Ukbu3xykIEiOQ43IuSkmlD23MXUFc9ObHKUVxL/+yEqWp5HcMDFuvJFwK9H7/Rs
	+Q4gT8DAj3ip8IpWSGMjB+Fp2jhwRQBFS4Z8Qb4aCrdQmidz5j5TSnfLUMrGZysgMGxfD8XNAPmXF
	biw709Jp/6+YADW3wuf2VEp4cvC0cSdbySKDR/daLF5fg9NRIiI9ls8xwHZeWLxkgXVTlFFcSTH2f
	2aYONv1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFyTp-00FLD5-2k; Thu, 12 Jan 2023 14:22:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFyTj-00FLCS-No
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 14:22:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFyTd-0006zH-SX; Thu, 12 Jan 2023 15:22:45 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFyTd-0001Na-LY; Thu, 12 Jan 2023 15:22:45 +0100
Date: Thu, 12 Jan 2023 15:22:45 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230112142245.GS24755@pengutronix.de>
References: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_062252_235190_A5DAD487 
X-CRM114-Status: GOOD (  21.68  )
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
Subject: Re: [PATCH 00/15] mtd: nand: atmel: import Linux NAND controller
 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 11, 2023 at 06:40:08PM +0100, Ahmad Fatoum wrote:
> For a few years, Linux has been using the new EBI bindings for NAND
> controllers on all AT91 SoCs newer than the AT91RM2000. We have so far
> only supported the old bindings by hacking the DT, but this doesn't
> suffice for the SAMA5D4. Therefore import a new state of the Linux NAND
> controller driver. We still keep around the old barebox driver to
> support the non-DT enabled AT91 platforms.
> 
> Ahmad Fatoum (15):
>   asm-generic: io.h: sync with Linux
>   mtd: nand: base: implement nand_gpio_waitrdy
>   mtd: nand: prefix enum nand_ecc_algo constants with NAND_ECC_ALGO_
>   mtd: nand: rename nand_device::eccreq to Linux' ecc.requirements
>   mtd: nand: define nand_get_(small|large)_page_ooblayout
>   mtd: nand: define nand_interface_is_sdr
>   mtd: nand: provide Linux' struct nand_ecc_ctrl::engine_type
>   driver: implement dev_request_resource
>   lib: provide stub Linux "generic" allocator API
>   memory: add Atmel EBI driver
>   mfd: add atmel-smc driver
>   mtd: nand: atmel: import Linux NAND controller driver
>   ARM: AT91: sama5d3_xplained: switch to upstream binding
>   mtd: nand: drop DT support in legacy driver
>   ARM: AT91: sama5d3: always read memory size from controller

Applied, thanks

Sascha

> 
>  arch/arm/dts/at91-microchip-ksz9477-evb.dts   |    4 -
>  arch/arm/dts/at91-sama5d3_xplained.dts        |   29 -
>  arch/arm/dts/sama5d3.dtsi                     |   17 +-
>  drivers/base/driver.c                         |   19 +-
>  drivers/memory/Kconfig                        |   14 +
>  drivers/memory/Makefile                       |    1 +
>  drivers/memory/atmel-ebi.c                    |  614 +++++
>  drivers/mfd/Kconfig                           |    4 +
>  drivers/mfd/Makefile                          |    1 +
>  drivers/mfd/atmel-smc.c                       |  352 +++
>  drivers/mtd/nand/Kconfig                      |   11 +-
>  drivers/mtd/nand/Makefile                     |    2 +-
>  drivers/mtd/nand/atmel/Makefile               |    3 +
>  drivers/mtd/nand/{ => atmel}/atmel_nand_ecc.h |    0
>  .../mtd/nand/{atmel_nand.c => atmel/legacy.c} |  106 +-
>  drivers/mtd/nand/atmel/nand-controller.c      | 2049 +++++++++++++++++
>  drivers/mtd/nand/atmel/pmecc.c                |  992 ++++++++
>  drivers/mtd/nand/atmel/pmecc.h                |   70 +
>  drivers/mtd/nand/nand_base.c                  |   86 +-
>  drivers/mtd/nand/nand_esmt.c                  |   10 +-
>  drivers/mtd/nand/nand_fsl_ifc.c               |    2 +-
>  drivers/mtd/nand/nand_hynix.c                 |   40 +-
>  drivers/mtd/nand/nand_jedec.c                 |    4 +-
>  drivers/mtd/nand/nand_micron.c                |   16 +-
>  drivers/mtd/nand/nand_onfi.c                  |    8 +-
>  drivers/mtd/nand/nand_samsung.c               |   18 +-
>  drivers/mtd/nand/nand_toshiba.c               |   12 +-
>  include/asm-generic/io.h                      |  401 +++-
>  include/driver.h                              |    5 +
>  include/linux/genalloc.h                      |   36 +
>  include/linux/mfd/syscon/atmel-matrix.h       |  112 +
>  include/linux/mfd/syscon/atmel-smc.h          |  119 +
>  include/linux/mtd/nand.h                      |   27 +-
>  include/linux/mtd/rawnand.h                   |   43 +-
>  include/linux/mutex.h                         |    2 +
>  include/soc/at91/atmel-sfr.h                  |    2 +
>  lib/Kconfig                                   |    5 +
>  lib/Makefile                                  |    1 +
>  lib/genalloc.c                                |  118 +
>  39 files changed, 5074 insertions(+), 281 deletions(-)
>  create mode 100644 drivers/memory/atmel-ebi.c
>  create mode 100644 drivers/mfd/atmel-smc.c
>  create mode 100644 drivers/mtd/nand/atmel/Makefile
>  rename drivers/mtd/nand/{ => atmel}/atmel_nand_ecc.h (100%)
>  rename drivers/mtd/nand/{atmel_nand.c => atmel/legacy.c} (92%)
>  create mode 100644 drivers/mtd/nand/atmel/nand-controller.c
>  create mode 100644 drivers/mtd/nand/atmel/pmecc.c
>  create mode 100644 drivers/mtd/nand/atmel/pmecc.h
>  create mode 100644 include/linux/genalloc.h
>  create mode 100644 include/linux/mfd/syscon/atmel-matrix.h
>  create mode 100644 include/linux/mfd/syscon/atmel-smc.h
>  create mode 100644 lib/genalloc.c
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


