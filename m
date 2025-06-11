Delivery-date: Thu, 12 Jun 2025 00:24:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPTrr-006IqM-2v
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 00:24:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPTrr-0004K2-BT
	for lore@pengutronix.de; Thu, 12 Jun 2025 00:24:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zpCFs9SDnTFPkZFElBXA9b+D0oEqkrvBeQeoy2jfSf4=; b=HUEJV5g/Cu5kKidZsQW+QHpuSn
	eVo0GjH3leidr3bXu8Sn0oZc/hsTEKuMx5b34iW+DRnhs7Kab4VL/a5wRuiNkeAMoBr3Ynnxj2qPC
	RTrWf7gUOVqOwQY1sN34mGUZ1eDBZZEq2zwXSlytLMupeYY/p81IOZqjFZ7mM/YzCM83FqfIV/xsS
	iQzLTjx6OXD/kUm7MvZtvr3p6nBHLQinAwghMOJDhxBXDnVdZQSWtznOyKwftHFZDQRha5RHQKmPR
	p3QRKRTh4cLH6/FKYGM6h+i1jHV6QKhVtHM8haf3XzR5gjF55yGHQnedxmR+8Tj/a/Edfg5LFaIq0
	+KN0TQDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPTri-0000000BT65-1lEl;
	Wed, 11 Jun 2025 22:24:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPQ7b-0000000ArZE-3oVD
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 18:24:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uPQ7a-0001sw-KM; Wed, 11 Jun 2025 20:24:22 +0200
Message-ID: <13ed49a0-3e05-4fe7-9966-231229600f94@pengutronix.de>
Date: Wed, 11 Jun 2025 20:24:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lars Schmidt <l.schmidt@pengutronix.de>, barebox@lists.infradead.org
References: <20250611093622.1309016-1-l.schmidt@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250611093622.1309016-1-l.schmidt@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_112423_951908_CE120FC5 
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: k3: beagleplay: Enable 32k crystal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Lars,

On 6/11/25 11:36, Lars Schmidt wrote:
> Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>

Would it make sense to describe the existence of the external 32K
crystal in the DT, so we don't need to add code for every board?

Thanks,
Ahmad

> ---
>  arch/arm/boards/beagleplay/Makefile |  1 +
>  arch/arm/boards/beagleplay/board.c  | 30 +++++++++++++++++++++++++++++
>  2 files changed, 31 insertions(+)
>  create mode 100644 arch/arm/boards/beagleplay/board.c
> 
> diff --git a/arch/arm/boards/beagleplay/Makefile b/arch/arm/boards/beagleplay/Makefile
> index a8c7320bdb..2d257fb4b2 100644
> --- a/arch/arm/boards/beagleplay/Makefile
> +++ b/arch/arm/boards/beagleplay/Makefile
> @@ -1,2 +1,3 @@
>  pbl-y += lowlevel.o
> +obj-y += board.o
>  pbl-$(CONFIG_MACH_K3_CORTEX_R5) += entry-r5.o ddr.o
> diff --git a/arch/arm/boards/beagleplay/board.c b/arch/arm/boards/beagleplay/board.c
> new file mode 100644
> index 0000000000..dd42f0b7f0
> --- /dev/null
> +++ b/arch/arm/boards/beagleplay/board.c
> @@ -0,0 +1,30 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#define pr_fmt(fmt) "beagleplay: " fmt
> +
> +#include <linux/kernel.h>
> +#include <mach/k3/common.h>
> +#include <driver.h>
> +#include <bbu.h>
> +
> +static int beagleplay_probe(struct device *dev)
> +{
> +	am625_enable_32k_crystal();
> +
> +	return 0;
> +}
> +
> +static __maybe_unused struct of_device_id beagleplay_ids[] = {
> +	{
> +		.compatible = "beagle,am625-beagleplay",
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
> +static struct driver beagleplay_driver = {
> +	.name = "beagleplay",
> +	.probe = beagleplay_probe,
> +	.of_compatible = beagleplay_ids,
> +};
> +coredevice_platform_driver(beagleplay_driver);

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



