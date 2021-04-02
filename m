Delivery-date: Fri, 02 Apr 2021 08:36:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSDPt-0007xs-Vp
	for lore@lore.pengutronix.de; Fri, 02 Apr 2021 08:36:26 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSDPs-0000Nz-Tx
	for lore@pengutronix.de; Fri, 02 Apr 2021 08:36:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6kZ9tuaXv52ZCoksz3IZYW04ObYNh6acQw4+rDBGuuM=; b=hyYaSZOqLofPLQb1PpPoc7GF5
	xm0M1q4NAyHTj7Dq7YE7yA/nqQ3unxaYafTYjbNvtUciZ86OJrNecHZtxNK+j3w+YbqAoC1QxtSZm
	niHfsNZrJQsHgFOU1xXG6fCgCsKmc20B8lYGNcqJMy3Y6R0pBcuXSi/ioAIqr4LJQeKixngTQr7ih
	0CtAZs+t8tVaE+4c7Tmo4RHjYFurUi66JzyzNhxRWP9So9y3QvzSqbAK2jzAaeGl/f/6VqkwA/SkO
	6WOEojR15imcBclckQri8DDkJHx3tTsMXpoKCvoDyKsnfozoTdBMS3tzYLqmljb/SAEwSpOUGRjd2
	9sRv7Dn1w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSDOK-00C6np-9T; Fri, 02 Apr 2021 06:34:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSDOA-00C6kx-01
 for barebox@lists.infradead.org; Fri, 02 Apr 2021 06:34:42 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lSDO9-0008Pi-8m; Fri, 02 Apr 2021 08:34:37 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
References: <20210324082304.30858-1-a.fatoum@pengutronix.de>
 <20210402085613.9a8dd5ecb960a47faa3eaa90@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c2a98aea-2220-38ca-34e5-78a2a585ce82@pengutronix.de>
Date: Fri, 2 Apr 2021 08:34:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210402085613.9a8dd5ecb960a47faa3eaa90@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210402_073438_316973_B142A288 
X-CRM114-Status: GOOD (  29.75  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] RISC-V: cpu: request stack memory region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 02.04.21 07:56, Antony Pavlov wrote:
> On Wed, 24 Mar 2021 09:23:02 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> Current RISC-V erizo barebox master succesfully runs on QEMU
> but hangs on FPGA.
> 
> git bisection shows this:
> 
>     barebox$ git bisect good 809e66d4ef
>     ...
>     barebox$ git bisect bad
>     fef19e17f651a7f4b6063a76c506a67cabfe4a69 is the first bad commit
>     commit fef19e17f651a7f4b6063a76c506a67cabfe4a69
>     Author: Ahmad Fatoum <a.fatoum@pengutronix.de>
>     Date:   Wed Mar 24 09:23:02 2021 +0100
> 
>         RISC-V: cpu: request stack memory region
> 
> I see that request_sdram_region("stack", ...) hangs in input_data_len().
> 
> On FPGA I load barebox image at 0x80000000 (erizo RAM start)
> not at 0x0 (link address).
> The problem is that input_data_end in input_data_len()
> contains link-time address, not actual run-time address.

This is strange. Could you print get_runtime_offset() at this location?
It should be zero, because relocate_to_current_adr() had previously run,
but it seems it's not for you? I don't see how compiler reordering could have
occurred given that we don't do LTO and relocate_to_current_adr is thus
a compiler barrier.

Thanks for testing,
Ahmad

> 
> I have added this hack
> 
> --- a/arch/riscv/boot/uncompress.c
> +++ b/arch/riscv/boot/uncompress.c
> @@ -46,7 +46,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>                 relocate_to_adr(membase);
>  
>         pg_len = pg_end - pg_start;
> -       uncompressed_len = input_data_len();
> +       uncompressed_len = get_unaligned((const u32 *)(input_data_end - 4 + get_runtime_offset()));
>  
>         barebox_base = riscv_mem_barebox_image(membase, endmem,
>                                                uncompressed_len + MAX_BSS_SIZE);
> 
> Alas, this hack does not fix the problem completely.
> 
> 
>> Now that the stack base region is determined dynamically,
>> mem_malloc_resource can no longer reserve the stack space.
>> Do as ARM does and add a RISC-V specific initcall to reserve
>> the main thread's stack space.
>>
>> Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> Fix for master as otherwise stack could be overwritten at runtime
>> ---
>>  arch/riscv/cpu/core.c | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>>
>> diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
>> index bdcd500ed748..982d378eddec 100644
>> --- a/arch/riscv/cpu/core.c
>> +++ b/arch/riscv/cpu/core.c
>> @@ -2,6 +2,9 @@
>>  /*
>>   * Copyright (C) 2012 Regents of the University of California
>>   * Copyright (C) 2017 SiFive
>> + * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
>> + *
>> + * Common RISC-V core initcalls.
>>   *
>>   * All RISC-V systems have a timer attached to every hart.  These timers can
>>   * either be read from the "time" and "timeh" CSRs, and can use the SBI to
>> @@ -14,8 +17,17 @@
>>  #include <of.h>
>>  #include <linux/clk.h>
>>  #include <linux/err.h>
>> +#include <memory.h>
>> +#include <asm-generic/memory_layout.h>
>>  #include <io.h>
>>  
>> +static int riscv_request_stack(void)
>> +{
>> +	extern unsigned long riscv_stack_top;
>> +	return PTR_ERR_OR_ZERO(request_sdram_region("stack", riscv_stack_top - STACK_SIZE, STACK_SIZE));
>> +}
>> +coredevice_initcall(riscv_request_stack);
>> +
>>  static struct device_d timer_dev;
>>  
>>  static int riscv_probe(struct device_d *parent)
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

