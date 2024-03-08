Delivery-date: Fri, 08 Mar 2024 10:28:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riWWI-00DWCM-0z
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 10:28:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riWWH-0008GI-LG
	for lore@pengutronix.de; Fri, 08 Mar 2024 10:28:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uRIlUtdRtzfWP5A0G5+4ma2oML5waOgqnQ7Vlu+JIew=; b=jstH5gWHWPHrbBBN00ZM5YeckM
	WxJNPIDlAeulGfZ3wEAOvAKp6pYybmxdWWXaCoRY+bIGhODi1qCXLwCDh7mcOhjmwvnP1tLAguFB5
	Q19H7RY5ilgzdh83XJG+bNumN2QkBRJGvw15Ndeqx6mcjtbAoSWQgrR045X6oryV++oruqayck/k0
	aSwCaIpTGPw/A22zz02DCJgtYfkvuObnhNoKsYTI1zYDQ7ua4UyqB7+yXHPvoaydjse/NYZkX5IIh
	P9iewIx5PmijWNHAQ2yPuFedrpTzzH9dDKdlYQlN3NRuj7mYoEwlG9L2eYd2/vOQ59RWvg4mHMh/W
	sIswXEpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riWVl-00000008ZHQ-2mvD;
	Fri, 08 Mar 2024 09:27:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riWVh-00000008ZFd-01eg
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 09:27:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1riWVe-0007mo-37; Fri, 08 Mar 2024 10:27:22 +0100
Message-ID: <ace334e4-d2ce-4e22-b6ce-e03550b1ad21@pengutronix.de>
Date: Fri, 8 Mar 2024 10:27:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 barebox@lists.infradead.org
Cc: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
References: <20240308091507.249009-3-uwe@kleine-koenig.org>
 <20240308091507.249009-4-uwe@kleine-koenig.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240308091507.249009-4-uwe@kleine-koenig.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_012725_123716_39D92C40 
X-CRM114-Status: GOOD (  22.63  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] of: partition: Use mtd partitioning for of_fixup
 instead of the cdev variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Uwe,

On 08.03.24 10:15, Uwe Kleine-König wrote:
> From: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> 
> It was already noticed in commit 9d42c77f126e ("devfs: take into account
> for the partitions check that mtd is different") that the partitioning
> info is stored differently for mtd devices. Instead of only getting the
> partion size from the right spot, use the right data completely.

I read both this commit message and that of the referenced commit and I
don't quite understand what the issue is. Could you add a short sentence
about what particular issue this fix addresses?

Thanks,
Ahmad

> 
> Fixes: 9d42c77f126e ("devfs: take into account for the partitions check that mtd is different")
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/of/partition.c | 30 ++++++++++++++++++++++--------
>  1 file changed, 22 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/of/partition.c b/drivers/of/partition.c
> index d11e1d1690f9..598ac5240d79 100644
> --- a/drivers/of/partition.c
> +++ b/drivers/of/partition.c
> @@ -267,18 +267,32 @@ int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
>  	if (ret)
>  		return ret;
>  
> -	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
> -		loff_t partoffset;
> +	if (cdev->mtd) {
> +		struct mtd_info *mtdpart;
>  
> +		list_for_each_entry(mtdpart, &cdev->mtd->partitions, partitions_entry) {
> +			const char *name = mtdpart->name;
> +
> +			if (mtdpart->parent) {
> +				const char *parentname = dev_name(&mtdpart->parent->dev);
> +				size_t parentnamelen = strlen(parentname);
> +
> +				if (!strncmp(parentname, name, parentnamelen) && name[parentnamelen] == '.')
> +					name += parentnamelen + 1;
> +			}
> +
> +			ret = of_fixup_one_partition(partnode, mtdpart->master_offset, mtdpart->size, name, partcdev->flags);
> +			if (ret)
> +				return ret;
> +		}
> +		return 0;
> +	}
> +
> +	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
>  		if (!(partcdev->flags & DEVFS_PARTITION_FROM_OF))
>  			continue;
>  
> -		if (partcdev->mtd)
> -			partoffset = partcdev->mtd->master_offset;
> -		else
> -			partoffset = partcdev->offset;
> -
> -		ret = of_fixup_one_partition(partnode, partoffset, partcdev->size, partcdev->partname, partcdev->flags);
> +		ret = of_fixup_one_partition(partnode, partcdev->offset, partcdev->size, partcdev->partname, partcdev->flags);
>  		if (ret)
>  			return ret;
>  	}

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



