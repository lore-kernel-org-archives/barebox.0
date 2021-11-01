Delivery-date: Mon, 01 Nov 2021 11:34:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhUeH-0001FV-KH
	for lore@lore.pengutronix.de; Mon, 01 Nov 2021 11:34:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhUeG-0000Xq-U0
	for lore@pengutronix.de; Mon, 01 Nov 2021 11:34:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Im9NKhUmj7e+pIGpMlcA0hh/2MpuKGFf5w/fliB0M90=; b=GzGUmBXyoFhdkJFQshYkAIws/o
	5REoYcm9P632ZnaAXgd1Aql6itECF5ope8tngJ0zRdskx7ViD7VSatvWISqdoMNf+EOZ0gVDtvJM6
	tH18Gn/XsOR/FWa3UcoeSew3EimCBZVOt/8AMxSwHqLRrMmb7d+xSonlvIGI6LZwuRRtMZsvNlBAh
	G8L559NNpwy5qdgWe1qvKFL52cV6FfNMeL8QftPAIJ3Mg18w34ZRvGGZ/r9SeU863rX2RMg2lWzwY
	2aCQEaSGLkDUM8J+/G1jDBunu0SLWDv7OWx7wGMfBTz/Qb7gsntvk0CVbRmqXhxMU7ofz6rdbOw0x
	VTPe0NIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhUd4-00Fy5R-5e; Mon, 01 Nov 2021 10:33:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhUcy-00Fy4N-Vr
 for barebox@lists.infradead.org; Mon, 01 Nov 2021 10:33:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhUcx-0000S6-EQ; Mon, 01 Nov 2021 11:33:19 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhUcx-0006Y4-5P; Mon, 01 Nov 2021 11:33:19 +0100
Date: Mon, 1 Nov 2021 11:33:19 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211101103319.GV25698@pengutronix.de>
References: <20211030175812.2276705-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211030175812.2276705-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:33:10 up 256 days, 13:57, 137 users,  load average: 0.07, 0.17,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_033321_051841_E121B3F6 
X-CRM114-Status: GOOD (  20.09  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/9] COMPILE_TEST: fix misc issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Oct 30, 2021 at 07:58:03PM +0200, Ahmad Fatoum wrote:
> Ahmad Fatoum (9):
>   ARM: Rockchip: move ARCH_RK3568_OPTEE into ARCH_ROCKCHIP menu
>   ARM: i.MX: guf-santaro: fix passing around of uninitialized variable
>   regulator: fix bitrotted EXPORT_SYMBOL_GPL
>   aiodev: fix bitrotted EXPORT_SYMBOL
>   mtd: remove NULLness check for IOMEM()
>   clocksource: clint: restrict to RISC-V
>   ddr: fsl: make ARCH_LAYERSCAPE only
>   reset: socfpga: error out on failure to request memory
>   i2c-mux-pca954x: drop duplicate warning message on probe

Applied, thanks

Sascha

> 
>  arch/arm/boards/guf-santaro/board.c   |  3 +--
>  arch/arm/mach-rockchip/Kconfig        |  5 ++---
>  drivers/aiodev/core.c                 |  2 +-
>  drivers/clocksource/Kconfig           |  4 ++--
>  drivers/ddr/fsl/Kconfig               |  4 ++--
>  drivers/i2c/i2c.c                     |  3 ++-
>  drivers/i2c/muxes/i2c-mux-pca954x.c   |  4 +---
>  drivers/mtd/nand/atmel_nand.c         |  8 --------
>  drivers/mtd/spi-nor/cadence-quadspi.c | 10 ----------
>  drivers/regulator/core.c              |  2 +-
>  drivers/reset/reset-socfpga.c         |  5 +++--
>  11 files changed, 15 insertions(+), 35 deletions(-)
> 
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

