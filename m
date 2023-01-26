Delivery-date: Thu, 26 Jan 2023 09:19:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxUH-002Tmt-4j
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 09:19:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxUE-0004Nj-KA
	for lore@pengutronix.de; Thu, 26 Jan 2023 09:19:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q8O+StY8WcsRc5gSFX3vsf7qvPZ9++g+wcC3CWJ2TUk=; b=oxTjQ6Sqs4dB949gJlUs/8GGHB
	J579+huqY7IUabkli0eJ/kUPnud0JVfD/yNjfT0TtlokA8DBNvAO6IHzQAEhe9IvZhfp9uiCC6afJ
	akP2cd+bLENdUIQD/sXrmTyPWRX3Lv21NdqHlF+WyfDgoj/TI/L9nIwzUM/4L4lLxY6P47zNWSVVM
	L1k4auqBUoFgqolpJSfYYnIsK4iHG0lYKmXJHcOArkby98U5phQVtEkjiVVSHQ8L+XrKPAg5odfQY
	sT8/e1KWp/ferXN6ORdkPZKvpGYsr1HGRIM2wvluqmfmC4g0Y5t1ayFkznpU5a5x29kX4GfthUpOm
	1mLhf2+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxT2-009y8Q-0t; Thu, 26 Jan 2023 08:18:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxSx-009y7l-9S
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 08:18:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKxSv-0004Gd-WB; Thu, 26 Jan 2023 09:18:38 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKxSv-0004la-P2; Thu, 26 Jan 2023 09:18:37 +0100
Date: Thu, 26 Jan 2023 09:18:37 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230126081837.GK13319@pengutronix.de>
References: <20230125075323.1759934-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125075323.1759934-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_001839_350561_27891E0C 
X-CRM114-Status: GOOD (  25.59  )
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
Subject: Re: [PATCH] i2c: implement detect callback for virtual adapter
 device as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 08:53:23AM +0100, Ahmad Fatoum wrote:
> For MMCs, we already support detect on both the hardware device and the
> mmcX virtual device. Let's do the same for i2c, so users have the option
> to do `detect i2c0` instead of `detect 30a30000.i2c@30a30000.of`.
> 
> `detect -a` still works as expected, as the detect callback is a no-op
> if everything on the bus is already registered.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/i2c/i2c.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index 7e1cea49f3b6..4ecf7bb163e6 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -472,6 +472,14 @@ int of_i2c_register_devices_by_node(struct device_node *node)
>  }
>  
>  static int i2c_bus_detect(struct device *dev)
> +{
> +	struct i2c_adapter *adap = container_of(dev, struct i2c_adapter, dev);
> +
> +	of_i2c_register_devices(adap);
> +	return 0;
> +}
> +
> +static int i2c_hw_detect(struct device *dev)
>  {
>  	struct i2c_adapter *adap;
>  
> @@ -712,6 +720,7 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
>  	}
>  
>  	adapter->dev.id = adapter->nr;
> +	adapter->dev.detect = i2c_bus_detect;
>  	dev_set_name(&adapter->dev, "i2c");
>  
>  	ret = register_device(&adapter->dev);
> @@ -726,8 +735,8 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
>  	hw_dev = adapter->dev.parent;
>  	if (hw_dev && dev_of_node(hw_dev)) {
>  		if (!hw_dev->detect)
> -			hw_dev->detect = i2c_bus_detect;
> -		i2c_bus_detect(hw_dev);
> +			hw_dev->detect = i2c_hw_detect;
> +		i2c_hw_detect(hw_dev);
>  	}
>  
>  	return 0;
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


