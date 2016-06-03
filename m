Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x243.google.com ([2607:f8b0:4003:c06::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8jcu-0002Rk-C1
 for barebox@lists.infradead.org; Fri, 03 Jun 2016 07:34:41 +0000
Received: by mail-oi0-x243.google.com with SMTP id e80so7926790oig.1
 for <barebox@lists.infradead.org>; Fri, 03 Jun 2016 00:34:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160603072724.GT31666@pengutronix.de>
References: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
 <1464854818-28653-3-git-send-email-poggi.raph@gmail.com>
 <20160603072724.GT31666@pengutronix.de>
From: =?UTF-8?Q?Rapha=C3=ABl_Poggi?= <poggi.raph@gmail.com>
Date: Fri, 3 Jun 2016 09:33:39 +0200
Message-ID: <CACqcpZBGrJyhBJQG9y46Vvg3pEkAZu45qS0bgbGZdSE=XMbLNA@mail.gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 02/12] arm: Makefile: rework makefile to handle armv8
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

2016-06-03 9:27 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Thu, Jun 02, 2016 at 10:06:48AM +0200, Raphael Poggi wrote:
>> Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
>> ---
>>  arch/arm/Makefile | 30 ++++++++++++++++++++++++++++--
>>  1 file changed, 28 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
>> index 5ccdb83..df4832f 100644
>> --- a/arch/arm/Makefile
>> +++ b/arch/arm/Makefile
>> @@ -1,7 +1,11 @@
>>
>>  CPPFLAGS     += -D__ARM__ -fno-strict-aliasing
>>  # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
>> +ifeq ($(CONFIG_CPU_V8),y)
>> +CPPFLAGS     +=$(call cc-option,-maarch64,)
>> +else
>>  CPPFLAGS     +=$(call cc-option,-marm,)
>> +endif
>>
>>  ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
>>  CPPFLAGS     += -mbig-endian
>> @@ -17,7 +21,9 @@ endif
>>  # at least some of the code would be executed with MMU off, lets be
>>  # conservative and instruct the compiler not to generate any unaligned
>>  # accesses
>> +ifeq ($(CONFIG_CPU_V8),n)
>>  CFLAGS += -mno-unaligned-access
>> +endif
>>
>>
>>  # This selects which instruction set is used.
>> @@ -33,12 +39,17 @@ arch-$(CONFIG_CPU_32v4T)  :=-D__LINUX_ARM_ARCH__=4 -march=armv4t
>>  tune-$(CONFIG_CPU_ARM920T)   :=-mtune=arm9tdmi
>>  tune-$(CONFIG_CPU_ARM926T)   :=-mtune=arm9tdmi
>>  tune-$(CONFIG_CPU_XSCALE)    :=$(call cc-option,-mtune=xscale,-mtune=strongarm110) -Wa,-mcpu=xscale
>> +arch-$(CONFIG_CPU_64v8)              := -D__LINUX_ARM_ARCH__=8 $(call cc-option,-march=armv8-a)
>
> Can we move this above the arch-$(CONFIG_CPU_32v7) line?

Yes, no problem.

>
>>
>> +ifeq ($(CONFIG_CPU_V8), y)
>> +CFLAGS_ABI   :=-mabi=lp64
>> +else
>>  ifeq ($(CONFIG_AEABI),y)
>>  CFLAGS_ABI   :=-mabi=aapcs-linux -mno-thumb-interwork
>>  else
>>  CFLAGS_ABI   :=$(call cc-option,-mapcs-32,-mabi=apcs-gnu) $(call cc-option,-mno-thumb-interwork,)
>>  endif
>> +endif
>>
>>  ifeq ($(CONFIG_ARM_UNWIND),y)
>>  CFLAGS_ABI   +=-funwind-tables
>> @@ -51,8 +62,13 @@ CFLAGS_THUMB2      :=-mthumb $(AFLAGS_AUTOIT) $(AFLAGS_NOWARN)
>>  AFLAGS_THUMB2        :=$(CFLAGS_THUMB2) -Wa$(comma)-mthumb
>>  endif
>>
>> +ifeq ($(CONFIG_CPU_V8), y)
>> +CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
>> +AFLAGS   += -include asm/unified.h
>> +else
>>  CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) -msoft-float $(CFLAGS_THUMB2)
>>  AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
>> +endif
>>
>>  # Machine directory name.  This list is sorted alphanumerically
>>  # by CONFIG_* macro name.
>> @@ -78,6 +94,7 @@ machine-$(CONFIG_ARCH_VEXPRESS)             := vexpress
>>  machine-$(CONFIG_ARCH_TEGRA)         := tegra
>>  machine-$(CONFIG_ARCH_UEMD)          := uemd
>>  machine-$(CONFIG_ARCH_ZYNQ)          := zynq
>> +machine-$(CONFIG_ARCH_VIRT)          := virt
>
> This hunk belongs to the patch adding mach-virt.

Oops you are right, I will correct it in v2.

>
> Otherwise this looks fine to me.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
