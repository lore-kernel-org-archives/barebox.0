Delivery-date: Tue, 06 Jun 2023 21:31:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6cOj-00DQF1-D6
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 21:31:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6cOg-0003Vj-UV
	for lore@pengutronix.de; Tue, 06 Jun 2023 21:31:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ulCuyMd2tXEbINCZGLhmmxQveDm/HzLwJgeWf1EEmh8=; b=j53KRuFR0nwRTzns4IyYlDyypU
	5fNsIujj6O2/tS+TeWlhGTmkAYFs15hqewIg5pH5A0yWfb4qB899nOH+ptbkgUnkGaEwMlRDsuiy3
	X15NLe6rDa5XLq7uswziy6CRGTNFxd0dSAnVufM3cWXtP0GV6zFIYCKjneKRAfX5vPP7nXqbbylL9
	suCiXAepdZoAbBoYeP6PXh0BweYYKW2cBVb5EJU0w6rdCKqzZrGtJNgp+aBlZcmljaP5BmNRpn9PI
	SpuJSu97PyKrMZYUv17a12Dtjhv6CpekLWvaKvX3JDkCYjPy9hH9+vj9y29d7MjQMN97lsDV7GD4G
	DXF87m9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6cNh-002yIY-0P;
	Tue, 06 Jun 2023 19:30:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6cNd-002yGV-0R
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 19:30:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6cNb-00036D-PV; Tue, 06 Jun 2023 21:30:07 +0200
Message-ID: <a031910e-8c14-13bf-8b66-22a97ae056ad@pengutronix.de>
Date: Tue, 6 Jun 2023 21:30:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-12-a.fatoum@pengutronix.de>
 <20230601074204.GI18491@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230601074204.GI18491@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_123009_178866_CE13E7BA 
X-CRM114-Status: GOOD (  23.27  )
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
Subject: Re: [PATCH 11/18] block: parse partition table on block device
 registration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 01.06.23 09:42, Sascha Hauer wrote:
> On Wed, May 31, 2023 at 04:59:20PM +0200, Ahmad Fatoum wrote:
>> Every instance where we register a block device, it's followed by an
>> attempt to parse the partition table, most often with a warning when
>> it fails. Thus let's move partition table parsing into
>> blockdevice_register.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/sandbox/board/hostfile.c | 4 ----
>>  common/block.c                | 6 ++++++
>>  drivers/ata/disk_ata_drive.c  | 5 -----
>>  drivers/block/efi-block-io.c  | 9 +--------
>>  drivers/block/virtio_blk.c    | 8 +-------
>>  drivers/mci/mci-core.c        | 6 ------
>>  drivers/nvme/host/core.c      | 5 -----
>>  drivers/usb/storage/usb.c     | 5 -----
>>  8 files changed, 8 insertions(+), 40 deletions(-)
>>
>> diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
>> index d0f400787d7a..a1ab06b87770 100644
>> --- a/arch/sandbox/board/hostfile.c
>> +++ b/arch/sandbox/board/hostfile.c
>> @@ -166,10 +166,6 @@ static int hf_probe(struct device *dev)
>>  		if (err)
>>  			return err;
>>  
>> -		err = parse_partition_table(&priv->blk);
>> -		if (err)
>> -			dev_warn(dev, "No partition table found\n");
>> -
>>  		dev_info(dev, "registered as block device\n");
>>  	} else {
>>  		cdev->name = np->name;
>> diff --git a/common/block.c b/common/block.c
>> index c39269d3a692..98adcfdf3dab 100644
>> --- a/common/block.c
>> +++ b/common/block.c
>> @@ -6,6 +6,7 @@
>>   */
>>  #include <common.h>
>>  #include <block.h>
>> +#include <disks.h>
>>  #include <malloc.h>
>>  #include <linux/err.h>
>>  #include <linux/list.h>
>> @@ -408,6 +409,11 @@ int blockdevice_register(struct block_device *blk)
>>  
>>  	cdev_create_default_automount(&blk->cdev);
>>  
>> +	/* Lack of partition table is unusual, but not a failure */
>> +	ret = parse_partition_table(blk);
>> +	if (ret)
>> +		dev_warn(blk->dev, "No partition table found\n");
> 
> This is not changed in this series, so it's ok like this, but should
> this really be a warning? Using a raw device without a partition table
> seems like a legitimate usecase.

parse_partition_table returns 0 when no partition table exists. Now that
I looked into it, all errors already have an error print, so duplicating
it is unnecessary. I will drop the dev_warn altogether for v2.

> 
> Sascha
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



