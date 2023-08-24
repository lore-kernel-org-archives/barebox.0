Delivery-date: Thu, 24 Aug 2023 15:24:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZAKO-007OUB-VF
	for lore@lore.pengutronix.de; Thu, 24 Aug 2023 15:24:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZAKM-00060Q-NG
	for lore@pengutronix.de; Thu, 24 Aug 2023 15:24:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0ZHXo0s8pjJecLG+xzq/7A1o9oM5+O8SVOSgI+0OdKQ=; b=zHHHUjZ/Xyq6QNO7WQzPVUYmVC
	bwxYdixnOn0v14J9aCBfDU14SYyBaYAMja/+MrqNpXLVYkcAmiUPih7M6QnLF3cdojdCcWYzvanJs
	oZpsDrqzy2miDU47fk0mClSI5lFqyVpH1CDVdnwxf+Y8C9W8t2nKEbPXLLXgLbq/NSGT9FhX3jxnV
	Dic8hc/GbFVnALrULtvTiTRHnAJHHyS3UYOEAUgrqImKZrjMG6feKXVeLq8NPAOO11CeHveDnz8fF
	j8QPtiX25gR3NXxw1K5r5c9Waadj0pc2A7WU4L2294U5oOZsMdm8HeCctcFKCFmoEZyoyweQi+Zwu
	QaXdGo6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZAJ4-0038Ea-00;
	Thu, 24 Aug 2023 13:23:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZAJ0-0038Dy-2m
	for barebox@lists.infradead.org;
	Thu, 24 Aug 2023 13:23:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qZAIv-0005qa-Vk; Thu, 24 Aug 2023 15:23:18 +0200
Message-ID: <a86f7a3c-202b-7348-4766-3c0579eed72f@pengutronix.de>
Date: Thu, 24 Aug 2023 15:23:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Christian Eggers <ceggers@arri.de>, barebox@lists.infradead.org
References: <4523384.LvFx2qVVIh@n95hx1g2> <13350806.uLZWGnKmhe@n95hx1g2>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <13350806.uLZWGnKmhe@n95hx1g2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_062322_901564_C8C9AE38 
X-CRM114-Status: GOOD (  20.65  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: usbotg: otg_set_mode() can only be called once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Christian,

On 24.08.23 14:04, Christian Eggers wrote:
> ok, I should better read the manuals ...
> 
> "Once a specific mode has been selected it can't be changed later anymore."
> 
> In the past I used two OTG cores, one as device and one as host. So both
> OTGs were set to a fixed drmode in the device tree.
> 
> No I need to implement both features via a single OTG.  But probably
> I can use another criteria for choosing the correct boot methods instead of
> trying both.

Obvious choices is checking [ "$bootsource" = serial ] or checking if device
is gadget through ID pin or Type C controller.

Is that possible in your case?

Cheers,
Ahmad

> 
> 
> On Thursday, 24 August 2023, 13:30:46 CEST, Christian Eggers wrote:
>> Application:
>>
>> 1. Try to boot via fastboot (usb device)
>> 2. Try to boot via usb drive (usb host)
>>
>> Problem:
>>
>> barebox@i.MX6ULL:/ setenv otg.mode=host
>> imx-usb 2184000.usb@2184000.of: USB EHCI 1.00
>> barebox@i.MX6ULL:/ setenv otg.mode=peripheral
>> Cannot set parameter otg.mode: Device or resource busy
>>
>> Analysis:
>>
>> The otgdev core maintains one `struct otg_mode` per device.  The function
>> checks whether the current mode is equal to USB_DR_MODE_OTG.  If not, it
>> returns -EBUSY.  There is currently no way to reset the current mode back to
>> USB_DR_MODE_OTG after it has been set to peripheral or host mode once.
>>
>>
> 
> 
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



