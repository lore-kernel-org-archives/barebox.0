Delivery-date: Thu, 23 Jun 2022 13:16:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4KpE-00Bt9B-FU
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 13:16:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4KpE-0002lh-4C
	for lore@pengutronix.de; Thu, 23 Jun 2022 13:16:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1cI/5BFIXOSkyLYNiJW8yRep01WT7LDDfJk0PRj0l9U=; b=PU5QvDzvwZHWPsahcD3Mx4hjQp
	cdFoy+pY/GKZi9WonQb7GbFiDNPnvTmcl8mYBTsWvNUhI/2myqu4Q5SUPV+AJQ30dJUscYtX6Q+mW
	X3M0xCuMTyedA6tP6liTW5HHutLmBQcONddcuCZA2II2NAN1wZqUlo0UfgLWDKpWYQmbmbAHajjWo
	6WqA5vGYgu2vBbkbquAFlBQvDdRzfvcFA9yeXcnxZl7NX2Uq3/PxyfbcDhRDpdbRlP0fZB7AqVvmR
	6e6xaeTiMlF/z3gkXDk5xS0pTLY92mfhDfpDwAWhtMq0ltxxBVWRzimXeYKvzqqupuXdhbeJ2GM73
	a8MrkK1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Knl-00Eg4n-OD; Thu, 23 Jun 2022 11:15:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Knh-00Eg39-72
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 11:15:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o4Knf-0002S6-9a; Thu, 23 Jun 2022 13:15:03 +0200
Message-ID: <6a5b1c31-5c83-b5e9-1912-669121092c62@pengutronix.de>
Date: Thu, 23 Jun 2022 13:14:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Teresa Remmet <T.Remmet@phytec.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "joacim.zetterling@westermo.com" <joacim.zetterling@westermo.com>,
 "lst@pengutronix.de" <lst@pengutronix.de>
References: <20220623103051.572885-1-a.fatoum@pengutronix.de>
 <20220623103051.572885-4-a.fatoum@pengutronix.de>
 <bc2b59694db2e9871fce0e0113009e4d05c2b3a6.camel@phytec.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <bc2b59694db2e9871fce0e0113009e4d05c2b3a6.camel@phytec.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_041505_307799_F0C21366 
X-CRM114-Status: GOOD (  25.70  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 3/4] ddr: imx8m: workaround old spreadsheets not
 initializing ADDRMAP7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Teresa,

On 23.06.22 12:59, Teresa Remmet wrote:
> Hello Ahmad,
> 
> Am Donnerstag, dem 23.06.2022 um 12:30 +0200 schrieb Ahmad Fatoum:
>> Older NXP DDR spreadsheets don't initialize ADDRMAP7, leaving it at
>> its
>> POR default of zero. Now that barebox looks at ADDRMAP7 to be able to
>> correctly detect bigger memory sizes, barebox proper on out-of-tree
>> boards with older spreadsheets may read back 4x times as much RAM
>> as actually fitted.
>>
>> Work around this by writing a trailing 0xf0f (the neutral ignore-me
>> value for the register) if the register wasn't written through
>> dram_timing_info::ddrc_cfg. We consider this safe to do, because
>> the DDRC is held in reset while these values are programmed.
> 
> have you tried this patch without actually updating the RAM Timings (
> so patch 2/4)?

Yes. I've an out-of-tree i.MX8MM board with 1G of LPDDR4 and old RAM setup.

With upstream/next: 4G
With Workaround: 1G + Warning
With fixed ADDRMAP7: 1G, no warning

Reading back 0x3d40021c gives me 0xf0f as expected.

> I have just played around also setting ADDRMAP7 right before 
> ddr_cfg_umctl2() without fixing the timings and the register was 0
> again after startup and so the RAM size wrong.
> So it seems to me that the value is overwritten/resetted at some other
> point again ... or maybe I just did something wrong.

Strange. What SoC/board is this on?

Cheers,
Ahmad

> 
> Regards,
> Teresa
> 
>>
>> Fixes: dad2b5636bd8 ("ARM: imx: Add imx8 support for 18 bit SDRAM row
>> size handle")
>> Fixes: 6cf197fa61f9 ("arm: imx: mmdc_size: Increase row_max for
>> imx8m")
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/ddr/imx8m/ddr_init.c | 18 ++++++++++++++++++
>>  drivers/ddr/imx8m/helper.c   |  6 ++++++
>>  include/soc/imx8m/ddr.h      |  1 +
>>  3 files changed, 25 insertions(+)
>>
>> diff --git a/drivers/ddr/imx8m/ddr_init.c
>> b/drivers/ddr/imx8m/ddr_init.c
>> index ae05b136229c..9a4b4e2ca88a 100644
>> --- a/drivers/ddr/imx8m/ddr_init.c
>> +++ b/drivers/ddr/imx8m/ddr_init.c
>> @@ -13,14 +13,32 @@
>>  #include <mach/imx8m-regs.h>
>>  #include <mach/imx8m-ccm-regs.h>
>>  
>> +bool imx8m_ddr_old_spreadsheet = true;
>> +
>>  static void ddr_cfg_umctl2(struct dram_cfg_param *ddrc_cfg, int num)
>>  {
>>  	int i = 0;
>>  
>>  	for (i = 0; i < num; i++) {
>> +		if (ddrc_cfg->reg == DDRC_ADDRMAP7(0))
>> +		    imx8m_ddr_old_spreadsheet = false;
>>  		reg32_write((unsigned long)ddrc_cfg->reg, ddrc_cfg-
>>> val);
>>  		ddrc_cfg++;
>>  	}
>> +
>> +	/*
>> +	 * Older NXP DDR configuration spreadsheets don't initialize
>> ADDRMAP7,
>> +	 * which falsifies the memory size read back from the
>> controller
>> +	 * in barebox proper.
>> +	 */
>> +	if (imx8m_ddr_old_spreadsheet) {
>> +		pr_warn("Working around old spreadsheet. Please
>> regenerate\n");
>> +		/*
>> +		 * Alternatively, stick { DDRC_ADDRMAP7(0), 0xf0f }
>> into
>> +		 * struct dram_timing_info::ddrc_cfg of your old timing
>> file
>> +		 */
>> +		reg32_write(DDRC_ADDRMAP7(0), 0xf0f);
>> +	}
>>  }
>>  
>>  /*
>> diff --git a/drivers/ddr/imx8m/helper.c b/drivers/ddr/imx8m/helper.c
>> index 94bbb811576d..98e40849584b 100644
>> --- a/drivers/ddr/imx8m/helper.c
>> +++ b/drivers/ddr/imx8m/helper.c
>> @@ -62,6 +62,12 @@ void dram_config_save(struct dram_timing_info
>> *timing_info,
>>  		cfg++;
>>  	}
>>  
>> +	if (imx8m_ddr_old_spreadsheet) {
>> +		cfg->reg = DDRC_ADDRMAP7(0);
>> +		cfg->val = 0xf0f;
>> +		cfg++;
>> +	}
>> +
>>  	/* save ddrphy config */
>>  	saved_timing->ddrphy_cfg = cfg;
>>  	for (i = 0; i < timing_info->ddrphy_cfg_num; i++) {
>> diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
>> index 9ae7cb877686..147a7d499aaf 100644
>> --- a/include/soc/imx8m/ddr.h
>> +++ b/include/soc/imx8m/ddr.h
>> @@ -407,6 +407,7 @@ static inline void reg32setbit(unsigned long
>> addr, u32 bit)
>>  #define dwc_ddrphy_apb_rd(addr) \
>>  	reg32_read(IOMEM(IP2APB_DDRPHY_IPS_BASE_ADDR(0)) + 4 * (addr))
>>  
>> +extern bool imx8m_ddr_old_spreadsheet;
>>  extern struct dram_cfg_param ddrphy_trained_csr[];
>>  extern uint32_t ddrphy_trained_csr_num;
>>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


