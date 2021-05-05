Delivery-date: Wed, 05 May 2021 12:22:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEgC-0007eM-9I
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:22:56 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEgA-00082f-W7
	for lore@pengutronix.de; Wed, 05 May 2021 12:22:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SMiXVC+GIyZEDLZIaoLeZ+At3i06Xl3jBOPeqdIg+tI=; b=nrr7/0Zlqb02utZYw7+AdrEDa
	peCLDe3D4E9DBqif3E/M5BZBF9O4NKvHxfz6ibxMUWX/xAIlcd1KK3mMBpIcC+XKj9SrUXFzPFG/W
	2Vy7qJtsrufncCTh74hIpQnSKzba1YrTYfEXgykvgQd9w6fiMG/DqPsoURO/4eTfWJID7P4wh3BUs
	Hw4lGmBY8yaQT95A2LiKeT/+245j0oT7X7B/yjWQ2BVQq76Ne0tsTuAfKWv8wKtfuMBbEt/T7xAbR
	jMx/9MUe16iTlOhQQNJB9O9j3GOx50sprASeoMk/h39wpn1SSeLSFd/5ChdLD6teYa2PXqmkjtTv0
	eknGTNrmA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leEfF-000ugi-KG; Wed, 05 May 2021 10:21:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEeo-000uZw-OK
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:21:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=noJ+CZiUnycawSylcAHtjXzYyHgFSR2IDSQK7tDbWKY=; b=gI+ZOt8bZJssp+FZkNLrUWWWyd
 0XBqGmOB8Mr+6SG+VZrp2fwW10yOkB3Lap0Gl+ZGB+CXFt9GHNWjDcuAjW9d4ZwBcauyxr2xxG2II
 m+KkOTU4wg4lKPBU5n35zFm+yszjb/8cDbOT1C7zKjIjKo1k1GHW+N21MFyOpoRSAZFq6bIPRjNND
 UZrG09IpNMJ+ebQSo6snph1Nqb261bo5NjoyS3tmzSW+3rKwlHfyEMdNoqA78r3BAfFzio/Z07FYv
 nGKwyZcLHxNr+NVgteS2M+cL5r5qudkmU+xBTVjOb8dAp2FTtNVwUWXcpvQmI34HAHIZkdqrvdWkW
 pdlVWtZA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEel-004fGV-P4
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:21:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1leEek-0007hj-5g; Wed, 05 May 2021 12:21:26 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
 <20210427202309.32077-6-a.fatoum@pengutronix.de>
 <20210505131801.5568b3337cefb36eda073522@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <7e99b38d-ea07-ff00-21b9-6123212b7a4c@pengutronix.de>
Date: Wed, 5 May 2021 12:21:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210505131801.5568b3337cefb36eda073522@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_032127_856758_EC661956 
X-CRM114-Status: GOOD (  26.32  )
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
Subject: Re: [PATCH 06/12] RISC-V: erizo: drop mach-erizo directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 05.05.21 12:18, Antony Pavlov wrote:
> On Tue, 27 Apr 2021 22:23:03 +0200
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> Hi Ahmad!
> 
> Could you please rebase this patchseries on top of pengutronix next branch
> and push it to github?
> 
> My latest LiteX SoC support patchseries introduces mach-litex/include/mach/debug_ll.h.

I just commented that on your series :D
next Branch already contains this series.

By the way, there's now lore.barebox.org, which allows you
to download patch series as mbox via b4 (or a web browser).

Cheers,
Ahmad

> 
>> With the recent changes, we can now delete mach-erizo. Do so.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/riscv/Kconfig.socs                        |  2 +-
>>  arch/riscv/Makefile                            | 13 -------------
>>  .../include/mach => include/asm}/debug_ll.h    | 18 +++++++-----------
>>  arch/riscv/mach-erizo/Makefile                 |  3 ---
>>  common/Kconfig                                 |  5 +++++
>>  5 files changed, 13 insertions(+), 28 deletions(-)
>>  rename arch/riscv/{mach-erizo/include/mach => include/asm}/debug_ll.h (57%)
>>  delete mode 100644 arch/riscv/mach-erizo/Makefile
>>
>> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
>> index 093bca33806c..ea5ae0a6e9b5 100644
>> --- a/arch/riscv/Kconfig.socs
>> +++ b/arch/riscv/Kconfig.socs
>> @@ -3,7 +3,7 @@ menu "SoC selection"
>>  config SOC_ERIZO
>>  	bool "Erizo SoC"
>>  	depends on ARCH_RV32I
>> -	select HAS_DEBUG_LL
>> +	select HAS_ASM_DEBUG_LL
>>  	select HAS_NMON
>>  	select USE_COMPRESSED_DTB
>>  	select RISCV_M_MODE
>> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
>> index 09a94d69b220..0b1278936d91 100644
>> --- a/arch/riscv/Makefile
>> +++ b/arch/riscv/Makefile
>> @@ -19,8 +19,6 @@ LDFLAGS_pbl += $(riscv-ldflags-y)
>>  cflags-y += $(riscv-cflags-y)
>>  LDFLAGS_barebox += -nostdlib
>>  
>> -machine-$(CONFIG_SOC_ERIZO)	:= erizo
>> -
>>  LDFLAGS_barebox += $(riscv-ldflags-y)
>>  
>>  ifndef CONFIG_MODULES
>> @@ -31,21 +29,10 @@ endif
>>  
>>  KBUILD_BINARY := barebox.bin
>>  
>> -machdirs := $(patsubst %,arch/riscv/mach-%/,$(machine-y))
>> -
>> -KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
>> -
>>  archprepare: maketools
>>  
>>  PHONY += maketools
>>  
>> -ifneq ($(machine-y),)
>> -MACH  := arch/riscv/mach-$(machine-y)/
>> -else
>> -MACH  :=
>> -endif
>> -
>> -common-y += $(MACH)
>>  common-y += arch/riscv/boards/
>>  common-y += arch/riscv/cpu/
>>  common-y += arch/riscv/lib/
>> diff --git a/arch/riscv/mach-erizo/include/mach/debug_ll.h b/arch/riscv/include/asm/debug_ll.h
>> similarity index 57%
>> rename from arch/riscv/mach-erizo/include/mach/debug_ll.h
>> rename to arch/riscv/include/asm/debug_ll.h
>> index a20acfcdfb79..755ed09786d5 100644
>> --- a/arch/riscv/mach-erizo/include/mach/debug_ll.h
>> +++ b/arch/riscv/include/asm/debug_ll.h
>> @@ -1,18 +1,10 @@
>>  /* SPDX-License-Identifier: GPL-2.0-only */
>>  /*
>>   * Copyright (C) 2017 Antony Pavlov <antonynpavlov@gmail.com>
>> - *
>> - * This file is part of barebox.
>> - *
>> - * This program is distributed in the hope that it will be useful,
>> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> - * GNU General Public License for more details.
>> - *
>>   */
>>  
>> -#ifndef __MACH_ERIZO_DEBUG_LL__
>> -#define __MACH_ERIZO_DEBUG_LL__
>> +#ifndef __ASM_DEBUG_LL__
>> +#define __ASM_DEBUG_LL__
>>  
>>  /** @file
>>   *  This File contains declaration for early output support
>> @@ -20,6 +12,8 @@
>>  
>>  #include <linux/kconfig.h>
>>  
>> +#ifdef CONFIG_DEBUG_ERIZO
>> +
>>  #define DEBUG_LL_UART_ADDR	0x90000000
>>  #define DEBUG_LL_UART_SHIFT	2
>>  #define DEBUG_LL_UART_IOSIZE32
>> @@ -30,4 +24,6 @@
>>  
>>  #include <asm/debug_ll_ns16550.h>
>>  
>> -#endif /* __MACH_ERIZO_DEBUG_LL__ */
>> +#endif
>> +
>> +#endif /* __ASM_DEBUG_LL__ */
>> diff --git a/arch/riscv/mach-erizo/Makefile b/arch/riscv/mach-erizo/Makefile
>> deleted file mode 100644
>> index d9c51e74c379..000000000000
>> --- a/arch/riscv/mach-erizo/Makefile
>> +++ /dev/null
>> @@ -1,3 +0,0 @@
>> -# just to build a built-in.o. Otherwise compilation fails when no o-files is
>> -# created.
>> -obj- += dummy.o
>> diff --git a/common/Kconfig b/common/Kconfig
>> index b10fb45b722d..6d7a1c6b0494 100644
>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -1342,6 +1342,11 @@ config DEBUG_RPI3_MINI_UART
>>  	help
>>  	  Say Y here if you want low-level debugging support on
>>  	  RaspberryPi 3 board mini UART.
>> +
>> +config DEBUG_ERIZO
>> +	bool "Erizo ns16550 port"
>> +	depends on SOC_ERIZO
>> +
>>  endchoice
>>  
>>  config DEBUG_IMX_UART_PORT
>> -- 
>> 2.29.2
>>
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

