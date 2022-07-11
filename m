Delivery-date: Mon, 11 Jul 2022 12:33:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAqje-002Qp2-Ar
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 12:33:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAqjb-0003Gh-Js
	for lore@pengutronix.de; Mon, 11 Jul 2022 12:33:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3dGPTOuGemT7euiQDa0JZQhAQ9LzByuizdO6UZDTf6o=; b=OjqWKAxgmt/ME5QlTNhQKflIea
	tb/r4cVcww+d9pMNIeoRzn/ZRMPgEGAWpjyzPWZc+1TqZ1qehDcEvTwLuWUBtlxX6x/EmICr/nk4z
	Vii1d5wFrHz8J7mgok3k3vudtgCRrkADLa7gAdCxuA4skitRsPSlX8YJyaXYg5s/O7hcNP9whvvXU
	MZy1VQdZA+Mh8q5nZLhEP1b32WAOd2Q560CNL4gQwdmMu1UC5FRwpcCq5kraeLROKE5FWJiPXv1py
	zldFils179qYNybp2IZjFH02LnEtoZ0upWDP5o+SRb84OtE6jvhpUYNyD4t0OFs62Uh5NMsqXvbNj
	tY88Yf9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAqhz-000g5f-OF; Mon, 11 Jul 2022 10:32:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAqhv-000g4l-OY
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 10:32:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oAqhq-00031w-CV; Mon, 11 Jul 2022 12:31:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oAqhq-0007me-3p; Mon, 11 Jul 2022 12:31:58 +0200
Date: Mon, 11 Jul 2022 12:31:58 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220711103158.GA29790@pengutronix.de>
References: <20220711083128.kwazqb2wbmqqvdub@pengutronix.de>
 <20220711090915.1487105-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220711090915.1487105-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_033203_822158_DDF35520 
X-CRM114-Status: GOOD (  25.53  )
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
Subject: Re: [PATCH 1/2] devfs: take into account for the partitions check
 that mtd is different
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 11, 2022 at 11:09:14AM +0200, Uwe Kleine-König wrote:
> mtd partitions are separate devices. Their partition info is relative to
> these subdevices and so offset is 0 for them. This needs to be taken
> into account for the overlap check.
> 
> Fixes: 7f9f45b9bfef ("devfs: Do not create overlapping partitions")
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  fs/devfs-core.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index 38423e5d1e07..dca5e10191d4 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -395,9 +395,20 @@ static bool region_overlap(loff_t starta, loff_t lena,
>  static int check_overlap(struct cdev *cdev, const char *name, loff_t offset, loff_t size)
>  {
>  	struct cdev *cpart;
> +	loff_t cpart_offset;
>  
>  	list_for_each_entry(cpart, &cdev->partitions, partition_entry) {
> -		if (region_overlap(cpart->offset, cpart->size,
> +		cpart_offset = cpart->offset;
> +
> +		/*
> +		 * An mtd partition is represented by a separate cdev and its
> +		 * cpart is relative to this one. So its .offset is 0 and we
> +		 * have to consult .master_offset to get its offset.
> +		 */
> +		if (cpart->mtd)
> +			cpart_offset = cpart->mtd->master_offset;
> +
> +		if (region_overlap(cpart_offset, cpart->size,
>  				   offset, size))
>  			goto conflict;
>  	}
> @@ -408,7 +419,7 @@ conflict:
>  	pr_err("New partition %s (0x%08llx-0x%08llx) on %s "
>  		"overlaps with partition %s (0x%08llx-0x%08llx), not creating it\n",
>  		name, offset, offset + size - 1, cpart->name,
> -		cpart->name, cpart->offset, cpart->offset + cpart->size - 1);
> +		cpart->name, cpart_offset, cpart_offset + cpart->size - 1);
>  
>  	return -EINVAL;
>  }
> -- 
> 2.36.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


