Delivery-date: Wed, 04 Oct 2023 09:41:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnwVp-004cXa-NC
	for lore@lore.pengutronix.de; Wed, 04 Oct 2023 09:41:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnwVo-0005oj-1B
	for lore@pengutronix.de; Wed, 04 Oct 2023 09:41:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lJjoz1mTd+8F/QpXcOmy/S4ggsd7HTC3OIvRQOFkF7s=; b=Zuhscf1Vet+4e2Rsxj2Cw8NLMj
	htMccn4UqxEILXbVTeAm4meErgabA9g/Lm8Neg1jZcrN4jCF02xOmzuR0oDPVx7F172/9h7piixxf
	6kdjCN0ptXge9S6+SdWtg5QJ2gSVhakmUZnOtIOCrE5j56UL4DHl+VjeF++cZ1UzreNN4/a0fCCuz
	rQBD5PszfkRCmw9jG9wdvFcguA9lzFKTwnZLDfJ7R5zuffiGhDePtqo3yV9xxu5EoTK1IGwbqSQ7R
	aDKOCq3nUgPOPap2pw+B9vDHya1qDFNfvEaxOQqVRgU/NFYoYyWHa8bl5OrJvsYqMY/i0UftU5BfC
	rlf9AUdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnwUd-00GdsM-2H;
	Wed, 04 Oct 2023 07:40:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnwUZ-00GdrG-1x
	for barebox@lists.infradead.org;
	Wed, 04 Oct 2023 07:40:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qnwUY-0005cF-DI; Wed, 04 Oct 2023 09:40:22 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qnwUY-00AySi-0p; Wed, 04 Oct 2023 09:40:22 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qnwUX-00CisI-Un; Wed, 04 Oct 2023 09:40:21 +0200
Date: Wed, 4 Oct 2023 09:40:21 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20231004074021.GJ637806@pengutronix.de>
References: <20230928122133.2587197-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928122133.2587197-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_004023_645053_23DFCD2E 
X-CRM114-Status: GOOD (  22.52  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] video: edid: print debug message on EDID read out
 error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 28, 2023 at 02:21:33PM +0200, Oleksij Rempel wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> EDID readout errors happen often, e.g. because the HDMI port doesn't
> have a display connected. However, when a monitor is connected, but some
> other error occurs, barebox is silent. Add a debug message with an error
> code for this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/video/edid.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

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
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


