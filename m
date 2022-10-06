Delivery-date: Thu, 06 Oct 2022 15:30:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogQxT-007xXG-Uq
	for lore@lore.pengutronix.de; Thu, 06 Oct 2022 15:30:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogQxS-000459-GU
	for lore@pengutronix.de; Thu, 06 Oct 2022 15:30:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nfvwmztK2rys6jIdjnRdzbg+AKVxixg87MOhmDEJw2Q=; b=cNGk28krjfPImDlZudyreyhBAi
	yXWjn+fyI/Bai3zafFE50L+zWrjlIw/MygIxEgUadzW4Obd4dAeSftyte1IS56a2AIu5i+z15IKl1
	TEmHCNF5jl4wD5l2oBiw0esv6h5bL1m+wqcb8S1lLINibMBIhu7j6Upsf+jfMQB3grx3pyOjWoS8m
	Ol8osC1bgpj93JZifWNnU3LnbYkR37AE65XvxV4UG3yldClDfkN2Tyh3UJdiulF7Lm/4EAnpWmIKN
	Xwk5N1biQxv7dD0rIY1E48xYw2D2cctnAdvPP62JQWu3oVSdzpd/TrF/m8AHOdBh43gKMsiamciT/
	QU0nGGDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogQw4-002gPN-BG; Thu, 06 Oct 2022 13:29:12 +0000
Received: from smtpout30.security-mail.net ([85.31.212.37] helo=fx301.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogQvy-002gKZ-4k
	for barebox@lists.infradead.org; Thu, 06 Oct 2022 13:29:08 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx301.security-mail.net (Postfix) with ESMTP id 2C4C124BD093
	for <barebox@lists.infradead.org>; Thu,  6 Oct 2022 15:29:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1665062940;
	bh=n6WHtGv//Pw2X0KZEpBL9wYFeFVIIC23OnX+KU6GaIw=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=OYzmUhTeUKqjZT+ort0MClL1kLRZU7MfvYRxEbHjFSyshE6R2xM3HLXzpg5lwGGUL
	 kzL4Qi3/BtLE/ZcyihPhTAXui9z/zAcXvnPxHG1dOd3x+wHFc+flsMiLDFdsN1bV/v
	 W33piC7KF3H7LZjNU7/LoicjSrJ8Lcutyuy3BLEo=
Received: from fx301 (localhost [127.0.0.1]) by fx301.security-mail.net
 (Postfix) with ESMTP id 10B6324BD0E5 for <barebox@lists.infradead.org>; Thu,
  6 Oct 2022 15:29:00 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx301.security-mail.net (Postfix) with ESMTPS id 7851E24BD073 for
 <barebox@lists.infradead.org>; Thu,  6 Oct 2022 15:28:59 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 5EE2B27E032A for
 <barebox@lists.infradead.org>; Thu,  6 Oct 2022 15:28:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 446DB27E0444 for <barebox@lists.infradead.org>; Thu,
  6 Oct 2022 15:28:59 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 NSWPoG-vtzeD for <barebox@lists.infradead.org>; Thu,  6 Oct 2022 15:28:59
 +0200 (CEST)
Received: from [192.168.37.161] (unknown [192.168.37.161]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 3005427E032A for
 <barebox@lists.infradead.org>; Thu,  6 Oct 2022 15:28:59 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <aaaa.633ed81b.77e51.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 446DB27E0444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1665062939;
 bh=nfvwmztK2rys6jIdjnRdzbg+AKVxixg87MOhmDEJw2Q=;
 h=Message-ID:Date:MIME-Version:To:From;
 b=WtitYKNFvvZT2YYlM9g1J37R1NNgKLPVbbeP8jT5HLfMHRo9hU7fmTAfPHg2gUQ1o
 y+WNlib4YXYNANAbjPIggBoXepkjPDtej6dlTbMNJTR9k4YntOMM3l7b9rbrnAgAfM
 YAX9B4dNEdF2a6U5F11A8bVhZFv13/OKTgQQgnAI=
Message-ID: <49e58ddb-dfe1-b387-9721-05596f9f0cbd@kalray.eu>
Date: Thu, 6 Oct 2022 15:28:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-us
To: barebox@lists.infradead.org
References: <AM9P192MB08709ED9E86625C99913EA2FAB5C9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
From: Yann Sionneau <ysionneau@kalray.eu>
In-Reply-To: <AM9P192MB08709ED9E86625C99913EA2FAB5C9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_062906_364758_A6AC9CDF 
X-CRM114-Status: GOOD (  22.16  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: arasan-sdhci eMMC Problem 'command timeout'
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Michael,

The driver is polling for completion of the commands (8 for the first 
error, 55 for the second).

While doing this polling, an error was raised by the SDHCI controller.

The nature of the error is reported in the register SDHCI_INT_ERROR (reg 
offset 0x32)

Only the LSB (bit 0) is set.

This bit means "Command Timeout Error".

I copy paste the SDHC simplified specification version 4.20:

"

This bit is set only if no response is returned within 64 SD clock 
cycles from
the end bit of the command. If the Host Controller detects a CMD line
conflict, in which case Command CRC Error shall also be set as shown in
Table 2-26, this bit shall be set without waiting for 64 SD clock cycles
because the command will be aborted by the Host Controller.

"

So it seems either the eMMC stops answering, or it's too slow.

Or ... the controller thinks it's too slow and the "timeout" could be a 
false positive.

To check for false positive :

* check the tmclk frequency, it's a clock which is an input of the sdhc 
controller in the Soc: see your SoC documentation for that on how the 
sdhc controller is integrated.

* check the Timeout Control Register content (register 0x2E). Try to 
force a higher value (for instance max value is 0xe)

* Check that CAPABILITIES1_R (register 0x40) fields TOUT_CLK_UNIT (bit 
7) and TOUT_CLK_FREQ (bits [5:0]) that are reported by the controller 
corresponds correctly to the real value of the tmclk clock that is 
feeded to the controller by the SoC.

You can try to hook-up a logic analyser to your eMMC bus to have a look 
at what's happening. Try to lower the max frequency of the bus before 
doing so, so that the logic analyzer extra capacitance does not mess too 
much with the bus signaling.

Another lead to investigate is to have a look at which QUIRKS are 
enabled by the Linux driver to make the controller work in your case: 
https://github.com/torvalds/linux/blob/master/drivers/mmc/host/sdhci-of-arasan.c

Maybe Linux enables some quirks that could be needed to also "enable" in 
the Barebox driver?

Regards,

Yann

On 10/6/22 15:03, michael.graichen@hotmail.com wrote:
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






