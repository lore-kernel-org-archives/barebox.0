Delivery-date: Mon, 14 Apr 2025 12:43:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HIC-000bf0-1b
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 12:43:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HIB-0000B2-Rq
	for lore@pengutronix.de; Mon, 14 Apr 2025 12:43:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZQXdFqh+RpZO6hWLq+eAm/Df+/jVeC1wxYLgmo2dGik=; b=THAWPlJ5m81SnSDWGNTyhQSioc
	dmwtVLidKnY1+/1M8fL4cQFSh1mRrqmCaQZPN1IH4mquFFlh1Qqqwk6kpRQZFDZkg4Yd/3LyQFpm2
	L/Pv4a841YZThf2AkvtJ8mLYcbd4s43EogIBK8boyGeRAxCeyzCEL0fGWDjey9g9yrhGxSgHZ4dGj
	ghlqpEhO5PdOe6dsGUU2CaQUbM0K146F1RUw+LXShnV2n8zVywDoZ+Eern3Ymxfu+5ZaQS1I5ZhYD
	dNTr4AETtLYbejduZOKPJHdnmZxGMf3gt568nlzbRCru9MviFZesvIVYcfnyFjy4MovDW2dp/f6mN
	grEXSlNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HHk-00000001atD-40p2;
	Mon, 14 Apr 2025 10:43:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4H6G-00000001Y3A-2tNR
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 10:31:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4H6F-0004KN-Ed; Mon, 14 Apr 2025 12:31:35 +0200
Message-ID: <11bfd9b0-36e6-4b06-a0f8-716971f61ca6@pengutronix.de>
Date: Mon, 14 Apr 2025 12:31:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
 <20250414063152.2736649-12-a.fatoum@pengutronix.de>
 <20250414102454.awnbnv4ov2bgj33i@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250414102454.awnbnv4ov2bgj33i@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_033136_764618_AD357626 
X-CRM114-Status: GOOD (  20.50  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/18] misc: storage-by-uuid: consider only first diskuuid
 match
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 4/14/25 12:24, Marco Felsch wrote:
> On 25-04-14, Ahmad Fatoum wrote:
>> Multiple devices with the same disk UUID shouldn't happen and if it
> 
> Do we need to print a warning to inform the user that two disks share
> the same disk-UUID?

If we do, we should do it a generic place like when disks are registered
the first time with a duplicate UUID and not at consumers like here.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>> does, the existing code is not equipped to handle that.
>>
>> Change  it, so only the first _disk_ is considered. diskuuid is in a
>> union with partuuid and that could lead to cdev partition being taken as
>> backend storage instead.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/misc/storage-by-uuid.c | 12 ++++++++----
>>  1 file changed, 8 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/misc/storage-by-uuid.c b/drivers/misc/storage-by-uuid.c
>> index 8b8fd901685e..7bb987dffbec 100644
>> --- a/drivers/misc/storage-by-uuid.c
>> +++ b/drivers/misc/storage-by-uuid.c
>> @@ -143,10 +143,14 @@ static void check_exist(struct sbu *sbu)
>>  	struct cdev *cdev;
>>  
>>  	for_each_cdev(cdev) {
>> -		if (!strcmp(cdev->diskuuid, sbu->uuid)) {
>> -			dev_dbg(sbu->dev, "Found %s %s\n", cdev->name, cdev->diskuuid);
>> -			storage_by_uuid_add_partitions(sbu, cdev);
>> -		}
>> +		if (cdev_is_partition(cdev))
>> +			continue;
>> +		if (strcmp(cdev->diskuuid, sbu->uuid))
>> +			continue;
>> +
>> +		dev_dbg(sbu->dev, "Found %s %s\n", cdev->name, cdev->diskuuid);
>> +		storage_by_uuid_add_partitions(sbu, cdev);
>> +		return;
>>  	}
>>  }
>>  
>> -- 
>> 2.39.5
>>
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



