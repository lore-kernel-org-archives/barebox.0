Delivery-date: Thu, 10 Jun 2021 18:59:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrO1K-0003eR-Fd
	for lore@lore.pengutronix.de; Thu, 10 Jun 2021 18:59:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrO1I-0002md-GP
	for lore@pengutronix.de; Thu, 10 Jun 2021 18:59:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Cc:References:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9rbbrh5DzQfuY+T59GTUlILuNp99DbZzVc2/aliLDKc=; b=uVzdSktb6jxHgrygX9JQkBD/Mp
	z+gD7nJzH8hmyRHAYH8tLNA5HphtiVWeMN88ddUDbKUTkHNfYDFVWvSNZG+npFoMQs1jTM0QE3cOo
	8Ieivukp8l9KAEyS9csob/0js0thQHyYaNx3BaataE13aL6GEg6yVoswijPlbMWRv6a4QXU6eqO6q
	IpIA1JiRuL91c+9lFpT1tQmBIM9yNXxt8dO3jRrr48X3SPqHrMxPbb8drAVbPQeCAWdydNpOoOxQ2
	UYj2dFSmlTOfwYzpl9HCQ+WWTatlp0eUShVpT2KFQgPyz1VxqfsuFQ82c359Qc/jnDD4o8vngLmLw
	86cm5pOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrNzi-001pfg-Ey; Thu, 10 Jun 2021 16:57:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrNtK-001myM-IH
 for barebox@lists.infradead.org; Thu, 10 Jun 2021 16:50:53 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lrNtJ-0001jN-39; Thu, 10 Jun 2021 18:50:49 +0200
To: "Barbier, Renaud" <renaud.barbier@abaco.com>
References: <MN2PR16MB31351CB3C8DDCAA07DB9E25591359@MN2PR16MB3135.namprd16.prod.outlook.com>
 <ad0091c0-2919-de80-01d5-41cea68d5550@pengutronix.de>
 <MN2PR16MB31359FACA75C0F54E7672C5691359@MN2PR16MB3135.namprd16.prod.outlook.com>
 <33d59215-cd45-71cc-5f0b-e26d0a43e9d1@pengutronix.de>
 <MN2PR16MB31352F2590A920BB39ACC17F91359@MN2PR16MB3135.namprd16.prod.outlook.com>
 <13ef7ac5-bb68-7272-1e13-0ea033e39a2d@pengutronix.de>
 <MN2PR16MB3135880DC913705C5BE493BB91359@MN2PR16MB3135.namprd16.prod.outlook.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <be2670d3-d7bb-c738-354c-92fe5e18c026@pengutronix.de>
Date: Thu, 10 Jun 2021 18:50:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <MN2PR16MB3135880DC913705C5BE493BB91359@MN2PR16MB3135.namprd16.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_095050_848335_2E88456F 
X-CRM114-Status: GOOD (  30.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: NXP Layerscape
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Renaud,

On 10.06.21 18:44, Barbier, Renaud wrote:
> It partially starts:
> 
> => go 0xa0020000
> ## Starting application at 0xA0020000 ...
> 
> 
> barebox 2021.03.0-00096-gb6358ef010-dirty #14 Thu Jun 10 16:26:59 BST 2021
> 
> 
> Board: LS1046A RDB Board
> FIT: Opened FIT image: PPA Firmware
> FIT: No match found. Trying default.
> FIT: configuration 'config@1': PPA Secure firmware
> FIT: image 'firmware@1': 'PPA Firmware: Version LSDK-20170625'

Huh, apparently U-Boot is running at EL3 and loads barebox at EL3
as well. EL3 barebox tries to load PPA (secure monitor) and that fails.
This shouldn't happen with normal boots though, because:

 - if barebox runs at EL3, nothing besides BootROM has run before it,
   so it can load the PPA normally, which returns to barebox in EL2
 - if barebox runs at EL2, it will automatically skip installation
   of the PPA

Cheers,
Ahmad

> 
> -----Original Message-----
> From: Ahmad Fatoum <a.fatoum@pengutronix.de> 
> Sent: 10 June 2021 17:36
> To: Barbier, Renaud <renaud.barbier@abaco.com>
> Cc: barebox@lists.infradead.org
> Subject: Re: NXP Layerscape
> 
> 
> 
> [**EXTERNAL SOURCE**]:Please verify the source before clicking link or opening attachment.
> 
> On 10.06.21 18:23, Barbier, Renaud wrote:
>> Could the barebox image be started from memory with a "go" command?
>> What would be the entry point?
> 
> Here's the barebox code that implements booting other barebox images:
> https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.pengutronix.de%2Fcgit%2Fbarebox%2Ftree%2Farch%2Farm%2Fmach-layerscape%2Fpblimage.c&amp;data=04%7C01%7Crenaud.barbier%40abaco.com%7Cffecae81cdee4a7b7eb608d92c2dce3d%7Ce6f27451899d4d0db8fa88baafa551a7%7C0%7C0%7C637589397510510674%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=DLsQvcf5K4QVJtZ8UJSNE%2Fywd80%2FoT2ZUGS3T0NISps%3D&amp;reserved=0
> 
> Apparently entry point is at offset 128K. Keep in mind that U-Boot go (at least on ARM32) does not do cache maintenance or turn off the MMU, so funny effects may be expected.
> 
> Cheers,
> Ahamd
> 
>>
>> -----Original Message-----
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Sent: 10 June 2021 17:14
>> To: Barbier, Renaud <renaud.barbier@abaco.com>
>> Subject: Re: NXP Layerscape
>>
>>
>>
>> [**EXTERNAL SOURCE**]:Please verify the source before clicking link or opening attachment.
>>
>> Hi Renaud,
>>
>> (please keep mailing list CC'd)
>>
>> On 10.06.21 16:53, Barbier, Renaud wrote:
>>>  I am not using a USB serial adapter. Currently I have a RJ-45 to RS232 to my laptop.
>>>
>>> Should not BOOTLOCPTR be set I the PBI. I see 0x40100000 for U-boot and 0x10000000 for barebox. Unless it does not apply for PPA boot flow.
>>
>> I don't know about the specifics of the first stage boot on the Layerscape, I just wanted to point you at the docs and ask if the steps I had documented there work for you or not.
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> -----Original Message-----
>>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> Sent: 10 June 2021 15:09
>>> To: Barbier, Renaud <renaud.barbier@abaco.com>; Barebox List 
>>> <barebox@lists.infradead.org>
>>> Subject: Re: NXP Layerscape
>>>
>>>
>>>
>>> [**EXTERNAL SOURCE**]:Please verify the source before clicking link or opening attachment.
>>>
>>> Hello Barbier,
>>>
>>> On 10.06.21 15:49, Barbier, Renaud wrote:
>>>> I received a NXP  LS1046A-RDB
>>>
>>> It doesn't reboot cleanly with a USB serial adapter attached!
>>> Jfyi, gave me a scare first time, when I thought I broke something ^^.
>>>
>>>>
>>>> I built barebox for the LS1046A and got the image barebox-ls1046ardb-qspi.image.
>>>> I programmed the image in the alternative SPI bank as per NXP instructions:
>>>> =>    tftp $load_addr
>>>> =>    sf erase 0 +$filesize && sf write $load_addr 0 $filesize
>>>>
>>>> Barebox does not boot.
>>>>
>>>> I did notice that u-boot is at address 0x40100000 while the RCW is at 0x40000000.
>>>> My understanding is that barebox is one image and shall be 
>>>> programmed at offset 0 of the SPI (0x40000000)
>>>
>>> Can't comment on that. Sascha did the integration.
>>>
>>>> At present I cannot connect my I.C.E. due a pin stuck in my MIPI connector.
>>>>
>>>> Any return on experience is welcome.
>>>
>>> Can comment on that: Last time I did this, I wrote some documentation:
>>> https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.
>>> barebox.org%2Fdoc%2Flatest%2Fboards%2Flayerscape.html&amp;data=04%7C0
>>> 1 
>>> %7Crenaud.barbier%40abaco.com%7C0e00e06c3236419cae1108d92c2acefe%7Ce6
>>> f
>>> 27451899d4d0db8fa88baafa551a7%7C0%7C0%7C637589384654589155%7CUnknown%
>>> 7 
>>> CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJX
>>> V 
>>> CI6Mn0%3D%7C1000&amp;sdata=OUk8SFTmrlH0U%2F8aiXZonQHxLplyEjlMtc7Y5JHx
>>> %
>>> 2BUk%3D&amp;reserved=0
>>>
>>> There I flashed barebox from another barebox booted from SD-Card.
>>> I'd assume that should still work. I can't recall how the CPLD needed to be tickled, but it would be helpful to know whether doing it like described in the documentation doesn't work for you.
>>>
>>> Cheers,
>>> Ahmad
>>>
>>>>
>>>> Cheers,
>>>> Renaud
>>>>
>>>>
>>>> _______________________________________________
>>>> barebox mailing list
>>>> barebox@lists.infradead.org
>>>> https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Flis
>>>> t
>>>> s
>>>> .infradead.org%2Fmailman%2Flistinfo%2Fbarebox&amp;data=04%7C01%7Cren
>>>> a
>>>> u
>>>> d.barbier%40abaco.com%7Cdf668f5e5f2d497d54cb08d92c194c3e%7Ce6f274518
>>>> 9
>>>> 9
>>>> d4d0db8fa88baafa551a7%7C0%7C0%7C637589309423989184%7CUnknown%7CTWFpb
>>>> G
>>>> Z
>>>> sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0
>>>> %
>>>> 3
>>>> D%7C1000&amp;sdata=ORpVZlyPk2o7%2FyVYOkJPeAWNnq2%2FkxKauxep7gvDJ%2Bo
>>>> %
>>>> 3
>>>> D&amp;reserved=0
>>>>
>>>
>>> --
>>> Pengutronix e.K.                           |                             |
>>> Steuerwalder Str. 21                       | https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pengutronix.de%2F&amp;data=04%7C01%7Crenaud.barbier%40abaco.com%7Cffecae81cdee4a7b7eb608d92c2dce3d%7Ce6f27451899d4d0db8fa88baafa551a7%7C0%7C0%7C637589397510510674%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=almI5k4Eunio%2FSXlzJvPEjdbojWK9u%2B7%2BQ9jMYAEJbA%3D&amp;reserved=0  |
>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pengutronix.de%2F&amp;data=04%7C01%7Crenaud.barbier%40abaco.com%7Cffecae81cdee4a7b7eb608d92c2dce3d%7Ce6f27451899d4d0db8fa88baafa551a7%7C0%7C0%7C637589397510510674%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=almI5k4Eunio%2FSXlzJvPEjdbojWK9u%2B7%2BQ9jMYAEJbA%3D&amp;reserved=0  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pengutronix.de%2F&amp;data=04%7C01%7Crenaud.barbier%40abaco.com%7Cffecae81cdee4a7b7eb608d92c2dce3d%7Ce6f27451899d4d0db8fa88baafa551a7%7C0%7C0%7C637589397510510674%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=almI5k4Eunio%2FSXlzJvPEjdbojWK9u%2B7%2BQ9jMYAEJbA%3D&amp;reserved=0  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

