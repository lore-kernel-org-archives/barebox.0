Delivery-date: Wed, 11 May 2022 08:46:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nog7d-009JyI-A5
	for lore@lore.pengutronix.de; Wed, 11 May 2022 08:46:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nog7b-00064p-Rl
	for lore@pengutronix.de; Wed, 11 May 2022 08:46:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4GYS30wyclHNRarGLm9WeYuVh6GAvC2ou/UvEvvKG+s=; b=Fo70dW42orIpeYD9NoYTEF2GZY
	TxD1ru6CdBjksubutMhVaQkf3wxOPkxwwo2micPlBtu4n2GWUqDQvxXRW8OJcq4HUWOQpdEXly57L
	kBYFo8lUjqTJMmT7VfTuM+18bEGHuEVBfjkS398XVR9wuPBjgARvfMilsNT+5uDBYLQks9ulqneR2
	xkEL5ZHdf+RpITE9aITk3MlVagD4Vsmgl1eIssEDmcEjC7fBGPJi0l0ZNYIjTmu9X6MTdgucwQiXQ
	CWddr57sHPE0DS48phhu9FuKVnfsODqtCE9zThiys9oRcbCKy5ba41u//9NmfehXf7Zxm8JUPeYyf
	KbzID91A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nog6O-005Wbq-Tr; Wed, 11 May 2022 06:45:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nog6J-005WZe-GO
 for barebox@lists.infradead.org; Wed, 11 May 2022 06:45:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nog6I-0005ak-69; Wed, 11 May 2022 08:45:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nog6H-0007Go-TO; Wed, 11 May 2022 08:45:33 +0200
Date: Wed, 11 May 2022 08:45:33 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Matthias Fend <matthias.fend@emfend.at>
Message-ID: <20220511064533.GJ4012@pengutronix.de>
References: <20220510153657.2033190-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220510153657.2033190-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:45:25 up 41 days, 19:15, 68 users,  load average: 0.23, 0.15, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_234535_579198_19347627 
X-CRM114-Status: GOOD (  27.69  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] i2c: rockchip: fix transfer return value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 10, 2022 at 05:36:57PM +0200, Ahmad Fatoum wrote:
> barebox (and kernel) API is for i2c_adapter::master_xfer to return the
> number of successfully transmitted messages and a negative value on
> error. This was not observed in the Rockchip driver, fix this.
> 
> Reported-by: Matthias Fend <matthias.fend@emfend.at>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Only compile-tested, but change looks innocuous enough.
> ---
>  drivers/i2c/busses/i2c-rockchip.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/i2c/busses/i2c-rockchip.c b/drivers/i2c/busses/i2c-rockchip.c
> index 4990735a4b11..ca339053356c 100644
> --- a/drivers/i2c/busses/i2c-rockchip.c
> +++ b/drivers/i2c/busses/i2c-rockchip.c
> @@ -375,15 +375,17 @@ i2c_exit:
>  	return err;
>  }
>  
> -static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msg,
> +static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
>  			     int nmsgs)
>  {
>  	struct rk_i2c *i2c = to_rk_i2c(adapter);
>  	struct device_d *dev = &adapter->dev;
> -	int ret;
> +	int i, ret = 0;
>  
>  	dev_dbg(dev, "i2c_xfer: %d messages\n", nmsgs);
> -	for (; nmsgs > 0; nmsgs--, msg++) {
> +	for (i = 0; i < nmsgs; i++) {
> +		struct i2c_msg *msg = &msgs[i];
> +
>  		dev_dbg(dev, "i2c_xfer: chip=0x%x, len=0x%x\n", msg->addr, msg->len);
>  		if (msg->flags & I2C_M_RD) {
>  			ret = rk_i2c_read(i2c, msg->addr, 0, 0, msg->buf,
> @@ -395,14 +397,15 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msg,
>  		if (ret) {
>  			dev_dbg(dev, "i2c_write: error sending: %pe\n",
>  				ERR_PTR(ret));
> -			return -EREMOTEIO;
> +			ret = -EREMOTEIO;
> +			break;
>  		}
>  	}
>  
>  	rk_i2c_send_stop_bit(i2c);
>  	rk_i2c_disable(i2c);
>  
> -	return 0;
> +	return ret < 0 ? ret : nmsgs;
>  }
>  
>  static int rk_i2c_probe(struct device_d *dev)
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

