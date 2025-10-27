Delivery-date: Mon, 27 Oct 2025 16:34:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDPEP-00CNW4-0l
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 16:34:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDPEO-0002Uq-KZ
	for lore@pengutronix.de; Mon, 27 Oct 2025 16:34:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PrHvvzjQlTwCZ9GQEW7Hn6r96zT6mwObKluD2ZFnEvM=; b=zUVO7C2SrK0bvq7y4yxAkY/iJs
	8ulRD8Cc8efN3befpgj4N3DilWZr/f5h50RBYKrZO4e5lyR2/x+IDU5iNDC5ToEhLIIZiS3Xidfzx
	EQYAlPrGiLoWzOAZIPhJhr7G/DkgYks5N3Lfhm6ijHIpDwxlTj75bROiOFa6tYkS11Dq6kZsncG5b
	GcC/0nCYTAHTcE+x1mouOShrau+1MPRJLgNFXw20ker0iQSlCnI6+wY7E84DGwd5C8lLbK/3qSl9n
	ygZDygnOTmipOVU+q7GeFuf5ogcvW2zF4HARpv7lHe/K/UDJomiuSoBeQObqNmUNVZVJ4c6belpUu
	VEq8DyHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDPDq-0000000EEIz-2j5F;
	Mon, 27 Oct 2025 15:33:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDPDn-0000000EEIW-0fjY
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 15:33:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDPDl-0002Mp-4z; Mon, 27 Oct 2025 16:33:21 +0100
Message-ID: <149450ee-37b2-4f1e-b9c5-5720f702896e@pengutronix.de>
Date: Mon, 27 Oct 2025 16:33:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20250423140913.1530237-1-m.felsch@pengutronix.de>
 <20250423140913.1530237-4-m.felsch@pengutronix.de>
 <7b6f5626-6d7c-43f5-9faa-a19380237bfb@pengutronix.de>
 <CAP1tNvR=GaOfm8c5xteys=UKFxZuFDrAic=JB4uXpyi8bEa3uw@mail.gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvR=GaOfm8c5xteys=UKFxZuFDrAic=JB4uXpyi8bEa3uw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_083323_219380_CA9AF636 
X-CRM114-Status: GOOD (  19.09  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/4] ARM: riotboard: drop static barebox-environment
 handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 4/24/25 7:49 PM, Alexander Shiyan wrote:
> Hello All!
> 
> What happens if the required GUID identifier is both in the SD card
> and in the MMC?

The order of preference is:

  - barebox,environment node in the device tree
  - a suitable partition on the boot medium
  - a suitable partition on a non-boot medium

The latter two only if $global.env.autoprobe is 1.

Cheers,
Ahmad

> 
> Thanks!
> 
> чт, 24 апр. 2025 г. в 11:02, Ahmad Fatoum <a.fatoum@pengutronix.de>:
>>
>> Hi Marco,
>>
>> On 23.04.25 16:09, Marco Felsch wrote:
>>> Since commit 9f868f78bc54 ("environment: use barebox environment from
>>> GPT partitions") barebox can try to find the barebox-environment based
>>> on a GPT partition GUID.
>>>
>>> Make use of this mechanism and drop the barebox local of-partition. This
>>> allows the BSP integrators to provide a proper GPT or if no GPT was
>>> provided we fallback to the autom. minimal GPT mechanism added recently.
>>>
>>> This also fixes environment handling if booted from a SD card since SD
>>> card boots make use of eMMC barebox environment at the moment.
>>
>> You didn't fully address my suggestion[1] on v1. Why not keep around the existing
>> environment as a fallback?
>>
>> https://lore.barebox.org/barebox/1ff0f545-effa-4b87-81b7-524919333777@pengutronix.de/
>>
>> Thanks,
>> Ahmad
>>
>>>
>>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>>> ---
>>> v2:
>>> - Adapt commit message
>>>
>>>  arch/arm/dts/imx6s-riotboard.dts | 10 ----------
>>>  1 file changed, 10 deletions(-)
>>>
>>> diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
>>> index 57817c1197a7..cca34d6dba95 100644
>>> --- a/arch/arm/dts/imx6s-riotboard.dts
>>> +++ b/arch/arm/dts/imx6s-riotboard.dts
>>> @@ -11,11 +11,6 @@
>>>  / {
>>>       chosen {
>>>               stdout-path = &uart2;
>>> -
>>> -             environment {
>>> -                     compatible = "barebox,environment";
>>> -                     device-path = &environment_usdhc4;
>>> -             };
>>>       };
>>>  };
>>>
>>> @@ -31,11 +26,6 @@ partition@0 {
>>>               label = "barebox";
>>>               reg = <0x0 0xe0000>;
>>>       };
>>> -
>>> -     environment_usdhc4: partition@e0000 {
>>> -             label = "barebox-environment";
>>> -             reg = <0xe0000 0x20000>;
>>> -     };
>>>  };
>>>
>>>  &clks {
>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



