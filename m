Delivery-date: Thu, 01 Jun 2023 10:42:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dta-005YGW-4V
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 10:42:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dtX-0005uz-Ab
	for lore@pengutronix.de; Thu, 01 Jun 2023 10:42:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yF13MaoCbGdqImPzOKX141ngRfKy+qQdbpuhKJ4tbLo=; b=xg1G6CYmdyq8Xhi80CllnVowG4
	gf+meRlYlyCSvY1RCfpE7J/xtWpBO0eJlwd0qNpc2yrd5OC7FrO8Zke2G0VKeB1twJYluD6wZEeOA
	fe/zembFyqoHzL3W4TllOx7V3XZOjoC+4CJFDHIrQ5DufO4gDaUDgPbEaZ/KBRGCAV791i9j55wG4
	O309PswGpE2Zv50qVM8uB+qLZyNapth4QT5qtbIiIgb5uZkEdtiTRDhQCsCQtZUqiIks6Pwa9kg7Q
	UNSfJ1YkYPnDsU2ldpYqHlDyB1UuE5g3f+RGVqnBwtlfBLvQwiQtwxNko2HmwHedg5LUkUBEo+Nrr
	tbNO3u/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dsR-002bXM-1X;
	Thu, 01 Jun 2023 08:41:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dsN-002bWO-2b
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 08:41:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q4dsL-0005kR-VY; Thu, 01 Jun 2023 10:41:42 +0200
Message-ID: <b810f8d1-97e4-9e26-0516-2575f9991fef@pengutronix.de>
Date: Thu, 1 Jun 2023 10:41:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US, de-DE
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, patchwork-jzi@pengutronix.de,
 Juergen Borleis <j.borleis@pengutronix.de>
References: <20230601-koenigbauer-alphajet-upstreaming-v1-1-bcdcc1f1382e@pengutronix.de>
 <20230601082825.GL18491@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
In-Reply-To: <20230601082825.GL18491@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_014143_838046_2D83B73A 
X-CRM114-Status: GOOD (  24.45  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP: add Koenig+Bauer Alphajet board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

thanks for your feedback.

On 6/1/23 10:28, Sascha Hauer wrote:
> On Thu, Jun 01, 2023 at 09:40:29AM +0200, Johannes Zink wrote:
>> Add basic support for Koenig+Bauer Alphajet, based on a Congatec QMX8MP
>> SoM with a i.MX8MP SoC in the Industrial Temperature Grade 4GB Variant,
>> no inline ECC used.
>>
>> Co-Developed-by: Juergen Borleis <j.borleis@pengutronix.de>
>> Signed-off-by: Juergen Borleis <j.borleis@pengutronix.de>
>> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
>> ---
>> Koenig+Bauer Alphajet is based on the Congatec QMX8MP, which is an
>> i.MX8MP based SoC. Building barebox for this target requires the usual
>> bl31 and lpddr4 training data in /firmware as described in [1].
>>
>> The Congatec SoM is strapped and fused to boot from QSPI NOR flash,
>> which can easily be updated using the registered barebox update handler.
>>
>> [1] https://www.barebox.org/doc/latest/boards/imx/nxp-imx8mp-evk.html
>>
>> Best regards
>> Johannes
>> ---
>> Bootlog:
>>
>> barebox 2023.05.0-00196-g24e000914af6-dirty #151 Thu Jun 1 09:36:02 CEST
>> 2023
>>
>> Board: Koenig+Bauer Alphajet
>> deep-probe: supported due to kb,alphajet
>> detected i.MX8MP revision 1.1
>> i.MX8MP unique ID: 3a13efb20002aaff
>> netconsole: registered as netconsole-1
>> psci psci.of: detected version 1.1
>> imx-esdhc 30b40000.mmc@30b40000.of: registered as mmc0
>> mmc0: detected SD card version 2.0
>> mmc0: registered mmc0
>> imx-esdhc 30b60000.mmc@30b60000.of: registered as mmc2
>> mmc2: detected MMC card version 5.1
>> mmc2: registered mmc2.boot0
>> mmc2: registered mmc2.boot1
>> mmc2: registered mmc2
>> mdio_bus: miibus0: probed
>> xHCI xHCI0: USB XHCI 1.10
>> state: New state registered 'state'
>> state: Using bucket 0@0x00000000
>> malloc space: 0xbfcfbe80 -> 0xffcfbe7f (size 1 GiB)
>> found force-builtin environment, using defaultenv
>>
>> Hit m for menu or any to stop autoboot:    3
>> barebox@Koenig+Bauer Alphajet:/
>>
>> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
>> ---
>>   arch/arm/boards/Makefile                           |    1 +
>>   arch/arm/boards/kb-imx8mp-alphajet/Makefile        |    4 +
>>   arch/arm/boards/kb-imx8mp-alphajet/board.c         |   60 +
>>   .../flash-header-imx8mp-cgtqx8p.imxcfg             |   10 +
>>   arch/arm/boards/kb-imx8mp-alphajet/lowlevel.c      |  127 ++
>>   arch/arm/boards/kb-imx8mp-alphajet/lpddr4-timing.c | 1832 ++++++++++++++++++++
>>   arch/arm/dts/Makefile                              |    1 +
>>   arch/arm/dts/imx8mp-cgtqx8p.dtsi                   | 1060 +++++++++++
>>   arch/arm/dts/imx8mp-koenigbauer-alphajet.dts       |  180 ++
>>   arch/arm/mach-imx/Kconfig                          |   10 +
>>   images/Makefile.imx                                |    5 +
>>   11 files changed, 3290 insertions(+)
>>
>> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
>> index 2877debad535..67b2fc07a395 100644
>> --- a/arch/arm/boards/Makefile
>> +++ b/arch/arm/boards/Makefile
>> @@ -81,6 +81,7 @@ obj-$(CONFIG_MACH_NXP_IMX8MQ_EVK)		+= nxp-imx8mq-evk/
>>   obj-$(CONFIG_MACH_NXP_IMX8MM_EVK)		+= nxp-imx8mm-evk/
>>   obj-$(CONFIG_MACH_NXP_IMX8MN_EVK)		+= nxp-imx8mn-evk/
>>   obj-$(CONFIG_MACH_NXP_IMX8MP_EVK)		+= nxp-imx8mp-evk/
>> +obj-$(CONFIG_MACH_KB_ALPHAJET)			+= kb-imx8mp-alphajet/
>>   obj-$(CONFIG_MACH_TQ_MBA8MPXL)			+= tqma8mpxl/
>>   obj-$(CONFIG_MACH_OMAP343xSDP)			+= omap343xdsp/
>>   obj-$(CONFIG_MACH_OMAP3EVM)			+= omap3evm/
>> diff --git a/arch/arm/boards/kb-imx8mp-alphajet/Makefile b/arch/arm/boards/kb-imx8mp-alphajet/Makefile
>> new file mode 100644
>> index 000000000000..b3ae72be3e3b
>> --- /dev/null
>> +++ b/arch/arm/boards/kb-imx8mp-alphajet/Makefile
>> @@ -0,0 +1,4 @@
>> +# SPDX-License-Identifier:      GPL-2.0+
>> +
>> +obj-y += board.o
>> +lwl-y += lowlevel.o lpddr4-timing.o
>> diff --git a/arch/arm/boards/kb-imx8mp-alphajet/board.c b/arch/arm/boards/kb-imx8mp-alphajet/board.c
>> new file mode 100644
>> index 000000000000..78cc60e2c3b1
>> --- /dev/null
>> +++ b/arch/arm/boards/kb-imx8mp-alphajet/board.c
>> @@ -0,0 +1,60 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +// SPDX-FileCopyrightText: 2023 Juergen Borleis, Pengutronix
>> +// SPDX-FileCopyrightText: 2023 Johannes Zink, Pengutronix
>> +
>> +#include <asm/memory.h>
>> +#include <bootsource.h>
>> +#include <common.h>
>> +#include <deep-probe.h>
>> +#include <init.h>
>> +#include <linux/phy.h>
>> +#include <linux/sizes.h>
>> +#include <mach/imx/bbu.h>
>> +#include <mach/imx/generic.h>
>> +#include <mach/imx/iomux-mx8mp.h>
>> +#include <gpio.h>
>> +#include <envfs.h>
>> +
>> +#define EQOS_PWR_PIN IMX_GPIO_NR(1, 5) /* ENET_PWREN# */
>> +static void setup_ethernet_phy(void)
>> +{
>> +	u32 val;
>> +
>> +	of_device_ensure_probed_by_alias("gpio0");
>> +
>> +	if (gpio_direction_output(EQOS_PWR_PIN, 0))
>> +	{
>> +		pr_err("eqos phy power: failed to request pin\n");
>> +		return;
>> +	}
> 
> Should this be a fixed regulator in dt?
> 

Phy regulator handling in linux is broken for the mx8 eqos, as the 
phy-regulators are not handed down properly, which is why I cannot add it in 
the linux upstream dts (dts upstreaming is still to be done...).

I decided to use a hog there. As Marco gave me a hint that hogs are currently 
somewhat broken in barebox, I opted for setting the pin manually in the board code.

Johannes

> Sascha
> 
> 

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



