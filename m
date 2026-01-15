Delivery-date: Thu, 15 Jan 2026 15:52:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgOiM-001d0z-1s
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 15:52:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgOiL-0004ZP-Jk
	for lore@pengutronix.de; Thu, 15 Jan 2026 15:52:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x/l3K2Sm+IRL7gSlf5M0Lyhv/9FBDpuE6eOcuwxWQCM=; b=BGpetvSKvBqLy0yvTTD1QNVZ97
	/vkWRvr8sVCzI/Ct+uzG/cfeFhRl5Qjkx+o0M5pvMitW5nwCPchc2tRtMJZ8u/l6tEAvIYweZ4XPk
	IkdNz1seCfywhFy+nMI7lPxylaq+13+sdS9cqS7QWJBEZfKV4JMnPp2+KGbjqXgcBoNVJj8ZKGBuH
	xLg7TjNtnJWSlD5iF3QaY94T3C7uqrNm/+BoTXZDzM3bSv0W6AnaZBDrGOuhzIq+WK32xJvB9pCDf
	CjyPUY4z6MP0tbISMJ1C36s9H/wB/ZmplxF5JQ3z0/5gDf57Ux8K63g9/n94Ju0w6AwsMtV3APjHD
	lo8xeRjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOhv-0000000CXM3-2Nvs;
	Thu, 15 Jan 2026 14:52:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOht-0000000CXLU-3Ddu
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 14:52:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgOhs-0004TU-7o; Thu, 15 Jan 2026 15:52:16 +0100
Message-ID: <4ca9b8e4-c8c4-4a5c-a3a8-996be4e769d2@pengutronix.de>
Date: Thu, 15 Jan 2026 15:52:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>,
 barebox@lists.infradead.org
References: <20260115142410.3422704-1-ejo@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260115142410.3422704-1-ejo@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_065217_805117_3AE76975 
X-CRM114-Status: GOOD (  20.33  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] block: don't error while flushing when write support is
 disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 1/15/26 3:24 PM, Enrico Jörns wrote:
> If write support for the underlying device is disabled (e.g. by
> disabling CONFIG_MCI_WRITE), blk->ops->write will be NULL.
> Unconditionally dereferencing/calling blk->ops->write() results in a
> NULL pointer dereference.
> 
> Fix this by making chunk_flush() a noop for missing write support.
> Don't return an error since there should be nothing to flush if write
> support is disabled, anyway.
> 
> Note that barebox currently does not prevent calling write/flush
> operations, even if CONFIG_MCI_WRITE and thus write support is actually
> disabled.
> But this should be handled on another level.
> 
> Signed-off-by: Enrico Jörns <ejo@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  common/block.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/common/block.c b/common/block.c
> index ca2ed37dbd..abd05eab39 100644
> --- a/common/block.c
> +++ b/common/block.c
> @@ -60,6 +60,9 @@ static int chunk_flush(struct block_device *blk, struct chunk *chunk)
>  	if (!chunk->dirty)
>  		return 0;
>  
> +	if (!blk->ops->write)
> +		return 0;
> +
>  	len = writebuffer_io_len(blk, chunk);
>  	ret = blk->ops->write(blk, chunk->data, chunk->block_start, len);
>  	if (ret < 0)

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



