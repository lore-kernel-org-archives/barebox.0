Delivery-date: Thu, 09 Mar 2023 14:05:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paFxT-00ErWw-Ff
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 14:05:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paFxT-00033B-9M
	for lore@pengutronix.de; Thu, 09 Mar 2023 14:05:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/fqYT7XK0ncPnSxYFBNJI+qwLhlKguCaoDD0zEoIhsg=; b=cHM3K3UpGRcMU6uhU59ni5VzHV
	yrS9uKmaJQQXVkOCswUKAGhh7WXmplYdw557MSVnAnJV+NDGC1r5oG3ksF3mGahSGMi5NQeLjrzNX
	tCBkJA8Lg9ojlxozizMbEG+H60kQHIFhqZ/M3z5xgskdnz4NHPLmgR8NX6iqitVLNZC8iUiAEc3bN
	+08ghmIpQ4YeeOBr2ml62wJQS56MQ71WaesjzoRWbIqkGTXQlfpD53ne1o5NwK4Rtv/tSRB/DAYSy
	gyfsPFvB5Xdf6lxgRiyX0gR1f03hUkyry0U8kv7tasNUunqfK7QahQiimNNY075MRRi8VWWuCPGkH
	vhkFpv7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paFwK-009zSi-6S; Thu, 09 Mar 2023 13:04:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paFw5-009zOI-4w
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 13:03:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1paFw3-0002dN-Re; Thu, 09 Mar 2023 14:03:55 +0100
Message-ID: <e7cc2c3b-20ac-1f73-7893-d0e9fb7a8cff@pengutronix.de>
Date: Thu, 9 Mar 2023 14:03:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230309115208.973893-1-s.hauer@pengutronix.de>
 <20230309115208.973893-7-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230309115208.973893-7-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_050357_233466_13B9C6D0 
X-CRM114-Status: GOOD (  27.37  )
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
Subject: Re: [PATCH v2 6/7] spi: implement rescan
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 09.03.23 12:52, Sascha Hauer wrote:
> Implement rescan to register and probe newly added devices via device
> tree overlays.
> 
> While this is easy to do at SPI core level this is not the whole truth.
> Many SPI controllers do not use their native chipselects for the SPI
> devices, but GPIOs instead. These currently won't be rescanned when new
> devices are added, so the chipselects for the new devices must be be
> present in the base device tree already. You have been warned.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/spi/spi.c | 23 +++++++++++++++++++++--
>  1 file changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index 3684647f6e..ee467d055b 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -29,6 +29,7 @@ struct boardinfo {
>  };
>  
>  static LIST_HEAD(board_list);
> +static LIST_HEAD(spi_controller_list);
>  
>  /**
>   * spi_new_device - instantiate one new SPI device
> @@ -120,6 +121,12 @@ static void spi_of_register_slaves(struct spi_controller *ctrl)
>  	for_each_available_child_of_node(node, n) {
>  		struct spi_board_info chip = {};
>  
> +		if (n->dev) {
> +			dev_dbg(ctrl->dev, "of_i2c: skipping already registered %s\n",
> +				dev_name(n->dev));

s/of_i2c/of_spi/

> +			continue;
> +		}
> +
>  		chip.name = xstrdup(n->name);
>  		chip.bus_num = ctrl->bus_num;
>  		/* Mode (clock phase/polarity/etc.) */
> @@ -142,6 +149,17 @@ static void spi_of_register_slaves(struct spi_controller *ctrl)
>  	}
>  }
>  
> +static void spi_controller_rescan(struct device *dev)
> +{
> +	struct spi_controller *ctrl;
> +
> +	list_for_each_entry(ctrl, &spi_controller_list, list) {
> +		if (ctrl->dev != dev)
> +			continue;
> +		spi_of_register_slaves(ctrl);
> +	}
> +}
> +
>  /**
>   * spi_register_board_info - register SPI devices for a given board
>   * @info: array of chip descriptors
> @@ -196,8 +214,6 @@ static void scan_boardinfo(struct spi_controller *ctrl)
>  	}
>  }
>  
> -static LIST_HEAD(spi_controller_list);
> -
>  static int spi_controller_check_ops(struct spi_controller *ctlr)
>  {
>  	/*
> @@ -274,6 +290,9 @@ int spi_register_controller(struct spi_controller *ctrl)
>  	scan_boardinfo(ctrl);
>  	status = 0;
>  
> +	if (!ctrl->dev->rescan)
> +		ctrl->dev->rescan = spi_controller_rescan;
> +
>  	return status;
>  }
>  EXPORT_SYMBOL(spi_register_controller);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



