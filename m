Delivery-date: Thu, 09 Mar 2023 14:03:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paFvh-00ErRi-R6
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 14:03:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paFvh-0002V2-EC
	for lore@pengutronix.de; Thu, 09 Mar 2023 14:03:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EqLgHGmbbMrVeesWrtWGnoSZ1kooaD6CUzPgMJTfE14=; b=cixhEcdfQF8qKFfkkzNu5c3s45
	VqeK8MABVTGcndZToM+unLq2vWC4/1kBcrsTVK4iMrloL4yQ0TmZ2nHykGzXcJPYBvGAUXsZ28VnU
	qyHtLh+MNHV9vc0e8F8qB0H4zX9ZF35Lp1XC3N8x7ThWNFvvVLEi8t6z6O81K1WL11b9U23IHUjOg
	LMS3yg9M+SS5fBuXyuCPGv+uDfaHaKWAzDWKQIA6tinYVbfbQrlPoJM5LYjvrszitN8F9KN5E3ZsY
	4m5jvQarH8pKvnnOzDJQwK9GsppxYRhMepjii7rmC/9jK3iHGOlF3/w0jvtm3z8LmBjEk/pEvMgR9
	xd19HsMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paFuS-009ysm-NF; Thu, 09 Mar 2023 13:02:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paFuN-009yrR-JB
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 13:02:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1paFuM-00021k-3u; Thu, 09 Mar 2023 14:02:10 +0100
Message-ID: <6968fd72-b0e4-dc92-9053-404086315a83@pengutronix.de>
Date: Thu, 9 Mar 2023 14:02:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230309115208.973893-1-s.hauer@pengutronix.de>
 <20230309115208.973893-4-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230309115208.973893-4-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_050211_666562_7C040AEF 
X-CRM114-Status: GOOD (  26.77  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 3/7] i2c: implement rescan
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 09.03.23 12:52, Sascha Hauer wrote:
> struct device::rescan is called by the core to let the subsystem rescan
> the controllers device node. Implement that for I2C. Ahmad recently
> implemented the struct device::detect hook for the very same purpose.
> The downside of that approach was that device_detect() had to be called
> manually and that either needs knowledge which device actually has
> updated device nodes, or all devices were detected, like unrelated USB
> or MMC/SD devices. The rescan hook doesn't need that manual detect call,
> so just drop the I2C detect implementation in favour for implementing
> rescan.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/i2c/i2c.c | 20 +++++---------------
>  1 file changed, 5 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index efcad29342..df89b8fb65 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -471,15 +471,7 @@ int of_i2c_register_devices_by_node(struct device_node *node)
>  	return 0;
>  }
>  
> -static int i2c_bus_detect(struct device *dev)
> -{
> -	struct i2c_adapter *adap = container_of(dev, struct i2c_adapter, dev);
> -
> -	of_i2c_register_devices(adap);
> -	return 0;
> -}
> -
> -static int i2c_hw_detect(struct device *dev)
> +static void i2c_hw_rescan(struct device *dev)
>  {
>  	struct i2c_adapter *adap;
>  
> @@ -489,8 +481,6 @@ static int i2c_hw_detect(struct device *dev)
>  		of_i2c_register_devices(adap);
>  		break;
>  	}
> -
> -	return 0;
>  }
>  
>  /**
> @@ -720,7 +710,6 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
>  	}
>  
>  	adapter->dev.id = adapter->nr;
> -	adapter->dev.detect = i2c_bus_detect;
>  	dev_set_name(&adapter->dev, "i2c");
>  
>  	ret = register_device(&adapter->dev);
> @@ -732,11 +721,12 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
>  	/* populate children from any i2c device tables */
>  	scan_boardinfo(adapter);
>  
> +	of_i2c_register_devices(adapter);

I think this would fail for a non-OF I2C contoller on a CONFIG_OFTREE=y system,
because the function doesn't guard against !CONFIG_OFTREE. Just move it into
the if clause below.

> +
>  	hw_dev = adapter->dev.parent;
>  	if (hw_dev && dev_of_node(hw_dev)) {
> -		if (!hw_dev->detect)
> -			hw_dev->detect = i2c_hw_detect;
> -		i2c_hw_detect(hw_dev);
> +		if (!hw_dev->rescan)
> +			hw_dev->rescan = i2c_hw_rescan;
>  	}
>  
>  	return 0;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



