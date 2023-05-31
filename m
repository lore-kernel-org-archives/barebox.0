Delivery-date: Wed, 31 May 2023 19:24:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4PYd-004Yyi-Dc
	for lore@lore.pengutronix.de; Wed, 31 May 2023 19:24:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4PYa-00051P-EE
	for lore@pengutronix.de; Wed, 31 May 2023 19:24:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LE0tRKplr7dluEUVefR4fmn/MGeFO1EQ5FpnYqfjS4k=; b=zoA4bmYZkkWvmIYdoWm787ZII3
	NyeTHN4di4iuDDbYLbEnzEdnEtJ4XIxWYxD6nx5INd00b7iKaXEBK6GpwVA7+acq0pWozoG0N7Nvg
	/nZtUkTQokgV16kn5BQ/NteHoQKfMEpu+51Oqj62QSTveCxoaWfT9xlg7dSQ2EapPhisXNQhZUFTw
	bBI4EYUQmDuTx9Uw7qdhOg80+wkoQ97EURQeEgZ8g9oR/hojmPU0f6w8g/EAW2wBib8KBaUG25FDI
	P7KrK/gT9pylWiAUeDE5q66SA12lASB9R6N9qxC0IiHklBcvCTRsE7BknXdLjD/Di3tZ2VMcLbbj8
	5doAnqSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4PXT-000c2c-0Q;
	Wed, 31 May 2023 17:23:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4PXQ-000c1Q-0y
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 17:23:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4PXN-0004v4-H2; Wed, 31 May 2023 19:23:05 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4PXN-00057W-9y; Wed, 31 May 2023 19:23:05 +0200
Date: Wed, 31 May 2023 19:23:05 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230531172305.cgcargl7mcpevmv3@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-11-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531145927.1399282-11-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_102308_342271_9CF82B8E 
X-CRM114-Status: GOOD (  26.47  )
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
Subject: Re: [PATCH 10/18] cdev: have devfs_add_partition return existing
 identical partition, not NULL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 23-05-31, Ahmad Fatoum wrote:
> Starting with commit 7f9f45b9bfef ("devfs: Do not create overlapping
> partitions"), any overlapping is disallowed. Overlapping can be useful
> though to bridge the gap between partition described in DT and via
> on-disk partition tables. Let's handle the case of identical partitions
> specially and have it neither be an error or a duplicate partition, but
> instead just return the existing partition. This existing partition will
> be given a device tree node and thus enabling schemes like:
> 
>   &{/state} {
>   	backend = <&state_part>;
>   };
> 
>   &mmc1 {
>          partitions {
>                  compatible = "fixed-partitions";
>                  #address-cells = <2>;
>                  #size-cells = <2>;
> 
>                  state_part: partition@5300000 {
>                          label = "barebox-state";
> 			 /* will be folded with overlapping GPT partition if found */
>                          reg = <0x0 0x5300000 0x0 0x100000>;
>                  };
>          };
>   };
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/devfs-core.c | 50 ++++++++++++++++++++++++++++++++++++++-----------
>  1 file changed, 39 insertions(+), 11 deletions(-)
> 
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index a0732dafca42..b3a274d01ee0 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -402,6 +402,12 @@ int devfs_remove(struct cdev *cdev)
>  	return 0;
>  }
>  
> +static bool region_identical(loff_t starta, loff_t lena,
> +			     loff_t startb, loff_t lenb)
> +{
> +	return starta == startb && lena == lenb;
> +}
> +
>  static bool region_overlap(loff_t starta, loff_t lena,
>  			   loff_t startb, loff_t lenb)
>  {
> @@ -412,10 +418,22 @@ static bool region_overlap(loff_t starta, loff_t lena,
>  	return 1;
>  }
>  
> -static int check_overlap(struct cdev *cdev, const char *name, loff_t offset, loff_t size)
> +/**
> + * check_overlap() - check overlap with existing partitions
> + * @cdev: parent cdev
> + * @name: partition name for informational purposes on conflict
> + * @offset: offset of new partition to be added
> + * @size: size of new partition to be added
> + *
> + * Return: NULL if no overlapping partition found or overlapping
> + *         partition if and only if it's identical in offset and size
> + *         to an existing partition. Otherwise, PTR_ERR(-EINVAL).
> + */
> +static struct cdev *check_overlap(struct cdev *cdev, const char *name, loff_t offset, loff_t size)
>  {
>  	struct cdev *cpart;
>  	loff_t cpart_offset;
> +	int ret;
>  
>  	list_for_each_entry(cpart, &cdev->partitions, partition_entry) {
>  		cpart_offset = cpart->offset;
> @@ -428,20 +446,28 @@ static int check_overlap(struct cdev *cdev, const char *name, loff_t offset, lof
>  		if (cpart->mtd)
>  			cpart_offset = cpart->mtd->master_offset;
>  
> -		if (region_overlap(cpart_offset, cpart->size,
> -				   offset, size))
> +		if (region_identical(cpart_offset, cpart->size, offset, size)) {
> +			ret = 0;
>  			goto conflict;
> +		}

The 'goto conflict' is a bit misleading here since this is no conflict
as you described within the commit message. I would rather do:

		if (region_identical(cpart_offset, cpart->size, offset, size))
			goto out_identical;

and replace the __pr_printk() by pr_debug(). This way you split
__pr_printk() and drop the ternary operator. The rest lgtm.

Regards,
  Marco

> +
> +		if (region_overlap(cpart_offset, cpart->size, offset, size)) {
> +			ret = -EINVAL;
> +			goto conflict;
> +		}
>  	}
>  
> -	return 0;
> +	return NULL;
>  
>  conflict:
> -	pr_err("New partition %s (0x%08llx-0x%08llx) on %s "
> -		"overlaps with partition %s (0x%08llx-0x%08llx), not creating it\n",
> -		name, offset, offset + size - 1, cdev->name,
> -		cpart->name, cpart_offset, cpart_offset + cpart->size - 1);
> +	__pr_printk(ret ? MSG_WARNING : MSG_DEBUG,
> +		    "New partition %s (0x%08llx-0x%08llx) on %s "
> +		    "%s with partition %s (0x%08llx-0x%08llx), not creating it\n",
> +		    name, offset, offset + size - 1, cdev->name,
> +		    ret ? "conflicts" : "identical",
> +		    cpart->name, cpart_offset, cpart_offset + cpart->size - 1);
>  
> -	return -EINVAL;
> +	return ret ? ERR_PTR(ret) : cpart;
>  }
>  
>  static struct cdev *__devfs_add_partition(struct cdev *cdev,
> @@ -449,6 +475,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
>  {
>  	loff_t offset, size;
>  	static struct cdev *new;
> +	struct cdev *overlap;
>  
>  	if (cdev_by_name(partinfo->name))
>  		return ERR_PTR(-EEXIST);
> @@ -479,8 +506,9 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
>  		return ERR_PTR(-EINVAL);
>  	}
>  
> -	if (check_overlap(cdev, partinfo->name, offset, size))
> -		return ERR_PTR(-EINVAL);
> +	overlap = check_overlap(cdev, partinfo->name, offset, size);
> +	if (overlap)
> +		return overlap;
>  
>  	if (IS_ENABLED(CONFIG_MTD) && cdev->mtd) {
>  		struct mtd_info *mtd;
> -- 
> 2.39.2
> 
> 
> 


