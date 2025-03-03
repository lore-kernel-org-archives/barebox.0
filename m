Delivery-date: Mon, 03 Mar 2025 15:48:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp75W-009NKA-25
	for lore@lore.pengutronix.de;
	Mon, 03 Mar 2025 15:48:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp75V-0006iB-Eo
	for lore@pengutronix.de; Mon, 03 Mar 2025 15:48:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7p6PnVxF+VCkrxG7kNXzmt5V3ZGZn5OK6PgYivU0rWM=; b=u99N2FgtJGd7CW7YHHCb3MV2Vw
	I0Ldc32qUAriWTyN4M7oRLtXIppNIUP7mZwsPzP8WFkY+/I/cVG2CGbAsfldJsvF+fLesUz7PdGv4
	/82R0wlFy2Sj//rB8Kuc9F8aph/GFNbhsvygGSjW/le4QXG+ay4fqtosqnQE5DyC3wDbQmIe2sljl
	7VEeL1m/5jZlC7DObWBZEjKT1WvZDCBjxis9q203zRJjM3DnuEXZTb1xHICgu1J/LKyLy6DHWrAxb
	8aydUIpm482+kjiIMioWAn1K4HgWBdIfOJ8PvJA6YdIeYsnYWt2bvB+7Eyqfz4MgG7q8VpeDRul+5
	i8mfnwxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp752-00000001AMf-30q4;
	Mon, 03 Mar 2025 14:47:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp71n-000000019gO-2BLp
	for barebox@lists.infradead.org;
	Mon, 03 Mar 2025 14:44:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tp71m-00067u-42; Mon, 03 Mar 2025 15:44:18 +0100
Message-ID: <3bb01f7d-f379-49b3-9a1a-250fc9df7ec2@pengutronix.de>
Date: Mon, 3 Mar 2025 15:44:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
References: <20250303143144.2953662-1-bst@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250303143144.2953662-1-bst@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_064419_562592_01E50270 
X-CRM114-Status: GOOD (  18.60  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mfd: rn5t568: add priority to reset_source_set_device()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Bastian,

On 03.03.25 15:31, Bastian Krause wrote:
> 30322f4b565 ("reset_source: give reset_source_set_device a priority
> parameter") introduced a reset source priority parameter, but forgot
> applying a priority the Ricoh RN5T568 PMIC driver's
> reset_source_set_device() call.
> 
> So apply the default priority 200 here, too.
> 
> Fixes this build error:
> 
>   drivers/mfd/rn5t568.c: In function 'rn5t568_reset_reason_detect':
>   drivers/mfd/rn5t568.c:82:9: error: too few arguments to function 'reset_source_set_device'
>      82 |         reset_source_set_device(dev, type);
>         |         ^~~~~~~~~~~~~~~~~~~~~~~
>   In file included from drivers/mfd/rn5t568.c:17:
>   include/reset_source.h:31:6: note: declared here
>      31 | void reset_source_set_device(struct device *dev, enum reset_src_type st,
>         |      ^~~~~~~~~~~~~~~~~~~~~~~
> 
> Fixes: 30322f4b565 ("reset_source: give reset_source_set_device a priority parameter")
> Signed-off-by: Bastian Krause <bst@pengutronix.de>

Ouch, sorry for missing the follow-up commit fixing this.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

We should probably add an allyes build to CI.

Cheers,
Ahmad

> ---
>  drivers/mfd/rn5t568.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mfd/rn5t568.c b/drivers/mfd/rn5t568.c
> index 7468338a2d5..e140cea03b0 100644
> --- a/drivers/mfd/rn5t568.c
> +++ b/drivers/mfd/rn5t568.c
> @@ -79,7 +79,7 @@ static int rn5t568_reset_reason_detect(struct device *dev,
>  			return -EINVAL;
>  	}
>  
> -	reset_source_set_device(dev, type);
> +	reset_source_set_device(dev, type, 200);
>  	return 0;
>  }
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


