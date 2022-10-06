Delivery-date: Thu, 06 Oct 2022 15:15:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogQiN-007xBU-16
	for lore@lore.pengutronix.de; Thu, 06 Oct 2022 15:15:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogQiK-00016M-84
	for lore@pengutronix.de; Thu, 06 Oct 2022 15:15:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RXmznWX86jSQEk2lVIxpcrQdjubRp3YHXIde45eIcIY=; b=3P/C5012EPbWNPX82RAzhkjmwh
	TaMPxLupoNBSEr0araucEgnN041oY87EPT+OxG7vC/zZrQ4mnIQaEfpWL+FvPflSciozkdxNle8Dd
	kpYFUEanQLO+tFU/0xSH8T026ZT4Y/45V9Qzea34IlqpEKR0pZaxuhJRvYYajQyda/7V0vc+IUJvq
	w+crB9GkcWr7BQJIxBXdQhaXBzjx1yuPhk/xlEWH3+oP3z4rsZuaOrulxuEVYGiVVunXaJPizNEl0
	LJ6v6zkXpIlEChh8YoO6tqdYYJcf/VABy8elTUqsC3n2b99c2hJTv4UOD4V7lV4eTfNzi4hhYTJH4
	BIi5nMeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogQgx-002ZsN-P8; Thu, 06 Oct 2022 13:13:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogQgs-002Zoa-D0
	for barebox@lists.infradead.org; Thu, 06 Oct 2022 13:13:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ogQgm-0000uu-36; Thu, 06 Oct 2022 15:13:24 +0200
Message-ID: <5ab7d76d-2d89-4aa5-3f9b-1eeffefd9437@pengutronix.de>
Date: Thu, 6 Oct 2022 15:13:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: michael.graichen@hotmail.com,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <AM9P192MB08709ED9E86625C99913EA2FAB5C9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <AM9P192MB08709ED9E86625C99913EA2FAB5C9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_061330_480444_E2A87EFA 
X-CRM114-Status: GOOD (  19.62  )
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
Subject: Re: arasan-sdhci eMMC Problem 'command timeout'
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); Unknown failure

Hello,

On 06.10.22 15:03, michael.graichen@hotmail.com wrote:
> Hey, 
> 
> I have connected an eMMC to sdhci0 and a uSD Card to sdhci1 of a Zynq. 
> while the uSD Card seams to work fine i'm getting the error
> 
> arasan-sdhci e0100000.mmc@e0100000.of: registered as mmc0
> arasan-sdhci e0100000.mmc@e0100000.of: SDHCI_INT_ERROR: 0x00000001
> arasan-sdhci e0100000.mmc@e0100000.of: error while transfering data for command 8
> arasan-sdhci e0100000.mmc@e0100000.of: state = 0x01ff0001 , interrupt = 0x00018000
> arasan-sdhci e0100000.mmc@e0100000.of: SDHCI_INT_ERROR: 0x00000001
> arasan-sdhci e0100000.mmc@e0100000.of: error while transfering data for command 55
> arasan-sdhci e0100000.mmc@e0100000.of: state = 0x01ff0001 , interrupt = 0x00018000
> 
> from the eMMC. 

Please try adding no-sd to your eMMC device tree node and try again.
I don't know why it's necessary, because falling back to MMC after
SD fails is normal operation on all other hosts. I don't have the
hardware, but I've seen that the recently added device trees that
use the arasan, set this in barebox for the eMMC node.

> 
> arasan-sdhci e0101000.mmc@e0101000.of: registered as mmc1
> mmc1: detected SD card version 2.0
> mmc1: registered mmc1
> 
> both eMMC and SDCard work fine in Linux. So I think the Problem is some confuguration difference between Linux and barebox. 
> The MMC is from type MTFC8G but Linux detects it as  
> 
> [    2.012122] mmc0: new high speed MMC card at address 0001
> [    2.021129] mmcblk0: mmc0:0001 Q2J55L 7.09 GiB 
> [    2.026355] Btrfs loaded, crc32c=crc32c-generic, zoned=no, fsverity=no
> [    2.027458] mmcblk0boot0: mmc0:0001 Q2J55L 16.0 MiB 
> [    2.031509] mmcblk0boot1: mmc0:0001 Q2J55L 16.0 MiB 
> [    2.039829] mmcblk0rpmb: mmc0:0001 Q2J55L 4.00 MiB, chardev (245:0)
> 
> Unfortunattly I'm not very familliar with SDHCI, so I would apreciate any help.

If it's indeed resolved by no-sd, this sound like a good occasion to dig
deeper into the SDHCI. ;)

Let me know if that works for you.

Cheers,
Ahmad

 
> 
> Best Regards 
> Michael
> 
> 
> 
> 
> 
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


