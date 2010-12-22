Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PVCso-0003z8-6s
	for barebox@lists.infradead.org; Wed, 22 Dec 2010 00:48:47 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m362uodqms.fsf@intrepid.localdomain>
	<m3oc8gcae3.fsf@intrepid.localdomain>
	<20101221083540.GV6017@pengutronix.de>
Date: Wed, 22 Dec 2010 01:48:36 +0100
In-Reply-To: <20101221083540.GV6017@pengutronix.de> (Sascha Hauer's message of
	"Tue, 21 Dec 2010 09:35:40 +0100")
Message-ID: <m3wrn2d44b.fsf@intrepid.localdomain>
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 10] ARM: Add support for IXP4xx CPU and for Goramo
	Multilink router platform.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> These partitions are not on eraseblock boundaries, so I assume you use
> some script to combine barebox and firmware into a single image. Can we
> integrate this into the make system or at least add some instructions
> how to generate this image?

I patch them in flash with JTAG/OpenOCD, guess that's not what most
people will do. Added some instructions, it should be pretty clear now
(the NPE microcode files aren't going to change, Intel seems to have
finalized the IXP42x support at version 2.4).

>> +#ifdef CONFIG_USE_IRQ
>> +
>> +static void (*irq_handlers[HALF_QUEUES])(void *pdev);
>> +static void *irq_pdevs[HALF_QUEUES];
>> +
>> +#undef fls
>> +static inline int fls(int x)
>> +{
>> +	int ret;
>> +	asm("clz\t%0, %1" : "=r" (ret) : "r" (x) : "cc");
>> +	ret = 32 - ret;
>> +	return ret;
>> +}
>
> fls is defined in a similar way in arch/arm/include/asm/bitops.h:
>
> #define fls(x) \
> 	(__builtin_constant_p(x) ? constant_fls(x) : \
> 	({ int __r; asm("clz\t%0, %1" : "=r"(__r) : "r"(x) : "cc"); 32-__r; }))
>
> Or am I missing something?

Looks like u-boot (v.1) doesn't have it, I was thinking of using u-boot
instead at first. Removed (I don't use CONFIG_USE_IRQ anyway).


WRT endianness switching, I added a couple of #ifdefs. It seems
gcc-4.4.x with EABI can optimize the unused "swap" parameter out, even
without actually inlining the function.
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
