Delivery-date: Wed, 20 Dec 2023 17:01:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFz15-006Ubk-1G
	for lore@lore.pengutronix.de;
	Wed, 20 Dec 2023 17:01:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFz14-0005j8-Q9
	for lore@pengutronix.de; Wed, 20 Dec 2023 17:01:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dx4Sd3begYO3/gppsJR+OEeyaJyjoX0dfkTgiYmlXsg=; b=oDegFC/NZjc+6gj/OlfN9xlTST
	HB4x1+1qsGNH8LlJGl3fmpOQktphwuHWwXdq0JaOrxKvlKhKiCNLQdd8vRR5VwyqxnptOlh06weDa
	+MHG97lqadJ/sdsWUfxRUNU7TxTla655XotgRwm25E5oN1hLCCn/xGNW5kP2Cdo4uPAGgaHoIZbg5
	RMW4suL1MPfUj0+fMn8S5Nh3tF6gamtNuxy39ycL2argO1dGNV9xP9Fy8NTgzatcTIgns/Qfc8LCv
	7TR+3NKxF3tqHEhMJTybY86GA6OZz0Y/0OxUWWeNe8hwRy/iDhHWhpCw4DwrxcBZ9xzdMKhjYikr2
	s7D3RdKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFyzj-000LsA-34;
	Wed, 20 Dec 2023 16:00:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFyzU-000LdJ-1p
	for barebox@lists.infradead.org;
	Wed, 20 Dec 2023 16:00:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rFyzQ-0005LO-RG; Wed, 20 Dec 2023 17:00:08 +0100
Message-ID: <29e20238-2331-4384-b92d-1dda0eae1cd1@pengutronix.de>
Date: Wed, 20 Dec 2023 17:00:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20231220145418.88750-1-m.felsch@pengutronix.de>
 <c75d78e0-4033-4c18-b9dc-72ebf5e98c1a@pengutronix.de>
 <20231220154823.pj5jsruygu552qis@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231220154823.pj5jsruygu552qis@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_080012_658724_E03C60DF 
X-CRM114-Status: GOOD (  15.45  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] ARM: boards: polyhex-debix: enable HAB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 20.12.23 16:48, Marco Felsch wrote:
> On 23-12-20, Ahmad Fatoum wrote:
>> Hello Marco,
>>
>> On 20.12.23 15:54, Marco Felsch wrote:
>>> From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
>>>
>>> Include the gencsf header to enable the secure-boot images.
>>>
>>> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
>>
>> Any downside in just doing this for all i.MX8M boards?
> 
> Thought about this too. If HABV4 is not enabled this will have no
> impact. I didn't added the support for all boards since some custom
> boards may don't want this. What about adding it to all EVK boards?

I don't see why some boards wouldn't want this. I say, let's enable
it for all.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>> Thanks,
>> Ahmad
>>
>>> ---
>>>  arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg b/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
>>> index 663bd102e9a2..d619995496ac 100644
>>> --- a/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
>>> +++ b/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
>>> @@ -5,3 +5,4 @@ soc imx8mp
>>>  loadaddr 0x920000
>>>  max_load_size 0x3f000
>>>  ivtofs 0x0
>>> +#include <mach/imx/habv4-imx8-gencsf.h>
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



