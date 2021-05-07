Delivery-date: Fri, 07 May 2021 16:45:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lf1jV-0004bc-Uy
	for lore@lore.pengutronix.de; Fri, 07 May 2021 16:45:38 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lf1jV-0006sA-13
	for lore@pengutronix.de; Fri, 07 May 2021 16:45:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o+HXEEvw50Cscn+aLhSQgRNdKN8zwpVOcK7uwLpXesc=; b=HInfWq0LkmA32McDyTQLid6n0
	do1swH0SuRAyGNaM/meujJBpd/R9J1oE78h76uX7qSvfVoWJ7zukUiS6RrZvV2O4mwlYkzj7zXBWO
	6U1PlB01rCkyxTCu6W1Wk4BIGXahu5egyXUB4q1PLf5z4lHW/XmynwX9ThwPdcfGOzm6QTExD/Y77
	1NAZh/BAwDPReM02lgZAkiUn9rnFHwtikJ3wC/F1XhAMqyQsyh8quPGivJCu3iUTLgz0G0m0VG0JE
	WFWRhzVXU4WriFNH9BNm4umywBsEyUcSFbVCYRWcV85QfWoEeQY1UkBUy2UZruZuGrmv3/obPzFD1
	UFDfCwEXw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf1ic-007M6F-6v; Fri, 07 May 2021 14:44:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf1iT-007M5b-83
 for barebox@desiato.infradead.org; Fri, 07 May 2021 14:44:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=LxA8xwYTfN17PlKDJP4sOqTSrENMJOcq9QD5awnLfG8=; b=km2yWdH0MxiXzaz4BRqXi2iPzV
 OU9XUcDIsw3UM7AzFm8b7NWO4vrT7aWhuWoglxWmItMZU7RndZgo9YQ44O5y0UMu+Y5vnStze4Izx
 3oiP/bbGstuQLqdrUO8mPQ1YS5Bm1GhQwSFVAm3tJk/FcrrtBTmIcLc7umKFw472l7uHQNR0WhBCf
 qbxIMQuytfxVYsd4xkFZ1Hggv93eoQE6iq1gPOr3J/e0r6aGHxxDNip/SvftKP4WEF0PfUuymSWuJ
 2VQJDuFWuqIgevq7E6yFjRWp5pDLGXHr3qg/Mx+zMvAw4PwjCcOSEaPqmd1uQ/4bnZWVrKZitie3f
 zpwY23zA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf1iQ-006wFJ-9j
 for barebox@lists.infradead.org; Fri, 07 May 2021 14:44:32 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lf1iK-0006lK-R1; Fri, 07 May 2021 16:44:24 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
 <20210506220834.223350-3-antonynpavlov@gmail.com>
 <c1791cb3-2837-eb3e-aa58-9d1eb2a3d7b5@pengutronix.de>
 <20210507172527.cf80cf7cb749560d2e8200cd@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <28074d89-492c-48ac-d93e-103092e073cd@pengutronix.de>
Date: Fri, 7 May 2021 16:44:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210507172527.cf80cf7cb749560d2e8200cd@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_074430_374002_6CEB4F98 
X-CRM114-Status: GOOD (  21.37  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 02/11] RISC-V: make RISCV_SBI and RISCV_M_MODE
 explicitly mutually exclusive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 07.05.21 16:25, Antony Pavlov wrote:
>> I would really like to have a riscv{32,64}_defconfig that can just build all boards
>> at once. Do you know if this could be dynamically determined?
> 
> At the moment I have not answer.
> I'll try to investigate dynamic mode determination, it's very attractive idea.
> 
> On the other hand compile time mode selection is not the show stopper for
> "one defconfig to build them all": we have to make STACK_SIZE and MALLOC_SIZE
> per-board parameters not per-defconfig parameters like now.
> 
> If we could make STACK_SIZE and MALLOC_SIZE per-board compile-time parameters then
> we can make RISC-V mode per-board compile-time parameter too. Is this solution
> acceptable?

MALLOC_SIZE can be set as 0 and barebox will determine it based on
membase + memsize that are set by PBL.

STACK_SIZE must be set per Kconfig, but I think even a generous default stack
size should accommodate all targets.

If we do the same for RISC-V mode that would probably mean having
two functions barebox_riscv_machine_entry() and barebox_riscv_supervisor_entry()
in PBL that take care to pass the correct info to barebox proper.

Apparently, you can determine mode if you catch exceptions:
https://forums.sifive.com/t/how-to-determine-the-current-execution-privilege-mode/2823

We don't yet install exception handlers in barebox, but I am fine with using
different PBL common code entry functions.

What do you think?

Cheers,
Ahmad

> 
>>> +
>>>  source "arch/riscv/Kconfig.socs"
>>>  
>>>  config CPU_SUPPORTS_32BIT_KERNEL
>>> @@ -97,14 +109,4 @@ config NMON_HELP
>>>  	  Say yes here to get the nmon commands message on
>>>  	  every nmon start.
>>>  
>>> -# set if we run in machine mode, cleared if we run in supervisor mode
>>> -config RISCV_M_MODE
>>> -	bool
>>> -
>>> -# set if we are running in S-mode and can use SBI calls
>>> -config RISCV_SBI
>>> -	bool
>>> -	depends on !RISCV_M_MODE
>>> -	default y
>>> -
>>>  endmenu
>>> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
>>> index c6875738d0..f767942f34 100644
>>> --- a/arch/riscv/Kconfig.socs
>>> +++ b/arch/riscv/Kconfig.socs
>>> @@ -3,10 +3,10 @@ menu "SoC selection"
>>>  config SOC_ERIZO
>>>  	bool "Erizo SoC"
>>>  	depends on ARCH_RV32I
>>> +	depends on RISCV_M_MODE
>>>  	select HAS_ASM_DEBUG_LL
>>>  	select HAS_NMON
>>>  	select USE_COMPRESSED_DTB
>>> -	select RISCV_M_MODE
>>>  	select RISCV_TIMER
>>>  
>>>  config BOARD_ERIZO_GENERIC
>>> @@ -15,6 +15,7 @@ config BOARD_ERIZO_GENERIC
>>>  
>>>  config SOC_VIRT
>>>  	bool "QEMU Virt Machine"
>>> +	depends on RISCV_SBI
>>>  	select BOARD_RISCV_GENERIC_DT
>>>  	select CLINT_TIMER
>>>  	help
>>> @@ -23,6 +24,7 @@ config SOC_VIRT
>>>  
>>>  config SOC_SIFIVE
>>>  	bool "SiFive SoCs"
>>> +	depends on RISCV_SBI
>>>  	select CLK_SIFIVE
>>>  	select CLK_SIFIVE_PRCI
>>>  	select RISCV_TIMER
>>> diff --git a/arch/riscv/configs/erizo_generic_defconfig b/arch/riscv/configs/erizo_generic_defconfig
>>> index 247a179130..16168eef66 100644
>>> --- a/arch/riscv/configs/erizo_generic_defconfig
>>> +++ b/arch/riscv/configs/erizo_generic_defconfig
>>> @@ -1,3 +1,4 @@
>>> +CONFIG_RISCV_M_MODE=y
>>>  CONFIG_SOC_ERIZO=y
>>>  # CONFIG_GLOBALVAR is not set
>>>  CONFIG_STACK_SIZE=0x20000
>>>
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
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

