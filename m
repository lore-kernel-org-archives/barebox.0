Delivery-date: Mon, 12 Sep 2022 11:06:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfOf-0023GV-LN
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 11:06:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfOd-000199-V7
	for lore@pengutronix.de; Mon, 12 Sep 2022 11:06:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DTG2/LepiEZNSr7Wt/CIynvF1jddW+0cG8D8GGtBxus=; b=OO7huyHEVrTPCItX7z/aftWmJy
	UeDiYi6dxeOgnrLpC0LA5YMAr2xEONu5pGtS8GkyzKpbZpDQQjdZK5RTYxfD1NmYvgQRm5uCPToVp
	mnxgOtmCPY8XOemq1QeB+TkZPy5ManyoqFB+Q13CVHEbEnIoCz7zcfifcWA1kADp+oJ3ceQTRuLcu
	0tg4qzdcLurtnYh5xBswfpQMneijjjPBLcmosyI6cJ+azQBEMHWVEG5Gww61umU5/ggF6McInztxm
	ctZwIbdgh8igzAD8WmD6gVuLJmwGW7ozMwiTKlL5VwCZpIE5VEG77mUlgosV0K9MQP1dzGYtRrEKl
	GyVe+4tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfMg-0085fS-SP; Mon, 12 Sep 2022 09:04:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfMT-0085Z8-UY
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 09:04:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXfMP-0000oB-Ui; Mon, 12 Sep 2022 11:04:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXfMP-0006k1-Lw; Mon, 12 Sep 2022 11:04:09 +0200
Date: Mon, 12 Sep 2022 11:04:09 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220912090409.GI24324@pengutronix.de>
References: <20220905103613.1750340-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905103613.1750340-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_020414_055514_45AB15B7 
X-CRM114-Status: GOOD (  25.39  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] i2c: implement of_i2c_register_devices_by_node()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 05, 2022 at 12:36:12PM +0200, Ahmad Fatoum wrote:
> i2c controllers probe the devices on their bus themselves, so in the
> case the i2c controller was already probed, we currently have no way to
> have it reread the device tree after fixing it up or applying an
> overlay. Add a new helper that retriggers the device creation.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/i2c/i2c.c | 20 ++++++++++++++++++++
>  include/i2c/i2c.h |  1 +
>  2 files changed, 21 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index b24fd88f5b39..e70e51618850 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -427,6 +427,12 @@ static void of_i2c_register_devices(struct i2c_adapter *adap)
>  		const __be32 *addr;
>  		int len;
>  
> +		if (n->dev) {
> +			dev_dbg(&adap->dev, "of_i2c: skipping already registered %s\n",
> +				dev_name(n->dev));
> +			continue;
> +		}
> +
>  		of_modalias_node(n, info.type, I2C_NAME_SIZE);
>  
>  		info.of_node = n;
> @@ -452,6 +458,20 @@ static void of_i2c_register_devices(struct i2c_adapter *adap)
>  	}
>  }
>  
> +int of_i2c_register_devices_by_node(struct device_node *node)
> +{
> +	struct i2c_adapter *adap;
> +
> +	adap = of_find_i2c_adapter_by_node(node);
> +	if (!adap)
> +		return -ENODEV;
> +	if (IS_ERR(adap))
> +		return PTR_ERR(adap);
> +
> +	of_i2c_register_devices(adap);
> +	return 0;
> +}
> +
>  /**
>   * i2c_new_dummy - return a new i2c device bound to a dummy driver
>   * @adapter: the adapter managing the device
> diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
> index 7207b1180e1d..f5e2dc511ed1 100644
> --- a/include/i2c/i2c.h
> +++ b/include/i2c/i2c.h
> @@ -295,6 +295,7 @@ static inline int i2c_register_board_info(int busnum,
>  extern int i2c_add_numbered_adapter(struct i2c_adapter *adapter);
>  struct i2c_adapter *i2c_get_adapter(int busnum);
>  struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node);
> +int of_i2c_register_devices_by_node(struct device_node *node);
>  struct i2c_client *of_find_i2c_device_by_node(struct device_node *node);
>  
>  void i2c_parse_fw_timings(struct device_d *dev, struct i2c_timings *t, bool use_defaults);
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


