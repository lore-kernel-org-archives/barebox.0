Delivery-date: Fri, 29 Oct 2021 14:17:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgQox-0006fP-Tk
	for lore@lore.pengutronix.de; Fri, 29 Oct 2021 14:17:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgQow-0001mF-M9
	for lore@pengutronix.de; Fri, 29 Oct 2021 14:17:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BxggWeBGTrJyccU7jvnYvH899dIRHMVtotNHsuR1Dn0=; b=NeEfBKIb3KwxJG+4NgTa26KjYd
	a7DqCGB1QD/WTpWZXWdN1ldrj6Rv4poXO41BRB+wpRc995RPRq3E4JvZ/SChJJxGeemBLEHdL4HC0
	ACx2L816kDiYOGBh86qwouFF8n1FD6AWo7N31ee6kdywPbijNo2SFS4tKSu4OjlSSgwdDLyMPekap
	zU07yCCdNrxLWllZMobc3+8Lio5hdYkmOXN3+oAyuJX4NYSalD1+S8UnA/aD+rvLnyiYRAPNaL5MC
	vkswaNcv48kG4BtoM028/ICJysSIjQCWbTbanWDDQRI2qZ4zphdwF/ylBWrI/i0AxDMjyvSZBstdQ
	nTxe0FPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgQnL-00AtT7-8r; Fri, 29 Oct 2021 12:15:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgQnG-00AtSW-AM
 for barebox@lists.infradead.org; Fri, 29 Oct 2021 12:15:36 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mgQnC-0001QN-HB; Fri, 29 Oct 2021 14:15:30 +0200
To: Joacim Zetterling <joaze@westermo.com>, barebox@lists.infradead.org
References: <20211028084655.GA252698@wsevst-c0022>
 <7eda470f-1d70-3893-62e0-42eed28f0a55@pengutronix.de>
 <20211028130607.GA275094@wsevst-c0022>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <9d107209-1cd5-4e74-1ed0-6ae50da0abea@pengutronix.de>
Date: Fri, 29 Oct 2021 14:15:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211028130607.GA275094@wsevst-c0022>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211029_051534_399353_E11C5C76 
X-CRM114-Status: GOOD (  33.62  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: imx: Fix problem with imx_ddrc_sdram_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 28.10.21 15:06, Joacim Zetterling wrote:
> On Thu, Oct 28, 2021 at 02:19:18PM +0200, Ahmad Fatoum wrote:
>> Hello Joacim,
>>
>> On 28.10.21 10:46, Joacim Zetterling wrote:
>>> The imx8mn has a 16-bit SDRAM bus width access but the calculation
>>> of the memory size treat it as a 32-bit width bus which makes the
>>> memory calculation to be wrong (meminfo wrong and memtest fails).
>>
>> I missed this because of the /memory node in the device tree filling
>> up the remainder. I removed /memory and tried your patch on an
>> i.MX8MN DDR EVK, but it doesn't change iomem output:
>>
>>   0x0000000040000000 - 0x000000007fffffff (size 0x0000000040000000) ram0
>>
>> The 8MN DDR4 EVK reports FIELD_GET(DDRC_MSTR_DEVICE_CONFIG, mstr) == 0b10
>> and FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr) == 0b00.
>>
>>> There is a difference between the imx7 and the imx8 familys.
>>> The imx8 family has a device config field in the master register of
>>> the DDRC controller which the imx7 family doesn't have (the bus width
>>> is 32-bit as default).
>>>
>>> The device config field together with the DQ configuration tells us
>>> the actual bus width of the device for a correct mem size calculaton.
>>>
>>> From the imx8mn reference manual:
>>> +----------------------------------------------------+
>>> |    Field      |     Function                       |
>>> |----------------------------------------------------|
>>> |    31-30      | Indicates the configuration of the |
>>> |               | device used in the system.         |
>>> | device_config |     00b - x4 device                |
>>> |               |     01b - x8 device                |
>>> |               |     10b - x16 device               |
>>> |               |     11b - x32 device               |
>>> +----------------------------------------------------+
>>> ...
>>> ...
>>>
>>> Tested on the IMX8MN Evk with 2GB DDR4 and on a IMX8MN custom board
>>> with 2GB LPDDR4, checked size and made memory test.
>>
>> What's the device_config for each?
> The device_config for both platforms are b10
> 
>>
>>> Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
>>> ---
>>>  arch/arm/mach-imx/esdctl.c | 16 +++++++++++-----
>>>  1 file changed, 11 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
>>> index e56da3cb76d4..f80d94f2fca0 100644
>>> --- a/arch/arm/mach-imx/esdctl.c
>>> +++ b/arch/arm/mach-imx/esdctl.c
>>> @@ -320,6 +320,7 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
>>>  #define DDRC_MSTR_LPDDR4			BIT(5)
>>>  #define DDRC_MSTR_DATA_BUS_WIDTH		GENMASK(13, 12)
>>>  #define DDRC_MSTR_ACTIVE_RANKS			GENMASK(27, 24)
>>> +#define DDRC_MSTR_DEVICE_CONFIG		GENMASK(31, 30)
>>>  
>>>  #define DDRC_ADDRMAP0_CS_BIT1			GENMASK(12,  8)
>>>  
>>> @@ -361,7 +362,7 @@ static resource_size_t
>>>  imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
>>>  		    u8 col_max, const u8 col_b[], unsigned int col_b_num,
>>>  		    u8 row_max, const u8 row_b[], unsigned int row_b_num,
>>> -		    bool reduced_adress_space)
>>> +		    bool reduced_adress_space, bool is_imx8)
>>>  {
>>>  	const u32 mstr = readl(ddrc + DDRC_MSTR);
>>>  	unsigned int banks, ranks, columns, rows, active_ranks, width;
>>> @@ -384,15 +385,20 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
>>>  		BUG();
>>>  	}
>>>  
>>> +	if (is_imx8)
>>> +		width = (1 << FIELD_GET(DDRC_MSTR_DEVICE_CONFIG, mstr)) >> 1;
>>
>> for device_config == 0, size should be halved, but instead you would get a
>> width of zero here.
> Good catch! Need to treat bus width 4 in a special way when calculating
> the memory size. i.e.
> 
> 	if (width)
> 		size = memory_sdram_size(columns, rows, 1 << banks, width);
> 	else
> 		size = memory_sdram_size(columns, rows, 1 << banks, 1) >> 1;
> 	size <<= ranks;
> 
>>
>>> +	else
>>> +		width = 4;
>>> +
>>>  	switch (FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr)) {
>>>  	case 0b00:	/* Full DQ bus  */
>>>  		width = 4;
>>
>> I can't really follow. Shouldn't this be dropped to take the
>> value of width above?
> My bad! Should have been removed earlier.

Now I wonder, how could v1 of this patch have worked for you?
You should've had double the really existing RAM or am I missing something?

> 
> 	switch (FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr)) {
> 	case 0b00:	/* Full DQ bus  */
> 		break;
> 	case 0b01:	/* Half DQ bus  */
>         ...
> 	...
>>
>>>  		break;
>>>  	case 0b01:      /* Half DQ bus  */
>>> -		width = 2;
>>> +		width >>= 1;
>>>  		break;
>>>  	case 0b10:	/* Quarter DQ bus  */
>>> -		width = 1;
>>> +		width >>= 2;
>>>  		break;
>>>  	default:
>>>  		BUG();
>>> @@ -466,7 +472,7 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
>>>  	return imx_ddrc_sdram_size(ddrc, addrmap,
>>>  				   12, ARRAY_AND_SIZE(col_b),
>>>  				   16, ARRAY_AND_SIZE(row_b),
>>> -				   reduced_adress_space);
>>> +				   reduced_adress_space, true);
>>>  }
>>>  
>>>  static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
>>> @@ -508,7 +514,7 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
>>>  	return imx_ddrc_sdram_size(ddrc, addrmap,
>>>  				   11, ARRAY_AND_SIZE(col_b),
>>>  				   15, ARRAY_AND_SIZE(row_b),
>>> -				   reduced_adress_space);
>>> +				   reduced_adress_space, false);
>>>  }
>>>  
>>>  static int imx7d_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
>>>
>>
>>
> I'll send a new patch version.
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | https://urldefense.com/v3/__http://www.pengutronix.de/__;!!I9LPvj3b!UEEry3YzdrJRIMGgQgDd_crPHhM_0abIlHJq7-FIV6hTs9m7uhtHdAcHsA99yIw$   |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

