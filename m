Delivery-date: Mon, 23 Aug 2021 14:03:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mI8fx-0005ER-Qi
	for lore@lore.pengutronix.de; Mon, 23 Aug 2021 14:03:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mI8fs-00030l-SD
	for lore@pengutronix.de; Mon, 23 Aug 2021 14:03:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D///Ce3hD/2g46aoBaGWpcLHIst1gOrRuOpVYzKL6ew=; b=JNt/jZFeMo6GREXD1b2PM3TsV4
	vnXnRy1ullFZ14MwfFZnOcOkOAFD61hA79XaepzIvl9cJ+ARg8PcHXCISjZI5wIAuiuW7ZOsMWs4X
	M5ffiwH1IcDkP7GTrOE6ZUN9jqidUHFGfKEjGOzBgRJYn6ykOj6/Ir2tcuR3oNc6S6tmQBJ670h9Z
	BIv0f5He6firpl4hpJ6oG2t/2AAo4FM/9r3s3Dh0FIgBazOCWCyfoeyuKv57q9Ch5vLEj4cfT3xTO
	0xwPpMRH6vj5Bk80fMM0PWOkd1UoRKV+RXDEaAvpkdmCN8HjnYA3nSFi4JHtu9RMsvnH8o5/UOJO1
	z3TJNh9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mI8eP-00Geog-LB; Mon, 23 Aug 2021 12:02:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mI8eI-00Geo0-83
 for barebox@lists.infradead.org; Mon, 23 Aug 2021 12:01:58 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mI8eH-0002tQ-0w; Mon, 23 Aug 2021 14:01:53 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210817101104.114945-1-antonynpavlov@gmail.com>
 <20210817101104.114945-4-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <b8bd0c12-c757-dfd1-188a-e9c261eb0f55@pengutronix.de>
Date: Mon, 23 Aug 2021 14:01:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210817101104.114945-4-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_050154_347478_19780672 
X-CRM114-Status: GOOD (  24.17  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RESEND v4 3/8] console: support set baudrate for fixed
 baudrate drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.08.21 12:10, Antony Pavlov wrote:
> There are console drivers (linux, virtio, litex)
> that don't support baud rate setting and has
> no setbrg (set baudrate) callback, so
> console_set_baudrate() returns -ENOSYS.
> 
> At the other hand console_set_baudrate() SUCCESS
> return value is needed for the loadx/loady commands
> correct work.
> 
> See discussion here:
> 
>   http://lists.infradead.org/pipermail/barebox/2021-May/036237.html
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/console.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/common/console.c b/common/console.c
> index ad1a6aaab2..c902239e31 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -165,12 +165,12 @@ int console_set_baudrate(struct console_device *cdev, unsigned baudrate)
>  	int ret;
>  	unsigned char c;
>  
> -	if (!cdev->setbrg)
> -		return -ENOSYS;
> -
>  	if (cdev->baudrate == baudrate)
>  		return 0;
>  
> +	if (!cdev->setbrg)
> +		return -ENOSYS;
> +
>  	/*
>  	 * If the device is already active, change its baudrate.
>  	 * The baudrate of an inactive device will be set at activation time.
> @@ -336,11 +336,13 @@ int console_register(struct console_device *newcdev)
>  		ret = newcdev->setbrg(newcdev, baudrate);
>  		if (ret)
>  			return ret;
> -		newcdev->baudrate_param = newcdev->baudrate = baudrate;
> +		newcdev->baudrate_param = baudrate;
>  		dev_add_param_uint32(dev, "baudrate", console_baudrate_set,
>  			NULL, &newcdev->baudrate_param, "%u", newcdev);
>  	}
>  
> +	newcdev->baudrate = baudrate;
> +
>  	if (newcdev->putc && !newcdev->puts)
>  		newcdev->puts = __console_puts;
>  
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

