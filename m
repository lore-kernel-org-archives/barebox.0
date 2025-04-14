Delivery-date: Mon, 14 Apr 2025 12:38:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HDI-000bWc-1I
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 12:38:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HDH-0006lL-Or
	for lore@pengutronix.de; Mon, 14 Apr 2025 12:38:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+yy15y+asUiCLe+oDMffdbBDvmiB9iHKNp+uE3NCevs=; b=hog5D0elRUBGdSF6sjHQc7CM0U
	xwk12wDhafexZ0EshkiFZa2Kla4oUxDx1I8DOWwYZTue+uStwtnkNpnl4oDd+i7egqLL/O25RGxeh
	uE3FRbJoxkyncfgsWYtV0BRCLpBMV2SPNsO+P2VirX1BPi3bIsBo9RubRRTSacV1doG3MrYdi4MLV
	2WgalOxVOi/sEB6pLYAVbo3Auxb9mcVzM5g5+N2+brzNk3KqoRgocKBOXWmrEw8dyTpb/i2t42iYx
	M89aUx8gRceJBJztX26BxPHPACYbHaInFaVSJ8SiUU1UjbKN6AxMXV1wvK6KuA8XqIkfpV51s+OEY
	tYVQ2fGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HCq-00000001ZpF-1TR2;
	Mon, 14 Apr 2025 10:38:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Gvb-00000001UZy-3qYL
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 10:20:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4Gva-0000Zo-JZ; Mon, 14 Apr 2025 12:20:34 +0200
Message-ID: <af6d8b79-f081-4e39-8dba-ce487354e76d@pengutronix.de>
Date: Mon, 14 Apr 2025 12:20:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
 <20250414063152.2736649-8-a.fatoum@pengutronix.de>
 <20250414101715.esfc3lxmen3ez6jb@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250414101715.esfc3lxmen3ez6jb@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_032035_959608_DFB26ECE 
X-CRM114-Status: GOOD (  15.93  )
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
Subject: Re: [PATCH 07/18] cdev: alias: add support for partition links
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 4/14/25 12:17, Marco Felsch wrote:
> On 25-04-14, Ahmad Fatoum wrote:
>> We currently support bootsource.2, but not bootsource.root-A.
>> Fix this and while at it, factor out the logic for general reuse.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---

[snip]

>> -static struct cdev *resolve_partition(struct cdev *cdev,
>> -				      const char *partname)
>> -{
>> -	struct cdev *partcdev;
>> -
>> -	if (!partname)
>> -		return cdev;
>> -
>> -	for_each_cdev_partition(partcdev, cdev) {
>> -		if (streq_ptr(partcdev->partname, partname))
>> -			return partcdev;
>> -	}
>> -
>> -	return ERR_PTR(-ENODEV);
>> -}
>> -

[snip]

>> +/**
>> + * cdev_find_partition - find a partition belonging to a physical device
>> + *
>> + * @cdev: the cdev which should be searched for partitions
>> + * @name: the partition name
>> + */
>> +struct cdev *cdev_find_partition(struct cdev *cdevm, const char *name)
>> +{
>> +	struct cdev *partcdev;
>> +
>> +	if (!name)
>> +		return cdevm;

No, I want a NULL name to expand to the parent device. This makes is a
drop-in replacement for resolve_partition() removed in this same patch.

Thanks,
Ahmad

> 
> 		return ERR_PTR(-EINVAL) ?
> 
> Regards,
>   Marco
> 
>> +
>> +	for_each_cdev_partition(partcdev, cdevm) {
>> +		struct cdev *cdevl;
>> +
>> +		if (streq_ptr(partcdev->partname, name))
>> +			return partcdev;
>> +
>> +		list_for_each_entry(cdevl, &partcdev->links, link_entry) {
>> +			if (streq_ptr(cdevl->partname, name))
>> +				return cdevl;
>> +		}
>> +	}
>> +
>> +	return NULL;
>> +}
>> +
>>  /**
>>   * device_find_partition - find a partition belonging to a physical device
>>   *
>> diff --git a/include/driver.h b/include/driver.h
>> index 3f2c681c0e80..ca002c5164c2 100644
>> --- a/include/driver.h
>> +++ b/include/driver.h
>> @@ -503,6 +503,7 @@ int devfs_create(struct cdev *);
>>  int devfs_create_link(struct cdev *, const char *name);
>>  int devfs_remove(struct cdev *);
>>  int cdev_find_free_index(const char *);
>> +struct cdev *cdev_find_partition(struct cdev *cdevm, const char *name);
>>  struct cdev *device_find_partition(struct device *dev, const char *name);
>>  struct cdev *lcdev_by_name(const char *filename);
>>  struct cdev *cdev_readlink(struct cdev *cdev);
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



