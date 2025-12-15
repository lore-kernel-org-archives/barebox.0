Delivery-date: Mon, 15 Dec 2025 13:29:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV7hY-00Bk4o-3C
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 13:29:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV7hY-0005fo-9g
	for lore@pengutronix.de; Mon, 15 Dec 2025 13:29:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3y/fvmtbgmVA63JjCsdsiZ8n1zji4BKI+4ah+hIApNs=; b=R0FucPfdCoYX0J9Y1yxTE5KZCF
	IjGsdMprPkIm495SVmN360DOHEvklU3SFQdefXVVi6QlfiSBVP59n24iSdX7p3krP1jkvD32QHSnj
	FM454h7idIS3YvTfEIHkHjInPEwMBZNnaSXDdw0XzTV3G6EQ5bK5HjEphKrg/2nsWGr33jtZoce36
	B21T8OHNSjKpL9H5Ky9L10cbRI0x+qE/yi1wc2HDSV5pxUU1dsMh+HEkcZjlUaiFLL/6yPmYpHw4O
	mTMlvVr+t/4U6z29dvWUdZOFGbUfZKFvqPLlyQS5qrpvCI68FmrVl2eRb+yezofMwr8ltHYzoTgKV
	tpPOUaAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7h5-00000003cXN-1vhP;
	Mon, 15 Dec 2025 12:28:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7h1-00000003cWi-2grN
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 12:28:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV7h0-0005bZ-2B; Mon, 15 Dec 2025 13:28:46 +0100
Message-ID: <fe7cae90-6696-4a0e-8e23-01e34db51fa0@pengutronix.de>
Date: Mon, 15 Dec 2025 13:28:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
 <20251203-efi-partition-refresh-v1-1-f0b6e79b5fa0@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251203-efi-partition-refresh-v1-1-f0b6e79b5fa0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_042847_686325_F3534C18 
X-CRM114-Status: GOOD (  27.40  )
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
Subject: Re: [PATCH 1/6] partitions: gpt: pass epd context pointer to
 find_valid_gpt()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/3/25 4:19 PM, Sascha Hauer wrote:
> Pass the epd context pointer to find_valid_gpt() which we'll use in a
> followup patch. This makes other arguments unnecessary, so they are
> dropped. While at it change the return value of find_valid_gpt() to
> standard 0 for success and negative error code otherwise.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/partitions/efi.c | 58 ++++++++++++++++++++++++-------------------------
>  1 file changed, 29 insertions(+), 29 deletions(-)
> 
> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> index 88d8a2d739c4e545952684f5647d105d9f38b028..da9c2d89c1c68ae1acebc1f8eaea8da48243f0d6 100644
> --- a/common/partitions/efi.c
> +++ b/common/partitions/efi.c
> @@ -381,11 +381,10 @@ compare_gpts(struct device *dev, gpt_header *pgpt, gpt_header *agpt,
>  
>  /**
>   * find_valid_gpt() - Search disk for valid GPT headers and PTEs
> - * @state
> - * @gpt is a GPT header ptr, filled on return.
> - * @ptes is a PTEs ptr, filled on return.
> - * Description: Returns 1 if valid, 0 on error.
> - * If valid, returns pointers to newly allocated GPT header and PTEs.
> + * @buf buffer containing the first lba
> + * @epd the efi partition descriptor context pointer
> + * Description: Returns 0 for success, negative error code otherwise.
> + * If valid, epd is filled with pointers to newly allocated GPT header and PTEs.
>   * Validity depends on PMBR being valid (or being overridden by the
>   * 'gpt' kernel command line option) and finding either the Primary
>   * GPT header and PTEs valid, or the Alternate GPT header and PTEs
> @@ -394,17 +393,14 @@ compare_gpts(struct device *dev, gpt_header *pgpt, gpt_header *agpt,
>   * This protects against devices which misreport their size, and forces
>   * the user to decide to use the Alternate GPT.
>   */
> -static int find_valid_gpt(void *buf, struct block_device *blk, gpt_header **gpt,
> -			  gpt_entry **ptes)
> +static int find_valid_gpt(struct efi_partition_desc *epd, void *buf)
>  {
> +	struct block_device *blk = epd->pd.blk;
>  	int good_pgpt = 0, good_agpt = 0;
>  	gpt_header *pgpt = NULL, *agpt = NULL;
>  	gpt_entry *pptes = NULL, *aptes = NULL;
>  	u64 lastlba;
>  
> -	if (!ptes)
> -		return 0;
> -
>  	lastlba = last_lba(blk);
>  	if (force_gpt) {
>  		/* This will be added to the EFI Spec. per Intel after v1.02. */
> @@ -430,21 +426,20 @@ static int find_valid_gpt(void *buf, struct block_device *blk, gpt_header **gpt,
>  
>  	/* The good cases */
>  	if (good_pgpt) {
> -		*gpt  = pgpt;
> -		*ptes = pptes;
> +		epd->gpt  = pgpt;
> +		epd->ptes = pptes;
>  		free(agpt);
>  		free(aptes);
>  		if (!good_agpt)
>  			dev_warn(blk->dev, "Alternate GPT is invalid, using primary GPT.\n");
> -		return 1;
> -	}
> -	else if (good_agpt) {
> -		*gpt  = agpt;
> -		*ptes = aptes;
> +		return 0;
> +	} else {
> +		epd->gpt  = agpt;
> +		epd->ptes = aptes;
>  		free(pgpt);
>  		free(pptes);
>  		dev_warn(blk->dev, "Primary GPT is invalid, using alternate GPT.\n");
> -		return 1;
> +		return 0;
>  	}
>  
>   fail:
> @@ -452,9 +447,8 @@ static int find_valid_gpt(void *buf, struct block_device *blk, gpt_header **gpt,
>  	free(agpt);
>  	free(pptes);
>  	free(aptes);
> -	*gpt = NULL;
> -	*ptes = NULL;
> -	return 0;
> +
> +	return -EINVAL;
>  }
>  
>  static void part_set_efi_name(gpt_entry *pte, char *dest)
> @@ -516,9 +510,17 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
>  	struct efi_partition *epart;
>  	struct partition *pentry;
>  	struct efi_partition_desc *epd;
> +	int ret;
>  
> -	if (!find_valid_gpt(buf, blk, &gpt, &ptes) || !gpt || !ptes)
> -		return NULL;
> +	epd = xzalloc(sizeof(*epd));
> +	partition_desc_init(&epd->pd, blk);
> +
> +	ret = find_valid_gpt(epd, buf);
> +	if (ret)
> +		goto err;
> +
> +	gpt = epd->gpt;
> +	ptes = epd->ptes;
>  
>  	blk->cdev.flags |= DEVFS_IS_GPT_PARTITIONED;
>  
> @@ -530,12 +532,6 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
>  		nb_part = MAX_PARTITION;
>  	}
>  
> -	epd = xzalloc(sizeof(*epd));
> -	partition_desc_init(&epd->pd, blk);
> -
> -	epd->gpt = gpt;
> -	epd->ptes = ptes;
> -
>  	snprintf(blk->cdev.diskuuid, sizeof(blk->cdev.diskuuid), "%pUl", &gpt->disk_guid);
>  	add_gpt_diskuuid_param(epd, blk);
>  
> @@ -560,6 +556,10 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
>  	}
>  
>  	return &epd->pd;
> +err:
> +	free(epd);
> +
> +	return NULL;
>  }
>  
>  static void efi_partition_free(struct partition_desc *pd)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



