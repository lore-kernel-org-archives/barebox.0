Delivery-date: Thu, 09 Mar 2023 14:41:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paGW9-00EueY-FN
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 14:41:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paGW9-0001Ql-1b
	for lore@pengutronix.de; Thu, 09 Mar 2023 14:41:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3csu1wqVaYQt5K4gCNP6KHQgCJ4Y4lBMzzN+cKMemb4=; b=jdQ7mvy1ewrUozoT0UXgWW2+Ln
	It4RoEIoP32DkWWibVXONJ4rbpjPcUn/sehmKwO3y6cM7ANqcTwu1NBhdtjAdYxMT4IwrjjycueA+
	VYyHeXlclIikNTG0shBLu9rR0o/DRMQCs/kgPGxu6dmNQ2tNkRoU7BGJSvDRkANnJ4OrHy4OQ4Cy6
	Y4nIDm5hpuizieqJarjEMHkUg2WrsB+7pzHsplCHkqOn78m59IZ2Y+RvzH2UVFlSxDKqIVWF8gQfd
	XfD5XLt1CkVi1Y+4OsqK1F1VLfdYIPTuO4Clk7kKW2JVy0taiywcWeXKbNMKIjB9+UxfnVXIA/P7e
	T94WTVyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paGUv-00ABE5-37; Thu, 09 Mar 2023 13:39:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paGUj-00ABBk-D0
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 13:39:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1paGUh-00012V-5Z; Thu, 09 Mar 2023 14:39:43 +0100
Message-ID: <89da89d1-9b73-86c1-ce09-7566f3f0234b@pengutronix.de>
Date: Thu, 9 Mar 2023 14:39:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230309115208.973893-1-s.hauer@pengutronix.de>
 <20230309115208.973893-3-s.hauer@pengutronix.de>
 <8c6d39c0-1295-8593-03ba-bdd771691da7@pengutronix.de>
In-Reply-To: <8c6d39c0-1295-8593-03ba-bdd771691da7@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_053945_497077_DE657132 
X-CRM114-Status: GOOD (  25.71  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/7] driver: Add rescan hook to struct device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 09.03.23 13:54, Ahmad Fatoum wrote:
> On 09.03.23 12:52, Sascha Hauer wrote:
>> When devices are enabled with a device tree overlay the newly enabled
>> devices can be probed by doing a of_probe(). This works fine for the
>> regular platform devices, but doesn't work for devices which are not
>> probed by the core, but by the subsystem. Prominent examples are I2C or
>> SPI devices.
>>
>> This patch adds a struct device::rescan hook that subsystems can
>> implement to trigger rescanning the device nodes.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
>> ---
>>  drivers/of/platform.c | 11 +++++------
>>  include/driver.h      |  6 ++++++
>>  2 files changed, 11 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
>> index edb082b106..2e9abe32bc 100644
>> --- a/drivers/of/platform.c
>> +++ b/drivers/of/platform.c
>> @@ -153,8 +153,10 @@ struct device *of_platform_device_create(struct device_node *np,
>>  	 * Linux uses the OF_POPULATED flag to skip already populated/created
>>  	 * devices.
>>  	 */
>> -	if (np->dev)
>> +	if (np->dev) {
>> +		device_rescan(np->dev);
>>  		return np->dev;
>> +	}
>>  
>>  	/* count the io resources */
>>  	if (of_can_translate_address(np))
>> @@ -420,11 +422,8 @@ static struct device *of_device_create_on_demand(struct device_node *np)
>>  	if (!parent)
>>  		return NULL;
>>  
>> -	if (!np->dev && parent->dev) {
>> -		ret = device_detect(parent->dev);
>> -		if (ret && ret != -ENOSYS)
>> -			return ERR_PTR(ret);
>> -	}
>> +	if (!np->dev && parent->dev)
>> +		device_rescan(parent->dev);
>>  
>>  	if (!np->dev)
>>  		pr_debug("Creating device for %s\n", np->full_name);
>> diff --git a/include/driver.h b/include/driver.h
>> index f53668711b..91e1f01974 100644
>> --- a/include/driver.h
>> +++ b/include/driver.h
>> @@ -91,6 +91,7 @@ struct device {
>>  	 * when the driver should actually detect client devices
>>  	 */
>>  	int     (*detect) (struct device *);
>> +	void	(*rescan) (struct device *);
>>  
>>  	/*
>>  	 * if a driver probe is deferred, this stores the last error
>> @@ -158,7 +159,12 @@ static inline void put_device(struct device *dev) {}
>>  void free_device_res(struct device *dev);
>>  void free_device(struct device *dev);
>>  
>> +static inline void device_rescan(struct device *dev)
>> +{
>> +	if (dev->rescan)
>> +		dev->rescan(dev);
>>  
>> +}

Nitpick: add brace a liner higher, so the blank line is after it

>>  /* Iterate over a devices children
>>   */
>>  #define device_for_each_child(dev, child) \
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



