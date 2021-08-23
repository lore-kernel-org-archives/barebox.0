Delivery-date: Mon, 23 Aug 2021 15:53:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIAOh-0008KZ-CQ
	for lore@lore.pengutronix.de; Mon, 23 Aug 2021 15:53:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIAOc-0000iT-Ac
	for lore@pengutronix.de; Mon, 23 Aug 2021 15:53:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rGxUN4atWKlaLLmMrbH/q4KoiTI8hsCfFZz/x6cGw0Q=; b=bB/pljHAJ8jn3y2+2YL7P1/b73
	e551x8ZL78CByXdTMWQxb9Wyi5zTeHxrNnnFFc3FANIFqi2dkuWDqG89WGm34/SVZQ76ppWBAJAF4
	7dSJiAXAiNqa73AsUl3dAkJPKu4BuYV311hB6VXz53216eaAj+T/adbkQB/sWo86svAPj6ocmG7Qq
	cdt0k7jJXo9lHmGHpE9pfAkdhlrKJ9hHwB4HKwguJdPMgrm/wuWkpJEjT1HEp/UXvXUV83gW54Tdl
	5jtY03IKdOxdsOwXL00HBmDiguZuAutmjsR8qdT5hXT3dYhVC1568AJlD3RTa3CpQHQ1K/1wAXxOi
	5taoSGJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIAMw-00H8ei-IO; Mon, 23 Aug 2021 13:52:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIAMk-00H8d6-Dp
 for barebox@lists.infradead.org; Mon, 23 Aug 2021 13:51:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mIAMi-0000Y2-Qt; Mon, 23 Aug 2021 15:51:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mIAMi-0005xZ-Gr; Mon, 23 Aug 2021 15:51:52 +0200
Date: Mon, 23 Aug 2021 15:51:52 +0200
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de
Message-ID: <20210823135152.GL24834@pengutronix.de>
References: <20210819081251.726840-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210819081251.726840-1-m.tretter@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:51:40 up 186 days, 17:15, 113 users,  load average: 0.21, 0.19,
 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_065154_515602_08B5057E 
X-CRM114-Status: GOOD (  22.32  )
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
Subject: Re: [PATCH v2 0/3] firmware: zynqmp-fpga: fix fpga loading with
 optimized string functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 19, 2021 at 10:12:48AM +0200, Michael Tretter wrote:
> If CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS is enabled, loading the FPGA fails
> with an abort, because the optimized memcpy can only be used on cached memory.
> As the bitstream can be several MBs large, we want to use the optimized
> functions. Fix the abort by using a cached mapping with streaming DMA.
> 
> v2 drops the explicit dma_sync_single_for_device and instead uses
> dma_map_single to flush the temporary buffer. I also fixed the error handling
> in case the mapping fails and made the size of the extra space at the end of
> the temporary buffer more explicit.
> 
> Michael
> 
> Changelog:
> 
> Michael Tretter (3):
>   firmware: zynqmp-fpga: initialize flags at function start
>   firmware: zynqmp-fpga: avoid additional buffer for size argument
>   firmware: zynqmp-fpga: do not use DMA coherent memory for bitstream
> 
>  drivers/firmware/zynqmp-fpga.c | 55 +++++++++++++++++-----------------
>  1 file changed, 27 insertions(+), 28 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

