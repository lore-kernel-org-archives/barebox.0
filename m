Delivery-date: Thu, 23 Nov 2023 08:27:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r647U-005UQB-0u
	for lore@lore.pengutronix.de;
	Thu, 23 Nov 2023 08:27:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r647U-0007Du-BX
	for lore@pengutronix.de; Thu, 23 Nov 2023 08:27:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jd+aXAXvmY5ZPVfIIeVDvfkw5gkvBX7gIu/moOULxRo=; b=3NIIZ3ChWOGUiOZjahVy73C9sD
	O3cOh8+cgV+pbVWvHzwOqR1b+jYGHmDC3FukHNQd6wKXxI1p9tpqb76MH8CswoIjG/ZT1TeWs/5I0
	kng7s3fD67WuaHnxBmdazZvKwA4j0WU8IOidQzOaQsrrGLqwr5cPBPmqteygCipHXixLxNxBXJVBu
	QSWHM8rY0v1IC+Y7UICWvrJeWNqDTm458Zsy4oXkNDWUjHP/CMN9OcTtx8hBl2SwYMjstqraSjMjv
	zSNFfG2LMmDzrIC2HJ4o1H2/cVvwx3SixpEwfaaDCK/XpPxhkE//e40yQ3Eun6i4rXPv0D+52Gl80
	ldukOY9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r646L-00423B-3B;
	Thu, 23 Nov 2023 07:26:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r646J-00422Z-1C
	for barebox@lists.infradead.org;
	Thu, 23 Nov 2023 07:26:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r646I-0006yY-2C; Thu, 23 Nov 2023 08:26:14 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r646H-00AzPy-MG; Thu, 23 Nov 2023 08:26:13 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r646H-003QER-K1; Thu, 23 Nov 2023 08:26:13 +0100
Date: Thu, 23 Nov 2023 08:26:13 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231123072613.GH3359458@pengutronix.de>
References: <20231122181319.706228-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231122181319.706228-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_232615_413549_6BBF5FD4 
X-CRM114-Status: GOOD (  20.60  )
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
Subject: Re: [PATCH] ARM: stm32mp: stm32mp15x-ev1: enable deep probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 22, 2023 at 07:13:19PM +0100, Ahmad Fatoum wrote:
> The board boots fine with deep probe enabled, so enable it to eliminate
> probe deferrals.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/stm32mp15x-ev1/board.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/stm32mp15x-ev1/board.c b/arch/arm/boards/stm32mp15x-ev1/board.c
> index 51c3bb21e992..fd58e2817b0b 100644
> --- a/arch/arm/boards/stm32mp15x-ev1/board.c
> +++ b/arch/arm/boards/stm32mp15x-ev1/board.c
> @@ -2,6 +2,7 @@
>  
>  #include <bootsource.h>
>  #include <common.h>
> +#include <deep-probe.h>
>  #include <init.h>
>  #include <mach/stm32mp/bbu.h>
>  
> @@ -30,7 +31,7 @@ static const struct of_device_id ed1_of_match[] = {
>  	{ .compatible = "st,stm32mp157c-ed1" },
>  	{ /* sentinel */ },
>  };
> -MODULE_DEVICE_TABLE(of, ed1_of_match);
> +BAREBOX_DEEP_PROBE_ENABLE(ed1_of_match);
>  
>  static struct driver ed1_board_driver = {
>  	.name = "board-stm32mp15x-ed1",
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


