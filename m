Delivery-date: Mon, 19 Jan 2026 12:34:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhnWK-0030vC-1z
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 12:34:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhnWJ-00044R-KH
	for lore@pengutronix.de; Mon, 19 Jan 2026 12:34:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mGkLbt5xWQXfIhwzY5YjhF9G6Li3z4B3UU8YbPtnqX0=; b=IrUng0vPv5gnVFwaCbBwMAMVlm
	jNHctk+SYxoaytsquYwrbjREdjEYfQX4aoewcm38eOPNwHGpGiv1TYwd7MymHF6NIH6+EOyUJ8Moh
	xyna/JWqP/0vPpyhyYLmFEfyTYArYjx83bxJbNcY/we2od0xZdgx3fFYoJcSqBEIovFxbFMQUzyUD
	VV2WesiybIlIViLzNWaM+znxruhmh4YF14aj/14o3paot8f9UUVHgrQyWX0F6KOel1bSN0Q3N3qSZ
	hQSipf/ILpHtRmsx/CyWtzTy5iQ4+mhDY8YLAqrzyv9sKsHtFQBaReUtNQAAzhaq18Q5skCRPnmZJ
	68OUtagQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnVh-00000001u7c-1mIw;
	Mon, 19 Jan 2026 11:33:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnVe-00000001u66-280A
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 11:33:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vhnVc-0003rT-QT; Mon, 19 Jan 2026 12:33:24 +0100
Message-ID: <735063a4-5e0f-4b78-8461-aeb9f17b595e@barebox.org>
Date: Mon, 19 Jan 2026 12:33:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20260115120748.3433463-1-a.fatoum@barebox.org>
 <20260115120748.3433463-5-a.fatoum@barebox.org>
 <aW4R2e0i8N5NF-OM@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@barebox.org>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aW4R2e0i8N5NF-OM@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_033326_552921_BBA21E8F 
X-CRM114-Status: GOOD (  14.45  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/6] common: boards: qemu: process some standard fw_cfg
 keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 1/19/26 12:13 PM, Sascha Hauer wrote:
> On Thu, Jan 15, 2026 at 01:06:12PM +0100, Ahmad Fatoum wrote:
>> While we have FW_CFG support as file system, there is a number of keys
>> that precede the keys in the file system, which can be useful in some
>> scenarios.
>>
>> Add support for QEMU -uuid, -kernel, -initrd, -append options as well as
>> a /boot/qemu_fw_cfg script that continues booting according to the latter
>> three options.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
>> ---
>>  common/boards/Kconfig                         |   8 +
>>  common/boards/Makefile                        |   1 +
>>  common/boards/qemu/Makefile                   |   4 +
>>  .../defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg   |  12 +
>>  common/boards/qemu/fw_cfg.c                   | 208 ++++++++++++++++++
>>  drivers/firmware/Kconfig                      |   1 +
>>  6 files changed, 234 insertions(+)
>>  create mode 100644 common/boards/qemu/Makefile
>>  create mode 100755 common/boards/qemu/defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg
>>  create mode 100644 common/boards/qemu/fw_cfg.c
>>
>> diff --git a/common/boards/Kconfig b/common/boards/Kconfig
>> index 74947316954b..a9e1b75a7641 100644
>> --- a/common/boards/Kconfig
>> +++ b/common/boards/Kconfig
>> @@ -1,5 +1,13 @@
>>  # SPDX-License-Identifier: GPL-2.0-only
>>  
>> +config BOARD_QEMU
>> +	bool "Extra support for QEMU-emulated boards" if COMPILE_TEST
>> +
>> +config BOARD_QEMU_VIRT
>> +	bool
>> +	select OF_OVERLAY
>> +	select BOARD_QEMU
>> +
>>  config BOARD_QEMU_VIRT
>>  	bool
>>  	select OF_OVERLAY
> 
> You likely intended to just add "select BOARD_QEMU" instead of
> duplicating the option. I'll fix that while applying.

Indeed. Thank you.

Cheers,
Ahmad

> 
> Sascha
> 



