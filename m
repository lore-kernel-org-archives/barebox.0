Delivery-date: Mon, 09 Feb 2026 21:59:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpYM2-00AkjI-2P
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 21:59:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpYM1-0002ZC-ML
	for lore@pengutronix.de; Mon, 09 Feb 2026 21:59:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hgSaiqCAtzRUMmH+XKJb0W6ORyF6xLX2magXxi946CI=; b=cUqjoPUHmTXaZW
	Io4QuTNgC/BMJDdQciZOogfqP2FkZlrD1GeX3HX2OCBMVVINe6KvDpfOeGJ+xldBSP4c4udsqC/uN
	Gvn65yBs1/16A2c+duMpqr/WPksgzJGDCgMyHSPRh48RUQ0cVQiB36/kkPF14QKG0MH5+N5XgJwNX
	g7qYiiU48FXSMaakhq9Y+rCEsNRtoO76u6abPPEXMHfC+ByaAt1lw4EQePFxefImY99RfAMZt+BZs
	SeZPobWOLAUrVZmhPPQQgCPGqEyP15bG0cI+ncnXGVXe4Zvi+G0e1gx8iYCLhDciShdqdwQNlOhnt
	5YzswgttjHoP6/H+L4Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpYLb-0000000G0x4-1fHH;
	Mon, 09 Feb 2026 20:59:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpYLY-0000000G0wM-0w8j
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 20:59:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpYLW-0002VU-Iu; Mon, 09 Feb 2026 21:59:02 +0100
Message-ID: <c3be580c-cd46-4cf4-a5ac-f01d171f4769@pengutronix.de>
Date: Mon, 9 Feb 2026 21:59:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
 <20260204-v2025-09-0-topic-optee-of-handling-v2-6-da075e6818e0@pengutronix.de>
 <d6b5bd70-4b23-4650-ac5a-b3a83d092d29@pengutronix.de>
 <20260206100243.dah3jz6r6pzebexe@pengutronix.de>
 <a871ce2a-00e9-46ec-912a-f64cce27b7b9@pengutronix.de>
 <20260209205047.7nite5dc5n2erpa7@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260209205047.7nite5dc5n2erpa7@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_125904_272231_5E458331 
X-CRM114-Status: GOOD (  22.86  )
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
Subject: Re: [PATCH v2 06/15] ARM: i.MX: scratch: add FDT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2/9/26 9:50 PM, Marco Felsch wrote:
> On 26-02-06, Ahmad Fatoum wrote:
>> How about:
>>
>> struct imx_scratch_space {
>>         union {
>>                 u8 __b[CONFIG_SCRATCH_SIZE];
>>                 struct {
>>                         u32 bootrom_log[128];
>>                         u32 reserved[128];
>>                         struct optee_header optee_hdr;
>>                         u8 fdt[] __aligned(8);
> 
> This would require, that the 'fdt' element is always the last element.
> We could add a comment, but it's rather fragile IMHO.

What's fragile about it? Next one after you, will not be able to add a
new member and that's a good thing. They should rework this instead of
piling extra CONFIG variables with board-specific offsets.

> 
>>                 };
>>         };
>> };
>> static_assert(sizeof(struct imx_scratch_space)
>>           - offsetof(struct imx_scratch_space, fdt)
>> 			<= PBL_OPTEE_DTB_MAX_SIZE);
> 
> This would introduce a very strict dependency for CONFIG_SCRATCH_SIZE to
> the not always visible PBL_OPTEE_DTB_MAX_SIZE. As you said:

Wrap the assert in an #ifdef then.

> 
>>>> In that case, this should go to security/Kconfig and be named something
>>>> like PBL_OPTEE_DTB_MAX_SIZE. There's no need to ask every user that
>>>> configures barebox about this.
> 
> Therefore I would like to use your name suggestion
> PBL_OPTEE_DTB_MAX_SIZE but keep it loose like RK does.
> 
>> The benefits I see:
>>   - Just one argument to tune (CONFIG_SCRATCH_SIZE) like we already use
>>     for Rockchip
> 
> Rockchip is using two Kconfig switch too (ARCH_ROCKCHIP_ATF_FDT_SIZE).

Oh, I see. I can send patches to switch this over to
PBL_OPTEE_DTB_MAX_SIZE then.

> 
>>   - We still have a dedicated option that can be kept in-sync with the
>>     exact option value in OP-TEE to find problems at compile-time
>>   - Only those who actually use OP-TEE will be asked about
>>     PBL_OPTEE_DTB_MAX_SIZE
> 
> Good points!
> 
>> Would this work for you?
> 
> Please see above.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
> 
>>
>> Cheers,
>> Ahmad
>>
>>
>>>
>>> Regards,
>>>   Marco
>>>
>>>
>>>>
>>>>
>>>> Cheers,
>>>> Ahmad
>>>>
>>>> -- 
>>>> Pengutronix e.K.                  |                             |
>>>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>>>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>>>
>>>>
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



