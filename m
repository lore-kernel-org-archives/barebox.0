Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h6tOF-00048p-Pn
 for barebox@lists.infradead.org; Thu, 21 Mar 2019 08:49:35 +0000
Received: by mail-qk1-x732.google.com with SMTP id m65so8220896qkl.11
 for <barebox@lists.infradead.org>; Thu, 21 Mar 2019 01:49:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_Pvub19JJgwwkZrNX7iz47f-jib5hiUgE+8Z=2cSf80=YygQ@mail.gmail.com>
 <20190320075215.7j36mofzoewd5qfa@pengutronix.de>
 <CAD_PvuYxnQJT7VVe0DKRZa-VHJN+Rz-tb9KLudtd+My8CBXhLg@mail.gmail.com>
 <20190321073332.b3725avve4p6ascg@pengutronix.de>
 <CAD_PvubAaFD=zJVrzpjq__F2Qre4XedjE8op_1GAQcf19jYOrg@mail.gmail.com>
 <20190321080614.jmpycfyetz4rugui@pengutronix.de>
 <CAD_PvuY8oVy3Ny65bcF2a3LPC0R4+8uXCu6qda6CcbY+Ji+3JQ@mail.gmail.com>
 <CAPWKHJSLmc1+-rV0rZeGn37uhkWwKsqmWXZSGJAs32zLE=Hxtg@mail.gmail.com>
In-Reply-To: <CAPWKHJSLmc1+-rV0rZeGn37uhkWwKsqmWXZSGJAs32zLE=Hxtg@mail.gmail.com>
From: Lewis Zhou <lewisou@gmail.com>
Date: Thu, 21 Mar 2019 16:49:18 +0800
Message-ID: <CAD_PvuaROBDHod3XjFFgZ6Qic3pHhRSP=qFbQ5MHwGJs=js+0g@mail.gmail.com>
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
Subject: Re: selected processor does not support `rev r7,r7'
To: Austin Morton <austinpmorton@gmail.com>
Cc: barebox@lists.infradead.org, crossgcc maillist <crossgcc@sourceware.org>

Hi Austin,

Here's the list. armv7-a is on the list.

lewis@lewis-ubuntu:~/x-tools/arm-cortex_a8-linux-gnueabihf/bin$
./arm-cortex_a8-linux-gnueabihf-gcc -E -march=help -xc /dev/null
arm-cortex_a8-linux-gnueabihf-gcc: error: unrecognized -march target: help
arm-cortex_a8-linux-gnueabihf-gcc: note: valid arguments are: armv2
armv2a armv3 armv3m armv4 armv4t armv5 armv5t armv5e armv5te armv5tej
armv6 armv6j armv6k armv6z armv6kz armv6zk armv6t2 armv6-m armv6s-m
armv7 armv7-a armv7ve armv7-r armv7-m armv7e-m armv8-a armv8.1-a
armv8.2-a armv8.3-a armv8.4-a armv8-m.base armv8-m.main armv8-r iwmmxt
iwmmxt2
arm-cortex_a8-linux-gnueabihf-gcc: error: missing argument to '-march='

That's strange. When compiling both barebox and linux. I always got errors like:

"selected processor does not support `rev r7,r7'


Kind regards,
Lewis



On Thu, Mar 21, 2019 at 4:40 PM Austin Morton <austinpmorton@gmail.com> wrote:
>
> Any recent version of gcc should spit out a list of supported March values if invoked with an invalid value. (read gcc 7 or higher).
>
> What does this command output on your compiler?
>
> # gcc -E -march=help -xc /dev/null
>
> https://stackoverflow.com/questions/47299458/how-can-i-determine-what-architectures-gcc-supports
>
> On Thu, Mar 21, 2019, 04:25 Lewis Zhou <lewisou@gmail.com> wrote:
>>
>> Hi,
>>
>> I recently tried to compile the barebox bootloaer with the
>> arm-cortex_a8-linux-gnueabihf configuration which is based on the
>> sample configuration arm-cortex_a8-linux-gnueabi with the hardware
>> float enabled.
>>
>> However, the compiler (gcc) seems not support -march=armv7-a flag. I
>> think something is wrong as the cortex_a8 is a sub-architecture of
>> armv7-a.
>>
>> The toolchain failed to compile both the barebox and the linux kernel
>> (4.19). Please help! Attached is a response from the barebox mailing
>> list.
>>
>>
>> Kind regards,
>> Lewis
>>
>> ---------- Forwarded message ---------
>> From: Sascha Hauer <s.hauer@pengutronix.de>
>> Date: Thu, Mar 21, 2019 at 4:06 PM
>> Subject: Re: selected processor does not support `rev r7,r7'
>> To: Lewis Zhou <lewisou@gmail.com>
>> Cc: <barebox@lists.infradead.org>
>>
>>
>> On Thu, Mar 21, 2019 at 03:53:06PM +0800, Lewis Zhou wrote:
>> > Hi Sascha,
>> >
>> > Here's the log:
>> >
>> > make -f scripts/Makefile.build obj=common
>> >
>> > arm-cortex_a8-linux-gnueabihf-gcc -Wp,-MD,common/.memory.o.d
>> > -nostdinc -isystem
>> > /home/lewis/x-tools/arm-cortex_a8-linux-gnueabihf/lib/gcc/arm-cortex_a8-linux-gnueabihf/8.3.0/include
>> > -D__KERNEL__ -D__BAREBOX__ -Iinclude
>> > -I/home/lewis/OpenProj/barebox/dts/include
>> > -I/home/lewis/OpenProj/barebox/arch/arm/include
>> > -I/home/lewis/OpenProj/barebox/arch/arm/include -include
>> > /home/lewis/OpenProj/barebox/include/linux/kconfig.h -fno-builtin
>> > -ffreestanding -D__ARM__ -fno-strict-aliasing -marm -mlittle-endian
>> > -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7
>> > -march=armv5t -Wa,-march=armv7-a  -msoft-float -mthumb
>>
>> -march=armv5t -Wa,-march=armv7-a shouldn't be here. It comes from this
>> line in arch/arm/Makefile:
>>
>> arch-$(CONFIG_CPU_32v7)         :=-D__LINUX_ARM_ARCH__=7 $(call
>> cc-option,-march=armv7-a,-march=armv5t -Wa$(comma)-march=armv7-a)
>>
>> This means the build process will use "-march=armv7-a" when the compiler
>> supports it. Apparently it does not, so it will fall back to
>> "-march=armv5t -Wa,-march=armv7-a". armv5t doesn't support thumb2 code,
>> only thumb and as it seems thumb does not support the "rev" instruction.
>>
>> Your compiler should really support "-march=armv7-a". If it doesn't I
>> really think there is something wrong with it.
>>
>> Sascha
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
