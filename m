Delivery-date: Tue, 05 Dec 2023 08:53:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQF4-003v3z-0e
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 08:53:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQF4-0001Ke-73
	for lore@pengutronix.de; Tue, 05 Dec 2023 08:53:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DVrjgKudNiOLFV1YLKRyk+LgsWqYmGdcy8xlqRKnbio=; b=gjZES76I/QGzMfD0hCM/Uvj60s
	mkDb04lT+TI20SmLoj6K0PZP3JQBFmzsnLdkUAyGc7PTzP3h8j8+6tpUH27PxIbraOIt9QTzI7uMV
	ordfO8XkGihj313cYWZs3Bu8+aBGDluuJ785pzTv41LzFvQRzCPAJCYlNubop0HBdJQXq6hUweOCZ
	y4MQNwM96/MbDfMpVtTQ61ZKi0Oza4TbcwyGCioHOohd/s41FmuomF8cGNNBT9DsihwLGg5xIpY0L
	WgFtH5bHaqSDEryGwP/OXxCTEmPVP2oXr01SSKkTwSzXnmrcFBH+QDTBQtl8W0cx5PlwSEMnEJGgz
	GsBpShzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQDt-006Y4e-1l;
	Tue, 05 Dec 2023 07:52:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQDp-006Y3R-2h
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 07:52:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQDo-00019R-JQ; Tue, 05 Dec 2023 08:52:00 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQDo-00Dh3W-6l; Tue, 05 Dec 2023 08:52:00 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQDo-005LmB-4N; Tue, 05 Dec 2023 08:52:00 +0100
Date: Tue, 5 Dec 2023 08:52:00 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Denis Orlov <denorl2009@gmail.com>,
	str@pengutronix.de, lst@pengutronix.de
Message-ID: <20231205075200.GI1057032@pengutronix.de>
References: <20231129061758.1781732-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231129061758.1781732-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_235201_871283_FA25F104 
X-CRM114-Status: GOOD (  20.67  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/4] dma: catch mistakes with CONFIG_DMA_API_DEBUG
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 29, 2023 at 07:17:54AM +0100, Ahmad Fatoum wrote:
> Cache invalidation issues around DMA accesses can be difficult to debug.
> Motivated by recent fixes to the macb driver[1], let's add some optional
> sanity checking to the DMA API inspired by the Linux CONFIG_DMA_API_DEBUG
> option.
> 
> This would have caught the issue fixed by [1] in the macb driver and it
> already caught a misuse of the API on the STM32MP system I tested it on.
> 
> Usage is simple: just enable it and ensure no warnings are printed.
> All warnings are printed alongside the extents of the DMA buffer in
> question and a stack trace at the time the check failed.
> 
> [1]: https://lore.barebox.org/barebox/20231128-v2023-08-0-topic-macb-v1-0-9faff73bc990@pengutronix.de/T/#t
> 
> Ahmad Fatoum (4):
>   dma: factor out dma map generic implementations into file
>   dma: add DMA API debugging support
>   mci: core: remove broken, unneeded write bounce buffer
>   mci: stm32_sdmmc2: correct usage of DMA API

Applied, thanks

Sascha

> 
>  common/Kconfig             |  14 +++
>  drivers/dma/Makefile       |   2 +
>  drivers/dma/debug.c        | 183 +++++++++++++++++++++++++++++++++++++
>  drivers/dma/debug.h        |  56 ++++++++++++
>  drivers/dma/map.c          |  43 +++++++++
>  drivers/mci/mci-core.c     |  10 +-
>  drivers/mci/stm32_sdmmc2.c |  41 +++++----
>  include/dma.h              |  61 ++++---------
>  8 files changed, 340 insertions(+), 70 deletions(-)
>  create mode 100644 drivers/dma/debug.c
>  create mode 100644 drivers/dma/debug.h
>  create mode 100644 drivers/dma/map.c
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


