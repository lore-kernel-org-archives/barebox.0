Delivery-date: Tue, 27 May 2025 14:38:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJtZJ-000qoa-2u
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 14:38:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJtZJ-0000HR-Ah
	for lore@pengutronix.de; Tue, 27 May 2025 14:38:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ACTcYwBdJyDBOvaUfb3ifEOyEXLQX5oSUKucod8PxlU=; b=A6FxGYJwk9DRry5Pp9joVzccTY
	zIAhaI+VYczkloGe/QfhWu6BRhacWgp1ovx9j7d32xElopDsu3gic3ltwnWCdaKCm9iiWBEO1LSzX
	yFIJe8FiBl9aO1Cs6hJODXfxl5cq8HWrP7Cvv13B4B8cmt7gWUL7qTK1nF3yf8b/+L5zX6up2woA9
	L/RhfkdPqUzeuN6M+Gl+ZSAZLQgiwQ1eaS8YJWa5GCIvVL4oR6uqS8TYAaBsFlgEBv6sxjBb94Tpz
	90cEkOtgjRA3ADDSx61g+Fvw2Y9bsKlh3fwYEpvQCvFVGNLq3brduiielcwDRFEZGrh0EZxDKSLZ2
	a1iVJ2Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJtYo-0000000AiiN-3XeW;
	Tue, 27 May 2025 12:37:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJtYm-0000000Aihy-3UON
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 12:37:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uJtYk-00005r-8s; Tue, 27 May 2025 14:37:34 +0200
Message-ID: <e828f655-f841-4e00-90bf-b2bf52f4e8a3@pengutronix.de>
Date: Tue, 27 May 2025 14:37:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Fabian Pflug <f.pflug@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250527114241.325357-1-f.pflug@pengutronix.de>
 <20250527122316.5iwpshtvwx4nihsm@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250527122316.5iwpshtvwx4nihsm@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_053736_873817_6B613E57 
X-CRM114-Status: GOOD (  17.09  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: boards: i.MX93: Add NXP FRDM i.MX93 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 5/27/25 14:23, Marco Felsch wrote:
> On 25-05-27, Fabian Pflug wrote:

>> +++ b/arch/arm/boards/nxp-imx93-frdm/board.c
>> @@ -0,0 +1,34 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +
>> +#define pr_fmt(fmt) "FRDM i.MX93: " fmt
>> +
>> +#include <bootsource.h>
>> +#include <common.h>
>> +#include <init.h>
>> +#include <deep-probe.h>
>> +
>> +static int frdm_imx93_probe(struct device *dev)
>> +{
>> +	if (bootsource_get() == BOOTSOURCE_MMC && bootsource_get_instance() == 2) {
>> +		of_device_enable_path("/choosen/environment-sd");
>> +	} else {
>> +		of_device_enable_path("/choosen/environment-emmc");
>> +	}
>> +	return 0;
> 
> Out of curiosity: could this be handled in a common way, so we can drop
> this board driver completely?

Yes, this should just be dropped and environment should come from the
bootsource via Type UUID. FWIW, this is non-functional anyway;
The device tree added in this series has no barebox,environment
compatible node and if it did, nothing descends into /choosen
(as opposed to /chosen).

>> +BAREBOX_DEEP_PROBE_ENABLE(frdm_imx93_of_match);

This will need to remain. I have a series for deep probe to become the
default, but for now just keep the match struct and the
BAREBOX_DEEP_PROBE_ENABLE and drop the driver code.

>> diff --git a/arch/arm/boards/nxp-imx93-frdm/lowlevel.c b/arch/arm/boards/nxp-imx93-frdm/lowlevel.c
>> new file mode 100644
>> index 0000000000..7fbb7e96c5
>> --- /dev/null
>> +++ b/arch/arm/boards/nxp-imx93-frdm/lowlevel.c
>> @@ -0,0 +1,46 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +
>> +#include <common.h>
>> +#include <debug_ll.h>
>> +#include <mach/imx/debug_ll.h>
>> +#include <mach/imx/generic.h>
>> +#include <mach/imx/xload.h>
>> +#include <asm/barebox-arm.h>
>> +#include <soc/imx9/ddr.h>
>> +#include <mach/imx/atf.h>
>> +#include <mach/imx/xload.h>
>> +#include <mach/imx/esdctl.h>
>> +
>> +extern char __dtb_z_imx93_frdm_start[];
>> +extern struct dram_timing_info frdm_imx93_dram_timing;
>> +
>> +static noinline void frdm_imx93_continue(void)
>> +{
>> +	void *base = IOMEM(MX9_UART1_BASE_ADDR);

void __iomem *

>> +	void *muxbase = IOMEM(MX9_IOMUXC_BASE_ADDR);

void __iomem *

>> +
>> +	/* configure LPUART1 TX pin */
>> +	writel(0x0, muxbase + 0x184);
>> +
>> +	imx9_uart_setup(IOMEM(base));

IOMEM here is redundant with above changes.

>> +	pbl_set_putc(lpuart32_putc, base + 0x10);
>> +	putc_ll('>');

putchar(). I think it's useful to print it always.


Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



