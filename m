Delivery-date: Thu, 08 Jun 2023 14:09:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7ESa-00FitZ-KR
	for lore@lore.pengutronix.de; Thu, 08 Jun 2023 14:09:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7ESX-0006QR-Lh
	for lore@pengutronix.de; Thu, 08 Jun 2023 14:09:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dajyQ+/mdtJqbu2sxQqh0YiwCV/g5PDyr4nZMYk368g=; b=X8YdOltmE1XNSv
	42a0InMMa3lyjDm3CI+EFVivIE9Q/cKAieIoA0CpzgS1mX942NBMqUOgMiFlFrGxF28m71CK3u1oD
	Oru0n9eG/wRQmb+7k6H/RmsdYkNuWmyNmbP1ysdUO2RwN3SeeDq6JPalFTHim34ZMquyGxpV4G5qz
	jadGJUQBnu2Uhzspx8sUW2SM2HJmtXskAm/ZrsJGk7xFEFyHUutFknkjJfDhHf6mNge6cTW5k7kJV
	W0rVAHN5nLop/Fn1w8VgssmZUbmiIl72fxPkIf3SauSb5wlVMGvdoVuhsdg9JlQIIwUupk1zMqdT7
	G04LUqCll1LXjLlrGXvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7ERD-009GTN-1X;
	Thu, 08 Jun 2023 12:08:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7ER7-009GSO-1M
	for barebox@lists.infradead.org;
	Thu, 08 Jun 2023 12:08:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q7ER2-0006IJ-Fj; Thu, 08 Jun 2023 14:08:12 +0200
Message-ID: <b2ab823a-b165-6c3b-08f4-1afe11b9945c@pengutronix.de>
Date: Thu, 8 Jun 2023 14:08:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Lior Weintraub <liorw@pliops.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20230607153152.2681009-1-a.fatoum@pengutronix.de>
 <20230607153152.2681009-2-a.fatoum@pengutronix.de>
 <PR3P195MB05559F140DDA4A3A94E0CD85C350A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <6dff2f6a-a0ad-211f-7abc-0b964518cd21@pengutronix.de>
 <PR3P195MB0555FE536CEFC97168771E59C350A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <91c10bb2-2b88-6358-1567-11e96482d854@pengutronix.de>
 <PR3P195MB05553ACC5E3D2C97F84AF730C350A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <PR3P195MB05553ACC5E3D2C97F84AF730C350A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_050817_809180_D95D579C 
X-CRM114-Status: GOOD (  47.20  )
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
Cc: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 2/2] ARM: don't assume 32-bit when no boards are selected
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Lior,

On 08.06.23 13:13, Lior Weintraub wrote:
> Hi Ahmad,
> 
> Sorry for the confusion. My bad.
> I used export ARCH=arm64 and that is probably the reason for the warnings I got when I run "make stm32mp_defconfig".
> If I change to ARCH=arm, this command works well but then fail on "make" with the following errors:
>   CREATE  include/config.h
>   CC      arch/arm/lib/asm-offsets.s
> aarch64-none-elf-gcc: error: unrecognized argument in option '-mabi=aapcs-linux'
> aarch64-none-elf-gcc: note: valid arguments to '-mabi=' are: ilp32 lp64
> aarch64-none-elf-gcc: error: unrecognized command-line option '-msoft-float'
> aarch64-none-elf-gcc: error: unrecognized command-line option '-mthumb'
> aarch64-none-elf-gcc: error: unrecognized command-line option '-mno-unaligned-access'
> 
> (using latest "next" branch with commit ID fdcc6754c0d0d7359b60e00e15921316b71764da)

The STM32MP1 are 32-bit ARM SoCs. If you want to build that config you need
a 32-bit toolchain in CROSS_COMPILE.

> Again, I apologize for my lack of experience.
> When I try to run "make zynqmp_defconfig" and "make" it is working OK.

ZynqMP are 64-bit ARM SoCs, so this is expected.

> The only reason I tried using stm32mp in the first place was just because I thought it is more popular and should compile correctly.

Unlike Linux, ARCH=arm64 is just an alias for ARCH=arm in barebox.
The only thing that determines whether barebox should target
ARMv4,5,6,7 or 8 is what boards are enabled, so if you have no
board enabled, there's not much one can do, besides print an
error message.

Cheers,
Ahmad 

> 
> Please ignore the "depends on HAVE_ARCH_STM32MP157".
> It was only my attempt to introduce an error on Kbuild file.
> 
> Cheers,
> Lior.
> 
>> -----Original Message-----
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Sent: Thursday, June 8, 2023 12:18 PM
>> To: Lior Weintraub <liorw@pliops.com>; barebox@lists.infradead.org
>> Cc: Ulrich Ölmann <u.oelmann@pengutronix.de>; Sascha Hauer
>> <sha@pengutronix.de>
>> Subject: Re: [PATCH 2/2] ARM: don't assume 32-bit when no boards are
>> selected
>>
>> CAUTION: External Sender
>>
>> On 08.06.23 10:59, Lior Weintraub wrote:
>>> Hi Ahmad,
>>>
>>> I think that replacing Kconfig with .config on the error message will not help
>> either.
>>> Maybe Kconfig is a good name because it suggest that the issue is there but
>> again, not so helpful because it doesn't point to the Kconfig file and line that
>> brock the configuration.
>>
>> There is no single line that broke the configuration. The user is supposed
>> to take an existing defconfig and manipulate that. If they write their
>> own defconfig that doesn't enable any CPUs, then they get an error message
>> that they enabled no CPUs instead of random compiler errors.
>>
>>> As I said, I have no prior experience with Kbuild so it could be out of scope
>> for the barebox project.
>>
>> Changing the error message to something more useful is definitely in-scope.
>> Suggestions are welcome.
>>
>>> The patch I gave below just add this wrong line ("depends on
>> HAVE_ARCH_STM32MP157") into arch/arm/mach-stm32mp/Kconfig
>>> Then you can run:
>>> "make stm32mp_defconfig" and see the strange warnings (which again
>> doesn't help to pin point what is wrong with the Kconfig file).
>>> Once you build with "make" you will see the new error ("#error No
>> boards/CPUs selected in Kconfig").
>>
>> There's no HAVE_ARCH_STM32MP157 symbol defined with barebox.
>> (Symbols are defined e.g. with
>>   config HAVE_ARCH_STM32MP157
>>   bool
>> ).
>>
>> I don't think we can protect ourselves against arbitrary
>> modification of the Kconfig files. Most users just take
>> a defconfig and customize it with menuconfig.
>>
>> In the past, developers had a bit harder time, but we have
>> multi_v8_defconfig and multi_v7_defconfig, which can be used
>> for new architectures as well (assuming the Kconfig of the
>> new architecture opts in into CONFIG_ARCH_MULTIARCH).
>>
>>> After reverting the wrong Kconfig line, I tried to run "make mrproper" but
>> this didn't help.
>>> I was still getting the same warning when I run "make stm32mp_defconfig"
>> and the same error when I run "make".
>>
>> I can't reproduce this. Even if you change arch/arm/mach-stm32mp/Kconfig
>> as
>> described, you will still have other STM32MP1 boards that enable CPUs.
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> Hope this helps,
>>> Cheers,
>>> Lior.
>>>
>>>> -----Original Message-----
>>>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>> Sent: Thursday, June 8, 2023 11:47 AM
>>>> To: Lior Weintraub <liorw@pliops.com>; barebox@lists.infradead.org
>>>> Cc: Ulrich Ölmann <u.oelmann@pengutronix.de>; Sascha Hauer
>>>> <sha@pengutronix.de>
>>>> Subject: Re: [PATCH 2/2] ARM: don't assume 32-bit when no boards are
>>>> selected
>>>>
>>>> CAUTION: External Sender
>>>>
>>>> Hello Lior,
>>>>
>>>> On 08.06.23 10:20, Lior Weintraub wrote:
>>>>> Hi Ahmad,
>>>>>
>>>>> Thanks for this fix!
>>>>> Few comments:
>>>>> 1. I was getting errors when I tried to apply your patch on either "master"
>> or
>>>> "next" branch but then realized your fix was already merged to "next" :-).
>>>>
>>>> Ye, Sascha was fast :-)
>>>>
>>>>> 2. Indeed this fix doesn't show the original error we saw but now it shows:
>>>> "error: #error No boards/CPUs selected in Kconfig". It still doesn't help to
>> find
>>>> the culprit.
>>>>
>>>> How would you rephrase it to be more useful? Replace `Kconfig' with
>> `.config'?
>>>>
>>>>> 3. During the investigation, I also found another issue which is related to
>>>> temp\generated build files.
>>>>>
>>>>> The following patch introduces a mistake in Kconfig file.
>>>>
>>>> What defconfig do you source after applying the patch and
>>>> what commands do you run?
>>>>
>>>>>
>>>>> diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-
>>>> stm32mp/Kconfig
>>>>> index bc0a48d64c..97b61810d7 100644
>>>>> --- a/arch/arm/mach-stm32mp/Kconfig
>>>>> +++ b/arch/arm/mach-stm32mp/Kconfig
>>>>> @@ -30,6 +30,7 @@ config MACH_LXA_MC1
>>>>>       bool "Linux Automation MC-1 board"
>>>>>
>>>>>  config MACH_SEEED_ODYSSEY
>>>>> +     depends on HAVE_ARCH_STM32MP157
>>>>>       select ARCH_STM32MP157
>>>>>       bool "Seeed Studio Odyssey"
>>>>>
>>>>> Now run make stm32mp_defconfig and see:
>>>>>
>>>>> WARNING: unmet direct dependencies detected for USB_DWC2
>>>>>   Depends on [n]: USB_HOST [=y] && USB [=y] && HAS_DMA [=n]
>>>>>   Selected by [y]:
>>>>>   - USB_DWC2_HOST [=y] && USB_HOST [=y]
>>>>>   - USB_DWC2_GADGET [=y] && USB_HOST [=y] && USB_GADGET [=y]
>>>>>
>>>>> WARNING: unmet direct dependencies detected for USB_DWC2
>>>>>   Depends on [n]: USB_HOST [=y] && USB [=y] && HAS_DMA [=n]
>>>>>   Selected by [y]:
>>>>>   - USB_DWC2_HOST [=y] && USB_HOST [=y]
>>>>>   - USB_DWC2_GADGET [=y] && USB_HOST [=y] && USB_GADGET [=y]
>>>>>
>>>>> (Not very helpful warnings but then again I have no experience with
>> Kbuild)
>>>>>
>>>>> Then make -j will produce the error "#error No boards/CPUs selected in
>>>> Kconfig".
>>>>> Now even if you revert the change on Kconfig there is no way to fix the
>> build
>>>> (tried make clean) without getting a new clone into a fresh folder.
>>>>
>>>> make clean intentionally doesn't wipe the configuration, only the build
>>>> artifacts.
>>>>
>>>>> I assume there is something left from previous build that is not cleaned
>>>> correctly.
>>>>
>>>> If you want to source a defconfig, use
>>>>
>>>>   make my_platforms_defconfig
>>>>
>>>> If you want to delete everything, use
>>>>
>>>>   make mrproper
>>>>
>>>> Same applies to other Kbuild projects.
>>>>
>>>>>
>>>>> Cheers,
>>>>> Lior.
>>>>>
>>>>>
>>>>>> -----Original Message-----
>>>>>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>>>> Sent: Wednesday, June 7, 2023 6:32 PM
>>>>>> To: barebox@lists.infradead.org
>>>>>> Cc: Lior Weintraub <liorw@pliops.com>; Ulrich Ölmann
>>>>>> <u.oelmann@pengutronix.de>; Ahmad Fatoum
>>>> <a.fatoum@pengutronix.de>
>>>>>> Subject: [PATCH 2/2] ARM: don't assume 32-bit when no boards are
>>>> selected
>>>>>>
>>>>>> CAUTION: External Sender
>>>>>>
>>>>>> barebox build errors are very confusing if no board is selected.
>>>>>> This should have been fixed with commit 14b296d2a7e6 ("arm: error
>>>>>> out if __LINUX_ARM_ARCH__ is undefined"), but unfortunately that's
>>>>>> only true for ARM32. On ARM64, the error message in question
>>>>>> is not printed, because build aborts even earlier, because Kbuild
>>>>>> assumes it should build for 32-bit ARM and thus passes the ARM64
>>>>>> compiler options that it can't understand:
>>>>>>
>>>>>>   aarch64-oe-linux-gcc: error: unrecognized argument in option '-
>>>> mabi=apcs-
>>>>>> gnu'
>>>>>>   aarch64-oe-linux-gcc: note: valid arguments to '-mabi=' are: ilp32 lp64
>>>>>>   aarch64-oe-linux-gcc: error: unrecognized command-line option '-
>> msoft-
>>>>>> float'
>>>>>>   aarch64-oe-linux-gcc: error: unrecognized command-line option '-mno-
>>>>>> unaligned-access'
>>>>>>
>>>>>> Let's fix that for ARM64 builds by not assuming !CONFIG_CPU_64 to be
>> 32-
>>>>>> bit,
>>>>>> but instead explicitly check that CONFIG_CPU_32 is set before doing
>>>>>> 32-bit specific changes.
>>>>>>
>>>>>> This ensures we now fail during compilation on both ARM32 and ARM64
>> if
>>>>>> no boards were selected. We can't fail earlier via $(error ...) as this
>>>>>> would impact use of targets like menuconfig.
>>>>>>
>>>>>> Reported-by: Lior Weintraub <liorw@pliops.com>
>>>>>> Reported-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
>>>>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>>>> ---
>>>>>>  arch/arm/Makefile | 35 ++++++++++++++---------------------
>>>>>>  1 file changed, 14 insertions(+), 21 deletions(-)
>>>>>>
>>>>>> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
>>>>>> index 926af7387f7f..337b7e9095fa 100644
>>>>>> --- a/arch/arm/Makefile
>>>>>> +++ b/arch/arm/Makefile
>>>>>> @@ -6,7 +6,8 @@ KBUILD_CPPFLAGS += -D__ARM__ -fno-strict-aliasing
>>>>>>  # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -
>> mthumb:
>>>>>>  ifeq ($(CONFIG_CPU_64),y)
>>>>>>  KBUILD_CPPFLAGS        +=$(call cc-option,-maarch64,)
>>>>>> -else
>>>>>> +endif
>>>>>> +ifeq ($(CONFIG_CPU_32),y)
>>>>>>  KBUILD_CPPFLAGS        +=$(call cc-option,-marm,)
>>>>>>  KBUILD_CPPFLAGS        += -msoft-float
>>>>>>  endif
>>>>>> @@ -27,14 +28,12 @@ endif
>>>>>>  # at least some of the code would be executed with MMU off, lets be
>>>>>>  # conservative and instruct the compiler not to generate any unaligned
>>>>>>  # accesses
>>>>>> -ifneq ($(CONFIG_CPU_64),y)
>>>>>> +ifeq ($(CONFIG_CPU_32),y)
>>>>>>  KBUILD_CFLAGS += -mno-unaligned-access
>>>>>> -else
>>>>>> -KBUILD_CFLAGS += -mstrict-align
>>>>>>  endif
>>>>>> -
>>>>>> -# Prevent use of floating point and Advanced SIMD registers.
>>>>>>  ifeq ($(CONFIG_CPU_64),y)
>>>>>> +KBUILD_CFLAGS += -mstrict-align
>>>>>> +# Prevent use of floating point and Advanced SIMD registers.
>>>>>>  KBUILD_CFLAGS += -mgeneral-regs-only
>>>>>>  endif
>>>>>>
>>>>>> @@ -54,19 +53,11 @@ tune-$(CONFIG_CPU_ARM920T)  :=-
>>>>>> mtune=arm9tdmi
>>>>>>  tune-$(CONFIG_CPU_ARM926T)     :=-mtune=arm9tdmi
>>>>>>  tune-$(CONFIG_CPU_XSCALE)      :=$(call cc-option,-mtune=xscale,-
>>>>>> mtune=strongarm110) -Wa,-mcpu=xscale
>>>>>>
>>>>>> -ifeq ($(CONFIG_CPU_64), y)
>>>>>> -CFLAGS_ABI     :=-mabi=lp64
>>>>>> -else
>>>>>> -ifeq ($(CONFIG_AEABI),y)
>>>>>> -CFLAGS_ABI     :=-mabi=aapcs-linux
>>>>>> -else
>>>>>> -CFLAGS_ABI     :=$(call cc-option,-mapcs-32,-mabi=apcs-gnu) $(call cc-
>>>>>> option,-mno-thumb-interwork,)
>>>>>> -endif
>>>>>> -endif
>>>>>> +CFLAGS_ABI-$(CONFIG_CPU_64)    :=-mabi=lp64
>>>>>> +CFLAGS_ABI-$(CONFIG_CPU_32)    :=$(call cc-option,-mapcs-32,-
>>>> mabi=apcs-
>>>>>> gnu) $(call cc-option,-mno-thumb-interwork,)
>>>>>> +CFLAGS_ABI-$(CONFIG_AEABI)     :=-mabi=aapcs-linux
>>>>>>
>>>>>> -ifeq ($(CONFIG_ARM_UNWIND),y)
>>>>>> -CFLAGS_ABI     +=-funwind-tables
>>>>>> -endif
>>>>>> +CFLAGS_ABI-$(CONFIG_ARM_UNWIND)        +=-funwind-tables
>>>>>>
>>>>>>  ifeq ($(CONFIG_THUMB2_BAREBOX),y)
>>>>>>  AFLAGS_AUTOIT  :=$(call as-option,-Wa$(comma)-mimplicit-it=always,-
>>>>>> Wa$(comma)-mauto-it)
>>>>>> @@ -75,13 +66,15 @@ CFLAGS_THUMB2       :=-mthumb
>>>> $(AFLAGS_AUTOIT)
>>>>>> $(AFLAGS_NOWARN)
>>>>>>  AFLAGS_THUMB2  :=$(CFLAGS_THUMB2) -Wa$(comma)-mthumb
>>>>>>  endif
>>>>>>
>>>>>> +KBUILD_CPPFLAGS += $(CFLAGS_ABI-y) $(arch-y) $(tune-y)
>>>>>> +
>>>>>>  ifeq ($(CONFIG_CPU_64), y)
>>>>>> -KBUILD_CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
>>>>>>  KBUILD_AFLAGS   += -include asm/unified.h
>>>>>>  export S64_32 = 64
>>>>>>  export S64 = 64
>>>>>> -else
>>>>>> -KBUILD_CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
>>>>>> $(CFLAGS_THUMB2)
>>>>>> +endif
>>>>>> +ifeq ($(CONFIG_CPU_32), y)
>>>>>> +KBUILD_CPPFLAGS += $(CFLAGS_THUMB2)
>>>>>>  KBUILD_AFLAGS   += -include asm/unified.h -msoft-float
>>>> $(AFLAGS_THUMB2)
>>>>>>  export S64_32 = 32
>>>>>>  export S32 = 32
>>>>>> --
>>>>>> 2.39.2
>>>>>
>>>>
>>>> --
>>>> Pengutronix e.K.                           |                             |
>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>
>>
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



