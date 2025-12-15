Delivery-date: Mon, 15 Dec 2025 13:34:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV7mr-00Bk92-1K
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 13:34:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV7mp-0006WR-GX
	for lore@pengutronix.de; Mon, 15 Dec 2025 13:34:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mFafJiZBoflziyxXnM7BTONxHvnk0sYtfZCrpUOvZZk=; b=VY14EtHONJU0XfNaDRXGUcFqZt
	LKGS8Y7kSQ3I6cSMwNvGVpVfmsbIHbjrESmr3aONWqYqmafh+/WNuz7M/wSR4fv2iUMNGFLvS5T8G
	H/h4mIt7Rly2rpbh9vg3sM3e+fCR3+BxNikhQXjEuFPyPtbXU8ttHzBKaamiHteWh2pyDa8vYe1m6
	ezSnefnNCHblvBLSyeiyND8OCgw6FYEJMO+fCqsF/CQNzogO5E3/jsydEmgICBn/QA95Ba+VOV9Cv
	/bHFGGzxkJP7ijwJpcWdjnNiEIblRBioEV67c3x5ElYv/4MSAl7j90UR9dLU2ZgnCBg038nT52j5D
	LPvizMlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7mN-00000003dVC-3YhG;
	Mon, 15 Dec 2025 12:34:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7mK-00000003dUo-2VVe
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 12:34:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV7mI-0006Qk-UI; Mon, 15 Dec 2025 13:34:15 +0100
Message-ID: <107eff71-df32-42dd-b7e3-a67fc00a5715@pengutronix.de>
Date: Mon, 15 Dec 2025 13:34:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
 <20251203-efi-partition-refresh-v1-3-f0b6e79b5fa0@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251203-efi-partition-refresh-v1-3-f0b6e79b5fa0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_043416_663173_62DFF2E2 
X-CRM114-Status: GOOD (  26.59  )
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
Subject: Re: [PATCH 3/6] partitions: gpt: factor out a function to write
 primary/alternate GPT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/3/25 4:19 PM, Sascha Hauer wrote:
> In preparation for writing the inactive GPT first factor out a function
> which either writes the primary or alternate GPT based on a boolean
> argument.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/partitions/efi.c | 92 ++++++++++++++++++++++++++++---------------------
>  1 file changed, 53 insertions(+), 39 deletions(-)
> 
> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> index 76c5393dddb04e2966d3a4b4478d5085f008d935..8da62acf36646b62ff2fac25673adbc48650d299 100644
> --- a/common/partitions/efi.c
> +++ b/common/partitions/efi.c
> @@ -740,75 +740,89 @@ static int efi_protective_mbr(struct block_device *blk)
>  	return ret;
>  }
>  
> -static __maybe_unused int efi_partition_write(struct partition_desc *pd)
> +static int __efi_partition_write(struct efi_partition_desc *epd, bool primary)
>  {
> -	struct block_device *blk = pd->blk;
> -	struct efi_partition_desc *epd = container_of(pd, struct efi_partition_desc, pd);
> -	gpt_header *gpt = epd->gpt, *altgpt;
> +	struct block_device *blk = epd->pd.blk;
> +	gpt_header *gpt;
> +	unsigned int count, size;
> +	uint64_t my_lba, partition_entry_lba;
>  	int ret;
> -	uint32_t count;
> -	uint64_t from, size;
>  
> -	if (le32_to_cpu(gpt->num_partition_entries) != 128) {
> -		/*
> -		 * This is not yet properly implemented. At least writing of the
> -		 * alternative GPT is not correctly implemented for this case as
> -		 * we can't assume that the partition entries are written at
> -		 * last_lba() - 32, we would have to calculate that from the number
> -		 * of partition entries.
> -		 */
> -		pr_err("num_partition_entries is != 128. This is not yet supported for writing\n");
> -		return -EINVAL;
> -	}
> +	gpt = xmemdup(epd->gpt, SECTOR_SIZE);
>  
>  	count = le32_to_cpu(gpt->num_partition_entries) *
>  		le32_to_cpu(gpt->sizeof_partition_entry);
>  
> -	gpt->my_lba = cpu_to_le64(1);
> -	gpt->alternate_lba = cpu_to_le64(last_lba(blk));
> +	size = count / GPT_BLOCK_SIZE;
> +
> +	if (primary) {
> +		my_lba = 1;
> +		partition_entry_lba = le64_to_cpu(gpt->partition_entry_lba);
> +		gpt->alternate_lba = cpu_to_le64(last_lba(blk));
> +	} else {
> +		my_lba = last_lba(blk);
> +		partition_entry_lba = last_lba(blk) - 32;
> +		gpt->alternate_lba = cpu_to_le64(1);
> +	}
> +
> +	gpt->my_lba = cpu_to_le64(my_lba);
> +	gpt->partition_entry_lba = cpu_to_le64(partition_entry_lba);
>  	gpt->partition_entry_array_crc32 = cpu_to_le32(efi_crc32(
>  			(const unsigned char *)epd->ptes, count));
>  	gpt->header_crc32 = 0;
>  	gpt->header_crc32 = cpu_to_le32(efi_crc32((const unsigned char *)gpt,
>  						  le32_to_cpu(gpt->header_size)));
>  
> -	ret = efi_protective_mbr(blk);
> +	ret = block_write(blk, gpt, my_lba, 1);
>  	if (ret)
> -		return ret;
> +		goto err_block_write;
>  
> -	ret = block_write(blk, gpt, 1, 1);
> +	ret = block_write(blk, epd->ptes, partition_entry_lba, size);
>  	if (ret)
>  		goto err_block_write;
>  
> -	from = le64_to_cpu(gpt->partition_entry_lba);
> -	size = count / GPT_BLOCK_SIZE;
> +err_block_write:
> +	free(gpt);
>  
> -	ret = block_write(blk, epd->ptes, from, size);
> -	if (ret)
> -		goto err_block_write;
> +	return ret;
> +}
>  
> -	altgpt = xmemdup(gpt, SECTOR_SIZE);
> +static __maybe_unused int efi_partition_write(struct partition_desc *pd)
> +{
> +	struct block_device *blk = pd->blk;
> +	struct efi_partition_desc *epd = container_of(pd, struct efi_partition_desc, pd);
> +	gpt_header *gpt = epd->gpt;
> +	int ret;
>  
> -	altgpt->alternate_lba = cpu_to_le64(1);
> -	altgpt->my_lba = cpu_to_le64(last_lba(blk));
> -	altgpt->partition_entry_lba = cpu_to_le64(last_lba(blk) - 32);
> -	altgpt->header_crc32 = 0;
> -	altgpt->header_crc32 = cpu_to_le32(efi_crc32((const unsigned char *)altgpt,
> -						  le32_to_cpu(altgpt->header_size)));
> -	ret = block_write(blk, altgpt, last_lba(blk), 1);
> +	if (le32_to_cpu(gpt->num_partition_entries) != 128) {
> +		/*
> +		 * This is not yet properly implemented. At least writing of the
> +		 * alternative GPT is not correctly implemented for this case as
> +		 * we can't assume that the partition entries are written at
> +		 * last_lba() - 32, we would have to calculate that from the number
> +		 * of partition entries.
> +		 */
> +		pr_err("num_partition_entries is != 128. This is not yet supported for writing\n");
> +		return -EINVAL;
> +	}
>  
> -	free(altgpt);
> +	ret = efi_protective_mbr(blk);
> +	if (ret)
> +		return ret;
>  
> +	ret = __efi_partition_write(epd, true);
>  	if (ret)
>  		goto err_block_write;
> -	ret = block_write(blk, epd->ptes, last_lba(blk) - 32, size);
> +
> +	ret = __efi_partition_write(epd, false);
>  	if (ret)
>  		goto err_block_write;
>  
> -	return 0;
> +	ret = 0;
>  
>  err_block_write:
> -	pr_err("Cannot write to block device: %pe\n", ERR_PTR(ret));
> +	if (ret)
> +		pr_err("Cannot write to block device: %pe\n", ERR_PTR(ret));
>  
>  	return ret;
>  }
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



