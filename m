Delivery-date: Fri, 08 Sep 2023 14:00:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qea9q-008CUD-Nv
	for lore@lore.pengutronix.de; Fri, 08 Sep 2023 14:00:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qea9o-00059h-N9
	for lore@pengutronix.de; Fri, 08 Sep 2023 14:00:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5t8nArWSipJcPrFF/zuonVZeKuHktBgtXUqJXFT+Esk=; b=1cIQzO2bwGtiD8DU5DW+gZa60h
	+NaZKnmgZ+0q6f7SX/ykv+6Mdyznd7ax9SkDqhOoBe1Js20inZRyYOChqyv+36ZodEaqEDjPbQqUf
	kPU1Po/2gf/JKcdhBkMQ0f3Ppq9RkoiYqcGWKob7qqeJSs7zTgwMtFl4KCC78QQRadSCV0Ydm7G/L
	0WNHdJNimgGWr2cpKpdATWy36n5OlINhRic89+YfkFBaWDbuvNM5TPL9YT4zye2+0U8FWVEEaNtlb
	V+hPn+cfG6Kg2NMlZSH2cMAz+E1O3yc8NtgxbqJ0Z17XD1lvsES3kKamFlVas+Z6CRcK+58AHdVrk
	CQkGd+IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qea8l-00DicY-21;
	Fri, 08 Sep 2023 11:59:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qea8j-00DicA-0Q
	for barebox@lists.infradead.org;
	Fri, 08 Sep 2023 11:59:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qea8g-0004ol-Dq; Fri, 08 Sep 2023 13:59:06 +0200
Message-ID: <23240e08-f109-36e4-8588-df64d8594f7a@pengutronix.de>
Date: Fri, 8 Sep 2023 13:59:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Gerald Loacker <gerald.loacker@wolfvision.net>,
 barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
References: <20230908-bugfix-i2c-rockchip-v1-0-f8235d811f6b@wolfvision.net>
 <20230908-bugfix-i2c-rockchip-v1-3-f8235d811f6b@wolfvision.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230908-bugfix-i2c-rockchip-v1-3-f8235d811f6b@wolfvision.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_045909_165992_67F6025C 
X-CRM114-Status: GOOD (  20.07  )
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
Subject: Re: [PATCH 3/4] net: ksz9477: propagate phy read error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 08.09.23 12:16, Gerald Loacker wrote:
> In case of an error we should not return an arbitrary value, propagate the
> error code instead.
> Fix return value in case of address error.
> 
> Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
> ---
>  drivers/net/ksz9477.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
> index 9665e0f723..d664b7cf01 100644
> --- a/drivers/net/ksz9477.c
> +++ b/drivers/net/ksz9477.c
> @@ -29,14 +29,15 @@ static int ksz9477_phy_read16(struct dsa_switch *ds, int addr, int reg)
>  {
>  	struct device *dev = ds->dev;
>  	struct ksz_switch *priv = dev_get_priv(dev);
> -	u16 val = 0xffff;
> +	u16 val;
> +	int ret;
>  
>  	if (addr >= priv->phy_port_cnt)
> -		return val;
> +		return -EINVAL;

Looks sensible IMO, but shouldn't we do the same in dsa_slave_phy_read
if no callback is defined?

@Oleksij, why did you decide for 0xffff instead of a negative error code?


>  
> -	ksz_pread16(priv, addr, 0x100 + (reg << 1), &val);
> +	ret = ksz_pread16(priv, addr, 0x100 + (reg << 1), &val);
>  
> -	return val;
> +	return (ret < 0) ? ret : val;
>  }
>  
>  static int ksz9477_phy_write16(struct dsa_switch *ds, int addr, int reg,
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



