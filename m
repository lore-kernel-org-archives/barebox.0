Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgCZE-0005pB-5j
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 10:51:06 +0000
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
References: <1354622643-7777-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
 <20121205094344.GC10369@pengutronix.de>
Date: Wed, 05 Dec 2012 11:50:56 +0100
In-Reply-To: <20121205094344.GC10369@pengutronix.de> (Sascha Hauer's message
 of "Wed, 5 Dec 2012 10:43:44 +0100")
Message-ID: <lyd2yo3h7z.fsf@ensc-virt.intern.sigma-chemnitz.de>
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
Subject: Re: [PATCH] ARM: give more detailed information about data aborts
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

>> -	asm volatile ("mrc     p15, 0, %0, c6, c0, 0" : "=r" (far) : : "cc");
>> -
>> -	printf("unable to handle %s at address 0x%08x\n",
>> -			far < PAGE_SIZE ? "NULL pointer dereference" :
>> -			"paging request", far);
>> +	if (!IS_ENABLED(CONFIG_VERBOSE_EXCEPTIONS)) {
>> +		printf("data abort\n");
>
> Why don't you keep the original message here? The fault address is a very
> useful information.

I think it is cleaner to implement a minimal + verbose variant, than a
little-bit-minimal + verbose variant.

I am not sure since when (ARM architecture wise) FAR and DFSR (introduced
by my patch) are available.  Value of FAR depends on the fault reason
(e.g. it is invalid for imprecise external aborts or debug events) so
printing FAR without DFSR might be misleading.


>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -668,6 +668,12 @@ config DEBUG_LL
>>  	help
>>  	  Enable this to get low level debug messages during barebox initialization.
>>  
>> +config VERBOSE_EXCEPTIONS
>> +	bool "decode processor specific exceptions"
>> +	default y
>> +	help
>> +	  Enable this to give out more detailed information about data aborts.
>
> This option should be in arch/arm/Kconfig since it's ARM specific.

I do not think that verbose exception messages are an ARM-only thing.
atm, it is implemented for ARM only but similar code can be written for
other architectures probably.

Having this option in the "Debugging" section of 'menuconfig' is expected
probably by the most users.  Making it architecture dependent requires
more or less invasive changes in the Kconfig infrastructure.


> Also it should depend on ARM_EXCEPTIONS.

ok


Enrico

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
