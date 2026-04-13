Delivery-date: Mon, 13 Apr 2026 21:35:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCN4b-00Bp8b-1u
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 21:35:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCN4b-0006LF-07
	for lore@pengutronix.de; Mon, 13 Apr 2026 21:35:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ymmNg6EdNdpq94BLlJKOLz3kdwOaXH493J1pVTV57M0=; b=KCiASGcIg85o9xxQXvQCBqAzn6
	IlY1yXxK/j3e/ACWlQdR7vGaWS1fXJZ/OVXQWNAMDL1Y7NZw+L4VbBf3QkY2IjN6r9pglNQLBNMv6
	477W9TSTKWfox/9krz4LoSoQBI4OXylIz1oUMwtd6oXkoqX/gncGoXpu19UOZ4ruIyjGes4Hb1kg8
	SEL2smahEhXbQPChriAXK6r2uPeeVMvK4lR4XhSa4q63D6IiFe6dknnsEa0hlOxb8xeZo5jq9XsI3
	kAn8Vgjc81uD9DEtOePHqLvoQxoJJTCAYHNXepDO8gx6DXBJxDWqVK+hW6Bx1K6IAEy3ynVY8vxQN
	xJk4f79Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCN4A-0000000GJW3-2EIC;
	Mon, 13 Apr 2026 19:35:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCN48-0000000GJVg-3S5k
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 19:35:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCN47-0006HQ-7k; Mon, 13 Apr 2026 21:35:23 +0200
Message-ID: <de024775-06e7-4fd6-a247-22b702f4aa96@pengutronix.de>
Date: Mon, 13 Apr 2026 21:35:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
References: <CAP1tNvRbUpQdGCx6CeyAB6Q6N991oBr5V6mw2+5UHwW1NtYJLA@mail.gmail.com>
 <e2ccd6aa-d0dc-40c0-b947-8f63142dc12c@pengutronix.de>
 <CAP1tNvS6Hb4rufVCMogNEjYtZ+O=w55fcpeFZVp+PAqtMsOcJg@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvS6Hb4rufVCMogNEjYtZ+O=w55fcpeFZVp+PAqtMsOcJg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_123524_886050_CEF29152 
X-CRM114-Status: GOOD (  17.69  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: blspec
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 4/13/26 21:15, Alexander Shiyan wrote:
> Hello Ahmad.
> 
> Is it possible to implement a similar provider that parses extlinux.conf
> (i.e. finds DEFAULT, reads the corresponding LABEL section, extracts
> KERNEL, INITRD, APPEND) and creates boot records based on it?

Sure, you can implement a custom `struct bootscanner` and do whatever
you like.

We already have a driver handling the U-Boot environment, so I don't see
why an optional extlinux.conf parser shouldn't be appropriate for upstream
if someone contributes it.

Cheers,
Ahmad

> 
> Thanks!
> 
> пн, 13 апр. 2026 г. в 17:01, Ahmad Fatoum <a.fatoum@pengutronix.de>:
>>
>> Hello Alexander,
>>
>> On 4/10/26 4:02 PM, Alexander Shiyan wrote:
>>> Hello All.
>>>
>>> Can anyone explain how to use the built-in blspec support?
>>> I would like to try setting up booting via exlinux.conf...
>>
>> exlinux.conf and bootloader spec are different formats.
>>
>> Here's a bootloader spec example:
>>
>>   $ cat /loader/entries/imx8mp-evk.conf
>>   title           PTXdist - Pengutronix-DistroKit imx8mp-evk
>>   version         6.18
>>   options         rootwait
>>   linux           /boot/Image
>>   devicetree      /boot/imx8mp-evk.dtb
>>   linux-appendroot        true
>>
>>
>> You can have multiple files under /loader/entries and barebox will
>> iterate over them, extract the compatible of the referenced devicetree,
>> compare it against its own and then decide what to boot.
>>
>> The linux-appendroot key is barebox-specific and means barebox should
>> fixup root= according to the device it found the bootloader spec file
>> on. This is useful for the case where the bootloader spec files are
>> directly in the rootfs and not in a separate partition.
>>
>> Cheers,
>> Ahmad
>>
>>
>>
>>>
>>> Thanks!
>>>
>>>
>>
>> --
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


