Delivery-date: Tue, 09 Aug 2022 08:52:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLJ5v-00H1MQ-Rm
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 08:52:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLJ5v-0001oR-Um
	for lore@pengutronix.de; Tue, 09 Aug 2022 08:52:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hnae6jqaDkHmrfL1ZHrSSO2DTFGFr79C5JZF0K4U+10=; b=v7YAFiTDSMeFuuBHpat7NaxmAp
	7HoIuyRtjstAjKWzjvHZY2nC1b4YDdAcedYKEeuH+ZuUfK2voWVLV/m6a21+gT3dYLIqKPQGV9UtH
	201Y7ffvMAVaWtV4Ai9xqc1GL4AIROuRCOTkl8X/vEilNTf/QDngHJGI9HAsBCT7N3lz4Jj/sUPBt
	Q7JXcvE0duZLPkqnDpOJi2baFUtktgAE8GgpIObwijaN6DUdemnkIQRYc5pUnMMag9/N21cotFUt7
	vDlqcHhaMrPJy5FjEFAvH/PR++M/xkOGC//BxuV/tnReGZBE+0AopY0Tz1oKAyDAQhqqZDKV0VE3B
	YcWsdZJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLJ4b-0026Rb-4N; Tue, 09 Aug 2022 06:50:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLJ4T-0026PO-Qc
	for barebox@bombadil.infradead.org; Tue, 09 Aug 2022 06:50:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Sender:Reply-To:Content-ID:Content-Description;
	bh=hnae6jqaDkHmrfL1ZHrSSO2DTFGFr79C5JZF0K4U+10=; b=b58Dleu5atNnniO8S5ew1ZwKr6
	j6tUhQO7USITALdSeffAADpF1RaAp19ZrfTdBZH196OR3gin94nfV9CNuJwF5NxfC7OQGRyfh8EGU
	b00NAgnYhRRvopFqkcf0Yiwk0bkcJuEiRI+PKX+xd41tghNg3razIbU39tiXvSCz1CIxA944ihxSD
	1NEsvtsVZ8h8Q1Ptc+qKgpa6ojT0zvGtVay2pz34KftmUraSzGFBDi4oxsqJV9vIUT4XZQDFNmv5a
	YCANFP8scrz1SIpxR65d2I/7+Sf4Y2jtuE7rEY4NuzNDAkiAfINsAIn7O5WkRIgcqxNXa2qmXut6p
	GnmMJvWQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLJ4P-000PSG-TE
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 06:50:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLJ4P-0001Dt-Co; Tue, 09 Aug 2022 08:50:29 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLJ4P-0000EP-3Q; Tue, 09 Aug 2022 08:50:29 +0200
Date: Tue, 9 Aug 2022 08:50:29 +0200
To: Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220809065029.GF31528@pengutronix.de>
References: <20220720103313.7837-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220720103313.7837-1-danek.brat@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_075030_401040_AC85E092 
X-CRM114-Status: GOOD (  24.10  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] i2c: bcm283x: fix ending of transfer in case of NACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jul 20, 2022 at 12:33:13PM +0200, Daniel Brát wrote:
> Fixes an issue where the driver in case of NACK error would not properly
> terminate the tranfer, resulting in BSC not sending the STOP condition
> until just before the next xfer.
> 
> Signed-off-by: Daniel Brát <danek.brat@gmail.com>
> ---
>  drivers/i2c/busses/i2c-bcm283x.c | 23 +++++++++++++++--------
>  1 file changed, 15 insertions(+), 8 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/i2c/busses/i2c-bcm283x.c b/drivers/i2c/busses/i2c-bcm283x.c
> index 097f73d983..fdba3b91bd 100644
> --- a/drivers/i2c/busses/i2c-bcm283x.c
> +++ b/drivers/i2c/busses/i2c-bcm283x.c
> @@ -147,7 +147,7 @@ static int bcm283x_i2c_msg_xfer(struct bcm283x_i2c *bcm_i2c,
>  
>  		if (ret) {
>  			dev_err(dev, "timeout: 10bit read initilization\n");
> -			return ret;
> +			goto out;
>  		}
>  		if (reg_s & BSC_S_ERR)
>  			goto nack;
> @@ -178,7 +178,7 @@ static int bcm283x_i2c_msg_xfer(struct bcm283x_i2c *bcm_i2c,
>  
>  			if (ret) {
>  				dev_err(dev, "timeout: waiting for data in FIFO\n");
> -				return ret;
> +				goto out;
>  			}
>  			if (reg_s & BSC_S_ERR)
>  				goto nack;
> @@ -197,7 +197,7 @@ static int bcm283x_i2c_msg_xfer(struct bcm283x_i2c *bcm_i2c,
>  
>  			if (ret) {
>  				dev_err(dev, "timeout: waiting for space in FIFO\n");
> -				return ret;
> +				goto out;
>  			}
>  			if (reg_s & BSC_S_ERR)
>  				goto nack;
> @@ -216,16 +216,23 @@ static int bcm283x_i2c_msg_xfer(struct bcm283x_i2c *bcm_i2c,
>  
>  	if (ret) {
>  		dev_err(dev, "timeout: waiting for transfer to end\n");
> -		return ret;
> +		goto out;
>  	}
>  	if (reg_s & BSC_S_ERR)
>  		goto nack;
> -	writel(BSC_S_DONE | BSC_S_ERR | BSC_S_CLKT, &bcm_i2c->regs->s);
> -	writel(BSC_C_CLEAR1 | BSC_C_I2CEN, &bcm_i2c->regs->c);
> -	return 0;
> +	goto out;
>  nack:
>  	dev_dbg(dev, "device with addr %x didn't ACK\n", msg->addr);
> -	return -EREMOTEIO;
> +	writel(BSC_S_ERR, &bcm_i2c->regs->s);
> +	timeout = calc_byte_timeout_us(bcm_i2c->bitrate);
> +	// Wait for end of transfer so BSC has time to send STOP condition
> +	readl_poll_timeout(&bcm_i2c->regs->s, reg_s, ~reg_s & BSC_S_TA, timeout);
> +	ret = -EREMOTEIO;
> +out:
> +	// Return to default state for next xfer
> +	writel(BSC_S_DONE | BSC_S_ERR | BSC_S_CLKT, &bcm_i2c->regs->s);
> +	writel(BSC_C_CLEAR1 | BSC_C_I2CEN, &bcm_i2c->regs->c);
> +	return ret;
>  }
>  
>  static int bcm283x_i2c_xfer(struct i2c_adapter *adapter,
> -- 
> 2.37.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


