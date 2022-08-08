Delivery-date: Mon, 08 Aug 2022 10:32:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKyBS-00FxMb-P5
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 10:32:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKyBT-0004nS-F7
	for lore@pengutronix.de; Mon, 08 Aug 2022 10:32:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V/iogMczwsBhFfsh9l/rDLOzgaLIyswPvjRgC6VnuLA=; b=rbbhjqZoddmWqY2xxtdgnQb+7u
	JXbQ4MzF67ZEjwTrVzBmfp53NzcApHGQxpZJH5fI3SkrVgM9n7SlqhRBTjS0yJsy/VAx/32MQY7WQ
	aVpZ03wcOD8XUZQ/F9p3+T2OOQ429nYYFvhiqAkErXuCaq0dG8J6n6K6jlCLEygDu4uT4PwuhE/QW
	6YrWeTUzei1IXbQHOipZewAEjRMNOSqpBLkX04lYyYtS2m0diG6c9l09zOg6LPIeo68VF/Cu/+dBt
	SINNkKAbHyHi9Q8IZJ2tsa46TbAVuYvwLqwzTlRhORHYguygZWGaatK+iAfPlKxS8M2fhWUnFtm7+
	foYCACvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKy9U-00CPoe-RV; Mon, 08 Aug 2022 08:30:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKy9P-00CPnj-Di
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 08:30:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oKy9O-0004R0-0j; Mon, 08 Aug 2022 10:30:14 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oKy9N-0000Ru-Ml; Mon, 08 Aug 2022 10:30:13 +0200
Date: Mon, 8 Aug 2022 10:30:13 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808083013.5wpxlfygrveluvuj@pengutronix.de>
References: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_013015_528801_5C4D7BAF 
X-CRM114-Status: GOOD (  13.03  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/9] ARM: i.MX8MN: clean up and enable imx-usb-loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22-08-05, Ahmad Fatoum wrote:
> This series applies on top of <20220714072722.2863571-1-s.hauer@pengutronix.de>
> 
> Ahmad Fatoum (9):
>   ARM: i.MX8M: move TF-A chainload functions in <mach/xload.h>
>   ARM: i.MX8M: imx8mn-evk: use generic
>     imx8mn_load_and_start_image_via_tfa
>   ARM: i.MX8MN: add SDPS barebox-side support
>   ARM: i.MX8MN: evk: simplify DDR4/LPDDR4 selection code
>   ddr: imx8m: rename type to more fitting ddrc|dram_type
>   ARM: i.MX8M: remove struct dram_timing_info::dram_type again
>   pbl: generalize fsl i2c_early API into pbl_i2c
>   i2c: add <pbl/pmic.h> for PBL use
>   ARM: i.MX8M: use new pbl/pmic.h API

Hi Ahmad,

whole series LGTM.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> 
>  arch/arm/boards/ls1046ardb/lowlevel.c         |   6 +-
>  arch/arm/boards/mnt-reform/lowlevel.c         |  28 +---
>  arch/arm/boards/mnt-reform/lpddr4-timing.c    |   1 -
>  arch/arm/boards/nxp-imx8mm-evk/lowlevel.c     |  58 +++-----
>  .../arm/boards/nxp-imx8mm-evk/lpddr4-timing.c |   1 -
>  arch/arm/boards/nxp-imx8mn-evk/ddr4-timing.c  |   1 -
>  arch/arm/boards/nxp-imx8mn-evk/lowlevel.c     | 140 ++++--------------
>  .../arm/boards/nxp-imx8mn-evk/lpddr4-timing.c |   1 -
>  arch/arm/boards/nxp-imx8mp-evk/lowlevel.c     |  61 +++-----
>  .../arm/boards/nxp-imx8mp-evk/lpddr4-timing.c |   1 -
>  .../boards/protonic-imx8m/lowlevel-prt8mm.c   |   1 -
>  .../protonic-imx8m/lpddr4-timing-prt8mm.c     |   1 -
>  arch/arm/mach-imx/atf.c                       |  40 ++++-
>  arch/arm/mach-imx/include/mach/xload.h        |   4 +
>  common/ddr_spd.c                              |  24 ++-
>  drivers/ddr/imx8m/ddr_init.c                  |  11 +-
>  drivers/ddr/imx8m/ddrphy_train.c              |   8 +-
>  drivers/i2c/busses/i2c-imx-early.c            |  21 ++-
>  include/ddr_spd.h                             |   5 +-
>  include/i2c/i2c-early.h                       |  13 --
>  include/pbl/i2c.h                             |  37 +++++
>  include/pbl/pmic.h                            |  41 +++++
>  include/soc/imx8m.h                           |   9 --
>  include/soc/imx8m/ddr.h                       |  79 +++++-----
>  24 files changed, 279 insertions(+), 313 deletions(-)
>  delete mode 100644 include/i2c/i2c-early.h
>  create mode 100644 include/pbl/i2c.h
>  create mode 100644 include/pbl/pmic.h
>  delete mode 100644 include/soc/imx8m.h
> 
> -- 
> 2.30.2
> 
> 


