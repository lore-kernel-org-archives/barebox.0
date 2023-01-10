Delivery-date: Tue, 10 Jan 2023 15:55:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFG1s-007qrq-Jc
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 15:55:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFG1q-0006re-Jy
	for lore@pengutronix.de; Tue, 10 Jan 2023 15:55:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0pOJoSsIYZtydb17diIQ0ejnJtSyAe7B6WlrzXHCMPo=; b=YCVPWZqJ1s157re441/amfqJ/5
	kDPL6ZZIyI5kGMDdrpNDEnFhVyoR0AiEwCe4y2iUAdQ5K2h6aHloROOh0Q1uO0gBKClNO/iwgE9Eg
	ZsoJYVsaDxbAUSghAlYi7hFa+4tDWHonlPtX2sPH4CTBQ9GRAG0WKh5VjlqP+GI69ZjW9iNbXxG4j
	CNhaAVGQg6tjVI/BMoRmzWq1DLrug7nfmYToTsabdHi34KSLR2Dly8Wsp2lylB62ZXic8GQ5ij+W1
	lfnXjd+faHbMdRM9mOolLe7dzTIOZ8PnkO5hhnQBm+N8xPzXWeR+BFwQ44jsSkvQ5fw+TKoKizegT
	YvxhTQ1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFG0Z-007PpQ-Hj; Tue, 10 Jan 2023 14:53:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFG0U-007PoC-Ri
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 14:53:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFG0S-0006cH-TX; Tue, 10 Jan 2023 15:53:40 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFG0S-0004ud-M2; Tue, 10 Jan 2023 15:53:40 +0100
Date: Tue, 10 Jan 2023 15:53:40 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230110145340.GM28911@pengutronix.de>
References: <20230109155836.2220277-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230109155836.2220277-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_065342_909692_32CB64B2 
X-CRM114-Status: GOOD (  19.24  )
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
Subject: Re: [PATCH 1/4] of: gpio: include <of.h> in <of_gpio.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 09, 2023 at 04:58:33PM +0100, Ahmad Fatoum wrote:
> This header can't be used without types and functions declared in of.h,
> so include that first.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/of_gpio.h | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/of_gpio.h b/include/of_gpio.h
> index 9076c81e5462..30ff204baf9e 100644
> --- a/include/of_gpio.h
> +++ b/include/of_gpio.h
> @@ -8,6 +8,8 @@
>  #ifndef __OF_GPIO_H
>  #define __OF_GPIO_H
>  
> +#include <of.h>
> +
>  /*
>   * This is Linux-specific flags. By default controllers' and Linux' mapping
>   * match, but GPIO controllers are free to translate their own flags to
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


