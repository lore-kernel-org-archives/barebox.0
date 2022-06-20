Delivery-date: Mon, 20 Jun 2022 15:30:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3HTk-0087S0-TF
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 15:30:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3HTj-00087q-PN
	for lore@pengutronix.de; Mon, 20 Jun 2022 15:30:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rD1zusrmCHkHIHADljqpT9KFo6MNxHOTKr6ev89LX9k=; b=K3zz5J5dQTclT5CKSyFhI9XEzh
	DOkXx4k/YC47mvjJwkPjZ6vQPh8Erl1OC3PbtR9ruHj6OYSLilLoX54G46T6qXtQ8KEWd0Y6Vwnip
	10zTRZy9iVNGTmRXtUqkeEi41gajUrG/Qzp9U2rg+SFylT0dCg15UUYJhQT0h6C92fC1pOIWhKQu8
	iuyN9EzN2arOMtW988RomTp2qvJusNI9FYP3sr4p8/y2WspPlTjhSuyafVeL7Pkz9EmRPvMx9RkdS
	R1CUpQUWU81xa6uZJgN9U/zbdf2hZjdz5ll74nxGCLDQ4FupBHIck3+7eUiT9bZbRw/wM7iFZZbCj
	jf5JtOdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3HS9-000qO8-2i; Mon, 20 Jun 2022 13:28:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3HJe-000m9X-TH
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 13:19:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o3HJc-0006bX-M5; Mon, 20 Jun 2022 15:19:40 +0200
Message-ID: <e8dfb72b-3a12-eef5-13ff-894f60a90159@pengutronix.de>
Date: Mon, 20 Jun 2022 15:19:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Teresa Remmet <T.Remmet@phytec.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 "lst@pengutronix.de" <lst@pengutronix.de>
Cc: "upstream@phytec.de" <upstream@phytec.de>,
 Joacim Zetterling <joacim.zetterling@westermo.com>
References: <20220520142337.993417-1-t.remmet@phytec.de>
 <134ee58e-b58e-4551-d834-c4d115f91d99@pengutronix.de>
 <b0780095924d7a9801a6fc3165563f247a8fc2b8.camel@phytec.de>
 <4dbe99f8-0ae7-b24e-9596-2abdce6152f4@pengutronix.de>
 <8f346a89044203c38012861a3aa3cf7c63499c96.camel@phytec.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <8f346a89044203c38012861a3aa3cf7c63499c96.camel@phytec.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_061943_036187_AD29CEC9 
X-CRM114-Status: GOOD (  20.06  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] arm: imx: mmdc_size: Increase row_max for imx8m
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 20.06.22 14:47, Teresa Remmet wrote:
> Am Montag, dem 20.06.2022 um 14:38 +0200 schrieb Ahmad Fatoum:
>> On 20.06.22 14:27, Teresa Remmet wrote:
>>> I have set the DDRC_ADDRMAP7 register manually in the RAM
>>> configuration
>>> in such a case. As I don't see a solution that fits for all. But
>>> would
>>> be happy for one. :)
>>
>> What would the 'neutral' value to write into this register be? zero
>> seems to not be it.
> 
> it's 
> 
> 0xf0f for ADDRMAP7.
> 
> Reference Manual says: "If set to 15, row address bit X is set to 0"

Do newer spreadsheets always generate ADDRMAP7 writes even if the
value is zero? If so, we could perhaps initialize it to 0xf0f before
running ddr_cfg_umctl2(). The DDRC seems to be in reset while the
registers are being written, so this might just work.

As 0 is a valid value, I am wondering if this snippet introduced with
42d45ef380c5 ("ARM: imx: Add imx8 support for SDRAM with two or more bank groups")
is correct:

if (addrmap[8]) {
        if (FIELD_GET(DDRC_ADDRMAP8_BG_B0, addrmap[8]) != 0b11111)
                banks++;
        if (FIELD_GET(DDRC_ADDRMAP8_BG_B1, addrmap[8]) != 0b111111)
                banks++;
}

Thanks,
Ahmad

> 
> Regards,
> Teresa
> 
> 
>>
>> Thanks,
>> Ahmad
>>
>>> Regards,
>>> Teresa
>>>
>>>>> ---
>>>>>  arch/arm/mach-imx/esdctl.c | 2 +-
>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-
>>>>> imx/esdctl.c
>>>>> index 8dd0ddbbc965..b070ebc62a45 100644
>>>>> --- a/arch/arm/mach-imx/esdctl.c
>>>>> +++ b/arch/arm/mach-imx/esdctl.c
>>>>> @@ -488,7 +488,7 @@ static resource_size_t
>>>>> imx8m_ddrc_sdram_size(void __iomem *ddrc)
>>>>>  
>>>>>  	return imx_ddrc_sdram_size(ddrc, addrmap,
>>>>>  				   12, ARRAY_AND_SIZE(col_b),
>>>>> -				   16, ARRAY_AND_SIZE(row_b),
>>>>> +				   18, ARRAY_AND_SIZE(row_b),
>>>>>  				   reduced_adress_space, true);
>>>>>  }
>>>>>  
>>
>>


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


