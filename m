Delivery-date: Thu, 01 Jun 2023 07:32:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4av5-005MzD-2w
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 07:32:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4av2-00036C-N1
	for lore@pengutronix.de; Thu, 01 Jun 2023 07:32:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q2tNAsU6b7kMI77Dw3tAASRIgWpO69yq0upQHmJL8mc=; b=KNOUTPBN7TqH/a3xnjmJXbAL6P
	jZj7P42aBMMRUaP2mdzcRS0bOPU1x/egwX6nhuMzHqghThjyi1r7sbMDmGVcPNvGKMIaaWS/B/D65
	sASk4zwy1pdtFc0Tbze/Gb5UfE2TO7BiCo8Vjv/kpwa5cBYqKw8GMEniYyPCBUYNHjY2ri47ZRCCU
	aQ+c30LpitgnH0ZZ5CIXEjdvcgJB4tvbqMevpteK1lciFtCD3yywPrkWQkErtYSZiLSZpahIYT2cL
	6kfM2FRmtWeH9G3HnMJh6dEKBXMnLofMIxVMu4OGUjgKcKcFnJh3QU9pu2evFCbAzxT47jbDe5h3H
	hN+dcJEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4atp-0021z2-1u;
	Thu, 01 Jun 2023 05:31:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4atm-0021xh-0G
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 05:30:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q4atj-0002zY-Co; Thu, 01 Jun 2023 07:30:55 +0200
Message-ID: <0ee97e12-50a5-2e28-69fd-3a42d2ab9868@pengutronix.de>
Date: Thu, 1 Jun 2023 07:30:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-17-a.fatoum@pengutronix.de>
 <20230531185442.5hvjrknlmecbcm32@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230531185442.5hvjrknlmecbcm32@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_223058_127651_1D8E2AAC 
X-CRM114-Status: GOOD (  21.77  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 16/18] cdev: use cdev::dos_partition_type only if
 cdev_is_mbr_partitioned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 31.05.23 20:54, Marco Felsch wrote:
> On 23-05-31, Ahmad Fatoum wrote:
>> dos_partition_type == 0 can mean that either a partition is not
>> a MBR partition or that it indeed has a partition type of 0x00.
>>
>> In preparation for using that field in a union, explicitly check if we
>> have a MBR partition.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/blspec.c | 2 +-
>>  fs/fs.c         | 2 +-
>>  2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/common/blspec.c b/common/blspec.c
>> index e95a8dba8d76..8c7970da8915 100644
>> --- a/common/blspec.c
>> +++ b/common/blspec.c
>> @@ -729,7 +729,7 @@ int blspec_scan_device(struct bootentries *bootentries, struct device *dev)
>>  		 * partition with the MBR type id of 0xEA already exists it
>>  		 * should be used as $BOOT
>>  		 */
>> -		if (cdev->dos_partition_type == 0xea) {
>> +		if (cdev_is_mbr_partitioned(cdev->master) && cdev->dos_partition_type == 0xea) {
> 
> Since you already various helpers to drop priv direct access, what
> about:
> 
> 		if (cdev_dos_partition_type(cdev) == 0xea)
> 
> Within the helper you can check for the cdev_is_mbr_partitioned().

We only have a single call site and there'll be a separate series that adds:

if (cdev_is_gpt_partitioned(cdev->master) && guid_equal(&partcdev->typeuuid, blspec_xbootldr_guid))
	/* use that */;

after this line. So I'd rather leave it as is.

Thanks,
Ahmad

> 
> ?
> 
> Regards,
>   Marco
> 
>>  			ret = blspec_scan_cdev(bootentries, cdev);
>>  			if (ret == 0)
>>  				ret = -ENOENT;
>> diff --git a/fs/fs.c b/fs/fs.c
>> index 2d2d327c5fbc..9a92e6e251e5 100644
>> --- a/fs/fs.c
>> +++ b/fs/fs.c
>> @@ -108,7 +108,7 @@ void cdev_print(const struct cdev *cdev)
>>  
>>  	if (cdev->filetype)
>>  		nbytes += printf("Filetype: %s\t", file_type_to_string(cdev->filetype));
>> -	if (cdev->dos_partition_type)
>> +	if (cdev_is_mbr_partitioned(cdev->master))
>>  		nbytes += printf("DOS parttype: 0x%02x\t", cdev->dos_partition_type);
>>  	if (*cdev->partuuid || *cdev->diskuuid)
>>  		nbytes += printf("%sUUID: %s", cdev_is_partition(cdev) ? "PART" : "DISK",
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



