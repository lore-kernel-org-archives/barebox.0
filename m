Delivery-date: Thu, 01 Dec 2022 10:34:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0fxK-007FgC-JD
	for lore@lore.pengutronix.de; Thu, 01 Dec 2022 10:34:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0fxK-0007ZG-1i
	for lore@pengutronix.de; Thu, 01 Dec 2022 10:34:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KRurv5Z5X6SHyM13rOsN6wQhRDdDnd45zMBSmAsOIcw=; b=UvjlnXDi6zOptrlUcKnPqEHE/y
	AXD8qMFFlntMEA3f5j6ow7QtcrMO5cyYUGEjXIBNxHbLKuBVFkqX3whi5ZFcuqqkHbfLOmtHhYkhH
	Ea/ws0l43gCidA8l/Lrvy8vGbEFKw+HdRr2GlfQh6ddQiE5gtWuaKD/AOsgIrO/aaeZ41dFSM2Wos
	m+lhNBFsGe9cPJIkuHQqv9C9jlr98fxIQ5lXzPch/1/qo4AMi+ino1O3QzVjja1Q17o2ef1sPZx1O
	zG2c4WpyobzxOamoLnP9VgSx6QcjlaMqJeYafG3uQiaQnvTZD7iA6fvDS0rsKQoFrGiK4KuHml3P1
	YSSM40LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0fvd-006Ny4-Gv; Thu, 01 Dec 2022 09:32:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0fvN-006NpR-F3
	for barebox@lists.infradead.org; Thu, 01 Dec 2022 09:32:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p0fvG-0007LO-MH; Thu, 01 Dec 2022 10:32:02 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p0fvG-0004lR-Em; Thu, 01 Dec 2022 10:32:02 +0100
Date: Thu, 1 Dec 2022 10:32:02 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221201093202.GI29728@pengutronix.de>
References: <20221130093603.3700906-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221130093603.3700906-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_013209_532534_057AD3B7 
X-CRM114-Status: GOOD (  20.83  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: stm32mp: lxa-mc1: enable deep probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Nov 30, 2022 at 10:36:03AM +0100, Ahmad Fatoum wrote:
> After changes to honour vin-supply if available, startup on MC-1
> now throws a warning:
> 
>   WARNING: regulator-fixed regulator_3v3.of: Failed to get 'vin'
>   regulator (ignored).
> 
> Resolve this by enabling deep probe.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/lxa-mc1/board.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/lxa-mc1/board.c b/arch/arm/boards/lxa-mc1/board.c
> index 9126973dcbdc..f8a7a6bd1f72 100644
> --- a/arch/arm/boards/lxa-mc1/board.c
> +++ b/arch/arm/boards/lxa-mc1/board.c
> @@ -5,6 +5,7 @@
>  #include <asm/memory.h>
>  #include <mach/bbu.h>
>  #include <bootsource.h>
> +#include <deep-probe.h>
>  #include <of.h>
>  
>  static int of_fixup_regulator_supply_disable(struct device_node *root, void *path)
> @@ -58,6 +59,7 @@ static const struct of_device_id mc1_of_match[] = {
>  	{ .compatible = "lxa,stm32mp157c-mc1" },
>  	{ /* sentinel */ },
>  };
> +BAREBOX_DEEP_PROBE_ENABLE(mc1_of_match);
>  
>  static struct driver_d mc1_board_driver = {
>  	.name = "board-lxa-mc1",
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


