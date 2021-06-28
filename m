Delivery-date: Mon, 28 Jun 2021 11:30:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxnbF-0005Dk-O5
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 11:30:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxnbE-0006Um-SL
	for lore@pengutronix.de; Mon, 28 Jun 2021 11:30:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ywqA/WPccFPS5qi+f0CBctZMSudksDLNI47CaKSMIg8=; b=tP5vUngJpb95eoXuOAi0fGycKg
	t37v+zBdUdUzSc+rhkmBl66cOWz+8I+IgwrxPVMu0qNM24aAqmpGJ3oDfYpOfSjLo4UYPbEj0aZmA
	2RTptJadQ0PNvEEzpYC/AsCo5w6FLBGYBqv1n89oNQ5va8tYJRVU/SNC7fXtu43NGoDkmKn5eOEcz
	BW7X16XaQMHK4/ecjkTiFIFmNO/N7kFw2wWh3gG/qSSBT7TguR3QEdxbS8T0eERw9L9j4p2y0ZuMz
	E2sDkjeXC0Efx7frGDMhiEa37hxso1bZKcFWm5utJJHHIKm412AejJAGGOy9F/wJ7HbZCPLwRVv/K
	VtC5IF/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxnZg-007U1v-Fd; Mon, 28 Jun 2021 09:29:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxnZb-007U1W-6v
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 09:29:00 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lxnZX-0006M0-15; Mon, 28 Jun 2021 11:28:55 +0200
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>, =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?=
 <ukl@pengutronix.de>
References: <20210628064036.25991-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <6233d85a-38ba-6a42-bcc3-b44dba2bf1e7@pengutronix.de>
Date: Mon, 28 Jun 2021 11:28:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210628064036.25991-1-a.fatoum@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_022859_306478_53A7940C 
X-CRM114-Status: GOOD (  16.06  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] common: machine_id: support
 /chosen/barebox,machine-id-path override
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 28.06.21 08:40, Ahmad Fatoum wrote:
> diff --git a/include/of.h b/include/of.h
> index d82790c0523e..677f48d0aba1 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -290,6 +290,7 @@ int of_fixup_partitions(struct device_node *np, struct cdev *cdev);
>  int of_partitions_register_fixup(struct cdev *cdev);
>  struct device_node *of_get_stdoutpath(unsigned int *);
>  int of_device_is_stdout_path(struct device_d *dev, unsigned int *baudrate);

These were added here:
https://lore.pengutronix.de/barebox/20210628051934.9604-1-a.fatoum@pengutronix.de/T/#t

Those two patches are required for this series to apply cleanly.

> +struct device_node *of_get_machineidpath(void);
>  const char *of_get_model(void);
>  void *of_flatten_dtb(struct device_node *node);
>  int of_add_memory(struct device_node *node, bool dump);
> @@ -336,6 +337,11 @@ static inline int of_device_is_stdout_path(struct device_d *dev, unsigned int *b
>  	return 0;
>  }
>  
> +static inline struct device_node *of_get_machineidpath(void)
> +{
> +	return NULL;
> +}
> +
>  static inline const char *of_get_model(void)
>  {
>  	return NULL;
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

