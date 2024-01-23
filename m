Delivery-date: Tue, 23 Jan 2024 11:37:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSE9g-00DBDV-0F
	for lore@lore.pengutronix.de;
	Tue, 23 Jan 2024 11:37:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSE9g-0007Hz-Nq
	for lore@pengutronix.de; Tue, 23 Jan 2024 11:37:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=odkpvYRY+Be3WbuKXEijdHRW8FGwjc/yLRqp/2RiU0I=; b=VyyRNO76BTq3LD4EwhiaJqeByt
	5Bg/S/m/6/TOcpxV7jI/NzF1gpmEaUej/dy8mIITCO9S9pAqjM4gSVyQp8pQg6EUzRK1t7qW3Vm2Z
	3xMATb+Lx41/68oX4adNakKXuVqmFRHLI0yEptFnt4bksdOMJQkz3ToWjxmXhozgs8CXvqsM7qEAE
	6dXLDkp6lq05D55IIwJW3ZquKAsR4MjxO5CfefVfmIJ1XIYohBdOgnmij86Af7JD2HGnsTJEZVshL
	GKRjAnT1bqzbYWP5vVq4MB08HT4Izx2GB+OsIW0gBF9ZigKXttSeOAxzw6pI4aqZQeME9deL/xnoV
	gfedFTHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSE8S-00Fxwc-0s;
	Tue, 23 Jan 2024 10:36:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSE8O-00FxtI-19
	for barebox@lists.infradead.org;
	Tue, 23 Jan 2024 10:36:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rSE8M-0007Ai-B8; Tue, 23 Jan 2024 11:35:58 +0100
Message-ID: <e36eda7e-29fc-4e92-be4e-f8c58ec286e6@pengutronix.de>
Date: Tue, 23 Jan 2024 11:35:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240122141331.3438235-1-a.fatoum@pengutronix.de>
 <20240123100431.njlq2kcobkgumvyh@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240123100431.njlq2kcobkgumvyh@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_023600_392095_9D3E864D 
X-CRM114-Status: GOOD (  19.42  )
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
Subject: Re: [PATCH] ddr: imx8m: add missing DDR clock rates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23.01.24 11:04, Marco Felsch wrote:
> On 24-01-22, Ahmad Fatoum wrote:
>> ddrphy_init_set_dfi_clk() is called to translate a scalar clock rate
>> as specified by board code into PLL parameters, which are configured.
>>
>> enum ddr_rate describes the possible DDR rates and so far
>> ddrphy_init_set_dfi_clk() supported all of them, except for 2600 and
>> 2376 MHz, rendering these two rates unusable.
>>
>> Fix this by adding support for them into ddrphy_init_set_dfi_clk.
> 
> Do we need to support this in TF-A as well for dvfs?

I don't know. I am not familiar with what needs to be done in TF-A
to support DVFS for these frequencies. Do you know?

> 
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> The barebox change itself lgtm, therefore:
> 
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> 
>> ---
>>  drivers/ddr/imx/imx8m_ddr_init.c | 6 ++++--
>>  1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/ddr/imx/imx8m_ddr_init.c b/drivers/ddr/imx/imx8m_ddr_init.c
>> index 8b829645c063..d9a5d589f27b 100644
>> --- a/drivers/ddr/imx/imx8m_ddr_init.c
>> +++ b/drivers/ddr/imx/imx8m_ddr_init.c
>> @@ -219,9 +219,9 @@ enum ddr_rate {
>>  	DDR_3720,
>>  	DDR_3200,
>>  	DDR_3000,
>> -	DDR_2600, /* Unused */
>> +	DDR_2600,
>>  	DDR_2400,
>> -	DDR_2376, /* Unused */
>> +	DDR_2376,
>>  	DDR_1600,
>>  	DDR_1000, /* Unused */
>>  	DDR_1066,
>> @@ -450,7 +450,9 @@ static void ddrphy_init_set_dfi_clk(struct dram_controller *dram, unsigned int d
>>  	case 3720: drate = DDR_3720; break;
>>  	case 3200: drate = DDR_3200; break;
>>  	case 3000: drate = DDR_3000; break;
>> +	case 2600: drate = DDR_2600; break;
>>  	case 2400: drate = DDR_2400; break;
>> +	case 2376: drate = DDR_2376; break;
>>  	case 1600: drate = DDR_1600; break;
>>  	case 1066: drate = DDR_1066; break;
>>  	case 667: drate = DDR_667; break;
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



