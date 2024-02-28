Delivery-date: Wed, 28 Feb 2024 18:38:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfNso-00DmHE-0z
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 18:38:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfNsn-0001A2-B1
	for lore@pengutronix.de; Wed, 28 Feb 2024 18:38:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YB8uGcDezJVxX3pvZmM6IABmsvZg+srEwbxnFZv2Th8=; b=p+YpTBMgycXNuTQSmw9IdRuAjo
	FBaqms4NRg9dih0vidbq/DPvfcppim+JNMg/tC22tzyz7XrcbzixXCb8HFChZv7oqq7SYdkiOgF2V
	4622ZeQePYz+yFNwSyckc5pE9IR0WDrEhr1NGXr9GjLuQ3T5ecodC/uuEsnHUJWAnfza0TTukX0Un
	5Jt8SbmD0CusjTubP8WBIylYKvoWN1lP4EU6fo0Q428otrvy4XNeBcJEOMq2uMpEiAkXKYhc7Kbgn
	ULM/j1zovu+W/Mxxzn/CCxr02x2b3nGhHTEChdXQp4eaWR5QKvt4Kc3YVIxsRsZTuLDLH9ISP8sjb
	r9n/zIbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfNsL-0000000AK5T-3yQx;
	Wed, 28 Feb 2024 17:37:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfNsI-0000000AK4D-3rXr
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 17:37:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfNsH-0000gi-OZ; Wed, 28 Feb 2024 18:37:45 +0100
Message-ID: <7df5436f-a405-49ae-9876-52751d0fd905@pengutronix.de>
Date: Wed, 28 Feb 2024 18:37:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240219083140.2713047-1-s.hauer@pengutronix.de>
 <20240219083140.2713047-11-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240219083140.2713047-11-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_093747_153279_73275BCE 
X-CRM114-Status: GOOD (  20.12  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 10/12] partitions: dos: implement partition manipulation
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 19.02.24 09:31, Sascha Hauer wrote:
> -		pentry = xzalloc(sizeof(*pentry));
> +		dpart = xzalloc(sizeof(*dpart));
> +		dpart->boot_indicator = table[i].boot_indicator;
> +		memcpy(dpart->chs_begin, table[i].chs_begin, sizeof(table[i].chs_begin));
> +		dpart->type = table[i].type;
> +		memcpy(dpart->chs_end, table[i].chs_end, sizeof(table[i].chs_end));
> +
> +		pentry = &dpart->part;
>  
>  		pentry->first_sec = first_sec;
>  		pentry->size = get_unaligned_le32(&table[i].partition_size);
>  		pentry->dos_partition_type = table[i].type;
> +		pentry->num = i + 1;

I suspect this breaks my boot script for MBR systems.
Please revert to zero-based numbering.

Thanks,
Ahmad

>  
> -		if (signature)
> +		if (signature) {
>  			sprintf(pentry->partuuid, "%08x-%02d", signature, i + 1);
> +			dpd->signature = signature;
> +		}
>  
>  		if (is_extended_partition(pentry)) {
> +			dpart->extended = true;
>  			pentry->size = 2;
>  
>  			if (!extended_partition)
> @@ -226,11 +261,11 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
>  				dev_warn(blk->dev, "Skipping additional extended partition\n");
>  		}
>  
> -		list_add_tail(&pentry->list, &pd->partitions);
> +		list_add_tail(&pentry->list, &dpd->pd.partitions);
>  	}
>  
>  	if (extended_partition)
> -		dos_extended_partition(blk, pd, extended_partition, signature);
> +		dos_extended_partition(blk, dpd, extended_partition, signature);
>  
>  	dsp = xzalloc(sizeof(*dsp));
>  	dsp->blk = blk;
> @@ -249,23 +284,218 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
>  			dos_set_disk_signature, dos_get_disk_signature,
>  			&dsp->signature, "%08x", dsp);
>  
> -	return pd;
> +	return &dpd->pd;
>  }
>  
>  static void dos_partition_free(struct partition_desc *pd)
>  {
>  	struct partition *part, *tmp;
>  
> -	list_for_each_entry_safe(part, tmp, &pd->partitions, list)
> -		free(part);
> +	list_for_each_entry_safe(part, tmp, &pd->partitions, list) {
> +		struct dos_partition *dpart = container_of(part, struct dos_partition, part);
> +
> +		free(dpart);
> +	}
>  
>  	free(pd);
>  }
>  
> +static __maybe_unused struct partition_desc *dos_partition_create_table(struct block_device *blk)
> +{
> +	struct dos_partition_desc *dpd = xzalloc(512);
> +
> +	partition_desc_init(&dpd->pd, blk);
> +
> +	dpd->signature = random32();
> +
> +	return &dpd->pd;
> +}
> +
> +static int fs_type_to_type(const char *fstype)
> +{
> +	unsigned long type;
> +	int ret;
> +
> +	if (!strcmp(fstype, "ext2"))
> +		return 0x83;
> +	if (!strcmp(fstype, "ext3"))
> +		return 0x83;
> +	if (!strcmp(fstype, "ext4"))
> +		return 0x83;
> +	if (!strcmp(fstype, "fat16"))
> +		return 0xe;
> +	if (!strcmp(fstype, "fat32"))
> +		return 0xc;
> +
> +	ret = kstrtoul(fstype, 16, &type);
> +	if (ret)
> +		return ret;
> +
> +	if (type > 0xff)
> +		return -EINVAL;
> +
> +	return type;
> +}
> +
> +static __maybe_unused int dos_partition_mkpart(struct partition_desc *pd,
> +					       const char *name, const char *fs_type,
> +					       uint64_t start_lba, uint64_t end_lba)
> +{
> +	struct dos_partition *dpart;
> +	struct partition *part, *part_extended = NULL;
> +	int npart = 0, npart_logical = 0;
> +	uint64_t size;
> +	int mask_free = 0xf;
> +	int type = fs_type_to_type(fs_type);
> +
> +	if (type < 0) {
> +		pr_err("invalid fs_type \"%s\"\n", fs_type);
> +		return -EINVAL;
> +	}
> +
> +	if (start_lba < 1) {
> +		pr_err("invalid start LBA, minimum is 1\n");
> +		return -EINVAL;
> +	}
> +
> +	list_for_each_entry(part, &pd->partitions, list) {
> +		dpart = container_of(part, struct dos_partition, part);
> +
> +		mask_free &= ~(1 << npart);
> +
> +		if (dpart->extended)
> +			part_extended = part;
> +		if (dpart->logical)
> +			npart_logical++;
> +		else
> +			npart++;
> +	}
> +
> +	if (!strcmp(name, "extended")) {
> +		if (part_extended) {
> +			pr_err("extended partition already exists\n");
> +			return -ENOSPC;
> +		}
> +		goto create;
> +	} else if (!strcmp(name, "primary")) {
> +		if (npart == 4) {
> +			pr_err("Can't create any more partitions\n");
> +			return -ENOSPC;
> +		}
> +
> +		goto create;
> +	} else if (!strcmp(name, "logical")) {
> +		if (!part_extended) {
> +			pr_err("No extended partition\n");
> +			return -EINVAL;
> +		}
> +
> +		if (npart_logical >= 4) {
> +			pr_err("Can't create any more partitions\n");
> +			return -ENOSPC;
> +		}
> +
> +		pr_err("Can't create logical partitions yet\n");
> +		return -EINVAL;
> +	} else {
> +		pr_err("Invalid name \"%s\"\n", name);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +
> +create:
> +	dpart = xzalloc(sizeof(*dpart));
> +	part = &dpart->part;
> +
> +	if (start_lba > UINT_MAX)
> +		return -ENOSPC;
> +	size = end_lba - start_lba + 1;
> +
> +	if (size > UINT_MAX)
> +		return -ENOSPC;
> +
> +	dpart->type = fs_type_to_type(fs_type);
> +
> +	part->first_sec = start_lba;
> +	part->size = size;
> +	part->num = ffs(mask_free);
> +
> +	list_add_tail(&part->list, &pd->partitions);
> +
> +	return 0;
> +}
> +
> +static __maybe_unused int dos_partition_rmpart(struct partition_desc *pd, struct partition *part)
> +{
> +	struct dos_partition *dpart = container_of(part, struct dos_partition, part);
> +
> +	list_del(&part->list);
> +	free(dpart);
> +
> +	return 0;
> +}
> +
> +static __maybe_unused int dos_partition_write(struct partition_desc *pd)
> +{
> +	struct dos_partition_desc *dpd = container_of(pd, struct dos_partition_desc, pd);
> +	struct dos_partition *dpart;
> +	struct partition *part;
> +	void *buf;
> +	struct partition_entry *table, *entry;
> +	int ret;
> +
> +	list_for_each_entry(part, &pd->partitions, list) {
> +		dpart = container_of(part, struct dos_partition, part);
> +		if (dpart->logical) {
> +			pr_err("Cannot write tables with logical partitions yet\n");
> +			return -EINVAL;
> +		}
> +	}
> +
> +	buf = read_mbr(pd->blk);
> +	if (!buf)
> +		return -EIO;
> +
> +	put_unaligned_le32(dpd->signature, buf + 0x1b8);
> +
> +	table = buf + 0x1be;
> +	memset(table, 0x0, sizeof(*table) * 4);
> +
> +	*(u8 *)(buf + 0x1fe) = 0x55;
> +	*(u8 *)(buf + 0x1ff) = 0xaa;
> +
> +	list_for_each_entry(part, &pd->partitions, list) {
> +		dpart = container_of(part, struct dos_partition, part);
> +
> +		entry = &table[part->num - 1];
> +
> +		entry->boot_indicator = dpart->boot_indicator;
> +		memcpy(entry->chs_begin, dpart->chs_begin, sizeof(entry->chs_begin));
> +		entry->type = dpart->type;
> +		memcpy(entry->chs_end, dpart->chs_end, sizeof(entry->chs_end));
> +		put_unaligned_le32(part->first_sec, &entry->partition_start);
> +		put_unaligned_le32(part->size, &entry->partition_size);
> +	}
> +
> +	ret = block_write(pd->blk, buf, 0, 1);
> +
> +	free(buf);
> +
> +	return ret;
> +}
> +
>  static struct partition_parser dos = {
>  	.parse = dos_partition,
>  	.partition_free = dos_partition_free,
> +#ifdef CONFIG_PARTITION_MANIPULATION
> +	.create = dos_partition_create_table,
> +	.mkpart = dos_partition_mkpart,
> +	.rmpart = dos_partition_rmpart,
> +	.write = dos_partition_write,
> +#endif
>  	.type = filetype_mbr,
> +	.name = "msdos",
>  };
>  
>  static int dos_partition_init(void)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



