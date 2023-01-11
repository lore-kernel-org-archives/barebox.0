Delivery-date: Wed, 11 Jan 2023 10:15:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFXCP-008h8y-Na
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 10:15:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFXCL-0003Su-Ii
	for lore@pengutronix.de; Wed, 11 Jan 2023 10:15:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7/rzk1AVOSu1XV6Hrd9dXHbIchTeYAg/Iaaal/o+vd8=; b=voditoAswkdVpE4ZZC/vwPEQ1X
	VaT+/oIZ1xYNLLX3rJZOR7mCTs9IFYMB+4WHs77DLNGl+NlKEPFw1i64FOu8Ra8choAhdUtNaiL4z
	8kRPqRB+ufwpxLOVrmahY2oPU4iKfgD3u1UjM5cxiXtA4jq2AFgrl7PU8g5qzY6cNfuRjKPwXEzSI
	w011kjvUnRECn8gbW/srOQLnnruO6uCvJ5P/ZIpWWTpB7XrJvV7himY7YaDX6NGc1su/WN/g6Rp30
	h5O4FWuLScsRl/gOGXslyKFcawNa5ZKA7E9JDHvXhKLZwIN6xFurAe6c9dAn3R9/WPopv7tdnBcYh
	5kDxBC1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXB8-00AV0X-Ii; Wed, 11 Jan 2023 09:13:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXB3-00AUzy-CP
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 09:13:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFXB2-0003FP-1L; Wed, 11 Jan 2023 10:13:44 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFXB1-0003Jm-Pt; Wed, 11 Jan 2023 10:13:43 +0100
Date: Wed, 11 Jan 2023 10:13:43 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230111091343.GL24755@pengutronix.de>
References: <20230110172720.35331-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230110172720.35331-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_011345_441982_C67B077D 
X-CRM114-Status: GOOD (  19.41  )
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
Subject: Re: [PATCH] net: e1000: don't use nanosecond constants in
 readl_poll_timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 10, 2023 at 06:27:20PM +0100, Ahmad Fatoum wrote:
> The MSECOND/USECOND constants are in nanoseconds, while
> readl_poll_timeout accepts microseconds. No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/e1000/main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
> index 1f84cf2949fd..e00bc4841716 100644
> --- a/drivers/net/e1000/main.c
> +++ b/drivers/net/e1000/main.c
> @@ -3476,7 +3476,7 @@ static int e1000_transmit(struct eth_device *edev, void *txpacket, int length)
>  
>  	ret = readl_poll_timeout(&txp->upper.data,
>  				 stat, stat & E1000_TXD_STAT_DD,
> -				 MSECOND / USECOND);
> +				 USEC_PER_MSEC);
>  	if (ret)
>  		dev_dbg(hw->dev, "e1000: tx timeout\n");
>  
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


