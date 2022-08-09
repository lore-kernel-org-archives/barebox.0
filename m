Delivery-date: Tue, 09 Aug 2022 09:43:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLJtU-00H4sc-Bm
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 09:43:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLJtV-0007wa-6J
	for lore@pengutronix.de; Tue, 09 Aug 2022 09:43:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=21PCTjdm5cTYIkFQTMMTfER44S8P9kTj9LIAxXWOPUg=; b=Nqj7tDHcN47p4jqG4RfjSsEfbO
	rFy1OdUjHjA+GsiXhcP/Pgqe04HjItblFU73uuOybVo1YAHlTbmYfN5L+MeX3DZq1rQPbm/DhPNW5
	MgmVvkcX5ofLrMWhdzV0Vcb8lb0WAkZXrPuyhYZ/URQpqlndlNWPQZCd2TUJ87vSstb4m0RzFmaZx
	BlO9dmbHsvmR9Mw8YdqkxQGWbLxfFZZUDEnzlODYL1ad9RHNp7+YNBAKEqjgXtLQgKrZMX7hcPA3A
	PNGKQPen+dM5mdPT+Z6ndgZu38M6h5bakj5PMkio3rSoGl3k1iNb5i3XuY011Y+YHRjnhyc/rilZ+
	i46wg44Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLJsG-002Ti2-MK; Tue, 09 Aug 2022 07:42:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLJsB-002Tg5-Jn
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 07:41:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLJs9-0007qT-GJ; Tue, 09 Aug 2022 09:41:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLJs8-0000vq-Vn; Tue, 09 Aug 2022 09:41:52 +0200
Date: Tue, 9 Aug 2022 09:41:52 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, michael.riesch@wolfvision.net,
	j.zink@pengutronix.de
Message-ID: <20220809074152.GH31528@pengutronix.de>
References: <20220720055042.3510276-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220720055042.3510276-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_004155_670278_A158EC22 
X-CRM114-Status: GOOD (  18.15  )
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
Subject: Re: [RFT PATCH 0/3] ARM: Rockchip: align bootsource_instance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jul 20, 2022 at 07:50:39AM +0200, Ahmad Fatoum wrote:
> [ "$bootsource" = mmc ] && boot mmc$bootsource_instance on the Rockchip
> board doesn't do what one would expect, because the bootrom has
> different numbering for the MMC devices than what the upstream board
> device trees use for their aliases. This series resolves that.
> 
> @Johannes, could you give this a test on the ROCK-3A?
> 
> Thanks,
> Ahmad Fatoum (3):
>   bootsource: rename existing bootsource_set to bootsource_set_raw
>   bootsource: allow DT aliases and bootrom numbering to differ
>   ARM: dts: rk356x: align bootsource_instance numbering and MMC DT
>     aliases

Applied, thanks

Sascha

> 
>  .../devicetree/bindings/barebox/aliases.rst   |  36 ++++++
>  arch/arm/boards/radxa-rock3/board.c           |   2 +-
>  .../boards/rockchip-rk3568-bpi-r2pro/board.c  |   2 +-
>  arch/arm/boards/rockchip-rk3568-evb/board.c   |   2 +-
>  arch/arm/dts/rk3566-quartz64-a.dts            |   1 +
>  arch/arm/dts/rk3568-bpi-r2-pro.dts            |   1 +
>  arch/arm/dts/rk3568-evb1-v10.dts              |   1 +
>  arch/arm/dts/rk3568-rock-3a.dts               |   1 +
>  arch/arm/dts/rk356x.dtsi                      |   9 ++
>  arch/arm/mach-at91/sama5d2.c                  |   4 +-
>  arch/arm/mach-imx/boot.c                      |   6 +-
>  arch/arm/mach-layerscape/boot.c               |   4 +-
>  arch/arm/mach-mxs/imx.c                       |   3 +-
>  arch/arm/mach-omap/am33xx_generic.c           |   3 +-
>  arch/arm/mach-omap/omap3_generic.c            |   3 +-
>  arch/arm/mach-omap/omap4_generic.c            |   3 +-
>  arch/arm/mach-rockchip/rk3288.c               |   3 +-
>  arch/arm/mach-rockchip/rk3568.c               |   9 +-
>  arch/arm/mach-socfpga/arria10-bootsource.c    |   3 +-
>  arch/arm/mach-socfpga/cyclone5-bootsource.c   |   6 +-
>  arch/arm/mach-stm32mp/init.c                  |   3 +-
>  arch/arm/mach-zynq/zynq.c                     |   2 +-
>  arch/arm/mach-zynqmp/zynqmp.c                 |   3 +-
>  common/bootsource.c                           | 110 +++++++++++++-----
>  drivers/block/efi-block-io.c                  |   2 +-
>  drivers/efi/efi-device.c                      |   3 +-
>  include/bootsource.h                          |  40 ++++++-
>  27 files changed, 192 insertions(+), 73 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/barebox/aliases.rst
>  create mode 100644 arch/arm/dts/rk356x.dtsi
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


