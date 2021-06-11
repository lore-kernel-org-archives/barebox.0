Delivery-date: Fri, 11 Jun 2021 10:31:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrcZS-0002TY-Jp
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 10:31:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrcZR-0002Ue-4O
	for lore@pengutronix.de; Fri, 11 Jun 2021 10:31:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Cc:References:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UBShZhp7WVhbe7i+9cvQ41nYso/H+3R2D20pyCtDBtM=; b=jsS84mFMX4nN3Mf2sr3bGt5cI7
	i6qR2PxB3yAzVpPM7f+gjaHzeggs3+GY7gn3OuzAOZo1Wk94ssWKTGoeNQVFGJhLTbwIko6m6Ojk3
	Reeh6PiY/md0g13rOfm4DvtKuD5hXicKnOSSjAybznJ8FBO+duh6ZZikfs8NJaRRMLUkdbuXMMFhq
	6soXQXe5ZMqCZjuk/bt0epe8hENfQERutPZERrp1K1Q4FnPSdEArD0NoFEH7qcl0apeUWO5pdo0ec
	ruwZWO2v5cz6vc7e2C9SAMh1Bv9Mevift/+cCHGKFKeoEZanvW3AKTsP6juQ15dEs23e2Rgv98jhi
	Id5FLscA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrcYA-004Ktx-7I; Fri, 11 Jun 2021 08:29:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrcY5-004KtX-Ex
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 08:29:55 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lrcY4-00022F-19; Fri, 11 Jun 2021 10:29:52 +0200
To: "Barbier, Renaud" <renaud.barbier@abaco.com>
References: <MN2PR16MB31351CB3C8DDCAA07DB9E25591359@MN2PR16MB3135.namprd16.prod.outlook.com>
 <ad0091c0-2919-de80-01d5-41cea68d5550@pengutronix.de>
 <MN2PR16MB31359FACA75C0F54E7672C5691359@MN2PR16MB3135.namprd16.prod.outlook.com>
 <33d59215-cd45-71cc-5f0b-e26d0a43e9d1@pengutronix.de>
 <MN2PR16MB3135787D6B3FCF98CAA0F53591359@MN2PR16MB3135.namprd16.prod.outlook.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <1f9d84ee-5ec8-a2d7-1424-d73d6916d6b1@pengutronix.de>
Date: Fri, 11 Jun 2021 10:29:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <MN2PR16MB3135787D6B3FCF98CAA0F53591359@MN2PR16MB3135.namprd16.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_012953_543411_B3CC4AB9 
X-CRM114-Status: GOOD (  32.45  )
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
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: NXP Layerscape
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Barbier,

On 10.06.21 18:40, Barbier, Renaud wrote:
> I did find a barebox handler for the tqmls1046a but not the ls1046a.

Oh, I see.

> I guess they would work the same.
> It references /dev/qspiflash0.barebox
> 
> Then I just found arch/arm64/dts/fsl-ls1046a-rdb.dts. It does reference barebox in to esdhc not in qspi

This would explain why barebox_update -l doesn't list qspi, but you aren't getting
that far, apparently.

> I am programming barebox into the QSPI with barebox-ls1046ardb-qspi.image Could that be why it is not running, having  no QSPI node enabled?
> I guess I need to augment arch/arm64/dts/fsl-ls1046a-rdb.dts to have QSPI support.
> Not too familiar with the use of DTB in barebox at present.

That shouldn't matter. barebox header should contain the necessary bits for muxing/clocks.

Device-Tree only becomes relevant later, when barebox itself needs to read/write the flash. 

I'd postpone QSPI for now and check whether SD-Card boot works at all.

Cheers,
Ahmad

> 
> -----Original Message-----
> From: Ahmad Fatoum <a.fatoum@pengutronix.de> 
> Sent: 10 June 2021 17:14
> To: Barbier, Renaud <renaud.barbier@abaco.com>
> Subject: Re: NXP Layerscape
> 
> 
> 
> [**EXTERNAL SOURCE**]:Please verify the source before clicking link or opening attachment.
> 
> Hi Renaud,
> 
> (please keep mailing list CC'd)
> 
> On 10.06.21 16:53, Barbier, Renaud wrote:
>>  I am not using a USB serial adapter. Currently I have a RJ-45 to RS232 to my laptop.
>>
>> Should not BOOTLOCPTR be set I the PBI. I see 0x40100000 for U-boot and 0x10000000 for barebox. Unless it does not apply for PPA boot flow.
> 
> I don't know about the specifics of the first stage boot on the Layerscape, I just wanted to point you at the docs and ask if the steps I had documented there work for you or not.
> 
> Cheers,
> Ahmad
> 
>>
>> -----Original Message-----
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Sent: 10 June 2021 15:09
>> To: Barbier, Renaud <renaud.barbier@abaco.com>; Barebox List 
>> <barebox@lists.infradead.org>
>> Subject: Re: NXP Layerscape
>>
>>
>>
>> [**EXTERNAL SOURCE**]:Please verify the source before clicking link or opening attachment.
>>
>> Hello Barbier,
>>
>> On 10.06.21 15:49, Barbier, Renaud wrote:
>>> I received a NXP  LS1046A-RDB
>>
>> It doesn't reboot cleanly with a USB serial adapter attached!
>> Jfyi, gave me a scare first time, when I thought I broke something ^^.
>>
>>>
>>> I built barebox for the LS1046A and got the image barebox-ls1046ardb-qspi.image.
>>> I programmed the image in the alternative SPI bank as per NXP instructions:
>>> =>    tftp $load_addr
>>> =>    sf erase 0 +$filesize && sf write $load_addr 0 $filesize
>>>
>>> Barebox does not boot.
>>>
>>> I did notice that u-boot is at address 0x40100000 while the RCW is at 0x40000000.
>>> My understanding is that barebox is one image and shall be programmed 
>>> at offset 0 of the SPI (0x40000000)
>>
>> Can't comment on that. Sascha did the integration.
>>
>>> At present I cannot connect my I.C.E. due a pin stuck in my MIPI connector.
>>>
>>> Any return on experience is welcome.
>>
>> Can comment on that: Last time I did this, I wrote some documentation:
>> https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.
>> barebox.org%2Fdoc%2Flatest%2Fboards%2Flayerscape.html&amp;data=04%7C01
>> %7Crenaud.barbier%40abaco.com%7C0e00e06c3236419cae1108d92c2acefe%7Ce6f
>> 27451899d4d0db8fa88baafa551a7%7C0%7C0%7C637589384654589155%7CUnknown%7
>> CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXV
>> CI6Mn0%3D%7C1000&amp;sdata=OUk8SFTmrlH0U%2F8aiXZonQHxLplyEjlMtc7Y5JHx%
>> 2BUk%3D&amp;reserved=0
>>
>> There I flashed barebox from another barebox booted from SD-Card.
>> I'd assume that should still work. I can't recall how the CPLD needed to be tickled, but it would be helpful to know whether doing it like described in the documentation doesn't work for you.
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> Cheers,
>>> Renaud
>>>
>>>
>>> _______________________________________________
>>> barebox mailing list
>>> barebox@lists.infradead.org
>>> https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Flist
>>> s 
>>> .infradead.org%2Fmailman%2Flistinfo%2Fbarebox&amp;data=04%7C01%7Crena
>>> u
>>> d.barbier%40abaco.com%7Cdf668f5e5f2d497d54cb08d92c194c3e%7Ce6f2745189
>>> 9 
>>> d4d0db8fa88baafa551a7%7C0%7C0%7C637589309423989184%7CUnknown%7CTWFpbG
>>> Z
>>> sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%
>>> 3
>>> D%7C1000&amp;sdata=ORpVZlyPk2o7%2FyVYOkJPeAWNnq2%2FkxKauxep7gvDJ%2Bo%
>>> 3
>>> D&amp;reserved=0
>>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pengutronix.de%2F&amp;data=04%7C01%7Crenaud.barbier%40abaco.com%7C0e00e06c3236419cae1108d92c2acefe%7Ce6f27451899d4d0db8fa88baafa551a7%7C0%7C0%7C637589384654589155%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=Ru7cLRTSk3qfVNgAjscSXxOw4hj2j3dHbFSqsTL8sic%3D&amp;reserved=0  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pengutronix.de%2F&amp;data=04%7C01%7Crenaud.barbier%40abaco.com%7C0e00e06c3236419cae1108d92c2acefe%7Ce6f27451899d4d0db8fa88baafa551a7%7C0%7C0%7C637589384654589155%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=Ru7cLRTSk3qfVNgAjscSXxOw4hj2j3dHbFSqsTL8sic%3D&amp;reserved=0  |
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

