Delivery-date: Wed, 31 May 2023 18:46:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Oxy-004V6n-HX
	for lore@lore.pengutronix.de; Wed, 31 May 2023 18:46:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Oxw-0000mJ-4x
	for lore@pengutronix.de; Wed, 31 May 2023 18:46:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fgbvy6RocPpQ13cVu5GGd4SAkn43kyRiCFHXZU8u68E=; b=VCWsF2TP91c71gIXxBSweMvC9Z
	NrGIkvGss0tsIiesaXDOfYuSUT+jYOaL96SVSGFAKOa1tvhFzPbtOPlXeKYGKsruxlhJ3wXHHYbfu
	o2dAlv9fxElzbm5zjy3Rcz+h0z/HmMAiQcZTGj79GopM4+lQihimqb7p1AZ0rUmEeQ/jpK8GPRSL8
	8VWRvqxYKt0LfjbproNdL805zVPdtKjjyI7r2yy3JJ1glibwYJ6P9BdHVhJ9th8enlS8HuRlnZL+0
	62KHIVDCdcghzhcvJ0M8J5qGu2ITuwFO7NRrDdXJxvoHB1zj/4M35ynw9P6P5Gu0InjWa3xMkgj9n
	TStkqCmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4OwZ-000Vfl-2E;
	Wed, 31 May 2023 16:45:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4OwV-000Vec-0p
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 16:45:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4OwT-0000Ll-Bj; Wed, 31 May 2023 18:44:57 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4OwT-0002xa-3p; Wed, 31 May 2023 18:44:57 +0200
Date: Wed, 31 May 2023 18:44:57 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230531164457.tuzeowebrol2xxai@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-8-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531145927.1399282-8-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_094459_312505_0600A415 
X-CRM114-Status: GOOD (  16.52  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 07/18] commands: stat: remove code duplication for type
 info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-05-31, Ahmad Fatoum wrote:
> stat prints a line with partitioning/type info for cdevs, but not all
> cdevs have these, so we want to skip printing when it's empty.
> Instead of duplicating the check, just utilize printf returning the
> number of characters written.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  fs/fs.c | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 368458cc54f8..ba60766a065a 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -69,6 +69,8 @@ EXPORT_SYMBOL(mkmodestr);
>  
>  void cdev_print(const struct cdev *cdev)
>  {
> +	int nbytes;
> +
>  	if (cdev->dev || cdev->master || cdev->partname) {
>  		printf("Origin: %s", dev_name(cdev->dev) ?: "None");
>  		if (cdev->master)
> @@ -96,15 +98,17 @@ void cdev_print(const struct cdev *cdev)
>  	}
>  	printf("\n");
>  
> -	if (cdev->filetype || cdev->dos_partition_type || *cdev->uuid) {
> -		if (cdev->filetype)
> -			printf("Filetype: %s\t", file_type_to_string(cdev->filetype));
> -		if (cdev->dos_partition_type)
> -			printf("DOS parttype: 0x%02x\t", cdev->dos_partition_type);
> -		if (*cdev->uuid)
> -			printf("UUID: %s", cdev->uuid);
> +	nbytes = 0;
> +
> +	if (cdev->filetype)
> +		nbytes += printf("Filetype: %s\t", file_type_to_string(cdev->filetype));
> +	if (cdev->dos_partition_type)
> +		nbytes += printf("DOS parttype: 0x%02x\t", cdev->dos_partition_type);
> +	if (*cdev->uuid)
> +		nbytes += printf("UUID: %s", cdev->uuid);
> +
> +	if (nbytes)
>  		printf("\n");
> -	}
>  }
>  EXPORT_SYMBOL(cdev_print);
>  
> -- 
> 2.39.2
> 
> 
> 


