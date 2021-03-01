Delivery-date: Mon, 01 Mar 2021 16:58:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGkwI-0004xW-9G
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 16:58:30 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGkwH-0000y6-9P
	for lore@pengutronix.de; Mon, 01 Mar 2021 16:58:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hymYujvqyX595UpU7w4QxONZ8Km/yX8Z/Qf9hFNtjus=; b=ovkwDYRQCGNrVCzrq1CDqKpBd
	DBXM88VTzJfDIEq6/Oxjjj9XUtrXBBTZ+LFTAmI2FDd/T6D28XCGIgqGrdLpnoAJ39wNFN9hNOhsk
	zukQQ+yirdTAG99UxS5Cvfo3g9wUUeCQS2ars2a/Rr+yb0mtGut1eJjXA+BDRVc3mYpFMws0mI8cK
	jnd8+SEmrwoyWXg0YVgFUVIZdLAYJYcDXRstxWPcpwL0r0sSIFNGxYW1UTLGGzbWLujLcnxztCQ4Y
	fvTKNMXnKW8FVZphdyShYgxXZ8r0i7YPXsGc8+e9mnO3s7syPKw8t9cgsVrhC8a4bK4FdJAscvmnr
	2XUoPuE4A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGkvO-0006sf-GI; Mon, 01 Mar 2021 15:57:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGkvL-0006s7-L6
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 15:57:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lGkvK-0000sK-MC; Mon, 01 Mar 2021 16:57:30 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lGkvK-0004tO-16; Mon, 01 Mar 2021 16:57:30 +0100
Date: Mon, 1 Mar 2021 16:57:30 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Message-ID: <20210301155730.GG5549@pengutronix.de>
References: <20210228190707.1451161-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210228190707.1451161-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:57:16 up 11 days, 19:21, 73 users,  load average: 0.24, 0.40, 0.24
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_105731_715823_67B00ABF 
X-CRM114-Status: GOOD (  19.93  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] mtd: cfi-flash: fail gracefully instead of crashing
 on NULL page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Feb 28, 2021 at 08:07:05PM +0100, Ahmad Fatoum wrote:
> Until this is fixed, add a comment and have the driver return with an
> error instead of crashing on null pointer dereference if it's mapped to
> zero.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
> Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/mtd/nor/cfi_flash.c | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
> index 225b03ec3d23..ba0bd1b4ebdd 100644
> --- a/drivers/mtd/nor/cfi_flash.c
> +++ b/drivers/mtd/nor/cfi_flash.c
> @@ -969,6 +969,10 @@ static int cfi_probe_one(struct flash_info *info, int num)
>  		return PTR_ERR(iores);
>  	info->base = IOMEM(iores->start);
>  
> +	/* TODO: either remap memory region or disable NULL pointer page */
> +	if (IS_ENABLED(CONFIG_MMU) && iores->start == 0)
> +		return -EPERM;
> +
>  	ret = flash_detect_size(info);
>  	if (ret) {
>  		dev_warn(info->dev, "## Unknown FLASH on Bank at 0x%p - Size = 0x%08lx = %ld MB\n",
> -- 
> 2.30.0
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

