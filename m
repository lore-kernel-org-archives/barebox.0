Delivery-date: Mon, 22 Jan 2024 20:19:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRzpO-00Bt5H-0L
	for lore@lore.pengutronix.de;
	Mon, 22 Jan 2024 20:19:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRzpO-000207-N3
	for lore@pengutronix.de; Mon, 22 Jan 2024 20:19:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kFQkkvZ67ylM1sBJE4uezGShTaWFGeL7MafB5dKGIIo=; b=eyC6E9k7fzpEpaT0swlfD9p1xI
	liAUmUgdjsdtTh+HDvuPNZE5XOC3nNFVqYY+nIMwz2uNLyH45seYPYPz49ZRRrxJ7Pk8Ob7Nb0ZmG
	tx/IQBl8M+RtmpOBvBxdxy1OdW7RYm5Ul1tDP+08QzXKbk3OVo6SF0uCuUfpenRmc0S6YXl9uDzP4
	/1weM/8puBHbNjctAIme+QPj6Jjee/R1Ck/Mek17NMEcCmntc7aWtxR1VtdD9nCmLbNyXfLkltrdr
	HbYWSFrvHbPWIx8gs6zGUlM6gu3VYrKRo4zrR64OqlYq8eHOMHov3zcJzTQppe2LgpeLwMhDUbyhU
	qPS6IfOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRzoI-00Dhc1-1R;
	Mon, 22 Jan 2024 19:18:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRzoF-00DhaJ-0U
	for barebox@lists.infradead.org;
	Mon, 22 Jan 2024 19:18:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rRzoD-0001tQ-RQ; Mon, 22 Jan 2024 20:18:13 +0100
Message-ID: <c6f3cd20-08ca-41c7-ae83-b5a327a7a9c1@pengutronix.de>
Date: Mon, 22 Jan 2024 20:18:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
 <20240103181312.409668-61-a.fatoum@pengutronix.de>
 <20240108080523.GA1318922@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240108080523.GA1318922@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_111815_186173_385EFAD3 
X-CRM114-Status: GOOD (  23.08  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 060/112] ARM: pbl: add 64K segment alignment for PE/COFF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 08.01.24 09:05, Sascha Hauer wrote:
> On Wed, Jan 03, 2024 at 07:12:20PM +0100, Ahmad Fatoum wrote:
>> An EFI stubbed ARM64 kernel can be booted either via EFI or via the
>> normal boot protocol. We'll want barebox to be able to behave the same,
>> so extend section alignment to enable this.
> 
> This description reads as if it would change something, but at this
> point this patch only introduces unused defines. They are first used in
> 086/112.
> 
> Does it hurt to move the usage of PBL_SEGMENT_ALIGN and PECOFF_EDATA_PADDING
> to this patch? If not, I'd suggest doing so to make the intention of
> this patch clearer.

Ok, done.

> 
> Sascha
> 
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/include/asm/memory.h | 20 ++++++++++++++++++++
>>  arch/arm/lib/pbl.lds.S        | 18 ++++++++++++++++++
>>  2 files changed, 38 insertions(+)
>>
>> diff --git a/arch/arm/include/asm/memory.h b/arch/arm/include/asm/memory.h
>> index 23fbbd8438a1..765b089beb59 100644
>> --- a/arch/arm/include/asm/memory.h
>> +++ b/arch/arm/include/asm/memory.h
>> @@ -3,6 +3,9 @@
>>  #ifndef __ASM_ARM_MEMORY_H
>>  #define __ASM_ARM_MEMORY_H
>>  
>> +#include <linux/sizes.h>
>> +
>> +#ifndef __ASSEMBLY__
>>  #include <memory.h>
>>  
>>  #include <linux/const.h>
>> @@ -13,4 +16,21 @@ static inline int arm_add_mem_device(const char* name, resource_size_t start,
>>  	return barebox_add_memory_bank(name, start, size);
>>  }
>>  
>> +#endif
>> +
>> +
>> +/*
>> + * Alignment of barebox PBL segments (e.g. .text, .data).
>> + *
>> + *  4  B granule:  Same flat rwx mapping for everything
>> + *  4 KB granule:  16 level 3 entries, with contiguous bit
>> + * 16 KB granule:   4 level 3 entries, without contiguous bit
>> + * 64 KB granule:   1 level 3 entry
>> + */
>> +#ifdef CONFIG_EFI_PAYLOAD
>> +#define PBL_SEGMENT_ALIGN		SZ_64K
>> +#else
>> +#define PBL_SEGMENT_ALIGN		4
>> +#endif
>> +
>>  #endif	/* __ASM_ARM_MEMORY_H */
>> diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
>> index cafb27b2d55e..95929d7558bc 100644
>> --- a/arch/arm/lib/pbl.lds.S
>> +++ b/arch/arm/lib/pbl.lds.S
>> @@ -5,6 +5,24 @@
>>  #include <asm/barebox.lds.h>
>>  #include <asm-generic/memory_layout.h>
>>  #include <asm-generic/pointer.h>
>> +#include <asm/memory.h>
>> +
>> +/*
>> + * The size of the PE/COFF section that covers the barebox image, which
>> + * runs from _stext to _edata, must be a round multiple of the PE/COFF
>> + * FileAlignment, which we set to its minimum value of 0x200. '_stext'
>> + * itself must be 4 KB aligned, because that's what the adrp instructions
>> + * expects, so padding out _edata to a 0x200 aligned boundary should be
>> + * sufficient.
>> + */
>> +PECOFF_FILE_ALIGNMENT = 0x200;
>> +
>> +#ifdef CONFIG_EFI_STUB
>> +#define PECOFF_EDATA_PADDING   \
>> +       .pecoff_edata_padding : { BYTE(0); . = ALIGN(PECOFF_FILE_ALIGNMENT); }
>> +#else
>> +#define PECOFF_EDATA_PADDING
>> +#endif
>>  
>>  #ifdef CONFIG_PBL_RELOCATABLE
>>  #define BASE	0x0
>> -- 
>> 2.39.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



