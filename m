Delivery-date: Mon, 20 Jun 2022 14:39:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3Gh8-00855n-KZ
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 14:39:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3Gh8-0000DE-EV
	for lore@pengutronix.de; Mon, 20 Jun 2022 14:39:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Osd42njWCfuxnCduKTFZ5K2GYgow90Z+nozeQQnyf74=; b=CD4BULSS+U2uLH6b+L704Q/ugc
	iFqZvXJ8fuHb1hHyWwpvvl007L4F8rV8UcZxHk+CNjI3VpAabax7jTmHkGcFP+VIQBxekzIjgvTKo
	EFWe/diTpOxKP/H42ZwZGMZSYmpHc1mQeGVx9huJe3tHW4qaj2d/FvOQ/CQWkj1KNuis67q8de77W
	p/be/CDyMCr7oAUS/5Jm6/58YCo4xpmvNWFaOBKv7LTyEzIGciUuRINJ3gEzJ/MijpKs0pjvaA52F
	ZRoXSXe2r+JADbVGwSvj61rt6wvPchNPaoRIoOkd4MT2zrDxTEzZb0jy98KW4SUtJcVzOKQ6QS1sM
	uvwKactQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Gfn-000U03-FT; Mon, 20 Jun 2022 12:38:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3GfZ-000Twh-74
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 12:38:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o3GfX-0008Vt-Mz; Mon, 20 Jun 2022 14:38:15 +0200
Message-ID: <4dbe99f8-0ae7-b24e-9596-2abdce6152f4@pengutronix.de>
Date: Mon, 20 Jun 2022 14:38:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Teresa Remmet <T.Remmet@phytec.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 "lst@pengutronix.de" <lst@pengutronix.de>
Cc: "upstream@phytec.de" <upstream@phytec.de>
References: <20220520142337.993417-1-t.remmet@phytec.de>
 <134ee58e-b58e-4551-d834-c4d115f91d99@pengutronix.de>
 <b0780095924d7a9801a6fc3165563f247a8fc2b8.camel@phytec.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <b0780095924d7a9801a6fc3165563f247a8fc2b8.camel@phytec.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_053817_307579_572318C7 
X-CRM114-Status: GOOD (  27.02  )
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

Hello Teresa,

On 20.06.22 14:27, Teresa Remmet wrote:
> Hello Ahmad,
> 
> Am Montag, dem 20.06.2022 um 14:02 +0200 schrieb Ahmad Fatoum:
>> Hello,
>>
>> On 20.05.22 16:23, Teresa Remmet wrote:
>>> As DDRC_ADDRMAP7_ROW_B16 and DDRC_ADDRMAP7_ROW_B17 are used
>>> now for the row size calculation we need to increase row_max to 18.
>>>
>>> For LPDDR4 this only works in combination with ram timings
>>> created with recent configuration spreadsheet versions.
>>> With older versions the register DDRC_ADDRMAP7 may not be set and
>>> calculation will lead to wrong results even with this patch.
>>>
>>> Fixes: dad2b5636bd8 ("ARM: imx: Add imx8 support for 18 bit SDRAM
>>> row size handle")
>>> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
>>
>> I have an out-of-tree i.MX8MM board with LPDDR4 that reported a
>> correct size of 1G
>> prior to this patch and now it reports 4G. DDRC_ADDRMAP7 is not
>> explicitly initialized,
>> but it's being read as zero, so the calculation seems to still be
>> broken..
> 
> yes, this is why I added the note to the commit message. The RAM
> timings of the board you are using have been created with a old version
> of the spreadsheet ( < version 19 for i.MX8MM).
> This issue is worked around when this patch is reverted as
> DDRC_ADDRMAP7 is not taken into account. But calculating big ram sizes
> will probably not work then.
> 
> I have set the DDRC_ADDRMAP7 register manually in the RAM configuration
> in such a case. As I don't see a solution that fits for all. But would
> be happy for one. :)

What would the 'neutral' value to write into this register be? zero
seems to not be it.

Thanks,
Ahmad

> 
> Regards,
> Teresa
> 
>>
>>> ---
>>>  arch/arm/mach-imx/esdctl.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-
>>> imx/esdctl.c
>>> index 8dd0ddbbc965..b070ebc62a45 100644
>>> --- a/arch/arm/mach-imx/esdctl.c
>>> +++ b/arch/arm/mach-imx/esdctl.c
>>> @@ -488,7 +488,7 @@ static resource_size_t
>>> imx8m_ddrc_sdram_size(void __iomem *ddrc)
>>>  
>>>  	return imx_ddrc_sdram_size(ddrc, addrmap,
>>>  				   12, ARRAY_AND_SIZE(col_b),
>>> -				   16, ARRAY_AND_SIZE(row_b),
>>> +				   18, ARRAY_AND_SIZE(row_b),
>>>  				   reduced_adress_space, true);
>>>  }
>>>  
>>
>>


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


