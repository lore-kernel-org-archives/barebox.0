Delivery-date: Wed, 31 May 2023 18:57:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4P8z-004W1f-Ql
	for lore@lore.pengutronix.de; Wed, 31 May 2023 18:57:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4P8x-0001ix-9L
	for lore@pengutronix.de; Wed, 31 May 2023 18:57:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o4EWlbtGpqxAdz2idOx+TLbLewgJDjnN9HcIEyY48Bs=; b=Be39z+5hbNWQklrpDQvDW4AsiQ
	G00axAnT56QY4EuWfRWjlXZcltI74t3zu/YrUZ6410Y0F4x4A1JVhPtpS/5UJUBfZzJblqcmOvyLF
	x9QsvI5DRNRKMWRBgrQYCLFXHoJdEKF7Q5LsomvKyby6RePFp8IHiMtdR2aQ7HFtswK0VYjOVfHFo
	nM72VBnzlnawEdhg9VARc9k5Vx22dqhY0UYxPvItcWBj292ApjJmxlzFBndJuQDgpOE1CbDdokvuA
	2gmDzz5N6L8JRUvVfLTpo3S/dRkQMsr3PJjdLRINSp3JZsz87VguToQxs4k27c0jTodHcHiV0MabS
	raD6JWgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4P7U-000X3g-0Z;
	Wed, 31 May 2023 16:56:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4P7R-000X2c-0u
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 16:56:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4P7P-0001db-EA; Wed, 31 May 2023 18:56:15 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4P7P-0003NL-6e; Wed, 31 May 2023 18:56:15 +0200
Date: Wed, 31 May 2023 18:56:15 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230531165615.fozdxqptgzpp3xtl@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-9-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531145927.1399282-9-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_095617_320310_CB7F6949 
X-CRM114-Status: GOOD (  21.92  )
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
Subject: Re: [PATCH 08/18] cdev: use more descriptive struct
 cdev::diskuuid/partuuid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-05-31, Ahmad Fatoum wrote:
> The UUID field has different meanings:
> 
> For a master cdev:
> 
>   - GPT Header DiskGUID if GPT-formatted
>   - MBR Header NT Disk Signature if MBR-formatted
> 
> For a partition cdev:
> 
>   - GPT UniquePartitionGUID
>   - MBR Header NT Disk Signature followed by "-${partititon_number}"
> 
> Later code will add yet another UUID (Partition Type GUID), so let's
> make existing code more readable by using either diskuuid or partuuid as
> appropriate.
> 
> No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  common/bootm.c                 |  2 +-
>  common/partitions.c            |  2 +-
>  common/partitions/dos.c        |  2 +-
>  common/partitions/efi.c        |  4 ++--
>  drivers/misc/storage-by-uuid.c |  4 ++--
>  fs/devfs-core.c                |  4 ++--
>  fs/fs.c                        |  9 +++++----
>  include/driver.h               | 10 +++++++++-
>  8 files changed, 23 insertions(+), 14 deletions(-)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index 91a6e1688674..791d6b8fbbf1 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -734,7 +734,7 @@ int bootm_boot(struct bootm_data *bootm_data)
>  				if (!root_cdev)
>  					pr_err("no cdev found for %s, cannot set root= option\n",
>  						root_dev_name);
> -				else if (!root_cdev->uuid[0])
> +				else if (!root_cdev->partuuid[0])
>  					pr_err("%s doesn't have a PARTUUID, cannot set root= option\n",
>  						root_dev_name);
>  			}
> diff --git a/common/partitions.c b/common/partitions.c
> index 9cca5c4a1546..b579559672a0 100644
> --- a/common/partitions.c
> +++ b/common/partitions.c
> @@ -51,7 +51,7 @@ static int register_one_partition(struct block_device *blk,
>  	cdev->flags |= DEVFS_PARTITION_FROM_TABLE;
>  
>  	cdev->dos_partition_type = part->dos_partition_type;
> -	strcpy(cdev->uuid, part->partuuid);
> +	strcpy(cdev->partuuid, part->partuuid);
>  
>  	free(partition_name);
>  
> diff --git a/common/partitions/dos.c b/common/partitions/dos.c
> index 566c8dd949b4..ad60c0b27b46 100644
> --- a/common/partitions/dos.c
> +++ b/common/partitions/dos.c
> @@ -183,7 +183,7 @@ static void dos_partition(void *buf, struct block_device *blk,
>  	uint32_t signature = get_unaligned_le32(buf + 0x1b8);
>  
>  	if (signature)
> -		sprintf(blk->cdev.uuid, "%08x", signature);
> +		sprintf(blk->cdev.diskuuid, "%08x", signature);
>  
>  	table = (struct partition_entry *)&buffer[446];
>  
> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> index a6c95f3969d1..780a8695e8a8 100644
> --- a/common/partitions/efi.c
> +++ b/common/partitions/efi.c
> @@ -446,8 +446,8 @@ static void efi_partition(void *buf, struct block_device *blk,
>  		return;
>  	}
>  
> -	snprintf(blk->cdev.uuid, sizeof(blk->cdev.uuid), "%pUl", &gpt->disk_guid);
> -	dev_add_param_string_fixed(blk->dev, "guid", blk->cdev.uuid);
> +	snprintf(blk->cdev.diskuuid, sizeof(blk->cdev.diskuuid), "%pUl", &gpt->disk_guid);
> +	dev_add_param_string_fixed(blk->dev, "guid", blk->cdev.diskuuid);
>  
>  	nb_part = le32_to_cpu(gpt->num_partition_entries);
>  
> diff --git a/drivers/misc/storage-by-uuid.c b/drivers/misc/storage-by-uuid.c
> index a938bfaaa2c4..a7a66a1421a3 100644
> --- a/drivers/misc/storage-by-uuid.c
> +++ b/drivers/misc/storage-by-uuid.c
> @@ -140,8 +140,8 @@ static void check_exist(struct sbu *sbu)
>  	struct cdev *cdev;
>  
>  	for_each_cdev(cdev) {
> -		if (!strcmp(cdev->uuid, sbu->uuid)) {
> -			dev_dbg(sbu->dev, "Found %s %s\n", cdev->name, cdev->uuid);
> +		if (!strcmp(cdev->diskuuid, sbu->uuid)) {
> +			dev_dbg(sbu->dev, "Found %s %s\n", cdev->name, cdev->diskuuid);
>  			storage_by_uuid_add_partitions(sbu, cdev);
>  		}
>  	}
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index bb66993b90f9..a0732dafca42 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -101,7 +101,7 @@ struct cdev *cdev_by_partuuid(const char *partuuid)
>  		return NULL;
>  
>  	for_each_cdev(cdev) {
> -		if (cdev_is_partition(cdev) && !strcasecmp(cdev->uuid, partuuid))
> +		if (cdev_is_partition(cdev) && !strcasecmp(cdev->partuuid, partuuid))
>  			return cdev;
>  	}
>  	return NULL;
> @@ -115,7 +115,7 @@ struct cdev *cdev_by_diskuuid(const char *diskuuid)
>  		return NULL;
>  
>  	for_each_cdev(cdev) {
> -		if (!cdev_is_partition(cdev) && !strcasecmp(cdev->uuid, diskuuid))
> +		if (!cdev_is_partition(cdev) && !strcasecmp(cdev->diskuuid, diskuuid))
>  			return cdev;
>  	}
>  	return NULL;
> diff --git a/fs/fs.c b/fs/fs.c
> index ba60766a065a..1820e48393af 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -104,8 +104,9 @@ void cdev_print(const struct cdev *cdev)
>  		nbytes += printf("Filetype: %s\t", file_type_to_string(cdev->filetype));
>  	if (cdev->dos_partition_type)
>  		nbytes += printf("DOS parttype: 0x%02x\t", cdev->dos_partition_type);
> -	if (*cdev->uuid)
> -		nbytes += printf("UUID: %s", cdev->uuid);
> +	if (*cdev->partuuid || *cdev->diskuuid)
> +		nbytes += printf("%sUUID: %s", cdev_is_partition(cdev) ? "PART" : "DISK",
> +				 cdev_is_partition(cdev) ? cdev->partuuid : cdev->diskuuid);
>  
>  	if (nbytes)
>  		printf("\n");
> @@ -3061,8 +3062,8 @@ char *cdev_get_linux_rootarg(const struct cdev *cdev)
>  	if (str)
>  		return str;
>  
> -	if (cdev->uuid[0] != 0)
> -		return basprintf("root=PARTUUID=%s", cdev->uuid);
> +	if (cdev->partuuid[0] != 0)
> +		return basprintf("root=PARTUUID=%s", cdev->partuuid);
>  
>  	return NULL;
>  }
> diff --git a/include/driver.h b/include/driver.h
> index 00b4a0e4af75..42e513a15603 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -522,7 +522,15 @@ struct cdev {
>  	char *partname; /* the partition name, usually the above without the
>  			 * device part, i.e. name = "nand0.barebox" -> partname = "barebox"
>  			 */
> -	char uuid[MAX_UUID_STR];
> +	union {
> +		char diskuuid[MAX_UUID_STR];	/* GPT Header DiskGUID or
> +						 * MBR Header NT Disk Signature
> +						 */
> +		char partuuid[MAX_UUID_STR];	/* GPT Partition Entry UniquePartitionGUID or
> +						 * MBR Partition Entry "${nt_signature}-${partno}"
> +						 */
> +	};
> +
>  	loff_t offset;
>  	loff_t size;
>  	unsigned int flags;
> -- 
> 2.39.2
> 
> 
> 


