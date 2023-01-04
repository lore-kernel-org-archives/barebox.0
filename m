Delivery-date: Wed, 04 Jan 2023 10:48:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pD0NW-001Jbq-AB
	for lore@lore.pengutronix.de; Wed, 04 Jan 2023 10:48:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pD0NU-0007ci-Ag
	for lore@pengutronix.de; Wed, 04 Jan 2023 10:48:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LKvSrsF7CEpH+jP6sm80YKhWXC4xpzP1bpTiPF9EZvg=; b=NnLEcTifiqZa8TDySfyqR58won
	HfvsPDXkLvGLYPOXd4ctKN26Aq047Xbh78t5qw7OSuatLbPW4HNYZYqbETnVc5REhgOPDeemV48P0
	wM6c5nxa6UNz2SkPDaf9j+aA0D6IuO3afh/OeS3KKT9+ENPmTLCKigaxb1okrHdGCuHxitni3x93c
	OSx6KaPqwOXpnc/TXFgs4q0hH6w3PnAQqYvjCHux1A4wmntWhQ3I1dXY+gklJV2rK7x4iQ5j7sgyV
	YZ0K21VFeObMquGuYUn+ftK6IOV/Th7DZDq5dcjgUNeG8CpvqgyGqtfV0aqnoJR8WZXXKGcMK2UFb
	dRt0ryJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD0Lw-008CCM-8u; Wed, 04 Jan 2023 09:46:32 +0000
Received: from smtpout140.security-mail.net ([85.31.212.145] helo=fx405.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD03w-0082sq-Sy
	for barebox@lists.infradead.org; Wed, 04 Jan 2023 09:27:59 +0000
Received: from localhost (fx405.security-mail.net [127.0.0.1])
	by fx405.security-mail.net (Postfix) with ESMTP id 57598335CFA
	for <barebox@lists.infradead.org>; Wed,  4 Jan 2023 10:27:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1672824470;
	bh=LKvSrsF7CEpH+jP6sm80YKhWXC4xpzP1bpTiPF9EZvg=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=jREtN+AuFb9dSmgvZUbnUs4HC4MLftQ4swF0aqAqfA6fAyhrnBoO+Vnh/rNxLWq/A
	 XAhFzazvbPrp3SIM9WyJIqg1KnhWUZRMu16RK5Se5seIa3Uxug8HRTMgQpfzVrMx9X
	 A5xW5ZEDJrgwJyKz4C08Lsd47HcQ9ftMRciiPGjM=
Received: from fx405 (fx405.security-mail.net [127.0.0.1]) by
 fx405.security-mail.net (Postfix) with ESMTP id 378A7335CA8; Wed,  4 Jan
 2023 10:27:50 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx405.security-mail.net (Postfix) with ESMTPS id 6F613335BFD; Wed,  4 Jan
 2023 10:27:49 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 4899B27E03F2; Wed,  4 Jan 2023
 10:27:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 3011127E03F5; Wed,  4 Jan 2023 10:27:49 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 jptKHHNDcaWL; Wed,  4 Jan 2023 10:27:49 +0100 (CET)
Received: from [127.0.0.1] (unknown [192.168.37.161]) by zimbra2.kalray.eu
 (Postfix) with ESMTPSA id D07CB27E03F2; Wed,  4 Jan 2023 10:27:48 +0100
 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <7052.63b54695.6bea2.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 3011127E03F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1672824469;
 bh=lHycqe+Wo7lw3b3ZdfDK0nVjzF7CtBfZaaFBpOVgoAQ=;
 h=Message-ID:Date:MIME-Version:To:From;
 b=j3wPNvWgS6RjKE3DrSxzxvYzI4k2XPQR8QujDepqS63RTUoaXv8P07nX08eYbbBNM
 qbKmAFYjTojITeyYNA5z+HuvBcYJgJCwWj5GlKNZrMlDSdtFLEO+NV7WRR+3gveWye
 y8f/Is6j0WBXksqvaiLHp/4uuf3qswgsAh6fuZQI=
Message-ID: <b2831924-f9c8-5145-658a-a7503cd788c0@kalray.eu>
Date: Wed, 4 Jan 2023 10:27:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org,
 Michael Graichen <michael.graichen@hotmail.com>
References: <AM9P192MB08709ED9E86625C99913EA2FAB5C9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
 <49e58ddb-dfe1-b387-9721-05596f9f0cbd@kalray.eu>
 <2a89bf74-0923-aca5-913f-51141c7e02e6@pengutronix.de>
Content-Language: en-us
From: Yann Sionneau <ysionneau@kalray.eu>
In-Reply-To: <2a89bf74-0923-aca5-913f-51141c7e02e6@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_012757_301413_520239EA 
X-CRM114-Status: GOOD (  25.61  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: arasan-sdhci eMMC Problem 'command timeout'
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ahmad,

On 03/01/2023 23:06, Ahmad Fatoum wrote:
> Hello Yann,
>
> On 06.10.22 15:28, Yann Sionneau wrote:
>> Hello Michael,
>>
>> The driver is polling for completion of the commands (8 for the first error, 55 for the second).
>>
>> While doing this polling, an error was raised by the SDHCI controller.
>>
>> The nature of the error is reported in the register SDHCI_INT_ERROR (reg offset 0x32)
>>
>> Only the LSB (bit 0) is set.
>>
>> This bit means "Command Timeout Error".
>>
>> I copy paste the SDHC simplified specification version 4.20:
>>
>> "
>>
>> This bit is set only if no response is returned within 64 SD clock cycles from
>> the end bit of the command. If the Host Controller detects a CMD line
>> conflict, in which case Command CRC Error shall also be set as shown in
>> Table 2-26, this bit shall be set without waiting for 64 SD clock cycles
>> because the command will be aborted by the Host Controller.
>>
>> "
>>
>> So it seems either the eMMC stops answering, or it's too slow.
> Turns out these are SD-Card specific commands and the timeout is expected and
> should've been passed along as -ETIMEDOUT, so MCI core can fall back to MMC
> setup instead of SD.

Oooh right, ok :)

Sorry for the wrong leads!

>
> I ran into this getting my eMMC working with the SDHCI on the RK3399 and just
> sent out a patch to resolve this.
Well done!
>
> Cheers,
> Ahmad
>
>> Or ... the controller thinks it's too slow and the "timeout" could be a false positive.
>>
>> To check for false positive :
>>
>> * check the tmclk frequency, it's a clock which is an input of the sdhc controller in the Soc: see your SoC documentation for that on how the sdhc controller is integrated.
>>
>> * check the Timeout Control Register content (register 0x2E). Try to force a higher value (for instance max value is 0xe)
>>
>> * Check that CAPABILITIES1_R (register 0x40) fields TOUT_CLK_UNIT (bit 7) and TOUT_CLK_FREQ (bits [5:0]) that are reported by the controller corresponds correctly to the real value of the tmclk clock that is feeded to the controller by the SoC.
>>
>> You can try to hook-up a logic analyser to your eMMC bus to have a look at what's happening. Try to lower the max frequency of the bus before doing so, so that the logic analyzer extra capacitance does not mess too much with the bus signaling.
>>
>> Another lead to investigate is to have a look at which QUIRKS are enabled by the Linux driver to make the controller work in your case: https://github.com/torvalds/linux/blob/master/drivers/mmc/host/sdhci-of-arasan.c
>>
>> Maybe Linux enables some quirks that could be needed to also "enable" in the Barebox driver?
>>
>> Regards,
>>
>> Yann
>>
>> On 10/6/22 15:03, michael.graichen@hotmail.com wrote:
>>> Hey,
>>>
>>> I have connected an eMMC to sdhci0 and a uSD Card to sdhci1 of a Zynq.
>>> while the uSD Card seams to work fine i'm getting the error
>>>
>>> arasan-sdhci e0100000.mmc@e0100000.of: registered as mmc0
>>> arasan-sdhci e0100000.mmc@e0100000.of: SDHCI_INT_ERROR: 0x00000001
>>> arasan-sdhci e0100000.mmc@e0100000.of: error while transfering data for command 8
>>> arasan-sdhci e0100000.mmc@e0100000.of: state = 0x01ff0001 , interrupt = 0x00018000
>>> arasan-sdhci e0100000.mmc@e0100000.of: SDHCI_INT_ERROR: 0x00000001
>>> arasan-sdhci e0100000.mmc@e0100000.of: error while transfering data for command 55
>>> arasan-sdhci e0100000.mmc@e0100000.of: state = 0x01ff0001 , interrupt = 0x00018000
>>>
>>> from the eMMC.
>>>
>>> arasan-sdhci e0101000.mmc@e0101000.of: registered as mmc1
>>> mmc1: detected SD card version 2.0
>>> mmc1: registered mmc1
>>>
>>> both eMMC and SDCard work fine in Linux. So I think the Problem is some confuguration difference between Linux and barebox.
>>> The MMC is from type MTFC8G but Linux detects it as
>>>
>>> [    2.012122] mmc0: new high speed MMC card at address 0001
>>> [    2.021129] mmcblk0: mmc0:0001 Q2J55L 7.09 GiB
>>> [    2.026355] Btrfs loaded, crc32c=crc32c-generic, zoned=no, fsverity=no
>>> [    2.027458] mmcblk0boot0: mmc0:0001 Q2J55L 16.0 MiB
>>> [    2.031509] mmcblk0boot1: mmc0:0001 Q2J55L 16.0 MiB
>>> [    2.039829] mmcblk0rpmb: mmc0:0001 Q2J55L 4.00 MiB, chardev (245:0)
>>>
>>> Unfortunattly I'm not very familliar with SDHCI, so I would apreciate any help.
>>>
>>> Best Regards
>>> Michael
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>
>>
>>
>>
>>






