Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgDEK-0008Dd-6Z
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 11:33:33 +0000
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
References: <1354622569-7673-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
 <1354622569-7673-2-git-send-email-enrico.scholz@sigma-chemnitz.de>
 <20121205104627.GD10369@pengutronix.de>
Date: Wed, 05 Dec 2012 12:33:26 +0100
In-Reply-To: <20121205104627.GD10369@pengutronix.de> (Sascha Hauer's message
 of "Wed, 5 Dec 2012 11:46:27 +0100")
Message-ID: <ly8v9c3f95.fsf@ensc-virt.intern.sigma-chemnitz.de>
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
Subject: Re: [PATCH 2/2] OMAP: disable unaligned access when building the IFT
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

>>  config OMAP_BUILD_IFT
>>  	prompt "build ift binary"
>> +	select ARM_NOUNALIGNED
>
> This needs more investigation. Coupling this to OMAP_BUILD_IFT does
> not seem to be correct. Unaligned accesses work for cached memory once
> the MMU is enabled,

It depends on the type of accessed memory.  E.g.

OMAP4 SDRAM
| :/ md -w 0x80000001+2
| 80000001: 0000                                               ..

OMAP4 SRAM
| :/ md -w 0x40300000+2
| 40300000: 9001                                               
| 
| :/ md -w 0x40300001+2
| alignment fault at address 0x40300001
| pc : [<8f02a684>]    lr : [<8f02a654>]

I guess, the OMAP4 SRAM is strongly ordered memory which does not allow
unaligned access.

Similar problems might arise when accessing device memory unaligned.
But this should not be an issue because such operations are usually
expressed explicitly with readX() + writeX() macros.


Coupling the -mno-unaligned-access to the TEXT_BASE and the used processor
might be a better solution.  But I have only a very limited overview about
all the possible variants, so I decided to:

1. make it configurable

2. enable it for known cases (OMAP4 IFT is such a case because it is
   usually executed in SRAM)


> it won't work with MMU disabled though. 

no; unaligned access works on ARMv6+ without MMU too.


>> commit b823fd9ba56d56e3cbb5b05e7a4815fb0914204a
>> Author: Albert ARIBAUD <albert.u.boot@aribaud.net>
>> Date:   Tue Oct 9 09:28:15 2012 +0000
>>     ARM: prevent misaligned array inits
>>     
>>     Under option -munaligned-access, gcc can perform local char
>>     or 16-bit array initializations using misaligned native
>>     accesses which will throw a data abort exception. Fix files
>>     where these array initializations were unneeded, and for
>>     files known to contain such initializations, enforce gcc
>>     option -mno-unaligned-access.
> ...
> This patch explicitely mentions char arrays initialized on the stack
> like this:

I do not know the backgrounds of this patch but without additional
context, I think it is wrong.  It might fix problems of a specific
processor or in cases where u-boot is executed in SRAM or so.  But
unaligned access on ARMv6+ is generally ok.


> function foo()
> {
>        char buffer[] = "initial value";
> /* or */
>        char buffer[] = { 'i', 'n', 'i', 't', 0 };
>        ...
> }
>
> Is this the place where you see problems?

no; I saw the problem when the MLO accessed attributes of an oddly
located __packed structure with 'ldrh'.

"OMAP4: removed __packed__ annotation from pad_conf_entry" (see previous
postings) was an immediate (and for other reasons still correct) fix for
this issue.


> barebox is written to not contain unaligned accesses, everything else
> will fail on earlier ARM CPUs. I think we should pass the
> -mno-unaligned-access unconditionally.

I do not see a reason to do this unconditionally.


Enrico

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
