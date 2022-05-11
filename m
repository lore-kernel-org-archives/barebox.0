Delivery-date: Wed, 11 May 2022 08:32:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nofu2-009JIG-Fb
	for lore@lore.pengutronix.de; Wed, 11 May 2022 08:32:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nofu1-0004J7-0p
	for lore@pengutronix.de; Wed, 11 May 2022 08:32:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=w/+7tKj9BdeiIPo6l4G8HgW18577801aXGBqfapLDXY=; b=hKCuYpYyoPu7iGDjpUmtttBpli
	H4txTRqnawbPLa+pyik3ZfuqSJzXxKRTB+iX98mNd14WtF3ebR5Z9N3iJ8mP5hgAGTZLn+M7p0iw7
	wf16z73vYJv5AMXu8DO0V//VSurrYkWJwtEvxB429K5q/6tEVrwuBq1se+ZVrmhwlzn/14hUCsPk+
	jpP8JGGus08MVHWy2as/Dr9sfx0nF8TlWArnawXC0DtBQD8ceLdQ5V1EoGnvqgIfj9ZEgdQnjCw+7
	XMnFWOgsLMVzFWSfkpHvBom/1uOUv2TsseQqu6NN+fI9bn0Sit/QkTLEdJaACutn96mBR9JeNxsa7
	Xz24Iydg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nofsi-005RRg-BX; Wed, 11 May 2022 06:31:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nofsd-005RQM-Gq
 for barebox@lists.infradead.org; Wed, 11 May 2022 06:31:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nofsc-00041u-5b; Wed, 11 May 2022 08:31:26 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nofsb-0006jx-T4; Wed, 11 May 2022 08:31:25 +0200
Date: Wed, 11 May 2022 08:31:25 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220511063125.GH4012@pengutronix.de>
References: <20220510121447.216507-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220510121447.216507-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:31:17 up 41 days, 19:00, 67 users,  load average: 0.10, 0.13, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_233127_598930_824A1CF4 
X-CRM114-Status: GOOD (  24.75  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 1/2] ARM: boards: protonic-stm32mp1: enable deep-probe
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 10, 2022 at 02:14:46PM +0200, Oleksij Rempel wrote:
> We are on early development stage, so enable deep-probe support as
> early as possible to detect and fix possible regressions.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/protonic-stm32mp1/board.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/protonic-stm32mp1/board.c b/arch/arm/boards/protonic-stm32mp1/board.c
> index 84a3d8eabc..174454ed27 100644
> --- a/arch/arm/boards/protonic-stm32mp1/board.c
> +++ b/arch/arm/boards/protonic-stm32mp1/board.c
> @@ -7,6 +7,7 @@
>  #include <init.h>
>  #include <mach/bbu.h>
>  #include <of_device.h>
> +#include <deep-probe.h>
>  
>  /* board specific flags */
>  #define PRT_STM32_BOOTSRC_SD		BIT(2)
> @@ -118,6 +119,7 @@ static const struct of_device_id prt_stm32_of_match[] = {
>  	{ .compatible = "prt,prtt1s", .data = &prt_stm32_prtt1a },
>  	{ /* sentinel */ },
>  };
> +BAREBOX_DEEP_PROBE_ENABLE(prt_stm32_of_match);
>  
>  static struct driver_d prt_stm32_board_driver = {
>  	.name = "board-protonic-stm32",
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

