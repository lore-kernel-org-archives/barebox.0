Delivery-date: Fri, 07 Oct 2022 16:23:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogoFu-000XJI-Rf
	for lore@lore.pengutronix.de; Fri, 07 Oct 2022 16:23:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogoFs-0003oi-Hk
	for lore@pengutronix.de; Fri, 07 Oct 2022 16:23:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AJ9OeZdmuRk11ncfzLmFSnuHMfPaVR2KQEJYDs/ihcE=; b=mEY8EwZ3V9F0tgsz0kZHVr/zlK
	6um/IL6dVYJ/LnAXOx+dA7N1BEbrI5gacXlTw0UgttV3B0FdfDM9KOouay0fnXUawwAefQXB7j6px
	H6fB+8ZgSKEgBvD2nSq3jtWSkfmFUy/65ZVCdShpqBbhUFzle2yY+3mQlhTBZOGhEajGC22Nvzq85
	lvlBZLkW1LbVbRp3m2waV6oKbKL1kIts01JeoQ9wmPgffqTw99e41IlD4PKJVpXmRopiOkqjNSOOX
	GUArj3XY04K6h2OWtMe2CN9127KDh4VMyJwMptQAnXkFKBzfNcy9+6BJPA52jtEy+tfgSQO2nxMm5
	7R6CpgIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogoEX-009G2H-Ij; Fri, 07 Oct 2022 14:21:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogoES-009G10-KM
	for barebox@lists.infradead.org; Fri, 07 Oct 2022 14:21:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ogoEM-0003Ya-BL; Fri, 07 Oct 2022 16:21:38 +0200
Message-ID: <de8a546e-5706-a153-f5bb-da8f6017fcd1@pengutronix.de>
Date: Fri, 7 Oct 2022 16:21:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: michael.graichen@hotmail.com,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 Yann Sionneau <ysionneau@kalray.eu>
References: <AM9P192MB08709ED9E86625C99913EA2FAB5C9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
 <5ab7d76d-2d89-4aa5-3f9b-1eeffefd9437@pengutronix.de>
 <AM9P192MB08707A8AB46C16C0CB350FDEAB5F9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <AM9P192MB08707A8AB46C16C0CB350FDEAB5F9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221007_072144_719531_2043317C 
X-CRM114-Status: GOOD (  24.33  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: AW: arasan-sdhci eMMC Problem 'command timeout'
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 07.10.22 16:13, michael.graichen@hotmail.com wrote:
> 
> Hey, 
> 
> thanks for your advices. Adding "no-sd" really solved it.

Good to know. Keep in mind that's just a work-around though.
I highly encourage you to debug it... :D

Cheers,
Ahmad

> 
> Best Regards 
> Michael
> 
> 
> ________________________________________
> Von: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Gesendet: Donnerstag, 6. Oktober 2022 15:13
> An: michael.graichen@hotmail.com; barebox@lists.infradead.org
> Betreff: Re: arasan-sdhci eMMC Problem 'command timeout'
> 
> Hello,
> 
> On 06.10.22 15:03, michael.graichen@hotmail.com wrote:
>> Hey,
>>
>> I have connected an eMMC to sdhci0 and a uSD Card to sdhci1 of a Zynq.
>> while the uSD Card seams to work fine i'm getting the error
>>
>> arasan-sdhci e0100000.mmc@e0100000.of: registered as mmc0
>> arasan-sdhci e0100000.mmc@e0100000.of: SDHCI_INT_ERROR: 0x00000001
>> arasan-sdhci e0100000.mmc@e0100000.of: error while transfering data for command 8
>> arasan-sdhci e0100000.mmc@e0100000.of: state = 0x01ff0001 , interrupt = 0x00018000
>> arasan-sdhci e0100000.mmc@e0100000.of: SDHCI_INT_ERROR: 0x00000001
>> arasan-sdhci e0100000.mmc@e0100000.of: error while transfering data for command 55
>> arasan-sdhci e0100000.mmc@e0100000.of: state = 0x01ff0001 , interrupt = 0x00018000
>>
>> from the eMMC.
> 
> Please try adding no-sd to your eMMC device tree node and try again.
> I don't know why it's necessary, because falling back to MMC after
> SD fails is normal operation on all other hosts. I don't have the
> hardware, but I've seen that the recently added device trees that
> use the arasan, set this in barebox for the eMMC node.
> 
>>
>> arasan-sdhci e0101000.mmc@e0101000.of: registered as mmc1
>> mmc1: detected SD card version 2.0
>> mmc1: registered mmc1
>>
>> both eMMC and SDCard work fine in Linux. So I think the Problem is some confuguration difference between Linux and barebox.
>> The MMC is from type MTFC8G but Linux detects it as
>>
>> [    2.012122] mmc0: new high speed MMC card at address 0001
>> [    2.021129] mmcblk0: mmc0:0001 Q2J55L 7.09 GiB
>> [    2.026355] Btrfs loaded, crc32c=crc32c-generic, zoned=no, fsverity=no
>> [    2.027458] mmcblk0boot0: mmc0:0001 Q2J55L 16.0 MiB
>> [    2.031509] mmcblk0boot1: mmc0:0001 Q2J55L 16.0 MiB
>> [    2.039829] mmcblk0rpmb: mmc0:0001 Q2J55L 4.00 MiB, chardev (245:0)
>>
>> Unfortunattly I'm not very familliar with SDHCI, so I would apreciate any help.
> 
> If it's indeed resolved by no-sd, this sound like a good occasion to dig
> deeper into the SDHCI. ;)
> 
> Let me know if that works for you.
> 
> Cheers,
> Ahmad
> 
> 
>>
>> Best Regards
>> Michael
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
> 
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


