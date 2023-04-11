Delivery-date: Tue, 11 Apr 2023 14:01:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmCgt-00HWC9-S0
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 14:01:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmCgt-0003UM-K1
	for lore@pengutronix.de; Tue, 11 Apr 2023 14:01:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iFuUBsbpEirNEuWKOjgT7F3ucQ27PDOHJflwkMSMuPQ=; b=TWrMHzuDaiJ0gcvjWAGWhj0ocP
	//XxBX1pZFWIhBwdcgiIGMZHb7V4MolxkVaLwZOBuOYJU2RgGeUtj76hOIlDpQxNxCy+r6/NPobO5
	7IEIxxd/xag+Oqr3APPLDF3uncKIRaXHu7CnQ/hyIVKp0ACZbV0cQREEcl8mF1M49IFwPiFiNq591
	DXKJVnYbnyBE5dSqJCaxi2F+wEqYH8nnSLv3UCd9+LzUWLInW2cacHMaI+6hq12/6UUh7EV/LPwsS
	NQnC5F8NFW/0nfklxU3wRkqg856LM7E3N9zPr3A80mr7PHSAJvs7wY7o4YKLejahcxZcgxNosU9f4
	7LYeNBQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmCfn-00HUbw-0e;
	Tue, 11 Apr 2023 12:00:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmCfj-00HUb4-2G
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 12:00:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmCfi-0002xV-EG; Tue, 11 Apr 2023 14:00:26 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmCfi-0005x0-0E; Tue, 11 Apr 2023 14:00:26 +0200
Date: Tue, 11 Apr 2023 14:00:25 +0200
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230411120025.GF19113@pengutronix.de>
References: <20230407184356.GA1648837@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230407184356.GA1648837@ravnborg.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_050027_742516_F5EEFC5D 
X-CRM114-Status: GOOD (  16.94  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLACK autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/2] ARM: sama5d4_wifx: fix build with moved mach files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 07, 2023 at 08:43:56PM +0200, Sam Ravnborg wrote:
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  arch/arm/boards/sama5d4_wifx/lowlevel.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/sama5d4_wifx/lowlevel.c b/arch/arm/boards/sama5d4_wifx/lowlevel.c
> index 0c3529e659..c47b14c55b 100644
> --- a/arch/arm/boards/sama5d4_wifx/lowlevel.c
> +++ b/arch/arm/boards/sama5d4_wifx/lowlevel.c
> @@ -2,8 +2,8 @@
>  // SPDX-FileCopyrightText: 2022 Ahmad Fatoum, Pengutronix
>  
>  #include <debug_ll.h>
> -#include <mach/barebox-arm.h>
> -#include <mach/ddramc.h>
> +#include <mach/at91/barebox-arm.h>
> +#include <mach/at91/ddramc.h>
>  
>  SAMA5D4_ENTRY_FUNCTION(start_sama5d4_wifx_l1, r4)
>  {
> -- 
> 2.34.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


