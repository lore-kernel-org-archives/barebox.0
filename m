Delivery-date: Tue, 18 Mar 2025 12:26:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuV5Z-00119N-0W
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 12:26:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuV5X-0006N7-UG
	for lore@pengutronix.de; Tue, 18 Mar 2025 12:26:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+6i/pdrLMm1VmLqnXJ7PLtbgW0l/3WvMw0zGkrM9b+g=; b=e9u+GOqGCCUZ/hdPXqsDyfA3Vh
	o5vdAcboeyJFCihi2djuop+7N4QCXKFMB27QLb9h3RL1v6ivFVWOI9CkRJYq+i0yPSYiU226Yj8Yi
	TCTA2WX5nkiDIeUmXcK+TUfNEgF7E2LD0GU7S63WqzMUyQO1Os2PHVm6sHfFyr5mc3Ba+HLAp0/UJ
	iUKvvN/lD05oAbDq7X9M9il53VC3Amn0lANofTgoz+QomLfxVw5xfjv/bzjWP1a0n38WQeCBdKpRy
	XM9PVqq15wbLGEjXqrpRKSLsYJ6/HGJFFU9st/CPrToiaOiB5xQex6AVeYtIJKSvOJ001aHFUGIpw
	HdJ7ftQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuV57-00000005ikp-38IK;
	Tue, 18 Mar 2025 11:26:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuV3l-00000005iYO-0K0U
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 11:24:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuV3j-0005w7-RJ; Tue, 18 Mar 2025 12:24:35 +0100
Message-ID: <ab47dbb5-bc30-43bc-933c-f078c09196b7@pengutronix.de>
Date: Tue, 18 Mar 2025 12:24:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250318082507.419785-1-a.fatoum@pengutronix.de>
 <20250318082507.419785-3-a.fatoum@pengutronix.de>
 <Z9lTQlVUBnZUPm9q@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <Z9lTQlVUBnZUPm9q@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_042437_119775_06ADFE8D 
X-CRM114-Status: GOOD (  31.87  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] amba: support masking data abort during
 identification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 3/18/25 12:04, Sascha Hauer wrote:
> On Tue, Mar 18, 2025 at 09:25:06AM +0100, Ahmad Fatoum wrote:
>> Registration of an AMBA device requires reading its pid and cid
>> registers after turning on the device. This is the first I/O done to the
>> device and may end up crashing if the device tree doesn't describe
>> the correct clock and power domains or if a previous boot stage
>> should've enabled them, but didn't.
>>
>> This is not a likely issue, but when it happens it crashes the system
>> annoyingly early during device tree populating.
>>
>> Add a symbol that masks the data abort exception around the
>> identification code to turn the crash into an error message instead.
> 
> Do we need to make this optional? I could imagine I find out about the
> existence of this option only after having traced the issue down to the
> exact lines of code in which case I won't need the option anymore.

If it turns out to be needed for more platforms, we can consider
making it visible by default, but currently I think its of
rather limited use case.

Another way would be disabling the node in the barebox DT,
but I don't want to the Qemu virt DTs to diverge.

Cheers,
Ahmad

> 
> Sascha
> 
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/amba/Kconfig | 19 +++++++++++++++++++
>>  drivers/amba/bus.c   | 12 +++++++++++-
>>  2 files changed, 30 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/amba/Kconfig b/drivers/amba/Kconfig
>> index 444d4ce7435c..be5e053f4b84 100644
>> --- a/drivers/amba/Kconfig
>> +++ b/drivers/amba/Kconfig
>> @@ -1,3 +1,22 @@
>>  # SPDX-License-Identifier: GPL-2.0-only
>>  config ARM_AMBA
>>  	bool
>> +
>> +config ARM_AMBA_DABT_MASK
>> +	bool
>> +	prompt "Mask data abort while identifying AMBA devices" if COMPILE_TEST
>> +	depends on ARM_AMBA && ARCH_HAS_DATA_ABORT_MASK
>> +	help
>> +	  Registration of an AMBA device requires reading its pid and cid
>> +	  registers after turning on the device, which can involve enabling
>> +	  clocks, deasserting resets and powering on power domains.
>> +	  In some cases, these resources are not available to barebox running
>> +	  in the normal world and thus need to be setup by a previous
>> +	  stage bootloader running in the secure world.
>> +	  If such setup doesn't happen, accessing devices may lead to
>> +	  a data abort or complete system hang.
>> +
>> +	  As a workaround for the former case, this option can be enabled
>> +	  to gracefully handle data aborts during readout of the PID/CID
>> +	  registers. The proper solution is fixing your first stage
>> +	  bootloader or allow barebox access to the missing resources.
>> diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
>> index 6463366fafc5..5ed8336e6124 100644
>> --- a/drivers/amba/bus.c
>> +++ b/drivers/amba/bus.c
>> @@ -10,6 +10,7 @@
>>  #include <linux/amba/bus.h>
>>  #include <io.h>
>>  #include <init.h>
>> +#include <abort.h>
>>  
>>  #define to_amba_driver(d)	container_of(d, struct amba_driver, drv)
>>  
>> @@ -132,6 +133,9 @@ int amba_device_add(struct amba_device *dev)
>>  	if (ret == 0) {
>>  		u32 pid, cid;
>>  
>> +		if (IS_ENABLED(CONFIG_ARM_AMBA_DABT_MASK))
>> +			data_abort_mask();
>> +
>>  		/*
>>  		 * Read pid and cid based on size of resource
>>  		 * they are located at end of region
>> @@ -139,8 +143,14 @@ int amba_device_add(struct amba_device *dev)
>>  		pid = amba_device_get_pid(tmp, size);
>>  		cid = amba_device_get_cid(tmp, size);
>>  
>> -		if (cid == AMBA_CID)
>> +		if (IS_ENABLED(CONFIG_ARM_AMBA_DABT_MASK) && data_abort_unmask()) {
>> +			dev_err(amba_bustype.dev,
>> +				"data abort during MMIO read of PID/CID for %pOF\n",
>> +				dev->dev.of_node);
>> +			ret = -EFAULT;
>> +		} else if (cid == AMBA_CID) {
>>  			dev->periphid = pid;
>> +		}
>>  
>>  		if (!dev->periphid)
>>  			ret = -ENODEV;
>> -- 
>> 2.39.5
>>
>>
>>
> 



