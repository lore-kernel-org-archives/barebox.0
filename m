Delivery-date: Thu, 05 Oct 2023 08:46:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoI7d-006M4m-3M
	for lore@lore.pengutronix.de; Thu, 05 Oct 2023 08:46:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoI7b-0004AA-Gx
	for lore@pengutronix.de; Thu, 05 Oct 2023 08:46:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fTEuD8iUJ79vL6za1+FesbnVaQGKZLHNgxKpjBfI1tY=; b=xjdPHbrHjxZnGW1hp3r7AoeW0S
	b/sZt3NZSUhNUDnngRhiNYmWOWlPqu1q7FEdLoVE4XPO3uce5sx/cYrboGp4K+5jZdpg/SB2fQ60k
	Ct601dz9hWoDOGT6gObQp/DbxHiIvXEFxwPRhkzdMmbyOycnRRtkCgPLYWvKujNOqFnAPoUbK9NO5
	pzhkC16Z+REZ522bkX16ZeLe7XO7FdYAsnokSIiwlnYyLrw3YA10LUJf8YntKuxBbsp1s2qi8ZzZC
	SfjOeIqw8Js4bXDg+u/lLU98vtmEl4tm6F+wCD+EhATx1J0c0NNGb6JsFZbzMUBFbg/CDIrwTcabi
	ElAWU8yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoI64-001XLV-31;
	Thu, 05 Oct 2023 06:44:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoI61-001XL5-11
	for barebox@lists.infradead.org;
	Thu, 05 Oct 2023 06:44:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qoI5z-0003pL-RN; Thu, 05 Oct 2023 08:44:27 +0200
Message-ID: <3e92ee2a-92b5-e21e-30ee-3ffb6eec6fdf@pengutronix.de>
Date: Thu, 5 Oct 2023 08:44:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20230928122133.2587197-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230928122133.2587197-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_234429_359929_E9EBEFD9 
X-CRM114-Status: GOOD (  20.44  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] video: edid: print debug message on EDID read out
 error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Oleksij,

On 28.09.23 14:21, Oleksij Rempel wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> EDID readout errors happen often, e.g. because the HDMI port doesn't
> have a display connected. However, when a monitor is connected, but some
> other error occurs, barebox is silent. Add a debug message with an error
> code for this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

This patch had been posted before and Marco had an objection to it:
https://lore.barebox.org/barebox/20221223090605.zis4mcft72crswfm@pengutronix.de/

> ---
>  drivers/video/edid.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/video/edid.c b/drivers/video/edid.c
> index d2757185f6..2baf6646d9 100644
> --- a/drivers/video/edid.c
> +++ b/drivers/video/edid.c
> @@ -852,20 +852,27 @@ edid_do_read_i2c(struct i2c_adapter *adapter, unsigned char *buf,
>  		ret = i2c_transfer(adapter, &msgs[3 - xfers], xfers);
>  	} while (ret != xfers && --retries);
>  
> -	return ret == xfers ? 0 : -1;
> +	if (ret == 0)
> +		ret = -EPROTO;
> +
> +	return ret == xfers ? 0 : ret;
>  }
>  
>  void *edid_read_i2c(struct i2c_adapter *adapter)
>  {
>  	u8 *block;
> +	int ret;
>  
>  	if (!IS_ENABLED(CONFIG_I2C))
>  		return NULL;
>  
>  	block = xmalloc(EDID_LENGTH);
>  
> -	if (edid_do_read_i2c(adapter, block, 0, EDID_LENGTH))
> +	ret = edid_do_read_i2c(adapter, block, 0, EDID_LENGTH);
> +	if (ret) {
> +		dev_dbg(&adapter->dev, "EDID readout failed: %pe\n", ERR_PTR(ret));
>  		goto out;
> +	}
>  
>  	return block;
>  out:

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



