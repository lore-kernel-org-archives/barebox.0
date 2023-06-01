Delivery-date: Thu, 01 Jun 2023 09:10:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4cSR-005RzC-4u
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 09:10:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4cSO-0000Cn-1P
	for lore@pengutronix.de; Thu, 01 Jun 2023 09:10:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pPHNxVezt7oL1J3OsPDpjgjnBN/0DorkRAql40aGwYs=; b=YbF0CTdsMeh6Qef9Z67mCaw992
	OxE8U1lV272XLd8F9Ma1iEti75x1bAEeI3kpDWL1KGOXg9k+t5F78P5rvl8oeYyAB7pVltZ+ZlDYv
	eBAGTXPHbNykWhToJ95UWi3t/iT461f86w9cAfHgRrAo0jEcltsgdJYjHD8097uLXxYEInx2pi8ss
	bAGEq/YpZ7nPpmrHdU4NFqUNOEUI/aXfVrXt0CHfuniu9MaOnTFZl1pBtZKoz1cci/u/BMXZlYtZm
	uZRatDTFQZt1Md1oFW0Swt1vZGh6C9aDrFveqEm5u3fpbT640754o5d4OxTdWPOdWSxTkmEWPSQFs
	q4xlQXfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cRF-002JdW-2T;
	Thu, 01 Jun 2023 07:09:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cRC-002Jcu-0A
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 07:09:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q4cRA-0008G7-Nq; Thu, 01 Jun 2023 09:09:32 +0200
Message-ID: <e85a44a7-3416-bece-6adc-3f21cd67c456@pengutronix.de>
Date: Thu, 1 Jun 2023 09:09:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
 <20230524234328.82741-12-jmaselbas@zdiv.net>
 <20230530084236.GY17518@pengutronix.de> <ZHgxt7mRiFRMtgDU@tour>
 <a24bf8d3-2d27-d18f-32df-11a6af2ab27c@pengutronix.de> <ZHg4bZ0aozgjtUy0@tour>
 <8df9a011-5632-229e-3de7-2921c2091f33@pengutronix.de>
In-Reply-To: <8df9a011-5632-229e-3de7-2921c2091f33@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_000934_249568_CC2FBD34 
X-CRM114-Status: GOOD (  46.89  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 11/13] ARM: boards: sunxi: Add initial support for the
 pinephone
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 01.06.23 08:36, Ahmad Fatoum wrote:
> On 01.06.23 08:19, Jules Maselbas wrote:
>> On Thu, Jun 01, 2023 at 08:00:47AM +0200, Ahmad Fatoum wrote:
>>> On 01.06.23 07:50, Jules Maselbas wrote:
>>>> Hi Sascha,
>>>>
>>>> Thanks for your review
>>>>
>>>> On Tue, May 30, 2023 at 10:42:36AM +0200, Sascha Hauer wrote:
>>>>> On Thu, May 25, 2023 at 01:43:26AM +0200, Jules Maselbas wrote:
>>>>>> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
>>>>>> ---
>>>>>>  arch/arm/boards/Makefile                    |   1 +
>>>>>>  arch/arm/boards/pine64-pinephone/Makefile   |   2 +
>>>>>>  arch/arm/boards/pine64-pinephone/board.c    |   0
>>>>>>  arch/arm/boards/pine64-pinephone/lowlevel.c | 104 ++++++++++++++++++++
>>>>>>  arch/arm/configs/pinephone_defconfig        |  12 +++
>>>>>>  arch/arm/dts/Makefile                       |   1 +
>>>>>>  arch/arm/dts/sun50i-a64-pinephone-1_2.dts   |   3 +
>>>>>>  arch/arm/mach-sunxi/Kconfig                 |  17 ++++
>>>>>>  images/Makefile.sunxi                       |   9 ++
>>>>>>  include/mach/sunxi/init.h                   |   4 +
>>>>>>  10 files changed, 153 insertions(+)
>>>>>>  create mode 100644 arch/arm/boards/pine64-pinephone/Makefile
>>>>>>  create mode 100644 arch/arm/boards/pine64-pinephone/board.c
>>>>>>  create mode 100644 arch/arm/boards/pine64-pinephone/lowlevel.c
>>>>>>  create mode 100644 arch/arm/configs/pinephone_defconfig
>>>>>>  create mode 100644 arch/arm/dts/sun50i-a64-pinephone-1_2.dts
>>>>>>
>>>>>> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
>>>>>> index b204c257f6..f4796f5374 100644
>>>>>> --- a/arch/arm/boards/Makefile
>>>>>> +++ b/arch/arm/boards/Makefile
>>>>>> @@ -96,6 +96,7 @@ obj-$(CONFIG_MACH_PHYTEC_SOM_IMX6)		+= phytec-som-imx6/
>>>>>>  obj-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7)		+= phytec-phycore-imx7/
>>>>>>  obj-$(CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1)	+= phytec-phycore-stm32mp1/
>>>>>>  obj-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ)		+= phytec-som-imx8mq/
>>>>>> +obj-$(CONFIG_MACH_PINE64_PINEPHONE)		+= pine64-pinephone/
>>>>>>  obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
>>>>>>  obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)	+= plathome-openblocks-a6/
>>>>>>  obj-$(CONFIG_MACH_PM9261)			+= pm9261/
>>>>>> diff --git a/arch/arm/boards/pine64-pinephone/Makefile b/arch/arm/boards/pine64-pinephone/Makefile
>>>>>> new file mode 100644
>>>>>> index 0000000000..092c31d6b2
>>>>>> --- /dev/null
>>>>>> +++ b/arch/arm/boards/pine64-pinephone/Makefile
>>>>>> @@ -0,0 +1,2 @@
>>>>>> +lwl-y += lowlevel.o
>>>>>> +obj-y += board.o
>>>>>> diff --git a/arch/arm/boards/pine64-pinephone/board.c b/arch/arm/boards/pine64-pinephone/board.c
>>>>>> new file mode 100644
>>>>>> index 0000000000..e69de29bb2
>>>>>> diff --git a/arch/arm/boards/pine64-pinephone/lowlevel.c b/arch/arm/boards/pine64-pinephone/lowlevel.c
>>>>>> new file mode 100644
>>>>>> index 0000000000..262d194864
>>>>>> --- /dev/null
>>>>>> +++ b/arch/arm/boards/pine64-pinephone/lowlevel.c
>>>>>> @@ -0,0 +1,104 @@
>>>>>> +// SPDX-License-Identifier: GPL-2.0+
>>>>>> +#include <common.h>
>>>>>> +#include <debug_ll.h>
>>>>>> +#include <linux/sizes.h>
>>>>>> +#include <linux/bitops.h>
>>>>>> +#include <mach/sunxi/barebox-arm.h>
>>>>>
>>>>> This file is missing in this series. Forgot to git add it?
>>>> ooops, yes forgot to add it.
>>>> There is almost nothing in it:
>>>> ```
>>>> #include <asm/barebox-arm.h>
>>>>
>>>> #define SUN50I_A64_ENTRY_FUNCTION(name, arg0, arg1, arg2) \
>>>> 	ENTRY_FUNCTION_WITHSTACK(name, SUN50I_PBL_STACK_TOP, arg0, arg1, arg2)
>>>> ```
>>>> that's all
>>>
>>> Can this pull in the eGON header as well? That way sun50i entry points
>>> can just look like normal C functions and board porters need not be aware
>>> of the magic.
>> well, I already spent huge amount of time trying to do so and failed so right
>> now I do not want to try to fit the headers into the entry macro again.
>> The issue was that I got multiple instances of the each headers because there
>> where two instance of the entry macro in the same lowlevel.c file...
> 
> Do you have your attempt uploaded somewhere? Duplicate instances sounds like
> if the section name didn't change. This should be fixable by concatenating the
> function name at the end.

Or was the problem that __keep_symbolref wasn't inside a function? In that case,
you may be able have something like:

#define SUN50I_A64_ENTRY_FUNCTION(name, arg0, arg1, arg2) \
	static void __always_inline __egon_##name(ulong, ulong, ulong);
	ENTRY_FUNCTION_WITHSTACK(name, SUN50I_PBL_STACK_TOP, arg0, arg1, arg2) {
		/* do egon stuff here */
		__egon_##name(arg0, arg1, arg2);
	}
	static void __always_inline __egon_##name(ulong arg0, ulong arg1, ulong arg2)

Looking at this, I am wondering why we still have noinline in the ARM64 version.
I need to test if we really need that and drop it if we don't, but that shouldn't
affect your changes.

> 
>>
>>>>
>>>>>> +#include <mach/sunxi/init.h>
>>>>>> +#include <mach/sunxi/xload.h>
>>>>>> +#include <mach/sunxi/egon.h>
>>>>>> +#include <mach/sunxi/rmr_switch.h>
>>>>>> +#include <mach/sunxi/sun50i-regs.h>
>>>>>> +#include <mach/sunxi/sunxi-pinctrl.h>
>>>>>> +
>>>>>> +#ifdef DEBUG
>>>>>> +static void debug_led_rgb(int rgb)
>>>>>> +{
>>>>>> +	void __iomem *piobase = SUN50I_PIO_BASE_ADDR;
>>>>>> +	uint32_t clr, set = 0;
>>>>>> +	int r = rgb & 0xff0000;
>>>>>> +	int g = rgb & 0x00ff00;
>>>>>> +	int b = rgb & 0x0000ff;
>>>>>> +
>>>>>> +	clr = (1 << 19) | (1 << 18) | (1 << 20);
>>>>>> +	set |= r ? 1 << 19 : 0;
>>>>>> +	set |= g ? 1 << 18 : 0;
>>>>>> +	set |= b ? 1 << 20 : 0;
>>>>>> +
>>>>>> +	clrsetbits_le32(piobase + PIO_PD_DATA, clr, set);
>>>>>> +}
>>>>>> +
>>>>>> +static void debug_led_init(void)
>>>>>> +{
>>>>>> +	void __iomem *ccubase = SUN50I_CCU_BASE_ADDR;
>>>>>> +	void __iomem *piobase = SUN50I_PIO_BASE_ADDR;
>>>>>> +
>>>>>> +	/* PIO clock enable */
>>>>>> +	setbits_le32(ccubase + CCU_BUS_CLK_GATE2, BIT(5));
>>>>>> +	/* LED set output */
>>>>>> +	clrsetbits_le32(piobase + PIO_PD_CFG2, 0x000fff00, 0x00011100);
>>>>>> +}
>>>>>> +#else
>>>>>> +static void debug_led_rgb(int rgb) {}
>>>>>> +static void debug_led_init(void) {}
>>>>>> +#endif
>>>>>> +
>>>>>> +SUN50I_A64_ENTRY_FUNCTION(start_pine64_pinephone, r0, r1, r2)
>>>>>> +{
>>>>>> +	extern char __dtb_z_sun50i_a64_pinephone_1_2_start[];
>>>>>> +	void *fdt;
>>>>>> +	u32 size;
>>>>>> +
>>>>>> +	sunxi_switch_to_aarch64(.text_head_soc_header2, SUN50I_A64_RVBAR_IOMAP);
>>>>>> +
>>>>>> +	debug_led_init();
>>>>>> +	debug_led_rgb(0xffff00);
>>>>>> +
>>>>>> +	sun50i_cpu_lowlevel_init();
>>>>>> +	sun50i_uart_setup();
>>>>>> +
>>>>>> +	relocate_to_current_adr();
>>>>>> +	setup_c();
>>>>>> +
>>>>>> +	/* Skip SDRAM initialization if we run from it */
>>>>>> +	if (get_pc() < SUN50I_DRAM_ADDR) {
>>>>>> +		size = sun50i_a64_lpddr3_dram_init();
>>>>>> +		if (size == 0) {
>>>>>> +			puts_ll("FAIL: dram init\r\n");
>>>>>> +			goto reset;
>>>>>> +		}
>>>>>> +		puthex_ll(size);
>>>>>> +		putc_ll('\r');	putc_ll('\n');
>>>>>> +	}
>>>>>
>>>>> How can we get here with SDRAM uninitialized? Is this for USB or JTAG
>>>>> boot?
>>>> Yes this is when not chain loaded, when started directly from USB via fel or
>>>> via JTAG.
>>>>
>>>>>> +
>>>>>> +	puts_ll("now booting\r\n");
>>>>>> +	fdt = __dtb_z_sun50i_a64_pinephone_1_2_start + get_runtime_offset();
>>>>>> +	barebox_arm_entry(SUN50I_DRAM_ADDR, SZ_1G, fdt);
>>>>>> +
>>>>>> +reset:
>>>>>> +	debug_led_rgb(0xff0000);
>>>>>> +	sun50i_cpu_lowlevel_reset();
>>>>>> +}
>>>>>> +
>>>>>> +SUN50I_A64_ENTRY_FUNCTION(start_pine64_pinephone_xload, r0, r1, r2)
>>>>>> +{
>>>>>> +
>>>>>> +	sunxi_egon_header(.text_head_soc_header0);
>>>>>> +	sunxi_switch_to_aarch64(.text_head_soc_header1, SUN50I_A64_RVBAR_IOMAP);
>>>>>> +
>>>>>> +	debug_led_init();
>>>>>> +	debug_led_rgb(0xff0000);
>>>>>> +
>>>>>> +	sun50i_cpu_lowlevel_init();
>>>>>> +	sun50i_uart_setup();
>>>>>> +	debug_led_rgb(0xffff00);
>>>>>> +
>>>>>> +	relocate_to_current_adr();
>>>>>> +	setup_c();
>>>>>> +
>>>>>> +	sun50i_a64_lpddr3_dram_init();
>>>>>> +
>>>>>> +	debug_led_rgb(0xff0000);
>>>>>> +
>>>>>
>>>>> You would have to place code here to continue booting, right? In that
>>>>> case you should add a comment to let the reader know that there's
>>>>> something missing here.
>>>> I forgot to add the code that search for barebox.bin and continue execution
> 
> I originally thought that the BootROM searches for a file in FAT, where it would
> make sense to place the follow-up boot stage in FAT as well, but apparently,
> it loads from a fixed offset and then first stage bootloader (here PBL) loads
> second stage from FAT. This makes me wonder why use FAT at all and not just do
> like we do e.g. on i.MX:
> 
>   - place full barebox at address where BootROM looks at
>   - use minimum PBL size to ensure barebox truncated to SRAM behaves correctly
>   - then barebox loads itself from same address into DRAM and reenters PBL
>   - either have all of this in unpartitioned space at the start or create a
>     partition around it if possible.
> 
> Is this possible here as well?
> 
> Also, just to be sure: barebox.bin still has a PBL right? The API between PBL
> and barebox proper may change, so each barebox proper should have its own
> PBL in front.
> 
>>>>
>>>>>
>>>>> debug_led_rgb(0xff0000) is the same color you used at the beginning of
>>>>> the function. Would it make more sense to use a different color?
>>>> Yes, I'll remove the first red color, I want to reserved it for error conditions.
>>>>
>>>>>> +	sun50i_cpu_lowlevel_reset();
>>>>>
>>>>> Maybe hang() here instead to give the user a chance to see the last
>>>>> color?
>>>> Yes, I put the reset so it will re-enter fel so the board could be reprogrammed
>>>> without needing a powercycle, but that's only true if there are no valid boot
>>>> entry in eMMC nor SD, IMHO this only makes sense for developpement/debugging.
> 
> How about:
> 
> if (IS_ENABLED(CONFIG_PANIC_HANG)) {
> 	hang();
> } else {
> 	/* some delay to see the LED */
> 	sun50i_cpu_lowlevel_reset();
> }
> 	
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



