Delivery-date: Wed, 26 Jul 2023 13:57:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOd8a-00AoOb-Io
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 13:57:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOd8X-0007En-P5
	for lore@pengutronix.de; Wed, 26 Jul 2023 13:57:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eSdSreWpOuVIFdSPYfi0IRM7Fl/TXA2VwtezdTnlRo4=; b=oBA5IkebXZits821wR/FwTny3s
	Y1WhrsrCJ2NHEps4CmR8cQ+ATXSNtKbXlO1ca80euHCEfg/JThEygBOeig1ak6BsGbHIoVR9jP966
	O4zkuK/bI6qLEgGBscp4skJk8xPubvqRUujPuGIvn5RMCgPws9rtkc2F5hn/VOQLCBWSa2yQ9Cdvk
	kqaag6ShoL1RzHgZsI+5TKOu01lJdoc7I7aN4/0u69IAPm42i+h42P2CH4SZb3NmtXlByvgsKF09g
	UmGt2JhnuPfgoiPx1Z0J0TpYIwPolDid8cIwoDIl6VoAdBYz3TYbX/NbhsML0obamUUOydcpR/xki
	bvrsWe6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOd7S-00AG7G-2c;
	Wed, 26 Jul 2023 11:55:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOd7O-00AG2p-0Z
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 11:55:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOd7K-00070T-Jw; Wed, 26 Jul 2023 13:55:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOd7K-0003gy-4t; Wed, 26 Jul 2023 13:55:46 +0200
Date: Wed, 26 Jul 2023 13:55:46 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230726115546.GN18491@pengutronix.de>
References: <20230714051510.2304-1-eagle.alexander923@gmail.com>
 <20230714051510.2304-2-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230714051510.2304-2-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_045550_228112_24B96FAA 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] i2c: Added feature to get bus number from alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Alexander,

On Fri, Jul 14, 2023 at 08:15:08AM +0300, Alexander Shiyan wrote:
> For the correct assignment of the I2C bus number, let's use an alias
> from the devicetree.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/i2c/i2c.c | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index 300365bd1f..df3b968a4b 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -701,17 +701,21 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
>  	int ret;
>  
>  	if (adapter->nr < 0) {
> -		int nr;
> +		if (!adapter->dev.of_node) {
> +			int nr = adapter->dev.id;

nr is initialized but the initialization value is never used.

>  
> -		for (nr = 0;; nr++)
> -			if (!i2c_get_adapter(nr))
> -				break;
> -		adapter->nr = nr;
> -	} else {
> -		if (i2c_get_adapter(adapter->nr))
> -			return -EBUSY;
> +			for (nr = 0;; nr++)
> +				if (!i2c_get_adapter(nr))
> +					break;
> +			adapter->nr = nr;
> +		} else
> +			adapter->nr =
> +				of_alias_get_id(adapter->dev.of_node, "i2c");

of_alias_get_id() can return a negative error code when no alias exists.
You should catch this and either error out or provide a fallback.

Sascha

>  
> +	if (i2c_get_adapter(adapter->nr))
> +		return -EBUSY;
> +
>  	adapter->dev.id = adapter->nr;
>  	dev_set_name(&adapter->dev, "i2c");
>  
> -- 
> 2.38.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


