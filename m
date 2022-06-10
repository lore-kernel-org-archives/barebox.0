Delivery-date: Fri, 10 Jun 2022 11:56:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzbN6-009s8o-Uu
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 11:56:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzbN4-0007Cc-1R
	for lore@pengutronix.de; Fri, 10 Jun 2022 11:56:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2EdEpOCE0TM+il8W/Wtu1jy8OVTB/3oQaTxt0fJ4NjA=; b=rIzQbbuLkNkGm6TtzzU5oMG4Yk
	14xN3t3yWs+phEDrNXsrHgMCuEsYhDaxpQOErby5VxUy0VH6fbxUMSepfAVtK4cVwZ7cEcIcXU+VP
	Nxmk68xZmfHNgyHAvVy4KY6ehO6u9odpuTjk/dZLY0WAWR4JqOf+oIK0yjhRshjZjdpCvPQwG+AtU
	fokvPqUGDUZiO/qHoZhdq8LG4v82qGrgybuUv57LPpp1oKfSec4fAfzJhe4cwKGzAbdJJVcsszJjY
	s6TCVbNdQTK3GiBjeNNe5In5wZpl0yxEbhf+xncDzM5Sv7nXW5KU5Jr4jBR7hYrRnRTrYNk9yVZdl
	jrARG+OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzbLT-007MoC-Jg; Fri, 10 Jun 2022 09:54:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzb83-007FZS-KL
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 09:40:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzb81-0004Gp-Ca; Fri, 10 Jun 2022 11:40:29 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzb81-00055i-38; Fri, 10 Jun 2022 11:40:29 +0200
Date: Fri, 10 Jun 2022 11:40:29 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220610094029.GM1615@pengutronix.de>
References: <20220610085633.21606-1-eagle.alexander923@gmail.com>
 <20220610085633.21606-2-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220610085633.21606-2-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_024031_752118_74B58B71 
X-CRM114-Status: GOOD (  25.05  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [RFC 2/2] clocksource: arm_global_timer: Convert driver to use
 clocksource context field
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 10, 2022 at 11:56:32AM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/clocksource/arm_global_timer.c | 27 +++++++++++++++-----------
>  1 file changed, 16 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/clocksource/arm_global_timer.c b/drivers/clocksource/arm_global_timer.c
> index 6e2fae9ba4..3e9b90059a 100644
> --- a/drivers/clocksource/arm_global_timer.c
> +++ b/drivers/clocksource/arm_global_timer.c
> @@ -27,8 +27,6 @@
>  #define GT_CONTROL	0x08
>  #define GT_CONTROL_TIMER_ENABLE		BIT(0)  /* this bit is NOT banked */
>  
> -static void __iomem *gt_base;
> -
>  /*
>   * To get the value from the Global Timer Counter register proceed as follows:
>   * 1. Read the upper 32-bit timer counter register
> @@ -39,6 +37,7 @@ static void __iomem *gt_base;
>   */
>  static uint64_t arm_global_clocksource_read(void *ctx)
>  {
> +	void __iomem *gt_base = ctx;
>  	uint64_t counter;
>  	uint32_t lower;
>  	uint32_t upper, old_upper;
> @@ -56,11 +55,25 @@ static uint64_t arm_global_clocksource_read(void *ctx)
>  	return counter;
>  }
>  
> +static int arm_global_timer_init(struct clocksource *cs)
> +{
> +	void __iomem *gt_base = cs->ctx;
> +
> +	writel(0, gt_base + GT_CONTROL);
> +	writel(0, gt_base + GT_COUNTER0);
> +	writel(0, gt_base + GT_COUNTER1);
> +	/* enables timer on all the cores */
> +	writel(GT_CONTROL_TIMER_ENABLE, gt_base + GT_CONTROL);
> +
> +	return 0;
> +}
> +
>  static struct clocksource cs = {
>  	.read	= arm_global_clocksource_read,
>  	.mask	= CLOCKSOURCE_MASK(64),
>  	.shift	= 0,
>  	.priority = 70,
> +	.init	= arm_global_timer_init,
>  };
>  
>  static int arm_global_timer_probe(struct device_d *dev)
> @@ -86,17 +99,9 @@ static int arm_global_timer_probe(struct device_d *dev)
>  		return ret;
>  	}
>  
> -	gt_base = IOMEM(iores->start);
> -
>  	cs.mult = clocksource_hz2mult(clk_get_rate(clk), cs.shift);
>  
> -	writel(0, gt_base + GT_CONTROL);
> -	writel(0, gt_base + GT_COUNTER0);
> -	writel(0, gt_base + GT_COUNTER1);
> -	/* enables timer on all the cores */
> -	writel(GT_CONTROL_TIMER_ENABLE, gt_base + GT_CONTROL);
> -
> -	return init_clock(&cs, NULL);
> +	return init_clock(&cs, IOMEM(iores->start));

As long as the statically allocated &cs is used it's not really useful
to store the context pointer in there.

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

