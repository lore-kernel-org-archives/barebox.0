Delivery-date: Mon, 20 Mar 2023 16:44:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHg9-0080Hk-N7
	for lore@lore.pengutronix.de; Mon, 20 Mar 2023 16:44:10 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHg9-0004Ed-L3
	for lore@pengutronix.de; Mon, 20 Mar 2023 16:44:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=da5vvcF1Rs0iiIroAhg7ezFinWWDrPnhkYFRxix+K9M=; b=BR33tmUoWF1S/5Pa+r4s7NAWP0
	9JVzUhibUYw/3ncSFiwAt9QKPZNPBb/8XckEqSoFJ7yrIEk30fIf355BBwtkvNKCHlC5j3WrgeFw8
	NGHEcHydiwUsJfz0OhhcoFlQXu3anaZuTsel4dz/qQFPNxTDs3qhWKZ91DYUPvCFPJE6us8Jsw7kw
	qodscmnXcJoCRWJZhpRauVwHSzBJDx7A+SgqH5p3udAGAvkoYrFo9MEWoV1H83X3WUstRS8UgGVpT
	wap/XNOw57Xg682ei4bKNcK2d9ziknMGDPaEyfckWUkf4T2J8wtSXQeLDyWplm/Q/xZZ8sn2IJtCG
	FTNlCBag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peHfG-009bgL-0j;
	Mon, 20 Mar 2023 15:43:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peHfD-009bfU-0C
	for barebox@lists.infradead.org;
	Mon, 20 Mar 2023 15:43:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1peHfB-00047V-4r; Mon, 20 Mar 2023 16:43:09 +0100
Message-ID: <6434964e-16c1-7b01-7244-f38767be4570@pengutronix.de>
Date: Mon, 20 Mar 2023 16:43:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230320152941.3155428-1-s.hauer@pengutronix.de>
 <20230320152941.3155428-8-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230320152941.3155428-8-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_084311_096154_B6752A2A 
X-CRM114-Status: GOOD (  22.82  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 07/18] driver: Add unregister_driver()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 20.03.23 16:29, Sascha Hauer wrote:
> Registering drivers is one thing, getting rid of them another. Add
> unregister_driver() which is used in the coming USB gadget update.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/base/driver.c | 16 ++++++++++++++++
>  include/driver.h      |  2 ++
>  2 files changed, 18 insertions(+)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index efbffcdddb..719920ec67 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -405,6 +405,22 @@ int register_driver(struct driver *drv)
>  }
>  EXPORT_SYMBOL(register_driver);
>  
> +void unregister_driver(struct driver *drv)
> +{
> +	struct device *dev;
> +
> +	list_del(&drv->list);
> +	list_del(&drv->bus_list);
> +
> +	bus_for_each_device(drv->bus, dev) {
> +		if (dev->driver == drv) {
> +			drv->bus->remove(dev);

I think drv->bus->remove may be NULL here and you need to guard against that.
While at it, could you switch commands/devunbind.c to use this new function?

Thanks,
Ahmad

> +			dev->driver = NULL;
> +			list_del(&dev->active);
> +		}
> +	}
> +}
> +
>  struct resource *dev_get_resource(struct device *dev, unsigned long type,
>  				  int num)
>  {
> diff --git a/include/driver.h b/include/driver.h
> index 2cf0190699..5605a3db24 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -137,6 +137,8 @@ struct driver {
>  /* Register devices and drivers.
>   */
>  int register_driver(struct driver *);
> +void unregister_driver(struct driver *drv);
> +
>  int register_device(struct device *);
>  
>  /* manualy probe a device

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



