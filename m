Delivery-date: Fri, 09 Sep 2022 09:51:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWYnM-00BegZ-9g
	for lore@lore.pengutronix.de; Fri, 09 Sep 2022 09:51:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWYnM-0006n2-MF
	for lore@pengutronix.de; Fri, 09 Sep 2022 09:51:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jHlsvoAA7tlJliX0sUJgB/D1xGmjswAbkAG9/rQMzlw=; b=smBKaJ4ECezBUYAIVxuvWAiCdT
	NZqbvDX/LQg6CFBc+jSxtzatPu0RxSi5CoPwm7rlHktq2YcxSArxd1yGC+GQiDRSbIZYcphgxhdaq
	ffjqT/lqx3ZMPSiQhgfBOp9sr43fvcZC/iXKIjCUmKQwBlTiRaX2HGef7HojJrvGDn0QKCUyRvDcM
	GqICZffWFpx8qs2U4VnS6OvNyltaYZD40/lzUCOdpS/ddtA6HC33OGoJzSPEDi8b/oIadL/2RP2tU
	vjdIoApbG01fXHn/cvE0fRzHgXHM4bXL9W62rfEjyjyfuFYi/QR8ogKU+30z2rqX6njz4fSbveQPP
	C+iKyvrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWYlr-00E8gS-Lk; Fri, 09 Sep 2022 07:49:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWYfb-00E4bA-9h
	for barebox@lists.infradead.org; Fri, 09 Sep 2022 07:43:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oWYfY-0005FA-2z; Fri, 09 Sep 2022 09:43:20 +0200
Message-ID: <a1f6684a-06b8-43c5-cc66-e8e8b447e249@pengutronix.de>
Date: Fri, 9 Sep 2022 09:43:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20220909072902.3260039-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220909072902.3260039-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_004323_385394_B7D91709 
X-CRM114-Status: GOOD (  21.32  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: Fix barebox header generation on arm64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 09.09.22 09:29, Sascha Hauer wrote:
> When using multiple ENTRY_FUNCTION_WITH_STACK an entry_prologue
> is emitted for each usage. The entry_proloues end up in the

                                     ^ prologues

> same section and thus can't be discarded with the effect that the
> barebox magic is at the wrong place. To fix this put the entry_prologues
> in function specific sections so that the linker can discard the
> unused ones.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>


Thanks for fixing,
Ahmad

> ---
>  arch/arm/include/asm/barebox-arm.h | 21 +++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index 16f9882b5a..a34f77f2ab 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -21,6 +21,7 @@
>  #include <asm/common.h>
>  #include <asm/sections.h>
>  #include <asm/reloc.h>
> +#include <linux/stringify.h>
>  
>  /*
>   * We have a 4GiB address space split into 1MiB sections, with each
> @@ -137,23 +138,23 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
>  
>  #ifdef CONFIG_CPU_64
>  
> -#define ____emit_entry_prologue(instr, ...) do { \
> -	static __attribute__ ((unused,section(".text_head_prologue"))) \
> +#define ____emit_entry_prologue(name, instr, ...) do { \
> +	static __attribute__ ((unused,section(".text_head_prologue_" __stringify(name)))) \
>  		const u32 __entry_prologue[] = {(instr), ##__VA_ARGS__}; \
>  	barrier_data(__entry_prologue); \
>  } while(0)
>  
> -#define __emit_entry_prologue(instr1, instr2, instr3, instr4, instr5) \
> -	____emit_entry_prologue(instr1, instr2, instr3, instr4, instr5)
> +#define __emit_entry_prologue(name, instr1, instr2, instr3, instr4, instr5) \
> +	____emit_entry_prologue(name, instr1, instr2, instr3, instr4, instr5)
>  
> -#define __ARM_SETUP_STACK(stack_top) \
> -	__emit_entry_prologue(0x14000002	/* b pc+0x8 */,		\
> +#define __ARM_SETUP_STACK(name, stack_top) \
> +	__emit_entry_prologue(name, 0x14000002	/* b pc+0x8 */,		\
>  			      stack_top		/* 32-bit literal */,	\
>  			      0x18ffffe9	/* ldr w9, top */,	\
>  			      0xb4000049	/* cbz x9, pc+0x8 */,	\
>  			      0x9100013f	/* mov sp, x9 */)
>  #else
> -#define __ARM_SETUP_STACK(stack_top) if (stack_top) arm_setup_stack(stack_top)
> +#define __ARM_SETUP_STACK(name, stack_top) if (stack_top) arm_setup_stack(stack_top)
>  #endif
>  
>  /*
> @@ -174,7 +175,7 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
>  				(ulong r0, ulong r1, ulong r2)		\
>  		{							\
>  			__barebox_arm_head();				\
> -			__ARM_SETUP_STACK(stack_top);			\
> +			__ARM_SETUP_STACK(name, stack_top);		\
>  			__##name(r0, r1, r2);				\
>  		}							\
>  		static void noinline __##name				\
> @@ -184,7 +185,7 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
>  	static void ____##name(ulong, ulong, ulong);			\
>  	ENTRY_FUNCTION(name, arg0, arg1, arg2)				\
>  	{								\
> -		__ARM_SETUP_STACK(stack_top);				\
> +		__ARM_SETUP_STACK(name, stack_top);			\
>  		____##name(arg0, arg1, arg2);				\
>  	}								\
>  	static void noinline ____##name					\
> @@ -201,7 +202,7 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
>  				(ulong r0, ulong r1, ulong r2)		\
>  		{							\
>  			__barebox_arm_head();				\
> -			__ARM_SETUP_STACK(0);				\
> +			__ARM_SETUP_STACK(name, 0);			\
>  			__##name(r0, r1, r2);				\
>  		}							\
>  		static void NAKED noinline __##name			\


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


