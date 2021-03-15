Delivery-date: Mon, 15 Mar 2021 09:53:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiyh-0000dl-5T
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 09:53:31 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiyg-0005ZA-Dq
	for lore@pengutronix.de; Mon, 15 Mar 2021 09:53:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hpIaEZE7omp0LkXx8YQPHJ1CLsaG1CmwipGzPZveHco=; b=FEJ25EJKCGnhc/ih5Ta6/krOI
	4oGA1OhPSCkCoFYRC1lF1W0kINRA9qaPEojt5sNZIZZFzUqEYm9o4uVyPFea0+w2LQwiQxnKq6yjd
	v92TS4rGcs0vgIzS+9Um49vHxdlRS6xQoZEqwgllH4F7//U2Phe9lyMGE00L4vSD/HzPea+/5PwOm
	vB4FhUUlzuxA0uVsH2ult67t/IF14kd/Y1vzVORQqK02XmpAdXM5zREe8ohP0rfq0eIcLYRY85Grv
	AzT8btdWe2H2XxIyEUpUa0R26D0d5w2heXpJb/MlpuMH87sTcvcNrdEpsbhkp5lDnX8oo6fsgbha0
	Dwn20bkqw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLixS-00FIk2-3f; Mon, 15 Mar 2021 08:52:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLix3-00FIhB-3Z
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 08:51:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLix2-0005RO-DW; Mon, 15 Mar 2021 09:51:48 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLix1-0007Sr-N4; Mon, 15 Mar 2021 09:51:47 +0100
Date: Mon, 15 Mar 2021 09:51:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20210315085147.GN23724@pengutronix.de>
References: <20210312162432.9189-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210312162432.9189-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:51:37 up 25 days, 12:15, 80 users,  load average: 0.04, 0.08, 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_085152_881004_2EF3E728 
X-CRM114-Status: GOOD (  24.06  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] usb: dwc2: Make dwc2_wait_bit_set wait all bits in
 mask
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 12, 2021 at 05:24:28PM +0100, Jules Maselbas wrote:
> The dwc2_wait_bit_set() wasn't waiting for all bits in the mask to be
> set but was waiting for only one bit set a mask.
> This is not the expected behavior as stated in the function's comment.
> 
> The function dwc2_wait_bit_set() is always called with a mask of only
> one bit.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/usb/dwc2/core.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
> index 780efb262..fa9d6ae95 100644
> --- a/drivers/usb/dwc2/core.h
> +++ b/drivers/usb/dwc2/core.h
> @@ -532,7 +532,7 @@ static inline int dwc2_wait_bit_set(struct dwc2 *dwc2, u32 offset, u32 mask,
>  			    u32 timeout)
>  {
>  	return wait_on_timeout(timeout * USECOND,
> -			dwc2_readl(dwc2, offset) & mask);
> +			(dwc2_readl(dwc2, offset) & mask) == mask);
>  }
>  
>  /**
> -- 
> 2.17.1
> 
> 
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

