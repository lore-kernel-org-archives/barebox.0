Delivery-date: Fri, 18 Jul 2025 19:13:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ucoee-001HCr-1p
	for lore@lore.pengutronix.de;
	Fri, 18 Jul 2025 19:13:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ucoed-0007Bj-Tj
	for lore@pengutronix.de; Fri, 18 Jul 2025 19:13:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+jfld4p3u6eAAH5Qw9L4ZNxa7/3TbK+cNhyqyclvCvg=; b=aBpw8SodHgXpXUIlYDWqyYBtQM
	hdLiKLfKE2ZVl1iSXkcRmoJEYV9eDz0r/YBDMyrFTf/tEcM44Ag5uc7B1LvpGwFJ3PoiPe4+hAjIE
	QDZ6zcKmtTn7ZSUsGXyKpFCotL8Zn2GdoFEMa2CnM5t+okTYb8KdEMGFe8S6w2jvKUjhpqMosbg4s
	KiEEzjcygbzJwVASt9PGcsIZeLFSfb1pFr43M0GhmACdLJEZy7jeuAyylPie8S0MW+oyqe7ad22LP
	W+Ei4Qt0zUr8fHPjAHMap0EkjU1LZ3UHfGfnL9OMZiCehh62vmk7J/DMBLbKscM1Bn9y3BhPbVP2F
	vXwpgrqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucoe4-0000000DBsO-2OTP;
	Fri, 18 Jul 2025 17:13:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucoYk-0000000DBFC-1IWG
	for barebox@lists.infradead.org;
	Fri, 18 Jul 2025 17:07:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ucoYj-0002On-4Q; Fri, 18 Jul 2025 19:07:45 +0200
Message-ID: <51239d12-ce56-48c9-89e9-0ee3edaf3ffd@pengutronix.de>
Date: Fri, 18 Jul 2025 19:07:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20250624091510.28947-1-eagle.alexander923@gmail.com>
 <CAP1tNvTuhdM4Yn206NrWyG+nOJaP0d4PDLfNn=FRs7dW424C+A@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvTuhdM4Yn206NrWyG+nOJaP0d4PDLfNn=FRs7dW424C+A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_100746_347840_EF5695F0 
X-CRM114-Status: GOOD (  16.15  )
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
Subject: Re: [RFC] ARM: at91: sama5d3: Migrate to MFD-based SMC driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 14.07.25 22:00, Alexander Shiyan wrote:
> Hi Ahmad, any news on this?

Sorry, haven't come around to yet, but will try to soon.

> 
> вт, 24 июн. 2025 г. в 12:15, Alexander Shiyan <eagle.alexander923@gmail.com>:
>>
>> This replaces the low-level SMC driver implementation with the
>> MFD-based driver for SAMA5D3 platforms.
>>
>> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
>> ---
>>  arch/arm/boards/sama5d3_xplained/board.c | 46 ------------------------
>>  arch/arm/mach-at91/Kconfig               |  1 -
>>  arch/arm/mach-at91/sam9_smc.c            |  5 +--
>>  3 files changed, 1 insertion(+), 51 deletions(-)
>>
>> diff --git a/arch/arm/boards/sama5d3_xplained/board.c b/arch/arm/boards/sama5d3_xplained/board.c
>> index 4d908e6b9f..3ee3f2166e 100644
>> --- a/arch/arm/boards/sama5d3_xplained/board.c
>> +++ b/arch/arm/boards/sama5d3_xplained/board.c
>> @@ -3,60 +3,14 @@
>>  #include <common.h>
>>  #include <init.h>
>>  #include <envfs.h>
>> -#include <mach/at91/at91sam9_smc.h>
>> -#include <mach/at91/hardware.h>
>> -#include <linux/clk.h>
>> -
>> -static struct sam9_smc_config sama5d3_xplained_nand_smc_config = {
>> -       .ncs_read_setup         = 1,
>> -       .nrd_setup              = 2,
>> -       .ncs_write_setup        = 1,
>> -       .nwe_setup              = 2,
>> -
>> -       .ncs_read_pulse         = 5,
>> -       .nrd_pulse              = 3,
>> -       .ncs_write_pulse        = 5,
>> -       .nwe_pulse              = 3,
>> -
>> -       .read_cycle             = 8,
>> -       .write_cycle            = 8,
>> -
>> -       .mode                   = AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
>> -                                 AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
>> -       .tdf_cycles             = 3,
>> -
>> -       .tclr                   = 3,
>> -       .tadl                   = 10,
>> -       .tar                    = 3,
>> -       .ocms                   = 0,
>> -       .trr                    = 4,
>> -       .twb                    = 5,
>> -       .rbnsel                 = 3,
>> -       .nfsel                  = 1
>> -};
>>
>>  static int sama5d3_xplained_probe(struct device *dev)
>>  {
>> -       struct clk *clk;
>> -
>>         barebox_set_hostname("sama5d3_xplained");
>>
>>         if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
>>                 defaultenv_append_directory(defaultenv_sama5d3_xplained);
>>
>> -       add_generic_device("at91sam9-smc", DEVICE_ID_SINGLE, NULL,
>> -                          SAMA5D3_BASE_HSMC + 0x600, 0xa0,
>> -                          IORESOURCE_MEM, NULL);
>> -
>> -       clk = clk_lookup("hsmc_clk");
>> -       if (IS_ERR(clk))
>> -               dev_warn(dev, "couldn't get hsmc_clk: %pe\n", clk);
>> -
>> -       clk_enable(clk);
>> -
>> -       /* configure chip-select 3 (NAND) */
>> -       sama5_smc_configure(0, 3, &sama5d3_xplained_nand_smc_config);
>> -
>>         return 0;
>>  }
>>
>> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
>> index db79ad2d26..22ab99d9c8 100644
>> --- a/arch/arm/mach-at91/Kconfig
>> +++ b/arch/arm/mach-at91/Kconfig
>> @@ -107,7 +107,6 @@ config SOC_SAMA5D2
>>  config SOC_SAMA5D3
>>         bool
>>         select SOC_SAMA5
>> -       select AT91SAM9_SMC
>>         select CLOCKSOURCE_ATMEL_PIT
>>         select HAVE_AT91_SMD
>>         select HAVE_AT91_USB_CLK
>> diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
>> index 6c9e169a8e..66b30694ce 100644
>> --- a/arch/arm/mach-at91/sam9_smc.c
>> +++ b/arch/arm/mach-at91/sam9_smc.c
>> @@ -14,8 +14,7 @@
>>
>>  #define AT91_SAM9_SMC_CS_STRIDE                0x10
>>  #define AT91_SAMA5_SMC_CS_STRIDE       0x14
>> -#define AT91_SMC_CS_STRIDE     ((at91_soc_initdata.type == AT91_SOC_SAMA5D3 \
>> -                                || at91_soc_initdata.type == AT91_SOC_SAMA5D4) \
>> +#define AT91_SMC_CS_STRIDE     ((at91_soc_initdata.type == AT91_SOC_SAMA5D4) \
>>                                  ? AT91_SAMA5_SMC_CS_STRIDE : AT91_SAM9_SMC_CS_STRIDE)
>>  #define AT91_SMC_CS(id, n)     (smc_base_addr[id] + ((n) * AT91_SMC_CS_STRIDE))
>>
>> @@ -27,7 +26,6 @@ static void sam9_smc_cs_write_mode(void __iomem *base,
>>         void __iomem *mode_reg;
>>
>>         switch (at91_soc_initdata.type) {
>> -       case AT91_SOC_SAMA5D3:
>>         case AT91_SOC_SAMA5D4:
>>                 mode_reg = base + AT91_SAMA5_SMC_MODE;
>>                 break;
>> @@ -101,7 +99,6 @@ static void sam9_smc_cs_read_mode(void __iomem *base,
>>         void __iomem *mode_reg;
>>
>>         switch (at91_soc_initdata.type) {
>> -       case AT91_SOC_SAMA5D3:
>>         case AT91_SOC_SAMA5D4:
>>                 mode_reg = base + AT91_SAMA5_SMC_MODE;
>>                 break;
>> --
>> 2.39.1
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


