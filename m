Delivery-date: Fri, 20 Jan 2023 08:39:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pIm08-00HKsE-SE
	for lore@lore.pengutronix.de; Fri, 20 Jan 2023 08:39:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pIm06-000429-Q3
	for lore@pengutronix.de; Fri, 20 Jan 2023 08:39:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=35T2XbzR3VCfc7m1P+TWoOAnp3Jt+ridqpcYONdQG7I=; b=zhzxqklWIIM08S/Uzc+93Fj0wu
	FLfQrQ9ubC9xuQEPAA/wukooIpvwX8t9+dsrXvrDwF8vtpzLKaeMNaGtrXIdEPBkh9U2thugCiDk9
	7Bq37x1Cg+kWM9j8r9XoH/h4CY41/ypTvEW3IM5G0Myr7WTDCaN09sBsF1LJ0Hd2B9SUZKDZZlFR1
	8p4zOw/Z5AUZSDDft9br2zsA8V2a42VEieZdpy/8moSRYV2L9PzgQhlsP9OjBZ0ts88kpzfsOcjEi
	mHP9FbPQGe0JXOvUZ2wnOH9KvqXltr0a21QakEWJZ7r2YvtsfC2R2rTRoKFrC4/2iJU2ZIcxB+0jY
	ateBF1EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIlyw-008q1D-V6; Fri, 20 Jan 2023 07:38:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIlyr-008pzM-RL
	for barebox@lists.infradead.org; Fri, 20 Jan 2023 07:38:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pIlyq-0003tj-Jh; Fri, 20 Jan 2023 08:38:32 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pIlyq-00072H-Cl; Fri, 20 Jan 2023 08:38:32 +0100
Date: Fri, 20 Jan 2023 08:38:32 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230120073832.GJ24755@pengutronix.de>
References: <20230117094934.3770899-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230117094934.3770899-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_233833_909265_02F32F81 
X-CRM114-Status: GOOD (  21.15  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: eth: skip opening disabled interfaces when going
 interactive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 17, 2023 at 10:49:34AM +0100, Ahmad Fatoum wrote:
> Ethernet device global mode (ethX.mode) may be set to disabled when
> ports should not be used. This setting is already respect in ifup, so do
> likewise for eth_open_all(), which is called when going interactive.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  net/eth.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/net/eth.c b/net/eth.c
> index 863d0a046657..6fb64afea024 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -535,8 +535,11 @@ void eth_open_all(void)
>  {
>  	struct eth_device *edev;
>  
> -	list_for_each_entry(edev, &netdev_list, list)
> +	list_for_each_entry(edev, &netdev_list, list) {
> +		if (edev->global_mode == ETH_MODE_DISABLED)
> +			continue;
>  		eth_open(edev);
> +	}
>  }
>  
>  static int of_populate_ethaddr(void)
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


