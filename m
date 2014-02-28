Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from slb-mail0.epfl.ch ([2001:620:618:1e0:1:80b2:e058:1]
 helo=smtp0.epfl.ch)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJNE5-00031U-UQ
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 13:11:49 +0000
Message-ID: <53108AE3.80900@epfl.ch>
Date: Fri, 28 Feb 2014 14:10:59 +0100
From: =?ISO-8859-15?Q?Philippe_R=E9tornaz?= <philippe.retornaz@epfl.ch>
MIME-Version: 1.0
References: <1393509826-19549-1-git-send-email-philippe.retornaz@epfl.ch>
 <1393509826-19549-2-git-send-email-philippe.retornaz@epfl.ch>
 <20140227203652.GS17250@pengutronix.de> <53104714.6090909@epfl.ch>
 <20140228083755.GZ17250@pengutronix.de>
In-Reply-To: <20140228083755.GZ17250@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] ARM: i.MX31: Add support for mx31moboard board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Le 28/02/2014 09:37, Sascha Hauer a =E9crit :
> On Fri, Feb 28, 2014 at 09:21:40AM +0100, Philippe R=E9tornaz wrote:
>> Le 27/02/2014 21:36, Sascha Hauer a =E9crit :
>>> On Thu, Feb 27, 2014 at 03:03:45PM +0100, Philippe R=E9tornaz wrote:
>>>> +void __bare_init __naked barebox_arm_reset_vector(void)
>>>> +{
>>>> +	uint32_t r;
>>>> +
>>>> +	arm_cpu_lowlevel_init();
>>>> +
>>>> +	/* Enable IPU Display interface */
>>>> +	writel(1 << 6, MX31_IPU_CTRL_BASE_ADDR);
>>>> +
>>>> +	writel(0x074B0BF5, MX31_CCM_BASE_ADDR + MX31_CCM_CCMR);
>>>> +
>>>> +	asm volatile("1:\n\t"
>>>> +			"SUBS %0, %0, #1	\n\t"
>>>> +			"BNE  1b		\n\t"
>>>> +			: : "r" (0x4000) : "cc");
>>>
>>> You can write a delay loop in c with:
>>>
>>> 	volatile int c;
>>>
>>> 	for (c =3D 0; c < 0x4000; c++)
>>
>> Well, no, at least not on my toolchain. Because the volatile ask gcc to
>> not optimize the variable, it then put it on the stack. But the stack
>> pointer is not yet initialized, so it crashes. I've tried with a
>> barrier() instead of the volatile, but it leads to the same assembly
>> (which is not surprising). Here is the compiled code with your suggestio=
n:
>>
>>          ldr     r2, .L9+8
>>          b       .L2
>> .L3:
>>          ldr     r3, [sp, #4]
>>          add     r3, r3, #1
>>          str     r3, [sp, #4]
>> .L2:
>>          ldr     r3, [sp, #4]
>>          cmp     r3, r2
>>          ble     .L3
>>
>> With L9+8:
>>          .word   16383
>>
>> But the stack pointer is initialised only in barebox_arm_entry() which
>> is called later. So I decided that a two instructions assembly loop was
>> the simplest solution.
>
> This may happen because the function gets too complex and gcc starts
> using the stack in this case.
>
> Try rewriting the lowlevel stuff as:
>
> static void __noinline mx31_moboard_startup(void)
> {
> 	/* Put setup here */
> }
>
> void __bare_init __naked barebox_arm_reset_vector(void)
> {
> 	 arm_cpu_lowlevel_init();
>
> 	 arm_setup_stack(MX31_IRAM_BASE_ADDR + MX31_IRAM_SIZE - 12);
>
> 	 mx31_moboard_startup();
> }
>
> With this you can use the stack and should be on the safe side.

Ok, I tried and it works fine so I will do this.
BTW, any reason for the -12, why not -8 ?

Thanks,

Philippe



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
