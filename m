Delivery-date: Thu, 01 Jun 2023 10:54:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4e58-005Yqp-8n
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 10:54:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4e55-0007hN-Cl
	for lore@pengutronix.de; Thu, 01 Jun 2023 10:54:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kuCrSNh7+lYqrIUJomE3Qo0A3IyvuFpHuedCVgEJYgg=; b=TmSCTavN8J8Pp6x18SEhncY8gY
	zz8kuRq01PVWPiZLNwADgQYTg8TeBDIIezsxlXQWki0W4X8LuGijNcXH0tyEsVu0+Z9PTvgYhSBr0
	ZUwc6+Fj+WbM7/5TPxptQ6UbQVSzKRZPXiKlENud2t6e45ecO2lIn5yRyjd4k6N9CRq0EvcXsAmWM
	RffEcy+Ek/0NRm38OFSbHrmkxYy8oXLd966N4+JBqbGU27tBAsY7IPXjA/BUZD1+IOQsSRcWXHTOy
	ZYtoK6WhGTamC57uTQ0828yCTKZyrjgBaRnG8eEfAEV1DXLLmKNtu+fF9l3hZqup2Jww+i8jXgaih
	ggz2ybag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4e3y-002dig-1E;
	Thu, 01 Jun 2023 08:53:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4e3v-002dhM-02
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 08:53:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q4e3p-0007bu-VX; Thu, 01 Jun 2023 10:53:34 +0200
Message-ID: <6fb006e2-eeb1-ce47-dc81-cf97a3879a84@pengutronix.de>
Date: Thu, 1 Jun 2023 10:53:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Lior Weintraub <liorw@pliops.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20230531175157.1442379-1-a.fatoum@pengutronix.de>
 <PR3P195MB05557909F99422D8CAC469B7C3499@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <PR3P195MB05557909F99422D8CAC469B7C3499@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_015339_049726_4534FD61 
X-CRM114-Status: GOOD (  22.52  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFT] ARM64: cpu: support 64-bit stack top in
 ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 01.06.23 10:33, Lior Weintraub wrote:
> Hi Ahmad,
> Thanks for the patch.
> I have checked it and can verify it is working correctly.

Great! I am replying with:

Tested-by: Lior Weintraub <liorw@pliops.com>

So the scripts pulling patches from the mailing list will automatically
collect the tag and fold it into the commit message.

Cheers,
Ahmad


> Cheers,
> Lior.
> 
>> -----Original Message-----
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Sent: Wednesday, May 31, 2023 8:52 PM
>> To: barebox@lists.infradead.org
>> Cc: Lior Weintraub <liorw@pliops.com>; Ahmad Fatoum
>> <a.fatoum@pengutronix.de>
>> Subject: [PATCH RFT] ARM64: cpu: support 64-bit stack top in
>> ENTRY_FUNCTION_WITHSTACK
>>
>> CAUTION: External Sender
>>
>> ENTRY_FUNCTION_WITHSTACK was written with the naive assumption that
>> there will always be some memory in the first 32-bit of the address
>> space to be used as early stack. There are SoCs out there though with
>> sole on-chip SRAM > 4G. Accommodate this by accepting full 64-bit stack
>> pointers in ENTRY_FUNCTION_WITHSTACK.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/cpu/head_64.S             | 2 +-
>>  arch/arm/include/asm/barebox-arm.h | 2 +-
>>  arch/arm/lib/pbl.lds.S             | 7 ++++---
>>  include/asm-generic/pointer.h      | 2 ++
>>  4 files changed, 8 insertions(+), 5 deletions(-)
>>
>> diff --git a/arch/arm/cpu/head_64.S b/arch/arm/cpu/head_64.S
>> index 398c4d3471e0..546efc263a06 100644
>> --- a/arch/arm/cpu/head_64.S
>> +++ b/arch/arm/cpu/head_64.S
>> @@ -11,7 +11,7 @@
>>  ENTRY(__barebox_arm64_head)
>>         nop
>>         adr x9, __pbl_board_stack_top
>> -       ldr w9, [x9]
>> +       ldr x9, [x9]
>>         cbz x9, 1f
>>         mov sp, x9
>>  1:
>> diff --git a/arch/arm/include/asm/barebox-arm.h
>> b/arch/arm/include/asm/barebox-arm.h
>> index eb31ca278821..aceb7fdf74f8 100644
>> --- a/arch/arm/include/asm/barebox-arm.h
>> +++ b/arch/arm/include/asm/barebox-arm.h
>> @@ -158,7 +158,7 @@ void __barebox_arm64_head(ulong x0, ulong x1,
>> ulong x2);
>>                                 (ulong r0, ulong r1, ulong r2)          \
>>                 {                                                       \
>>                         static __section(.pbl_board_stack_top_##name)   \
>> -                               const u32 __stack_top = (stack_top);    \
>> +                               const ulong __stack_top = (stack_top);  \
>>                         __keep_symbolref(__barebox_arm64_head);         \
>>                         __keep_symbolref(__stack_top);                  \
>>                         __##name(r0, r1, r2);                           \
>> diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
>> index 114ec7bc8195..2b4b1d6a9513 100644
>> --- a/arch/arm/lib/pbl.lds.S
>> +++ b/arch/arm/lib/pbl.lds.S
>> @@ -4,6 +4,7 @@
>>  #include <linux/sizes.h>
>>  #include <asm/barebox.lds.h>
>>  #include <asm-generic/memory_layout.h>
>> +#include <asm-generic/pointer.h>
>>
>>  #ifdef CONFIG_PBL_RELOCATABLE
>>  #define BASE   0x0
>> @@ -44,14 +45,14 @@ SECTIONS
>>         . = ALIGN(4);
>>         .rodata : { *(.rodata*) }
>>
>> -       . = ALIGN(4);
>> +       . = ALIGN(ASM_SZPTR);
>>         __pbl_board_stack_top = .;
>>         .rodata.pbl_board_stack_top : {
>>                 *(.pbl_board_stack_top_*)
>>                 /* Dummy for when BootROM sets up usable stack */
>> -               LONG(0x00000000);
>> +               ASM_LD_PTR(0x00000000)
>>         }
>> -       ASSERT(. - __pbl_board_stack_top <= 8, "Only One PBL per Image
>> allowed")
>> +       ASSERT(. - __pbl_board_stack_top <= 2 * ASM_SZPTR, "Only One PBL per
>> Image allowed")
>>
>>         .barebox_imd : { BAREBOX_IMD }
>>
>> diff --git a/include/asm-generic/pointer.h b/include/asm-generic/pointer.h
>> index 8b9600b02939..89817ce59ebc 100644
>> --- a/include/asm-generic/pointer.h
>> +++ b/include/asm-generic/pointer.h
>> @@ -8,6 +8,7 @@
>>  #define ASM_PTR                .quad
>>  #define ASM_SZPTR      8
>>  #define ASM_LGPTR      3
>> +#define ASM_LD_PTR(x)  QUAD(x)
>>  #else
>>  #define ASM_PTR                ".quad"
>>  #define ASM_SZPTR      "8"
>> @@ -18,6 +19,7 @@
>>  #define ASM_PTR                .word
>>  #define ASM_SZPTR      4
>>  #define ASM_LGPTR      2
>> +#define ASM_LD_PTR(x)  LONG(x)
>>  #else
>>  #define ASM_PTR                ".word"
>>  #define ASM_SZPTR      "4"
>> --
>> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



