Delivery-date: Thu, 12 Mar 2026 09:22:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0bJ6-00Akxw-1A
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 09:22:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0bJ6-0005aA-Gw
	for lore@pengutronix.de; Thu, 12 Mar 2026 09:22:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCVSHNBVmknIoNi5DjgRU44k5+U63UyNo9VllzFE9Kw=; b=2YH5oixlgFTH5r
	SClvgfI/JfJQr/gvctP/8Jxi8DHYNwmIeN3bP0LJS5gV+P7eTuFKXoutzN7t6ozYzlOyNgBN7FSO3
	rpYRf0vDin0fDLBZ7yykfoguvRp9h2wuwnnHO9I8YzP2B6J/0DRVPND7KlNiws3E4+dnsZO55uJ3s
	zLcKfYvQS+IYDRgGkPou8Chh4GEdqa/M83y7XH0pGlAiTgwlyYsmQW42BZesNJe1RHM4nRdWX7fXV
	gW4YJzDAZhA+5SfGcoM73hflkA9FgATv5cJgxvT7b+y8cRj/DsGduGpjN6LHWUn8GGL+x6y5+Nx71
	0DoNg/SyppSYgiJxBI5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0bIM-0000000DdnS-14WR;
	Thu, 12 Mar 2026 08:21:26 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0bII-0000000Ddma-2UAm
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 08:21:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:mime-version:references:in-reply-to:
	 message-id:subject:cc:to:from:date:from;
	bh=hCVSHNBVmknIoNi5DjgRU44k5+U63UyNo9VllzFE9Kw=;
	b=cud+oEqUPTAcqNLtAeeI2Im05lJbb+mH2NLufMuCMJVltfVA4X5rrsmcWh89ia0SuHuo/MrN75Wf3
	 cnM9QvjMRfomYns4aUkVJ/xBctHVTTjYFO7HYCDJ+HiLye5nXy3oKCIlRMaaVHLpXrEQFDx4t1gywk
	 l3SLGh1LS9zEMbOKpgqmSgQyMgVwRpO1q6aTe+hBxcvi7tyZGlvW0ZyHA8ackE/9RUpCXI2i0neVGX
	 CJcNbiLXnzyFPkpOIhx+vXZMWbLpWGNh2ojRxmQD2/USn/W4PNnD4K/9cXKlXKblFCkfFKk8d5/n6M
	 NOehl3/4eJvJyZ7WimxutgQZv2Fp+nw==
X-MSG-ID: 6f4209fc-1dec-11f1-9155-005056817704
Date: Thu, 12 Mar 2026 09:21:13 +0100
From: David Jander <david@protonic.nl>
To: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
Message-ID: <20260312092113.1d90fd46@erd003.prtnl>
In-Reply-To: <20260310152433.786340-1-robin.van.der.gracht@protonic.nl>
References: <20260310152433.786340-1-robin.van.der.gracht@protonic.nl>
Organization: Protonic Holland
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_012123_100946_13B64611 
X-CRM114-Status: GOOD (  17.18  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/8] ARM: boards: protonic-mecsbc: Generalization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, 10 Mar 2026 16:24:25 +0100
Robin van der Gracht <robin.van.der.gracht@protonic.nl> wrote:

> Hello,
> This patch series makes changes to the existing protonic-mecsbc
> board support. These changes pave the way for supporting multiple
> simular products with the same board support code. We'll be adding
> products with a RK3562 chipset to the mecsbc board code. 
> For that we'll change the board name to be more generic: protonic-rk356x

Why not protonic-rk35xx or something even more generic? protonic-prtpuk is
already mainlined and the code is very similar to this branch. IMHO it should
also be merged. Q4/2026 the RK36xx family is being launched. We don't know yet
whether it will be sufficiently similar/compatible to warrant a hypothetical
protonic board to also be added here?

Best regards,

> Regards,
> Robin
> 
> Changes for v2:
>  - Squashed patches that added and fixed the late init call (5 and 8).
>  - Improved commit message of patch that adds the model specific init
>    function.
> 
> Robin van der Gracht (8):
>   ARM: boards: Rename protonic-mecsbc to protonic-rk356x
>   ARM: boards: protonic-rk356x: Remove VIN measurement
>   ARM: boards: protonic-rk356x: Use devicetree alias for saradc
>   ARM: boards: protonic-rk356x: Configure ADC and channels in model data
>   ARM: boards: protonic-rk356x: Move mecsbc code to model init function
>   ARM: boards: protonic-rk356x: Use rockchip_bbu_mmc_register
>   ARM: boards: protonic-rk356x: Move bbu setup to device late init
>   ARM: boards: protonic-rk356x: Read board serial and MAC address from
>     eMMC
> 
>  Documentation/boards/rk35xx.rst               |   2 +-
>  arch/arm/boards/Makefile                      |   2 +-
>  arch/arm/boards/protonic-mecsbc/board.c       | 180 -----------
>  .../Makefile                                  |   0
>  arch/arm/boards/protonic-rk356x/board.c       | 297 ++++++++++++++++++
>  .../lowlevel.c                                |   0
>  arch/arm/configs/rockchip_v8_defconfig        |   2 +-
>  arch/arm/dts/Makefile                         |   2 +-
>  arch/arm/dts/rk3568-mecsbc.dts                |   1 +
>  arch/arm/mach-rockchip/Kconfig                |   6 +-
>  images/Makefile.rockchip                      |   2 +-
>  11 files changed, 306 insertions(+), 188 deletions(-)
>  delete mode 100644 arch/arm/boards/protonic-mecsbc/board.c
>  rename arch/arm/boards/{protonic-mecsbc => protonic-rk356x}/Makefile (100%)
>  create mode 100644 arch/arm/boards/protonic-rk356x/board.c
>  rename arch/arm/boards/{protonic-mecsbc => protonic-rk356x}/lowlevel.c (100%)
> 



-- 
David Jander


