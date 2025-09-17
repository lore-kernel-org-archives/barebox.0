Delivery-date: Wed, 17 Sep 2025 16:11:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyssR-0046Dn-2A
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 16:11:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyssR-00023Z-3o
	for lore@pengutronix.de; Wed, 17 Sep 2025 16:11:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2sIWMVD8j3Ymupkd1Dqq1YfU2BuGSl/0ZUg7NZ/7240=; b=qrpZCe6YMqdKFz5oPNT0mbJiEw
	8sYBZZcDEuS2ytGu2hXNAFeAsO6a9dHLxhHSbRlVk83mvNuwKo4zp2gXow4kqgRb/M7RARFGoF2ep
	/Lzoq+mzZzsI1RbnyKILWJ6sAwcfuH+/PJR5LtUMsa/qOC4RDd7XTBpEw8w7YclcE5qDWqMP6oQ7o
	yUlq53hIbMg1+dMRWF9Yi8HF4dmbyOvr3kE3CsmCyX8UaRpPTPmHuUvayUIuQFWHB1BHJvyv77kJa
	+RC9uOxQODMXtJvK1wyEY0QGhGi7DPfHstPW0VnKm4BSfko1QvgODXGQqL3paZhd+sltbppWn5lgb
	JeSZ3bww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyss0-0000000C4j8-0DIf;
	Wed, 17 Sep 2025 14:10:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysry-0000000C4hG-1M2t
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 14:10:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uysrw-0001wJ-LB; Wed, 17 Sep 2025 16:10:48 +0200
Message-ID: <691b5841-6286-4b31-a61e-c1453e579e34@pengutronix.de>
Date: Wed, 17 Sep 2025 16:10:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20250916093237.712407-1-s.hauer@pengutronix.de>
 <48b12f11-a204-4aeb-9db3-dbc11b49f8ea@pengutronix.de>
 <aMq_eYP66kvx_-HZ@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aMq_eYP66kvx_-HZ@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_071050_372198_EDF8825E 
X-CRM114-Status: GOOD (  18.72  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] drivers: treewide: Do not use NULL as driver_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 9/17/25 4:02 PM, Sascha Hauer wrote:
> On Tue, Sep 16, 2025 at 11:38:48AM +0200, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 9/16/25 11:32 AM, Sascha Hauer wrote:
>>> Several drivers in the tree use an enum for the chip type casted to int
>>> as driver_data. This comes with the problem that device_get_match_data()
>>> returns NULL for these devices and a potential error check bails out
>>> then.
>>>
>>> This patch changes the enums used by the drivers to start from 1 instead
>>> of 0 so that the return value of device_get_match_data() can safely
>>> checked for being NULL.
>>>
>>> Most drivers do not check the return value anyway, but fec_imx.c does
>>> which causes the driver to no longer work on i.MX27. This issue is fixed
>>> here.
>>
>> If they don't check the return value, why bother changing it and risk a
>> regression?
> 
> To not give others bad examples.

I am not convinced.

> 
>>> +++ b/drivers/mtd/nand/raw/nand_mxs.c
>>> @@ -38,7 +38,7 @@
>>>  #include "internals.h"
>>>  
>>>  enum gpmi_type {
>>> -	GPMI_MXS,
>>> +	GPMI_MXS = 1,
>>>  	GPMI_IMX6,
>>>  };
> 
> Anyway, this indeed introduces a regression. We have mxs_add_nand()
> which instantiates a "mxs_nand" device without driver data, so
> device_get_match_data() will return 0 aka GPMI_MXS which happens to
> be the right thing here.

Case in point.

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



