Delivery-date: Tue, 06 Jun 2023 21:33:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6cQV-00DQLL-7Q
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 21:33:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6cQS-0003cc-ST
	for lore@pengutronix.de; Tue, 06 Jun 2023 21:33:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n08QZjOUYumk9n79JTSOgvEgoXU0gg9gD7Afswa9r98=; b=KmVKV/kmYdOo/3lCJsl9XFy8XA
	HbwEq2Fh8OvmBK2c8Z++G7vsxEaiVAl4wKZquUpqnobFgBQcJYBBYBsqjoFlbECtsOOCXEyeMc1EB
	6MUVJuv9lCRMmgDbUI5isdl5kI28b6SV91+jOUt2rLHSEOUNrgNfKJLdK9EwULxmY4RcH3S6sQHLI
	xeN0z0ILDN0OFYy9PBM8K8954RB5bn3avwWSx6Re77v/blHGZ1tPPVH5Q6jnvh+W8zB9NS0IWkFey
	vPX+nuQ7IyV7zFBAhi4RfXfXoPdwuV8OFZojiAJP1YnIc+I6jgrPvULqe+FkNW7/FJk7CS5qY5Ujg
	ehO6aBgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6cPP-002yk1-0u;
	Tue, 06 Jun 2023 19:31:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6cPL-002yj1-1G
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 19:31:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6cPJ-0003Yr-Uf; Tue, 06 Jun 2023 21:31:54 +0200
Message-ID: <efc85c93-4238-eb21-1f37-399f7841815f@pengutronix.de>
Date: Tue, 6 Jun 2023 21:31:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-10-a.fatoum@pengutronix.de>
 <20230531170456.jbmfrvxdrxiwxeu5@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230531170456.jbmfrvxdrxiwxeu5@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_123155_430070_91B7B2D9 
X-CRM114-Status: GOOD (  21.58  )
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
Subject: Re: [PATCH 09/18] cdev: record whether partition is parsed from OF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 31.05.23 19:04, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 23-05-31, Ahmad Fatoum wrote:
>> Later code will make it possible to define a on-disk-described partition
>> in the DT as well. For this reason, we can't assumed
>> DEVFS_PARTITION_FROM_TABLE to mean !DT, so let's add a dedicated flag
>> for that.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/of/partition.c | 5 +++--
>>  fs/fs.c                | 2 ++
>>  include/driver.h       | 5 +++--
>>  3 files changed, 8 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/of/partition.c b/drivers/of/partition.c
>> index a70e503cec9e..15943502ce17 100644
>> --- a/drivers/of/partition.c
>> +++ b/drivers/of/partition.c
>> @@ -74,6 +74,7 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
>>  	}
>>  
>>  	new->device_node = node;
>> +	new->flags |= DEVFS_PARTITION_FROM_OF;
>>  
>>  	if (IS_ENABLED(CONFIG_NVMEM) && of_device_is_compatible(node, "nvmem-cells")) {
>>  		struct nvmem_device *nvmem = nvmem_partition_register(new);
>> @@ -162,7 +163,7 @@ int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
>>  		return 0;
>>  
>>  	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
>> -		if (partcdev->flags & DEVFS_PARTITION_FROM_TABLE)
>> +		if (!(partcdev->flags & DEVFS_PARTITION_FROM_OF))
> 
> Even though the code is already 'open-coded' I would suggest a macro like:
> 
> is_of_partition_cdev() or cdev_is_of_partition().

DEVFS_PARTITION_FROM_OF is set in this file and it's read in this file.
I don't think having an indirection through a helper would bring much
benefit.

> 
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> 
>>  			continue;
>>  		n_parts++;
>>  	}
>> @@ -213,7 +214,7 @@ int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
>>  		u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
>>  		loff_t partoffset;
>>  
>> -		if (partcdev->flags & DEVFS_PARTITION_FROM_TABLE)
>> +		if (!(partcdev->flags & DEVFS_PARTITION_FROM_OF))
>>  			continue;
>>  
>>  		if (partcdev->mtd)
>> diff --git a/fs/fs.c b/fs/fs.c
>> index 1820e48393af..9d8aab268ca4 100644
>> --- a/fs/fs.c
>> +++ b/fs/fs.c
>> @@ -88,6 +88,8 @@ void cdev_print(const struct cdev *cdev)
>>  			printf(" fixed-partition");
>>  		if (cdev->flags & DEVFS_PARTITION_READONLY)
>>  			printf(" readonly-partition");
>> +		if (cdev->flags & DEVFS_PARTITION_FROM_OF)
>> +			printf(" of-partition");
>>  		if (cdev->flags & DEVFS_PARTITION_FROM_TABLE)
>>  			printf(" table-partition");
>>  		if (cdev->flags & DEVFS_IS_MCI_MAIN_PART_DEV)
>> diff --git a/include/driver.h b/include/driver.h
>> index 42e513a15603..118d2adb6750 100644
>> --- a/include/driver.h
>> +++ b/include/driver.h
>> @@ -584,8 +584,9 @@ extern struct list_head cdev_list;
>>  #define DEVFS_PARTITION_FIXED		(1U << 0)
>>  #define DEVFS_PARTITION_READONLY	(1U << 1)
>>  #define DEVFS_IS_CHARACTER_DEV		(1U << 3)
>> -#define DEVFS_PARTITION_FROM_TABLE	(1U << 4)
>> -#define DEVFS_IS_MCI_MAIN_PART_DEV	(1U << 5)
>> +#define DEVFS_IS_MCI_MAIN_PART_DEV	(1U << 4)
>> +#define DEVFS_PARTITION_FROM_OF		(1U << 5)
>> +#define DEVFS_PARTITION_FROM_TABLE	(1U << 6)
>>  
>>  struct cdev *devfs_add_partition(const char *devname, loff_t offset,
>>  		loff_t size, unsigned int flags, const char *name);
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



