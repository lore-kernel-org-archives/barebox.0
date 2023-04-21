Delivery-date: Fri, 21 Apr 2023 13:40:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppp7S-00BTwE-28
	for lore@lore.pengutronix.de; Fri, 21 Apr 2023 13:40:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppp7R-0003tr-Tf
	for lore@pengutronix.de; Fri, 21 Apr 2023 13:40:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ubt3pHNH607O01lKx722nOJiubHKjFmCds9NXPCfZUw=; b=0vt/DKQgXmxUBEOXW3h0qBAxT8
	06NQdjuzwN2OJScdu3kEggxP18NZhExgavkudhJQhSbBe89GSsCFo9nELNTFccKRzpSkJCx5h4s7z
	KLi1zDrVNDbw+QOZwDghBPJK/AVjYphyYdbCAcMTrOGHgj3Dmbyprh5o8xxT4OiZF5dPr9qEHdATz
	ftbQPn08tGFsy3HbtX0oc205qRobAnmvpM5aFgTF5JUoueg/3D4i4KX6jp+bNOdjZ2aouYbMN3bWq
	uoFdvar6mQtUIGkBWQLotFPe1BFDKNBpQKrV1Lgi3FbiuOOBVRTRet9G6xKnXDY/wbud9UX7xsrlo
	MGnh307w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppp6D-00Ajco-29;
	Fri, 21 Apr 2023 11:38:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppp68-00AjbM-2N
	for barebox@bombadil.infradead.org;
	Fri, 21 Apr 2023 11:38:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=ubt3pHNH607O01lKx722nOJiubHKjFmCds9NXPCfZUw=; b=FTveygkKnC+gDboCYoc3ZWjuKu
	FOpb564h5f/VEqx0EXTR01+W8Fh7gZ1CYAD0/wcScL6H0hXZkaM7eURBA/lQIaT01R3qAWQ3jWP7H
	4tzeOnIHg7ZvEuB9r3lpET8XagX4jsLQQGBAzA0FjAMbj2CX6ffm6CsyXRmNfBSQCt+N31jhCUrZ1
	xlMT+1yVypljXSWkl8qtH/lq8SU2qjHku0bHTKJCvWwRxaRdFl92T9+7QtIp5cXe7CFNtsBl3Di8e
	0hX26HbAM8bHogUoWw0fs62t6Bd9qGaZUpe17aCYMgRuhmhDijicA4GezZwWXtDivmt/c7vN/U0/W
	f89SFM1w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppoMX-005GYR-1e
	for barebox@lists.infradead.org;
	Fri, 21 Apr 2023 10:51:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ppoMU-0006rA-To; Fri, 21 Apr 2023 12:51:30 +0200
Message-ID: <487ad019-b97d-39bd-cf2c-8a81c0fcdc2c@pengutronix.de>
Date: Fri, 21 Apr 2023 12:51:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230421100642.2867651-1-a.fatoum@pengutronix.de>
 <20230421100642.2867651-4-a.fatoum@pengutronix.de>
 <20230421103657.bhety2z5srjrzhqa@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230421103657.bhety2z5srjrzhqa@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_115133_787017_814B0AC9 
X-CRM114-Status: GOOD (  19.66  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/5] ARM: stm32mp: defconfig: enable use of DKx USB hubs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Marco,

On 21.04.23 12:36, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 23-04-21, Ahmad Fatoum wrote:
>> The DK1/DK2 boards have an on-board USB-Hub with togglable power supply,
>> which is connected to the SoC's EHCI. Enable the necessary options to
>> make it usable. This was tested with the mass storage support (barebox
>> being host, not gadget), so enable that as well.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/configs/stm32mp_defconfig | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
>> index f6c6ca71b15c..df73102ba1c0 100644
>> --- a/arch/arm/configs/stm32mp_defconfig
>> +++ b/arch/arm/configs/stm32mp_defconfig
>> @@ -115,6 +115,9 @@ CONFIG_MTD_SST25L=y
>>  CONFIG_USB_HOST=y
>>  CONFIG_USB_DWC2_HOST=y
>>  CONFIG_USB_DWC2_GADGET=y
>> +CONFIG_USB_EHCI=y
>> +CONFIG_USB_STORAGE=y
>> +CONFIG_USB_ONBOARD_HUB=y
> 
> While USB_EHCI and USB_STORAGE is already part of the the
> mulit_v7_defconfig, USB_ONBOARD_HUB isn't. Can you please enable it
> there as well?

I just sent a separate patch to that effect.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>>  CONFIG_USB_GADGET=y
>>  CONFIG_USB_GADGET_DFU=y
>>  CONFIG_USB_GADGET_SERIAL=y
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



