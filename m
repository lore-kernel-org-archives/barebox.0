Delivery-date: Mon, 01 Nov 2021 11:27:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhUX4-00013B-07
	for lore@lore.pengutronix.de; Mon, 01 Nov 2021 11:27:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhUX2-0007v3-JO
	for lore@pengutronix.de; Mon, 01 Nov 2021 11:27:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Y9BeM9XAF8VUzf23W/1icoufVVvsUE5nUGCQcpQwBw4=; b=xu8tByHmU99ozRrgYhXNyYWRou
	bz3DO0xhrRgMvfsnGsLx48Lm20KRcdWfYxUA0IuPs5ipmuwIaONrjnZAa9ug2UAyVJVdk8TL18VEJ
	fAe99wuxfyJsB6X43iEa7h3p+qGIOs3DCGc20dWRZ4z7TYKErBXsD9WKheSo0wOuiydhib4Yu9zP8
	y29PrsFJ6oMXFZ/kG1To+fU9lKgkzzV/Y6Zu+1WBCf8Qr0wBuO1nmASipM9q8fJymi6oiBMkdTiDR
	NMup3RirslS2lb1BWGU7gjMRYt99SRzOActwksYQQOY+u/u3deQZI463GiIsldXeqNVI0jpQ+heob
	mpgu9bHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhUVf-00Fw7W-Lv; Mon, 01 Nov 2021 10:25:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhUVZ-00Fw6T-SG
 for barebox@lists.infradead.org; Mon, 01 Nov 2021 10:25:44 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mhUVW-0007b1-8Z; Mon, 01 Nov 2021 11:25:38 +0100
To: Joacim Zetterling <joaze@westermo.com>
Cc: barebox@lists.infradead.org
References: <20211029110600.GA310644@wsevst-c0022>
 <47f1aab9-0594-f35c-f6d3-95a799b65b14@pengutronix.de>
 <20211101100757.GA40552@wsevst-c0022>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <fabd1962-7981-47c2-6ff9-14f6e47096c6@pengutronix.de>
Date: Mon, 1 Nov 2021 11:25:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211101100757.GA40552@wsevst-c0022>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_032542_140785_A1F3ED42 
X-CRM114-Status: GOOD (  39.52  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: imx: Fix problem with imx_ddrc_sdram_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Joacim,

On 01.11.21 11:07, Joacim Zetterling wrote:
> On Sat, Oct 30, 2021 at 03:45:57PM +0200, Ahmad Fatoum wrote:
>> On 29.10.21 13:06, Joacim Zetterling wrote:
>>> The imx8mn has a 16-bit SDRAM bus width access but the calculation
>>> of the memory size treat it as a 32-bit width bus which makes the
>>> memory calculation to be wrong (meminfo wrong and memtest fails).
>>>
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
>>> The imx8 supports a bus width of 4 bits or x4 (device_config b00).
>>> This is a problem for the calculation of the mem size when it only
>>> handle the bus width in bytes. Therefore we must treat the mem size
>>> calculation for the half bus width (width = 0) in a special way.
>>> Do the calculation with one byte width and then divide the mem size
>>> by 2 later on.
>>>
>>> Tested on the IMX8MN Evk with 2GB DDR4 and on a IMX8MN custom board
>>> with 2GB LPDDR4, checked size and made memory test. Both platforms
>>> has a mstr_device_config of b10 and the mstr_bus_width of b00.
>>>
>>> Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
>>
>> I agree that the computation for the nano is wrong. I have myself
>> a board with 1GB LPDDR4 here and with this patch now, it yields
>> a correct result.
>>
>> I checked against other boards we have in tree:
>>
>> arch/arm/boards/zii-imx8mq-dev/ddr_init.c
>> 45:	reg32_write(0x3d400000,0xa3080020);
>>
>> arch/arm/boards/nxp-imx8mn-evk/ddr4-timing.c
>> 15:	{ 0x3d400000, 0x81040010 },
>>
>> arch/arm/boards/nxp-imx8mn-evk/lpddr4-timing.c
>> 19:	{0x3d400000, 0xa3080020},
>>
>> arch/arm/boards/protonic-imx8m/lpddr4-timing-prt8mm.c
>> 16:	{ DDRC_MSTR(0),	0xa1080020 },
>>
>> arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c
>> 14:	{ 0x3d400000, 0xa3080020 },
>>
>> arch/arm/boards/nxp-imx8mq-evk/ddr_init.c
>> 45:	reg32_write(0x3d400000,0xa3080020);
>>
>> arch/arm/boards/phytec-som-imx8mq/ddr_init.c
>> 45:	reg32_write(0x3d400000,0xa1080020);
>>
>> arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c
>> 16:	{ DDRC_MSTR(0),	0xa1080020 },
>>
>> arch/arm/boards/mnt-reform/lpddr4-timing.c
>> 15:	{ DDRC_MSTR(0), 0xa0080020 | (LPDDR4_CS << 24) },
>>
>> And all of them have a width of x16. I find it hard to believe that all
>> of these boards have so far detected double the actual RAM.
>>
>> I am wondering if there is another parameter we are missing here.
>>
>> Cheers,
>> Ahmad
>>
> 
> You are rigth!
> 
> I started to dig into the imx8mn evk DDR4 board and found some things.
> 
> The imx8mn DDR4 board has an other mem layout than rest of the boards
> compared agains my custom boaard or the LPDDR4 board, I see this.
> 
> From the datasheets:
> 
>            DDR4   LPDDR4
> Banks       4       8
> Bank grps   2       1
> Rows        17      15
> Col         10      10
> 
> Therefore we need to add two things:
> 
> 1. We need the DDRC_ADDRMAP7_ROW_B16 and DDRC_ADDRMAP7_ROW_B17 support
>    to support the DDR4 number of rows.
> 
> 2. We need two add the DDRC_ADDRMAP8 and do a check for DDRC_ADDRMAP8_BG_B0
>    DDRC_ADDRMAP8_BG_B1 to get the number of bank groups in the mem chip.
> i.e.
> 	...
> #define DDRC_ADDRMAP8_BG_B1			GENMASK(13,  8)
> #define DDRC_ADDRMAP8_BG_B0			GENMASK( 4,  0)
>         ...
> 	...
> 	if (addrmap[8]) {
> 		if (FIELD_GET(DDRC_ADDRMAP8_BG_B0, addrmap[8]) != 0b11111)
> 			banks++;
> 		if (FIELD_GET(DDRC_ADDRMAP8_BG_B1, addrmap[8]) != 0b111111)
> 			banks++;
> 	}
> 	...
> 	...
> 
> I verified this against our custom board (512MB) and the imx8 DDR4 evk board (2GiB)
> and seems ok. I also checked the values of the other boards in the repo
> and I think this will apply to them as well.

Great!

> What do You think! shall I make a v3 of this patch with the above changes?

Yes, please.

Cheers,
Ahmad

> 
> Cheers,
> Joacim
> 
>>> ---
>>>  arch/arm/mach-imx/esdctl.c | 30 ++++++++++++++++++++++--------
>>>  1 file changed, 22 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
>>> index e56da3cb76d4..1d76f26dfa39 100644
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
>>> +	/* Bus width in bytes, 0 means half byte or 4-bit mode */
>>> +	if (is_imx8)
>>> +		width = (1 << FIELD_GET(DDRC_MSTR_DEVICE_CONFIG, mstr)) >> 1;
>>> +	else
>>> +		width = 4;
>>> +
>>>  	switch (FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr)) {
>>>  	case 0b00:	/* Full DQ bus  */
>>> -		width = 4;
>>>  		break;
>>> -	case 0b01:      /* Half DQ bus  */
>>> -		width = 2;
>>> +	case 0b01:	/* Half DQ bus  */
>>> +		width >>= 1;
>>>  		break;
>>>  	case 0b10:	/* Quarter DQ bus  */
>>> -		width = 1;
>>> +		width >>= 2;
>>>  		break;
>>>  	default:
>>>  		BUG();
>>> @@ -412,7 +418,15 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
>>>  	columns = imx_ddrc_count_bits(col_max, col_b, col_b_num);
>>>  	rows    = imx_ddrc_count_bits(row_max, row_b, row_b_num);
>>>  
>>> -	size = memory_sdram_size(columns, rows, 1 << banks, width) << ranks;
>>> +	/*
>>> +	 * Special case when bus width is 0 or x4 mode,
>>> +	 * calculate the mem size and then divide the size by 2.
>>> +	 */
>>> +	if (width)
>>> +		size = memory_sdram_size(columns, rows, 1 << banks, width);
>>> +	else
>>> +		size = memory_sdram_size(columns, rows, 1 << banks, 1) >> 1;
>>> +	size <<= ranks;
>>>  
>>>  	return reduced_adress_space ? size * 3 / 4 : size;
>>>  }
>>> @@ -466,7 +480,7 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
>>>  	return imx_ddrc_sdram_size(ddrc, addrmap,
>>>  				   12, ARRAY_AND_SIZE(col_b),
>>>  				   16, ARRAY_AND_SIZE(row_b),
>>> -				   reduced_adress_space);
>>> +				   reduced_adress_space, true);
>>>  }
>>>  
>>>  static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
>>> @@ -508,7 +522,7 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
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
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | https://urldefense.com/v3/__http://www.pengutronix.de/__;!!I9LPvj3b!S3iOaFKhB9cEFWi6RANaZPNtXi4DwFoFtNmrEOpNT8BaPsH4hfSSr4ppbB93VGU$   |
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

