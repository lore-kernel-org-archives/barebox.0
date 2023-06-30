Delivery-date: Fri, 30 Jun 2023 07:55:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qF76I-009Hk8-9L
	for lore@lore.pengutronix.de; Fri, 30 Jun 2023 07:55:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qF76F-0003zA-Nj
	for lore@pengutronix.de; Fri, 30 Jun 2023 07:55:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3A59LqvGwmiKlokebdp1vkmF4p/gHZ6PDpGpIxsptxs=; b=Yd7nSK7eP56JuG8mg+t6ZpnlfF
	SBCe4FNXr1f0clX0wxmzcayqNO3HzlQ488rVOuFIR7adbc3Ihy4UDPsdj8tMe03/MGsKmKLwM856X
	XXA3MyHnZX5bFgttbDPbGpD7sEG7IOseCdtRdjpZ5qUfs4vuvQmPMkwalQcEoTkw0Sf2soD59wt93
	dOR7H99rRS24ECc9uhW82J5dh2cnDxbWqnfajVE9n4w9NyMVYad8ZV2FMlDISIXN31wGoPo3LXYAp
	Mk7SOm1uaGZ9y6wl3+jp9nqvP+fUu2rEHPJ3X6XCqnCNu+Fb2ptLqJXzx1xOlq6A7OGBcYrAUbKhN
	ixEV4waA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qF75D-002y5I-1G;
	Fri, 30 Jun 2023 05:54:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qF75A-002y4f-1q
	for barebox@lists.infradead.org;
	Fri, 30 Jun 2023 05:54:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qF759-0003nk-9N; Fri, 30 Jun 2023 07:54:11 +0200
Message-ID: <ffaf0eea-7a33-27eb-e9d7-a7ae4fe37171@pengutronix.de>
Date: Fri, 30 Jun 2023 07:54:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20230629195718.14416-1-denorl2009@gmail.com>
 <20230629195718.14416-2-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230629195718.14416-2-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_225412_606123_7831E311 
X-CRM114-Status: GOOD (  18.68  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] usb: storage: fix missing calls to free()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 29.06.23 21:52, Denis Orlov wrote:
> Memory allocated with xzalloc() was not actually being freed in a few
> functions, resulting in memory leaks.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/usb/storage/usb.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index dda7131960..6cdcc348e4 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -169,7 +169,7 @@ static int read_capacity_16(struct us_blk_dev *usb_blkdev)
>  
>  	if (ret < 0) {
>  		dev_warn(dev, "Read Capacity(16) failed\n");
> -		return ret;
> +		goto fail;
>  	}
>  
>  	/* Note this is logical, not physical sector size */
> @@ -181,13 +181,17 @@ static int read_capacity_16(struct us_blk_dev *usb_blkdev)
>  
>  	if ((data[12] & 1) == 1) {
>  		dev_warn(dev, "Protection unsupported\n");
> -		return -ENOTSUPP;
> +		ret = -ENOTSUPP;
> +		goto fail;
>  	}
>  
>  	usb_blkdev->blk.blockbits = SECTOR_SHIFT;
>  	usb_blkdev->blk.num_blocks = lba + 1;
>  
> -	return sector_size;
> +	ret = sector_size;
> +fail:
> +	free(data);
> +	return ret;
>  }
>  
>  static int read_capacity_10(struct us_blk_dev *usb_blkdev)
> @@ -208,7 +212,7 @@ static int read_capacity_10(struct us_blk_dev *usb_blkdev)
>  
>  	if (ret < 0) {
>  		dev_warn(dev, "Read Capacity(10) failed\n");
> -		return ret;
> +		goto fail;
>  	}
>  
>  	sector_size = be32_to_cpu(data[1]);
> @@ -223,7 +227,10 @@ static int read_capacity_10(struct us_blk_dev *usb_blkdev)
>  	usb_blkdev->blk.num_blocks = lba + 1;
>  	usb_blkdev->blk.blockbits = SECTOR_SHIFT;
>  
> -	return SECTOR_SIZE;
> +	ret = SECTOR_SIZE;
> +fail:
> +	free(data);
> +	return ret;
>  }
>  
>  static int usb_stor_io_16(struct us_blk_dev *usb_blkdev, u8 opcode,

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



