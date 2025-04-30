Delivery-date: Wed, 30 Apr 2025 14:25:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA6Vj-000p3E-2u
	for lore@lore.pengutronix.de;
	Wed, 30 Apr 2025 14:25:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA6Vj-0006m9-B2
	for lore@pengutronix.de; Wed, 30 Apr 2025 14:25:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FXWdkZ6mtXYzFy6QPt/y70EBUwfeIccJCC4225a51mQ=; b=X1vk/DEqRa6gDP6FKUkMvNNrwL
	ilY/RSo61OzkDJC46DBOnGEnx1qfins6WpiRr2sFXj58Yl/UJedAjV5HcEoA1v2gymzAtkG8daJKC
	8GcuAngbMEszhrmaonHxf5AUyypJOfYNUdVebhQ6HiRBveJCoJbusxa8QpuzojKAo7Utf6GG3trpW
	MfooNlV2d+DanzHJJJQetOjIUumXVRN6po8h5tkN6Rq4H3QQk8glyirQIqAOEfexTORb8Q0X6PCS4
	fM+JEg2nX+gp/3RpvOnTuhvhiokXeTEr5tEekC0pOxrn7TAwitvviEpvcRAWVo7XgSLtxgEdBUFFE
	27mlEVuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA6VJ-0000000Cp1V-1sOw;
	Wed, 30 Apr 2025 12:25:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA6VH-0000000Cp18-0J1o
	for barebox@lists.infradead.org;
	Wed, 30 Apr 2025 12:25:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uA6VE-0006WC-Be; Wed, 30 Apr 2025 14:25:28 +0200
Message-ID: <558960bc-b1f1-487b-8d0b-4eec489cc1aa@pengutronix.de>
Date: Wed, 30 Apr 2025 14:25:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michael Tretter <m.tretter@pengutronix.de>, barebox@lists.infradead.org
References: <20250430121047.2899648-1-m.tretter@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250430121047.2899648-1-m.tretter@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_052531_117768_7DEA857D 
X-CRM114-Status: GOOD (  20.21  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: only count partitions from partition table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Michael.

On 4/30/25 14:10, Michael Tretter wrote:
> Linux is only aware of partitions in the partition table, but the list
> of partitions in barebox may contain additional partitions, e.g., for
> state or the environment.
> 
> Ignore partitions that are not in the partition table when calculating
> the index of the partition in Linux.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I have patches to store partition table index directly into the cdev,
but your patch is more suitable for backporting to master.

Thanks,
Ahmad

> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  drivers/mci/mci-core.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index c4830a47a5f4..592543faa7b8 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -2550,7 +2550,8 @@ static char *mci_get_linux_mmcblkdev(struct block_device *blk,
>  		 */
>  		if (cdev_partname_equal(partcdev, cdev))
>  			return basprintf("root=/dev/mmcblk%dp%d", id, partnum);
> -		partnum++;
> +		if (cdev->flags & DEVFS_PARTITION_FROM_TABLE)
> +			partnum++;
>  	}
>  
>  	return NULL;

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



