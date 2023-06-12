Delivery-date: Mon, 12 Jun 2023 17:08:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8j9e-003yHK-9t
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 17:08:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8j9b-0002TK-E2
	for lore@pengutronix.de; Mon, 12 Jun 2023 17:08:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lx7jWQ09XumnUMtTFtpjtyg0pHWC9y9Q9WJ6aOJttQs=; b=zkya5KbEoz5dIQNa/zKdU3/r3N
	iW8Xv+i85/BuIDKM5eVMlaQlKK5r7Ofigk1kGPJl8MkNyLxWyl8N/oI+oOTlYReLPpi8/CCVGOsLt
	4xbUxuxYT3ELlA4Z6N/aXJY5Q2LXc5M/9U1oOTAeySkJFoCV9mEUJ+Gwe0qwiCA+4PM5hkoqaLSOf
	NgcocI0yJ4/q+lh06+MS0wnhkYJU+7mNxmzSpueGNWDUslVGmVHkn7JfBzmSHoMbveL3runaGkiVf
	xq1WbV+CAJq8eoi3CLv0Z9X8auogO3+Eln0Piy0KXYQO3AwR76KIqP/dZH2hmaUYdZ1kDC8Xmi1GM
	oe1vjNOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8j8u-004Q8D-04;
	Mon, 12 Jun 2023 15:07:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8j8q-004Q76-2o
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 15:07:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q8j8p-0002Op-1e; Mon, 12 Jun 2023 17:07:35 +0200
Message-ID: <15f8d795-f486-1914-9eba-e5a315bf2083@pengutronix.de>
Date: Mon, 12 Jun 2023 17:07:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Lior Weintraub <liorw@pliops.com>, Ahmad Fatoum <ahmad@a3f.at>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <f4aae166-1cc4-6255-1fde-7a52c7872bd8@pengutronix.de>
 <AM0P195MB0548E634FB807F1501D1D716C3489@AM0P195MB0548.EURP195.PROD.OUTLOOK.COM>
 <3448bd9c-06e3-89a9-e8de-c284d0268ca9@pengutronix.de>
 <AM0P195MB0548337CA7A533D0456BB14CC3489@AM0P195MB0548.EURP195.PROD.OUTLOOK.COM>
 <3340583d-12cd-1a52-4c9c-d237c58bfca7@pengutronix.de>
 <PR3P195MB0555265E59E77AB3ABE53D03C3499@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <ffde7964-42a4-c762-d46d-93cd9d923646@pengutronix.de>
 <PR3P195MB0555940C37560E6D01731A1BC3499@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <98480243-c1b7-a2bb-9267-2126797f52bd@pengutronix.de>
 <PR3P195MB05554662E272B9E1A8E5655AC352A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <381bd0cc-26b3-ad2e-1857-436932549934@pengutronix.de>
 <PR3P195MB055562ACCF6EBF0A490BBB4EC354A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <d4fddd30-74bc-dab3-a6e0-a83920d2763f@pengutronix.de>
 <PR3P195MB0555C35406A3BC621BA1038EC354A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <PR3P195MB0555C35406A3BC621BA1038EC354A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_080736_955209_45B9DC16 
X-CRM114-Status: GOOD (  31.27  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] Porting barebox to a new SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 12.06.23 16:59, Lior Weintraub wrote:
> Hello Ahmad,
> 
> Just for simple simulations we make the ROM size 192MB so it can include all needed artifacts.

I am not convinced that this is much of a simplification over having
your Qemu machine provide cfi-flash.

> When we get this simple system to work we will move the relevant parts  to BL2.

Ok.

> DRAM is also simulated now as SRAM so we are not worried about initializations.
> 
> So if I understand correctly, we can decide that address 0x10000000 will be reserved for "flash" and add the following node:
> flash@0 {

flash@10000000, but that's just for informational purposes.

>     compatible = "mtd-rom";
>     probe-type = "map_rom";
>     reg = <0x10000000 0x10000000>;
>     bank-width = <4>;
>     device-width = <1>;
> 
>     #address-cells = <1>;
>     #size-cells = <1>;
>     kernel@0 {
>         label = "kernel";
>         reg = <0x0 0x01000000>;
>     };
>     rootfs@1000000 {
>         label = "rootfs";
>         reg = <0x01000000 0x00800000>;
>     };
> };
> 
> When I use this node on our DT I see the following devinfo:
> barebox:/ devinfo
> `-- global
> `-- nv
> `-- platform
>    `-- machine
>    `-- psci.of
>    `-- 1000000010000000.flash@0.of

As you can see the address is wrong. That's because you have
#address-cells = <2>;
#size-cells = <2>;

Yet, you wrote reg as if it was <1>/<1>. Change it to 

  reg = <0x0 0x10000000 0x0 0x10000000>;

Remember all device tree integers are 32-bit big endian.

>    `-- soc.of
>       `-- c000000000.sram@c000000000.of
>       `-- soc:pmu.of
>       `-- soc:timer.of
>       `-- e000000000.interrupt-controller@E000000000.of
>    `-- mem0
>       `-- 0x00000000-0x0fffffff (   256 MiB): /dev/ram0
>    `-- mem1
>       `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/mem
> `-- amba
>    `-- d000307000.serial@d000307000.of
>       `-- cs0
>          `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/cs0
> `-- spi
> `-- fs
>    `-- ramfs0
>    `-- devfs0
>    `-- pstore0
> 
> Not sure how to proceed from here...

Type drvinfo command to see what drivers are bound to what devices.
If you see no driver bound to your flash device, then maybe you need
to enable the correct driver, that would be CONFIG_MTD_MTDRAM (which
handles both read-only and read-write memory mapped MTD).

Cheers,
Ahmad

> Cheers,
> Lior.
> 
>> -----Original Message-----
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Sent: Monday, June 12, 2023 3:29 PM
>> To: Lior Weintraub <liorw@pliops.com>; Ahmad Fatoum <ahmad@a3f.at>;
>> barebox@lists.infradead.org
>> Subject: Re: [PATCH v2] Porting barebox to a new SoC
>>
>> CAUTION: External Sender
>>
>> Hello Lior,
>>
>> On 12.06.23 11:27, Lior Weintraub wrote:
>>> Hi Ahmad,
>>>
>>> Regarding the rootfs and Linux run question:
>>> Our board doesn't include eMMC\SD card.
>>> We only have our NOR Flash to store the binaries and our BL1 code will make
>> sure to copy those blobs into DRAM.
>>
>> How could BL1 copy artifacts in DRAM when BL2 first needs to set up DRAM?
>>
>>> The use of QEMU needs to be as simple as possible so no hidden virtio
>> drivers and such because we would like to simulate the real HW flow.
>>
>> cfi-flash is just memory-mapped flash, which is the next simplest thing
>> after BL1 copies stuff into (limited-to-4M) on-chip SRAM.
>>
>>> Our DTS file now includes the GIC, timer and arm,psci-1.0.
>>> We have an initial build of Linux kernel Image (using buildroot) and a
>> rootfs.cpio.xz.
>>> I assume we can somehow reserve a portion of the DRAM to store those
>> binaries and let barebox boot this Linux.
>>
>> You can make this work, but this is not how your actual system will
>> look like and trying to make this work is harder than it needs to be.
>>
>> Just add a cfi-flash that corresponds to the Linux/rootfs flash in
>> your actual system, then boot with bootm (type help bootm for info
>> on how to use it). You don't need to hardcode the load addresses,
>> barebox will determine them automatically.
>>
>>> Can you please advise how to make it work?
>>
>> For completion's sake, if you have 64M of RAM that's preloaded with
>> boot images:
>>
>>   - Remove the 64M from the barebox /memory node. You can use a different
>>     DT for kernel, but if you have memory that barebox shouldn't override,
>>     you need to tell it that.
>>
>>   - Add a mtd-rom node that describes these 64M that you have. You can
>>     add partitions for the region used for kernel and oftree
>>
>>   - boot with bootm -o /dev/mtdrom0.oftree -r /dev/mtdrom0.initrd \
>>     /dev/mtdrom0.kernel
>>
>> That's admittedly cumbersome, but necessary, so barebox knows what
>> memory
>> it may use for itself and what memory may be used for boot.
>>
>> Correct solution is to use cfi-flash or similar.
>>
>> Cheers,
>> Ahmad
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



