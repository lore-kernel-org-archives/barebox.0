Delivery-date: Thu, 15 Jan 2026 16:25:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgPDc-001dhq-2V
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 16:25:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgPDb-0003vO-O6
	for lore@pengutronix.de; Thu, 15 Jan 2026 16:25:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XwiGtnhOT7vdmhw3AN+ApIe7/ihPnFBQ3NfnPI9eSu4=; b=UswOCkjFwOiYAS
	6NOSHMjSG+gBN3s3naAM1P7xYj23KjEbkfmIS0+pdYVY2WBlEatX24HKJ68YqkPc089OK14EILovy
	Uw+OgOAtvehe1tiStiEKV+5/ZozL1QZ8yB7v1eb/Ka8x/iOEN9nAH5VLs/jEPozONq4Y+Oqe5EkCW
	nRJjf2NwLFFMGMWMeV+paNpfxPp8bSW1efOxvM7xbnLc13B0Dg0HLMVhV/pqcinfq5tYGTQKGWa21
	RF7GITG8WVFhU9KuqUQ9/ye5yNwsXd0Cea+ySTiEKAJS1s229NxbI7w8Xq7cXC9FL8VGTLHzXLjLM
	gZ3vdoAWDUrD6hikbtTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgPDF-0000000CabW-1Bym;
	Thu, 15 Jan 2026 15:24:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgPDC-0000000Cab7-35k0
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 15:24:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgPDB-0003fB-6H; Thu, 15 Jan 2026 16:24:37 +0100
Message-ID: <058c0e31-2308-4ec3-aea5-bdbd07732317@pengutronix.de>
Date: Thu, 15 Jan 2026 16:24:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-20-8f0625ac5471@pengutronix.de>
 <aRrnxjr_iL3mCKZa@pengutronix.de>
 <c0aeacd1-8b11-4f98-ba8a-dd4af0d6e333@pengutronix.de>
 <20260115151953.ufmzak6ax57q37sy@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260115151953.ufmzak6ax57q37sy@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_072438_779442_1A23CD0A 
X-CRM114-Status: GOOD (  21.66  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 20/23] ARM: i.MX8M: Add support to extract OP-TEE provided
 informations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 1/15/26 4:19 PM, Marco Felsch wrote:
> On 26-01-15, Ahmad Fatoum wrote:
>>>> +		pr_warn("Failed to extract OP-TEE FDTO, continue without FDTO\n");
>>>> +		/*
>>>> +		 * Don't BUG() because the system may have compile-time config
>>>> +		 * support
>>>> +		 */
>>>> +		return;
>>>> +	}
>>>> +
>>>> +	handoff_data_add(HANDOFF_DATA_BL32_DT_OVL, fdto_dst, fdto_size);
>>>
>>> The overlay isn't used in barebox itself, but only for the Kernel.
> 
> This is not true. This patchset adds to support to use the overlay
> within barebox too. With the patches Fabian provided, it would eliminate
> the need for i.MX6(ULL) boards to have this strange initcall which
> checks a magic memory location for an overlay to apply it.
> >>>
>>> You Could just pick up the overlay from the i.MX scratch space in
>>> barebox proper and pass it to optee_register_overlay().
>>
>> Agreed. There seems to be no need to do this in the PBL.
> 
> The early barebox code checks for HANDOFF_DATA_BL32_DT_OVL and applies
> the overlay. Do you suggest that I shall extract the data within barebox
> common code rather? I'm not sure if this is even possible.

Isn't this basically what virt_board_driver_init() is doing? Would this
not work for your purposes?

I am generally not a friend of putting logic that can equally well be
located in barebox proper into the PBL. It's slow, it's code duplication
and if we do it, there should be a strong reason why it needs to be in
the PBL. There might very well be a reason here that this needs to be
absolutely done in the PBL (e.g. I can understand fixing up memory size
in PBL, because firmware needs it that early), but I don't yet see it
here for application of the overlay.

Thanks,
Ahmad

> 
> Regards,
>   Marco
> 
>>
>> Thanks,
>> Ahmad
>>
>>>
>>> Sascha
>>>
>>>
>>
>> -- 
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



