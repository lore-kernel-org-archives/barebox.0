Delivery-date: Fri, 09 Dec 2022 08:47:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3Y6u-00FoGJ-KH
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 08:47:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3Y6u-0002Gb-4w
	for lore@pengutronix.de; Fri, 09 Dec 2022 08:47:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vgFhYgrbl+4TdO1P9VkbaPIcJ5/r1h7O+KEdv1CJgQM=; b=qmNOFePTr6qan5pl61N2n5Jr2B
	V9ZNqKgYzVA3NSQsAs58+8+TMugbKhZlwKTQXvnMqrla8zc1lQc156SdF0v8CMVpNHY2+OVSNcyvf
	nO2MZX00d535s7vfmF/BxnhsYlHMIuStSlE3x+MMZmzMBosZMC16Y1s/vQT081bHRDv+HDKhFq/ti
	uo1eXQ122nwM+u0WNbN86qjuuuAOodQMHvBmBaEWR+uc+1cQSIcR4398AdI+3aVVTz4O0d2cEOfUk
	AIjcneaM9yxc4GcnXTw55Q3fh9kGTqQyUjMCf6bgqo3Q8GQ5Wpvrc73XQLzIHO/oMljTVKIgLnok+
	37yf5X7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3Y5a-005Cer-04; Fri, 09 Dec 2022 07:46:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3Y5V-005CcG-3V
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 07:46:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p3Y5T-0002AX-Hf; Fri, 09 Dec 2022 08:46:27 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p3Y5T-0004HI-AC; Fri, 09 Dec 2022 08:46:27 +0100
Date: Fri, 9 Dec 2022 08:46:27 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221209074627.GI29728@pengutronix.de>
References: <20221209071644.3767682-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221209071644.3767682-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221208_234629_165806_12CFADDA 
X-CRM114-Status: GOOD (  20.50  )
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
Subject: Re: [PATCH] include: soc: switch to SPDX-License-Identifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Dec 09, 2022 at 08:16:44AM +0100, Ahmad Fatoum wrote:
> Two files in include/soc miss an SPDX-License-Identifier. Add them.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/soc/at91/atmel-sfr.h | 5 +----
>  include/soc/bcm283x/wdt.h    | 1 +
>  2 files changed, 2 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/soc/at91/atmel-sfr.h b/include/soc/at91/atmel-sfr.h
> index 482337af06b8..7418c5cab4a1 100644
> --- a/include/soc/at91/atmel-sfr.h
> +++ b/include/soc/at91/atmel-sfr.h
> @@ -1,13 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Atmel SFR (Special Function Registers) register offsets and bit definitions.
>   *
>   * Copyright (C) 2016 Atmel
>   *
>   * Author: Ludovic Desroches <ludovic.desroches@atmel.com>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
>   */
>  
>  #ifndef _LINUX_MFD_SYSCON_ATMEL_SFR_H
> diff --git a/include/soc/bcm283x/wdt.h b/include/soc/bcm283x/wdt.h
> index ce97b1eb5d10..2002647b9c39 100644
> --- a/include/soc/bcm283x/wdt.h
> +++ b/include/soc/bcm283x/wdt.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2017 Pengutronix, Lucas Stach <l.stach@pengutronix.de>
>   *
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


