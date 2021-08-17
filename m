Delivery-date: Tue, 17 Aug 2021 12:22:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFwF3-00069X-Qb
	for lore@lore.pengutronix.de; Tue, 17 Aug 2021 12:22:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFwEy-0005JI-PP
	for lore@pengutronix.de; Tue, 17 Aug 2021 12:22:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QA6dcjIMb+ObhMpGIwzlpQesg7uwu/KLiRHhXSu8dOk=; b=f9W9Q0QKscSkmm
	dXI4lz3bs/SGSNo9YbcJ31/2tS+7osNxZDIFm31f4OSJ+piC47KsQgeTHOcnWS6jH+wkiLSWtHbf1
	kCweMje3Ek8A7eU4T5+CTW7wErnY5fwPBlDw+fjwKS+JZ3TNT78sJMXBwFLGBonEK2xqwoeFzhYMD
	E/Qow3KyzBvkFz0t08FWV8YfiIWI3slVW8lTFHvfKPgbwp2ECW1KZzsNlhyeVmsMF877E4UdALzxL
	r8y0e8ZqtpfQZ6tIugpU7VbH8wJ1z3Mtcg0nUsusqXrMFMbMHHvt1H7S74wMF64eMsUc6atwjg7sX
	H7aMuQWju45svZY0o4KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFwDT-0025sP-3T; Tue, 17 Aug 2021 10:21:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFwDK-0025ol-Oy
 for barebox@lists.infradead.org; Tue, 17 Aug 2021 10:21:02 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mFwDE-00053c-HV; Tue, 17 Aug 2021 12:20:52 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>
References: <20210525071952.18045-1-antonynpavlov@gmail.com>
 <32db3d61-f04c-5940-600c-fb2435808beb@pengutronix.de>
 <20210817131628.3a7483f1ec121fb8822bdc99@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <be85f6fc-126b-828b-de1f-a9c407211075@pengutronix.de>
Date: Tue, 17 Aug 2021 12:20:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210817131628.3a7483f1ec121fb8822bdc99@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_032058_897044_EFCE38B4 
X-CRM114-Status: GOOD (  21.67  )
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
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 00/10] RISC-V: add LiteX SoC support; resurrect nmon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.08.21 12:16, Antony Pavlov wrote:
> On Wed, 11 Aug 2021 10:52:53 +0200
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> Hi Ahmad!
> 
>> Hello Antony,
>>
>> On 25.05.21 09:19, Antony Pavlov wrote:
>>> Changes since v2:
>>>
>>>   * rebase on top of master branch (f873c7ff2497) +
>>>     "RISC-V: extend multi-image to support both S- and M-Mode"
>>>     (http://lists.infradead.org/pipermail/barebox/2021-May/036086.html).
>>>   * "litex serial: add setbrg callback" patch by Marek Czerski is added
>>>     for review;
>>>   * fix "clocksource: timer-riscv: select CSR from device tree" patch;
>>>   * change gpio IP-block base addresses in litex dts;
>>>   * gpio-74xx-mmio uses device_get_match_data() now.
>>>
>>> Changes since v1:
>>>
>>>   * rebased on top of next branch;
>>>   * new patches are introduced:
>>>     * clocksource: timer-riscv: select CSR from device tree
>>>     * RISC-V: make RISCV_SBI and RISCV_M_MODE explicitly mutually exclusive
>>>     * RISC-V: make it possible to build RV32I multi-image with DEBUG_LL=n
>>>   * almost all of Ahmad's notes are fixed (e.g. unused header files inclusions are dropped);
>>>   * NOT FIXED: gpio-74xx-mmio still uses dev_get_drvdata(), not device_get_match_data()
>>>
>>> Antony Pavlov (9):
>>>   clocksource: timer-riscv: select CSR from device tree
>>>   RISC-V: make it possible to run nmon from PBL C code
>>>   RISC-V: boards: erizo: make it possible to use nmon
>>>   serial: add litex UART driver
>>>   gpio: add driver for 74xx-ICs with MMIO access
>>>   spi: add litex spiflash driver
>>>   net: add LiteEth driver
>>>   RISC-V: add LiteX SoC and linux-on-litex-vexriscv support
>>>   RISC-V: add litex_linux_defconfig
>>>
>>> Marek Czerski (1):
>>>   litex serial: add setbrg callback
>>
>> I'd like to give this a try eventually while following:
>> https://github.com/enjoy-digital/litex/wiki/Use-LiteX-on-the-Acorn-CLE-215
>>
>> Do you intend to submit a new revision soon? Is it ok for you if I respin
>> this series?
> 
> Sorry for delay with reply, I was on vacation.

No worries. :)

> 
> I have just resend litex patchseries v4.
> I have tested it with linux binaries from this repo:
> 
>    https://github.com/frantony/arty-linux-on-litex-vexriscv-prebuilt
> 
> What do you want to respin in the litex patchseries?

Just rebase, address feedback and give it a try.

Thanks for the respin. Building and loading linux-on-litex-vexriscv onto
my FPGA worked, so I'll give your series a try as well later.

(What doesn't yet work is use as PCIe endpoint[1]. Still monkey debugging that)

[1]: https://github.com/enjoy-digital/litepcie/issues/54

Cheers,
Ahmad

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

