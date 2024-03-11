Delivery-date: Mon, 11 Mar 2024 14:33:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjfmE-0017yK-25
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 14:33:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjfmA-0006iy-Uq
	for lore@pengutronix.de; Mon, 11 Mar 2024 14:33:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SZ+M4gJ/a/YgwAlVg/jcIj4jvzQ8hfGmjbUquQaBjMw=; b=Xy+FTN7OJ/si2q0xjU2W8L57EX
	sd0D+xV/8cqZ8q4DHRFBWKMwrw5/jlNqzCWNcJsqIKMGEXkqTmwlQ3gseFbF104e+GXev1kM7jZpL
	CXWgpSFg17R7ttjGcgwMZ37AzOY0ol1vLkCokoHKHVcbV3aLr4PpOeoQ/5xMfe3Xb2TaCekZ46oN4
	ZZG+R7R7d0sOZkc+4PTOIMaDFDD0ipp+JZxZobwDexQiVKZItVJfhZDQsna4vhS8Y1XeKogL/4xLo
	3kE+EVNWKBzR/jCiIbkK0inoP0Pto3bjS3PYcg1m5kYyFjBveKaHspc/pCU71IqIRUjgOgTxbdGYR
	SGH660xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjflT-00000001cx1-0SVA;
	Mon, 11 Mar 2024 13:32:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjflP-00000001cwS-2xyh
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 13:32:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjflO-000646-BD; Mon, 11 Mar 2024 14:32:22 +0100
Message-ID: <5dd3c20d-26c4-4cd0-89a1-f922d5ddae02@pengutronix.de>
Date: Mon, 11 Mar 2024 14:32:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-DE
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240311-karo-imx8mp-som-board-upstreaming-v1-0-7c77f9ba02e5@pengutronix.de>
 <20240311-karo-imx8mp-som-board-upstreaming-v1-6-7c77f9ba02e5@pengutronix.de>
 <f1fdc37f-61ce-40e7-a521-9e895dfbc8f9@pengutronix.de>
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <f1fdc37f-61ce-40e7-a521-9e895dfbc8f9@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_063223_792679_E75E0B9F 
X-CRM114-Status: GOOD (  21.52  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 6/6] arm: imx8mp: add karo electronics qsxp imx8mp som
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On 11.03.24 11:13, Ahmad Fatoum wrote:
> Hello Stefan,
> 
> On 11.03.24 10:10, Stefan Kerkmann wrote:
>> From: Marc Kleine-Budde <mkl@pengutronix.de>
>>
>> The Ka-Ro QSXP is a i.MX8M Plus solder down system on module. This
>> commit adds support for the SOM on the QSBASE4 RDK.
>>
>> [1]: https://www.karo-electronics.de/qsxp
>>
>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
>> ---
>>  arch/arm/boards/Makefile                           |    1 +
>>  arch/arm/boards/karo-qsxp-ml81/Makefile            |    4 +
>>  arch/arm/boards/karo-qsxp-ml81/board.c             |   35 +
>>  .../flash-header-karo-qsxp-ml81.imxcfg             |    9 +
>>  arch/arm/boards/karo-qsxp-ml81/lowlevel.c          |  102 ++
>>  arch/arm/boards/karo-qsxp-ml81/lowlevel.h          |    8 +
>>  arch/arm/boards/karo-qsxp-ml81/lpddr4-timing.c     | 1597 ++++++++++++++++++++
> 
> If QSXP is the SoM name, rename the folder name to drop ml81.
> 

See reply to patch 5/6, the full manufacturer part number is `QSXP-ML81`
therefore I vote to keep the `ml81` part.

>> +
>> +	/*
>> +	 * If we are in EL3 we are running for the first time out of OCRAM,
>> +	 * we'll need to initialize the DRAM and run TF-A (BL31). The TF-A
>> +	 * will then jump to DRAM in EL2
>> +	 */
>> +	if (current_el() == 3) {
>> +		imx8mp_early_clock_init();
>> +
>> +		power_init_board();
>> +
>> +		imx8mp_ddr_init(&karo_qsxp_ml81_dram_timing, DRAM_TYPE_LPDDR4);
>> +
>> +		imx8mp_load_and_start_image_via_tfa();
>> +	}
>> +
>> +	/* Standard entry we hit once we initialized both DDR and ATF */
>> +	imx8mm_barebox_entry(__dtb_z_imx8mp_karo_qsxp_ml81_qsbase4_start);
> 
> s/imx8mm/imx8mp/
> 

Ack.

>> +/* ddr phy trained csr */
>> +static struct dram_cfg_param ddr_ddrphy_trained_csr[] = {
> 
> This is unused. See commit
> 975acf1bafba ("ARM: i.MX8M: delete unused per-board ddr_ddrphy_trained_csr array")
> 
> Unless your value differ from the default, just drop this from here.
> 

Ack.

>> +static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
>> +	{
>> +		/* P0 3200mts 1D */
>> +		.drate = 3200,
>> +		.fw_type = FW_1D_IMAGE,
>> +		.fsp_cfg = ddr_fsp0_cfg,
>> +		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_cfg),
>> +	},
>> +	{
>> +		/* P0 3200mts 2D */
>> +		.drate = 3200,
>> +		.fw_type = FW_2D_IMAGE,
>> +		.fsp_cfg = ddr_fsp0_2d_cfg,
>> +		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_2d_cfg),
>> +	},
> 
> JFYI, if you want to dynamic frequency scaling for DDR, you'll need some
> more entries here.
> 

I'm unfamiliar with dynamic frequency scaling, so I'm not sure if we
need/want more for a first support of this SOM?

>> +config MACH_KARO_QSXP_ML81
> 
> Please enable this in imx_v8_defconfig and multi_v8_defconfig for CI coverage.
> 

Ack.

> 
> Cheers,
> Ahmad
> 

Cheers,
Stefan

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |


