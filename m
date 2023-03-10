Delivery-date: Fri, 10 Mar 2023 17:20:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pafUH-00GI3n-AS
	for lore@lore.pengutronix.de; Fri, 10 Mar 2023 17:20:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pafUG-0004t0-TH
	for lore@pengutronix.de; Fri, 10 Mar 2023 17:20:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jcIWpr5NVtcRnVRE6QdQ7zo2rOVinFu9dSLSRQu4hXo=; b=mN3xkOdi0WYPqLIZYBfRlFK78e
	L/VqzJ3BhugRU47bdgXhvkyK2ODsTVfNPPvSIrr6BBltWrnvB8sfql8PMxUe3BTkzktPh1PY4sIum
	43+xyUDq5x7jLoJoVulh5TxB1mdYKJAMRK8MITAHgUlmb2XlDs0VehYiAU502BZNSKFrgGHdjrhJz
	a0LgjkZKQcIbjza284C8On2WX8mXfODe/saTTggl9XY6267oE2Hcjpcd3qdsIbL/SkCisMo1auKr/
	sfFJ2G545tJkpToKnjt+Yz/H/K+72T/r1DwU5heKDWMXG+ayjkvTuFnWt0MgrcZxBGHTVM1+/0MDU
	Qn+Ak78A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pafSr-00FGm0-4z; Fri, 10 Mar 2023 16:19:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pafSm-00FGkp-TL
	for barebox@lists.infradead.org; Fri, 10 Mar 2023 16:19:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pafSj-0004b0-IO; Fri, 10 Mar 2023 17:19:21 +0100
Message-ID: <dc4ee9c6-e336-7073-c0a1-5f076f7429e4@pengutronix.de>
Date: Fri, 10 Mar 2023 17:19:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Michael Riesch <michael.riesch@wolfvision.net>,
 barebox@lists.infradead.org
References: <20230210165353.3601175-1-a.fatoum@pengutronix.de>
 <20230210165353.3601175-2-a.fatoum@pengutronix.de>
 <8ab39746-bd15-6b72-f544-df2c12f971bc@wolfvision.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <8ab39746-bd15-6b72-f544-df2c12f971bc@wolfvision.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_081924_974757_9C6EB204 
X-CRM114-Status: GOOD (  27.66  )
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
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/4] of: support of_ensure_probed for top-level machine
 device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 10.03.23 15:46, Michael Riesch wrote:
> Hi Ahmad,
> 
> On 2/10/23 17:53, Ahmad Fatoum wrote:
>> Creation of a machine device for the top-level node has special casing
>> in of_probe(). Export of_platform_device_create_root(), so it's possible
>> to ensure probe of the machine device. This is required when doing
>> of_devices_ensure_probed_by_dev_id with the machine compatible.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> This patch breaks my board code that calls
> of_device_ensure_probed_by_alias() in the probe() of the board driver.
> The function always returns -ENODEV.
> 
> Do I have to adjust my (downstream) board code somehow?

Not sure. I'd need to reproduce. Is there an easy way to adjust a mainline
board to get the same behavior? Is your downstream board code inside a
board driver probe function or is it raw in an initcall?

Cheers,
Ahmad

> 
> Thanks and best regards,
> Michael
> 
>> ---
>> v1 -> v2:
>>   - new patch to facilitate patch 3/4
>> ---
>>  drivers/of/base.c     | 10 +++++++---
>>  drivers/of/platform.c |  2 +-
>>  include/of.h          |  1 +
>>  3 files changed, 9 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/of/base.c b/drivers/of/base.c
>> index 1221cd316cdf..7ba0655401cc 100644
>> --- a/drivers/of/base.c
>> +++ b/drivers/of/base.c
>> @@ -2512,13 +2512,13 @@ static int of_probe_memory(void)
>>  }
>>  mem_initcall(of_probe_memory);
>>  
>> -static void of_platform_device_create_root(struct device_node *np)
>> +struct device *of_platform_device_create_root(struct device_node *np)
>>  {
>>  	static struct device *dev;
>>  	int ret;
>>  
>>  	if (dev)
>> -		return;
>> +		return dev;
>>  
>>  	dev = xzalloc(sizeof(*dev));
>>  	dev->id = DEVICE_ID_SINGLE;
>> @@ -2526,8 +2526,12 @@ static void of_platform_device_create_root(struct device_node *np)
>>  	dev_set_name(dev, "machine");
>>  
>>  	ret = platform_device_register(dev);
>> -	if (ret)
>> +	if (ret) {
>>  		free_device(dev);
>> +		return ERR_PTR(ret);
>> +	}
>> +
>> +	return dev;
>>  }
>>  
>>  static const struct of_device_id reserved_mem_matches[] = {
>> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
>> index 69f9ddec50ca..11cde8924f94 100644
>> --- a/drivers/of/platform.c
>> +++ b/drivers/of/platform.c
>> @@ -421,7 +421,7 @@ static struct device *of_device_create_on_demand(struct device_node *np)
>>  
>>  	parent = of_get_parent(np);
>>  	if (!parent)
>> -		return NULL;
>> +		return of_platform_device_create_root(np);
>>  
>>  	if (!np->dev && parent->dev) {
>>  		ret = device_detect(parent->dev);
>> diff --git a/include/of.h b/include/of.h
>> index 1a38774615a4..63c90255cd64 100644
>> --- a/include/of.h
>> +++ b/include/of.h
>> @@ -298,6 +298,7 @@ extern void of_platform_device_dummy_drv(struct device *dev);
>>  extern int of_platform_populate(struct device_node *root,
>>  				const struct of_device_id *matches,
>>  				struct device *parent);
>> +extern struct device *of_platform_device_create_root(struct device_node *np);
>>  extern struct device *of_find_device_by_node(struct device_node *np);
>>  extern struct device *of_device_enable_and_register(struct device_node *np);
>>  extern struct device *of_device_enable_and_register_by_name(const char *name);
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



