Delivery-date: Thu, 05 Feb 2026 16:51:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vo1dP-009Aa8-2A
	for lore@lore.pengutronix.de;
	Thu, 05 Feb 2026 16:51:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vo1dO-0007ZL-JT
	for lore@pengutronix.de; Thu, 05 Feb 2026 16:51:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7f1vp6183hAspn3t6d/yP6A2OlqLmU0fR9jY4nvNJ0o=; b=Xmb5CEy87zhOFaDHGUb7OzuJEN
	v0L8D5Chs7bWW4xlzg/HVmcE+viEgqjrTGba3434OZ7K2TzpT8ZldpByrCDTgAx/1gWZVZ49QBZXh
	FiqSzyyAg0cue1c1qxJkp9GsaKFQJ0eSNjE2Qa/+BnKgtR8NY10tjd7jN1KGFgOr0wUJS0iza2hHN
	rPKqtQrx0sWvU2n8WbKgfyJKC4kwF7zHbImPSC9wVtGbCO/3zmBTHjqU4qCiExJWjFL0K6PJdS+vV
	qlpibENkjuqth0WIj6FeDbm+A/23PkLMjFp4LKfnHN/LAxMhOYIndgsOKDGnuRLBKajfjVpMNgWRc
	Lb4uxsCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1cv-0000000AAkL-27j8;
	Thu, 05 Feb 2026 15:50:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1cq-0000000AAj9-31oY
	for barebox@lists.infradead.org;
	Thu, 05 Feb 2026 15:50:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vo1cn-0007TL-P5; Thu, 05 Feb 2026 16:50:33 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vo1co-004GLx-0Y;
	Thu, 05 Feb 2026 16:50:33 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vo1cn-000R8N-1J;
	Thu, 05 Feb 2026 16:50:33 +0100
Date: Thu, 5 Feb 2026 16:50:33 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Message-ID: <20260205155033.7sue5idir2sdzdv5@pengutronix.de>
References: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_075036_762922_7385EB59 
X-CRM114-Status: GOOD (  19.13  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] Hexagon Geosystems GS05 Board Support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-02-05, Marco Felsch wrote:
> Hi,
> 
> this series adds the support for the Hexagon Geosystems GS05 product
> [1]. The GS05 is part of a larger product family from SW pov, therefore
> most logic is implemented below 'common/boards/hgs'.
> 
> The board support was added before the new security-profiles made it
> into barebox mainline, therefore security-profiles aren't used yet but
> maybe in the future.
> 
> Further products will be send mainline as well, once this basic support
> got merged.
> 
> Patch1-2 were also sent here [2] in parallel.

I forgot to mention, that this patchset depends on:

https://lore.kernel.org/barebox/20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de/

> Regards,
>   Marco
> 
> [1] https://leica-geosystems.com/de-de/products/gnss-systems/smart-antennas/leica-gs05
> [2] https://lore.kernel.org/barebox/20260204151645.1426068-1-m.felsch@pengutronix.de/
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Marco Felsch (5):
>       ARM: i.MX8MM: add MX8MM_PAD_CTL defines
>       lib: hexdump: make use of pr_print
>       mfd: Add Hexagon EFI driver
>       watchdog: Add Hexagon EFI watchdog driver
>       ARM: i.MX8MM: add Hexagon Geosystems GS05
> 
>  arch/arm/boards/Makefile                          |    1 +
>  arch/arm/boards/hgs-gs05/Makefile                 |    6 +
>  arch/arm/boards/hgs-gs05/board.c                  |  237 +++++
>  arch/arm/boards/hgs-gs05/flash-header-gs05.imxcfg |   12 +
>  arch/arm/boards/hgs-gs05/lowlevel.c               |  128 +++
>  arch/arm/boards/hgs-gs05/lpddr4-timing.c          | 1118 +++++++++++++++++++++
>  arch/arm/dts/Makefile                             |    1 +
>  arch/arm/dts/imx8m-hgs-common.dtsi                |   80 ++
>  arch/arm/dts/imx8mm-hgs-gs05.dts                  |  320 ++++++
>  arch/arm/mach-imx/Kconfig                         |    8 +
>  commands/ethlog.c                                 |    4 +-
>  common/boards/Kconfig                             |   12 +
>  common/boards/Makefile                            |    1 +
>  common/boards/hgs/Makefile                        |    7 +
>  common/boards/hgs/common.c                        |  627 ++++++++++++
>  common/boards/hgs/lib.c                           |   73 ++
>  common/boards/hgs/pbl.c                           |  100 ++
>  drivers/mfd/Kconfig                               |    8 +
>  drivers/mfd/Makefile                              |    1 +
>  drivers/mfd/hgs-efi.c                             |  473 +++++++++
>  drivers/mtd/ubi/attach.c                          |    2 +-
>  drivers/watchdog/Kconfig                          |    9 +
>  drivers/watchdog/Makefile                         |    1 +
>  drivers/watchdog/hgs_efi_wdt.c                    |   88 ++
>  fs/ubifs/debug.c                                  |    4 +-
>  images/Makefile.imx                               |    2 +
>  include/boards/hgs/common.h                       |   84 ++
>  include/linux/printk.h                            |    4 +-
>  include/mach/imx/iomux-mx8mm.h                    |   10 +
>  include/mfd/hgs-efi.h                             |   46 +
>  include/printf.h                                  |    2 +-
>  include/soc/ti/cppi5.h                            |    2 +-
>  lib/hexdump.c                                     |   13 +-
>  33 files changed, 3467 insertions(+), 17 deletions(-)
> ---
> base-commit: 8781fc641fc147df639c9e767a89aa3277d2c9be
> change-id: 20260205-vmaster-customers-leicageo-system1600-f62320eed41f
> 
> Best regards,
> -- 
> Marco Felsch <m.felsch@pengutronix.de>
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


