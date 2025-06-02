Delivery-date: Tue, 03 Jun 2025 00:19:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMDUv-0036Vc-2Y
	for lore@lore.pengutronix.de;
	Tue, 03 Jun 2025 00:19:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMDUv-0001Wr-2R
	for lore@pengutronix.de; Tue, 03 Jun 2025 00:19:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CFjl5kZbKv/BBEOgFSI2LZg2c4J1VXtinoLXjTZ+2cs=; b=pjrXjQ6vwRH9XS3adyDct/UHif
	4YEXohfuAh/45Zcun0w+Z/QOQrdS56hO/M3aLMVMiuJazLJwuwedUdl+NfeeCUjN1jMQ/nFQ/frK9
	Djk/03zg1ZE5LnrqKgbLuR8He2XJDQsTrJOCtGzQmYNeGHbii5i69Kc9KZws1WEgKGCKNbbgNgxfj
	HgxVpsqBMhX22DbwGo0LkGqsVkP+miv1Vl/rADNtvo1sOYe8NJCdXyakbSl6LUVRQF3LcFRrI6c2C
	Slrj6WznnN+NVfiDD/SHL95lQ/3WEC0EP8xMSjoTjQZDZGN6Hzvls5lPnPx/M8mtpzxPMMc72CbJP
	0dZbH8Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMDU8-00000009Blf-1HT2;
	Mon, 02 Jun 2025 22:18:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMDSO-00000009BUo-3G7S
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 22:16:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uMDSL-0001LI-Ec; Tue, 03 Jun 2025 00:16:33 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uMDSL-001WWm-0r;
	Tue, 03 Jun 2025 00:16:33 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uMDSL-006mTy-0R;
	Tue, 03 Jun 2025 00:16:33 +0200
Date: Tue, 3 Jun 2025 00:16:33 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250602221633.i7xvmam4jwb22vwz@pengutronix.de>
References: <20250602-createnv-v1-0-c3239ff875d5@pengutronix.de>
 <20250602-createnv-v1-2-c3239ff875d5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250602-createnv-v1-2-c3239ff875d5@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_151636_820408_AE33E0E1 
X-CRM114-Status: GOOD (  28.54  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] partitions: Start partitions at 8MiB offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 25-06-02, Sascha Hauer wrote:
> There are many SoCs that store the bootloader on the raw eMMC/SD device
> outside of partitions. Examples are all i.MX SoCs and Rockchip SoCs.
> Until now the first partition starts at offset 1MiB and with this we
> risk conflicting with the bootloader.
> 
> It's cumbersome to sort out all SoCs that have this problem. With
> nowadays eMMC/SD card sizes it doesn't really matter anymore, so change
> the 1MiB offset to 8MiB which is still only a small fraction of the
> card size, but leaves enough space for putting the bootloader into.
> 
> Note the change in the GPT partition handling introduced with this
> change. The layout previously was:
> 
> LBA0: MBR
> LBA1: GPT header
> LBA2-33: GPT partition entries
> 
> which now becomes:
> 
> LBA0: MBR
> LBA1: GPT header
> LBA16352-16383: GPT partition entries
> 
> This means the GPT partition entries moved from LBA2 to just below the
> 8MiB boundary and LBA2-16351 are now free for the bootloader. This helps
> with with older SoCs on which the bootloader overlaps with the normal
> location of the GPT partition entries, like i.MX7 and earlier.

I know that eMMC became quite large these days but always 'wasting' 8MiB
on systems which utilize the eMMC-boot partitions is not very user
friendly.

I liked the approach which I posted which gives the user the ability to
decide how much space is required if any.

Regards,
  Marco


> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/partitions.c     | 9 +++++++++
>  common/partitions/efi.c | 8 ++++++--
>  include/partitions.h    | 6 ++++++
>  3 files changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/common/partitions.c b/common/partitions.c
> index 25d5f15721fc5980c927863b2745c23d7149da92..b3129ddd5f203c906908adb422e4b8a6dfac25b2 100644
> --- a/common/partitions.c
> +++ b/common/partitions.c
> @@ -186,6 +186,9 @@ int partition_find_free_space(struct partition_desc *pdesc, uint64_t sectors, ui
>  	struct partition *p;
>  	uint64_t min_sec = PARTITION_ALIGN_SECTORS;
>  
> +	if (min_sec < partition_first_usable_lba())
> +		min_sec = partition_first_usable_lba();
> +
>  	min_sec = ALIGN(min_sec, PARTITION_ALIGN_SECTORS);
>  
>  	if (partition_is_free(pdesc, min_sec, sectors)) {
> @@ -223,6 +226,12 @@ int partition_create(struct partition_desc *pdesc, const char *name,
>  		return -EINVAL;
>  	}
>  
> +	if (lba_start < partition_first_usable_lba()) {
> +		pr_err("partition starts before first usable lba: %llu < %llu\n",
> +		       lba_start, partition_first_usable_lba());
> +		return -EINVAL;
> +	}
> +
>  	list_for_each_entry(part, &pdesc->partitions, list) {
>  		if (region_overlap_end(part->first_sec,
>  				       part->first_sec + part->size - 1,
> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> index 92868e4a77e5688d547ee3f2cac3ab9534a4ebdb..d237f734df50987b2d8ae41f83edc3e744fcf604 100644
> --- a/common/partitions/efi.c
> +++ b/common/partitions/efi.c
> @@ -585,7 +585,7 @@ static __maybe_unused struct partition_desc *efi_partition_create_table(struct b
>  	gpt_header *gpt;
>  	unsigned int num_partition_entries = 128;
>  	unsigned int gpt_size = (sizeof(gpt_entry) * num_partition_entries) / SECTOR_SIZE;
> -	unsigned int first_usable_lba = gpt_size + 2;
> +	unsigned int first_usable_lba = partition_first_usable_lba();
>  
>  	partition_desc_init(&epd->pd, blk);
>  
> @@ -719,7 +719,11 @@ static int efi_protective_mbr(struct block_device *blk)
>  		return PTR_ERR(pdesc);
>  	}
>  
> -	ret = partition_create(pdesc, "primary", "0xee", 1, last_lba(blk));
> +	/*
> +	 * For the protective MBR call directly into the mkpart hook. partition_create()
> +	 * does not allow us to create a partition starting at LBA1
> +	 */
> +	ret = pdesc->parser->mkpart(pdesc, "primary", "0xee", 1, last_lba(blk));
>  	if (ret) {
>  		pr_err("Cannot create partition: %pe\n", ERR_PTR(ret));
>  		goto out;
> diff --git a/include/partitions.h b/include/partitions.h
> index dd3e631c5aa337d752312cd94be5e7dbb4f527a5..6d97af824845eaf8c73a39e42bd4e9ed88a8e367 100644
> --- a/include/partitions.h
> +++ b/include/partitions.h
> @@ -8,6 +8,7 @@
>  #define __PARTITIONS_PARSER_H__
>  
>  #include <block.h>
> +#include <disks.h>
>  #include <filetype.h>
>  #include <linux/uuid.h>
>  #include <linux/list.h>
> @@ -71,4 +72,9 @@ void partition_table_free(struct partition_desc *pdesc);
>  bool partition_is_free(struct partition_desc *pdesc, uint64_t start, uint64_t size);
>  int partition_find_free_space(struct partition_desc *pdesc, uint64_t sectors, uint64_t *start);
>  
> +static inline uint64_t partition_first_usable_lba(void)
> +{
> +	return SZ_8M / SECTOR_SIZE;
> +}
> +
>  #endif /* __PARTITIONS_PARSER_H__ */
> 
> -- 
> 2.39.5
> 
> 
> 


