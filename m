Delivery-date: Tue, 06 Jun 2023 21:29:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6cNN-00DQ84-24
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 21:29:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6cNK-0002yV-Ca
	for lore@pengutronix.de; Tue, 06 Jun 2023 21:29:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k9TUUQrWaOGI65SPQto4G+M0K+pBg2K8D37K4XSPbsw=; b=TyFdylXFSgvGV7hfeOcdclopxN
	m/CpIEfbXZKNnusDMDnU/yB3K8JdT7MKCsM9/QXFGdfEkaU+HG1ICbDDm8gPuLshrr7z7ouswBz2Q
	Ovrl+bAwI6DPe85QxzySUXtnniP6Pu/Mu+Y4PEnfuthPTIFH67BdYxa8HYkUWypZvGearDpYBm9En
	JkGpcfoY2Uhu7bC9hma8ZwjWW8nNlILJ8BeDwoKEmIxdFuewXLL5l/NJq9AsgqQRdSILp48cn1ygm
	fe5g3WauRxkIbfBGRKuTOzidTpCpnnsTSUYsEnAfKerYa1J23TLTXsfxfBnlpKYItD7FeQgntiLqQ
	eAID86VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6cLz-002xOk-1A;
	Tue, 06 Jun 2023 19:28:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6cLu-002xMe-2v
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 19:28:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6cLr-0002oC-Mn; Tue, 06 Jun 2023 21:28:19 +0200
Message-ID: <5ac40228-5bfa-982a-af99-cf3aafa6016d@pengutronix.de>
Date: Tue, 6 Jun 2023 21:28:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-18-a.fatoum@pengutronix.de>
 <20230531193130.fgmvxm27dh3gbvhh@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230531193130.fgmvxm27dh3gbvhh@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_122822_963850_F32F9DAB 
X-CRM114-Status: GOOD (  25.14  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 17/18] common: partitions: efi: record type UUID in cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 31.05.23 21:31, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 23-05-31, Ahmad Fatoum wrote:
>> We already record DOS partition type in cdev, so let's do the same for
>> GPT Type UUID. This will be used in a later commit to identify
>> barebox-state partitions.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/partitions.c        | 2 +-
>>  common/partitions/efi.c    | 1 +
>>  common/partitions/parser.h | 5 ++++-
>>  fs/fs.c                    | 2 ++
>>  include/driver.h           | 6 +++++-
>>  5 files changed, 13 insertions(+), 3 deletions(-)
>>
>> diff --git a/common/partitions.c b/common/partitions.c
>> index b579559672a0..e3e8a9f3044d 100644
>> --- a/common/partitions.c
>> +++ b/common/partitions.c
>> @@ -50,7 +50,7 @@ static int register_one_partition(struct block_device *blk,
>>  
>>  	cdev->flags |= DEVFS_PARTITION_FROM_TABLE;
>>  
>> -	cdev->dos_partition_type = part->dos_partition_type;
>> +	cdev->typeuuid = part->typeuuid;
> 
> Even though it's an union I would prefer to make it easier for the
> reader (without checking the header and noticing that it is an union).
> So the above code would be:
> 
> 	if (blkdev_is_gpt_partitioned(blk))
> 		cdev->typeuuid = part->typeuuid;
> 	else if (blkdev_is_mbr_partitioned(blk))
> 		cdev->dos_partition_type = part->dos_partition_type;

I don't think this is implementable without a runtime cost. I'd leave
it as is.

> 
> with 
> 
> static inline blkdev_is_gpt_partitioned(struct block_device *blkdev)
> {
> 	return cdev_is_gpt_partitioned(&blkdev->cdev);
> }
> 
> Regards,
>   Marco
> 
>>  	strcpy(cdev->partuuid, part->partuuid);
>>  
>>  	free(partition_name);
>> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
>> index df63b82afe24..2756337ab284 100644
>> --- a/common/partitions/efi.c
>> +++ b/common/partitions/efi.c
>> @@ -471,6 +471,7 @@ static void efi_partition(void *buf, struct block_device *blk,
>>  		pentry->size++;
>>  		part_set_efi_name(&ptes[i], pentry->name);
>>  		snprintf(pentry->partuuid, sizeof(pentry->partuuid), "%pUl", &ptes[i].unique_partition_guid);
>> +		pentry->typeuuid = ptes[i].partition_type_guid;
>>  		pd->used_entries++;
>>  	}
>>  }
>> diff --git a/common/partitions/parser.h b/common/partitions/parser.h
>> index f2f692f7903b..9cc41a7573fe 100644
>> --- a/common/partitions/parser.h
>> +++ b/common/partitions/parser.h
>> @@ -17,10 +17,13 @@
>>  
>>  struct partition {
>>  	char name[MAX_PARTITION_NAME];
>> -	u8 dos_partition_type;
>>  	char partuuid[MAX_UUID_STR];
>>  	uint64_t first_sec;
>>  	uint64_t size;
>> +	union {
>> +		u8 dos_partition_type;
>> +		guid_t typeuuid;
>> +	};
>>  };
>>  
>>  struct partition_desc {
>> diff --git a/fs/fs.c b/fs/fs.c
>> index 9a92e6e251e5..16cc072adfaf 100644
>> --- a/fs/fs.c
>> +++ b/fs/fs.c
>> @@ -110,6 +110,8 @@ void cdev_print(const struct cdev *cdev)
>>  		nbytes += printf("Filetype: %s\t", file_type_to_string(cdev->filetype));
>>  	if (cdev_is_mbr_partitioned(cdev->master))
>>  		nbytes += printf("DOS parttype: 0x%02x\t", cdev->dos_partition_type);
>> +	else if (cdev_is_gpt_partitioned(cdev->master))
>> +		nbytes += printf("GPT typeuuid: %pUl\t", &cdev->typeuuid);
>>  	if (*cdev->partuuid || *cdev->diskuuid)
>>  		nbytes += printf("%sUUID: %s", cdev_is_partition(cdev) ? "PART" : "DISK",
>>  				 cdev_is_partition(cdev) ? cdev->partuuid : cdev->diskuuid);
>> diff --git a/include/driver.h b/include/driver.h
>> index 5f2eae65466f..6407f7d6ba36 100644
>> --- a/include/driver.h
>> +++ b/include/driver.h
>> @@ -8,6 +8,7 @@
>>  
>>  #include <linux/list.h>
>>  #include <linux/ioport.h>
>> +#include <linux/uuid.h>
>>  #include <of.h>
>>  #include <filetype.h>
>>  
>> @@ -536,12 +537,15 @@ struct cdev {
>>  	unsigned int flags;
>>  	int open;
>>  	struct mtd_info *mtd;
>> -	u8 dos_partition_type;
>>  	struct cdev *link;
>>  	struct list_head link_entry, links;
>>  	struct list_head partition_entry, partitions;
>>  	struct cdev *master;
>>  	enum filetype filetype;
>> +	union {
>> +		u8 dos_partition_type;
>> +		guid_t typeuuid;
>> +	};
>>  };
>>  
>>  int devfs_create(struct cdev *);
>> -- 
>> 2.39.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



