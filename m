Delivery-date: Tue, 24 Jun 2025 21:55:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU9jk-00AhP6-0h
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 21:55:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU9jj-0005xC-Ek
	for lore@pengutronix.de; Tue, 24 Jun 2025 21:55:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z6YN/hX0q/Cakw95Xfodunpo5q5E3YtT47bpNYhVomY=; b=cANnf/c1YFCl/FLW/g+dZzrwDH
	rKWswyasRoRM+W4HcxQFpnQ7HaDfOjn7T5zC0t4gok6a4cmyutgrOo1BLAttOaAfCz2h8glJHWW1U
	QGvhnwCDkBYURlQLvqjsyyC6EYp1onQ6FQTErn/FllFXiMALGUvovimPmYl7MAPP1dIAiswWKN+OI
	DB3A9oZKACXQSON0E6XWeb89dmvNshbhjpbvO/lP3nzVO3xE5OSNYLoyII7GIB0o8mP8bMaUg4GJv
	0oKll/l0oLgmYTb748XLGUmeSmyZjMhsFtGWUUHKnQBnn9tbGRi5OGKdTn5eQf2RrLml9QzQI6Pao
	QPfXC+Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU9j0-00000006fBz-3NYh;
	Tue, 24 Jun 2025 19:54:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU5ow-00000006ANa-29rw
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 15:44:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uU5ov-0000ym-7g; Tue, 24 Jun 2025 17:44:25 +0200
Message-ID: <b3933e45-6ab6-4437-86a1-af1ace18cd2b@pengutronix.de>
Date: Tue, 24 Jun 2025 17:44:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250619152556.3749995-1-m.felsch@pengutronix.de>
 <20250619152556.3749995-4-m.felsch@pengutronix.de>
 <7987c09e-d236-455e-b17d-efaa5e1ea791@pengutronix.de>
 <20250624105534.kmewkn5etl2rhh5a@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250624105534.kmewkn5etl2rhh5a@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_084426_555169_9A4D48E7 
X-CRM114-Status: GOOD (  19.10  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] ARM: mach-imx: tzasc: add
 imx6q_tzc380_early_ns_region1()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/24/25 12:55, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 25-06-24, Ahmad Fatoum wrote:
>> Hello Marco,
>>
>> On 6/19/25 17:25, Marco Felsch wrote:
>>> +void imx6q_tzc380_early_ns_region1(void)
>>> +{
>>> +	resource_size_t ram_sz = imx6_get_mmdc_sdram_size();
>>> +
>>> +	imx_tzc380_init_and_setup(IOMEM(MX6_TZASC1_BASE), 1,
>>> +				  MX6_MMDC_PORT01_BASE_ADDR, ram_sz,
>>> +				  TZC380_REGION_SP_NS_RW);
>>> +	imx_tzc380_init_and_setup(IOMEM(MX6_TZASC2_BASE), 1,
>>> +				  MX6_MMDC_PORT01_BASE_ADDR, ram_sz,
>>> +				  TZC380_REGION_SP_NS_RW);
>>
>> What's the point of having two TZASC's if you configure them the exact
>> same way..?
> 
> The i.MX6QDL do have two MMDCs. Depending on the system/board-design the
> controllers support interleaved access. I'm not that deep into that
> topic but I think this was mostly used by LPDDR2 setups. For DDR3 setups
> only one MMDC can be used.

Mhm, it still looks strange to configure the same into both instead of
the actual physical address space mappings they have, but given that the
physical address is used to route the transfer in the first place, I
guess it doesn't matter and the way it's written now is simpler.

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>>> +}
>>> +
>>>  void imx8m_tzc380_init(void)
>>>  {
>>>  	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
>>> diff --git a/include/mach/imx/tzasc.h b/include/mach/imx/tzasc.h
>>> index 51c86f168ee4..4d3f26fc82f1 100644
>>> --- a/include/mach/imx/tzasc.h
>>> +++ b/include/mach/imx/tzasc.h
>>> @@ -6,6 +6,7 @@
>>>  #include <linux/types.h>
>>>  #include <asm/system.h>
>>>  
>>> +void imx6q_tzc380_early_ns_region1(void);
>>>  void imx8m_tzc380_init(void);
>>>  bool imx8m_tzc380_is_enabled(void);
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



