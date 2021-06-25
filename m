Delivery-date: Fri, 25 Jun 2021 10:02:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgn2-0008GP-Si
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 10:02:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgn1-0000NH-FH
	for lore@pengutronix.de; Fri, 25 Jun 2021 10:02:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GfZY9ue97bDGyEhKhgTNibblCJH3wE0UDGUqVakmttg=; b=Oy2dWOBMR36fFj20P5fzdnMHJr
	qc65PWUx4yfY8ZP8CbwqFjn7bDwkby0acMBk5Gks/1FSRgbG88DnKLNpKoGGaWRtlt5FHu1cfLYrq
	xOMOOL0EbgR2Ae8bPQB1yf1y/3nOIkMD/H31iliZMMndqzK+vmn2420m3S2pGWMX3p7tl10t1Y6K4
	H0m3xNAu9WFCySYCK2KmcInWlENkB31EHnu4yWca+Y4p2YzVcyJz4+dpqB2Y8/zk5cStboXqb1V5Y
	188tS54O5thhioLbBvsgFlui9allQp53YsB68jJ2KJmA8kjntgsBFhqL5bqMbjj+Y7t6PVZSqx0h/
	3JfLvAjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgla-000BHy-4d; Fri, 25 Jun 2021 08:00:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgSK-0003un-Cm
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:40:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgSJ-0004Od-15; Fri, 25 Jun 2021 09:40:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgSH-0002j3-R7; Fri, 25 Jun 2021 09:40:49 +0200
Date: Fri, 25 Jun 2021 09:40:49 +0200
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20210625074049.GD9782@pengutronix.de>
References: <20210624150931.891123-1-geert@linux-m68k.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210624150931.891123-1-geert@linux-m68k.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:40:41 up 127 days, 11:04, 118 users,  load average: 0.37, 0.41,
 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_004052_491754_A6016811 
X-CRM114-Status: GOOD (  20.51  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: starfive-jh7100: Fix duplicate numbers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 24, 2021 at 05:09:31PM +0200, Geert Uytterhoeven wrote:
> Fixes: 6f92e74e5b94d8e6 ("clk: add initial StarFive clock support")
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
> Completely untested.
> 
>  include/dt-bindings/clock/starfive-jh7100.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/dt-bindings/clock/starfive-jh7100.h b/include/dt-bindings/clock/starfive-jh7100.h
> index 9ad5e7f9bfd5f655..2512bb810ec45c8b 100644
> --- a/include/dt-bindings/clock/starfive-jh7100.h
> +++ b/include/dt-bindings/clock/starfive-jh7100.h
> @@ -42,9 +42,9 @@
>  #define CLK_U74_CORE1		33
>  #define CLK_U74_AXI		34
>  #define CLK_U74RTC_TOGGLE	35
> -#define CLK_SGDMA2P_AXI		35
> +#define CLK_SGDMA2P_AXI		36
>  #define CLK_DMA2PNOC_AXI	37
> -#define CLK_SGDMA2P_AHB		37
> +#define CLK_SGDMA2P_AHB		38
>  #define CLK_DLA_BUS		39
>  #define CLK_DLA_AXI		40
>  #define CLK_DLANOC_AXI		41
> -- 
> 2.25.1
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

