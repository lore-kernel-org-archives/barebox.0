Delivery-date: Mon, 13 Jan 2025 14:18:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXKKh-000c1k-07
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 14:18:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXKKg-00010i-G3
	for lore@pengutronix.de; Mon, 13 Jan 2025 14:18:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r9LgLt93tAmWnBpKQuhxeJOpZQRmvx/8HO+sZyaBn6k=; b=Zn5SSCOMSWswX3vWvoF/sExbA6
	HMBHudLqxyjGIRyyZDhL/IHnxkstdcQXJQXnRx9nwY4F9u6wFgR9P97/aXs6MXtPwqlqqbgn2hB1r
	Yb+d4ujcklG6r0g61tprbNcj/cgj0caWPQZYO4gZMGkUjN2ixqokrD6ebOugfyVUqZkR7zjCa8jUv
	rGQ30LKkRY4NAqAIFvNv23q0ri4S5ZBkiuG+HsOHR1uXgGAPrgVjt6+JQGRVYrJ4cXme2HS5cksA5
	+cBUCXhQBqBowql4ELwzurtqxhVwoD2GnECPjOjPE7n35FEHO2xCU/hci808aCL1ApBe+iG6Jremi
	WHM7g5qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXKK6-00000005DUw-0U9b;
	Mon, 13 Jan 2025 13:17:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXKK2-00000005DUM-46iu
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 13:17:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXKK1-0000vY-PE; Mon, 13 Jan 2025 14:17:37 +0100
Message-ID: <757d2274-534a-4cf4-b6fc-0e990c5dd601@pengutronix.de>
Date: Mon, 13 Jan 2025 14:17:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20250113070216.16303-1-eagle.alexander923@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250113070216.16303-1-eagle.alexander923@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_051739_018952_3ADFD020 
X-CRM114-Status: GOOD (  21.04  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] i2c: at91: Fix driver for SAMA5D2 SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 13.01.25 08:02, Alexander Shiyan wrote:
> Most bits of the AT91 SR status register are cleared after reading,
> so we may lose the status at the end of the wait loop.
> Let's use the value already readed to check for "completed" status.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/i2c/busses/i2c-at91.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
> index dbc5aa4ddf..8929dbaede 100644
> --- a/drivers/i2c/busses/i2c-at91.c
> +++ b/drivers/i2c/busses/i2c-at91.c
> @@ -276,7 +276,7 @@ static int at91_twi_wait_completion(struct at91_twi_dev *dev)
>  
>  		dev->transfer_status |= status;
>  
> -	} while (!(at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_TXCOMP));
> +	} while (!(status & AT91_TWI_TXCOMP));

This makes the function harder to reason about, because the status read
is done at the start, but only acted upon at the very end.

Would it make sense to change this to a while loop or move it into the
loop directly after the other status read and early exit if it's true?

>  
>  	at91_disable_twi_interrupts(dev);
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


