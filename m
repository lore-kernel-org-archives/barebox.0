Delivery-date: Tue, 12 Sep 2023 14:22:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qg2Pg-00CcqG-H6
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 14:22:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qg2Pe-0002O0-Gw
	for lore@pengutronix.de; Tue, 12 Sep 2023 14:22:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zE1kUBzi/8SWny5TurGleVZcSEgXe9wpHdt6jPJPEY4=; b=fugZOnlaestD6hOyi5M1rJLbtg
	IZcpGtjqNUx17pUaqvH9a71rdO/n1hK+8hLArfK094wa8KbqEZ3+gwmjV4/9uTVXiSylECIBS/E1+
	xUt6Ftf7UIoWqIwqNuS2C7hb8OSz75iMzpn1g+GsG+jTK6tSp6/YaXwz3LtyZ4LNjjkyZBCOQEpBz
	e06NU6wkPGqHnS8Yy3jYJVuJUyj/j/L1rmknFOkIwiC5czIfOa7UOy6seolKaVXW+9X5re246I032
	+a1SixE4AD8RnetLfKZRpZPhLgTSHBjcQMVf6F6yyDYKTwU1QSbpnZx1tDgei1iIJ9/5IRa0pGuEB
	f8YSQjHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qg2OH-003Jt1-2V;
	Tue, 12 Sep 2023 12:21:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qg2OC-003JsZ-2l
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 12:21:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qg2O7-000295-Ch; Tue, 12 Sep 2023 14:21:03 +0200
Message-ID: <bdc3df39-e8ca-3b97-0a17-396fa8cfa303@pengutronix.de>
Date: Tue, 12 Sep 2023 14:21:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Gerald Loacker <gerald.loacker@wolfvision.net>
References: <20230908130401.1735831-1-s.hauer@pengutronix.de>
 <20230908130401.1735831-3-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230908130401.1735831-3-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_052108_909403_B15AAD8B 
X-CRM114-Status: GOOD (  19.97  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] net: ksz9477: Add mdio bus slice dependency to
 i2c/spi device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 08.09.23 15:04, Sascha Hauer wrote:
> On mdio busses the attached phys check for link status in a poller.
> Add a slice dependency from the mdio bus to the I2C/SPI controller
> so that we do not end up doing bus accesses while we are in a
> I2C/SPI access on the same bus already.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/net/ksz9477.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
> index 9665e0f723..1abea9d040 100644
> --- a/drivers/net/ksz9477.c
> +++ b/drivers/net/ksz9477.c
> @@ -464,6 +464,13 @@ static int microchip_switch_probe(struct device *dev)
>  	if (ret)
>  		return ret;
>  
> +	if (priv->i2c)
> +		slice_depends_on(mdiobus_slice(ds->slave_mii_bus),
> +				 i2c_client_slice(priv->i2c));
> +	else
> +		slice_depends_on(mdiobus_slice(ds->slave_mii_bus),
> +				 spi_device_slice(priv->spi));

Is there no way to do this in the core?

> +
>  	return regmap_multi_register_cdev(priv->regmap[0], priv->regmap[1],
>  					  priv->regmap[2], NULL);
>  }

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



