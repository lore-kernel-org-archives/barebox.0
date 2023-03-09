Delivery-date: Thu, 09 Mar 2023 12:57:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paEtf-00Eo0D-8J
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 12:57:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paEte-00082G-M1
	for lore@pengutronix.de; Thu, 09 Mar 2023 12:57:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u7Y2yxSowgLFuG0bjl7dbI4VHrzuCtlv3g3r5kvp+WA=; b=U8kLYlDBOjE7PUXBcGE0QNONWI
	KgDXsBVvPcp5REtLO14Nxjp1gU08xVBqML3UyVRnosA7GGj62Cm6wQ5rafqDEQMC5Sp5aHh1W/JJ0
	ALmMUU6GI8za9RLtVXe6t9e+HwklPhivhluIz752dnH6NcXvqwkG6OQ1YYcoabWu2JigkSKqpkXVg
	au/3LmqEhJNT63jWhA7mF4ivQ8DOtC7bQR+ACObA1E8X1V67yBUTf/XI5uCNxiKcnov1wYblaEWgs
	RRrdUoBqMAJfG2J6blnLaKQzMPcA/ruDDtlrZHFTse+Ey20zeEl65UEjiXjFFlxPhMJHymcpsG2Gn
	8laoHPJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paEsO-009hnM-Dx; Thu, 09 Mar 2023 11:56:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paEZ5-009ZHR-En
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:36:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1paEZ3-0004WH-UY; Thu, 09 Mar 2023 12:36:06 +0100
Message-ID: <1ca140c8-7454-a319-4c4d-cebdf5a7b3d7@pengutronix.de>
Date: Thu, 9 Mar 2023 12:36:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230308140545.3366052-1-s.hauer@pengutronix.de>
 <20230308140545.3366052-4-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230308140545.3366052-4-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_033607_558551_9EB84828 
X-CRM114-Status: GOOD (  23.75  )
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
Subject: Re: [PATCH 3/7] i2c: implement rescan
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 08.03.23 15:05, Sascha Hauer wrote:
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
>  drivers/i2c/i2c.c | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index efcad29342..aac4488b5c 100644
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
> +static int i2c_hw_rescan(struct device *dev)
>  {
>  	struct i2c_adapter *adap;
>  
> @@ -720,7 +712,6 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
>  	}
>  
>  	adapter->dev.id = adapter->nr;
> -	adapter->dev.detect = i2c_bus_detect;
>  	dev_set_name(&adapter->dev, "i2c");
>  
>  	ret = register_device(&adapter->dev);
> @@ -734,9 +725,8 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
>  
>  	hw_dev = adapter->dev.parent;
>  	if (hw_dev && dev_of_node(hw_dev)) {
> -		if (!hw_dev->detect)
> -			hw_dev->detect = i2c_hw_detect;
> -		i2c_hw_detect(hw_dev);

This breaks normal probe of child devices. You can stick a
of_i2c_register_devices(adapter); here instead.

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



