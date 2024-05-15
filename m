Delivery-date: Wed, 15 May 2024 15:06:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7EL8-00Fqcc-0n
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 15:06:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7EL7-0004Xl-Ku
	for lore@pengutronix.de; Wed, 15 May 2024 15:06:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AXZ30djH/grdQ2xCdwieVPR9D7n/t7hpe2P3wV29JVA=; b=me7Cj60ud0VX7pk4SlTJ7KP+FI
	r4oP7bHx7Nzti2hWa8Jchr2StVu2pwkJ1L0LFSCl4f9IohzoRvGwYUod5kaNc1FfTy8ucGCnNrjEi
	rsahGrag9msnfv0h7z9Gr21CWR+SGx42YGUkYu2reRipw1odvlCj1xs+eXDTRu536aHJb5Ysg2b/C
	VbNIqkn5XRp17+eH0AdEbivoqoqEANYjUeoSnyywsUzhy6dQJKQ+BAJFQAJfvabFJ20r+3BDMe3zn
	SLrI20kgmknh0JmZ28/Z1CjaZUXqffw2GmWlNq4gk5T/GsXiH0ilWCT2RO4Pji3Romi0j8TNPp6vb
	9R3zNQMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7EKG-00000001aLg-1T4Y;
	Wed, 15 May 2024 13:05:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7EK9-00000001aKM-1cwb
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 13:05:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7EK5-00049P-Tr; Wed, 15 May 2024 15:05:33 +0200
Message-ID: <78496618-e2fa-4843-915c-16f61a9466f3@pengutronix.de>
Date: Wed, 15 May 2024 15:05:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
References: <20240513140121.1351106-1-a.fatoum@pengutronix.de>
 <171575251342.1386613.8477114770061572436.b4-ty@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <171575251342.1386613.8477114770061572436.b4-ty@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_060540_516044_4C245F26 
X-CRM114-Status: GOOD (  13.79  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM64: reloc: fix relocation error for big fat
 bareboxes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 15.05.24 07:55, Sascha Hauer wrote:
> 
> On Mon, 13 May 2024 16:01:21 +0200, Ahmad Fatoum wrote:
>> A multi_v8 barebox with KASAN enabled is 2051804 bytes even after
>> compression and this breaks linking for me:
>>
>>   arch/arm/cpu/common.o: in function `global_variable_offset':
>>   arch/arm/include/asm/reloc.h:20:(.text.relocate_to_current_adr+0x1c):
>>     relocation truncated to fit: R_AARCH64_ADR_PREL_LO21 against symbol
>>     `_text' defined in .text section in .tmp_barebox1
>>   arch/arm/include/asm/reloc.h:20:(.text.relocate_to_current_adr+0x40):
>>     relocation truncated to fit: R_AARCH64_ADR_PREL_LO21 against symbol
>>     `_text' defined in .text section in .tmp_barebox1
>>
>> [...]
> 
> Applied, thanks!

Thanks for applying. I thought some more about whether we should instead
have:

#ifdef __PBL__
        "adr    %0, _text\n"
#else
        /* (Decompressed) barebox proper should always be 4K aligned
         * so adrp here should be fine. PBL may also have adrp
         * references
         */
        "adrp   %0, _text\n"
        "add    %0, %0, :lo12:_text\n"
#endif

Otherwise, we require PBL to be placed 4K-aligned. Looking at GCC 13.2.1
output for an i.MX8M board, there are quite a lot of adrp references already,
so I think this shouldn't break anything that's not broken already anyway.

Just writing my thoughts for future reference.

Cheers,
Ahmad

> 
> [1/1] ARM64: reloc: fix relocation error for big fat bareboxes
>       https://git.pengutronix.de/cgit/barebox/commit/?id=9246c916a25a (link may not be stable)
> 
> Best regards,

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



