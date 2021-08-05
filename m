Delivery-date: Thu, 05 Aug 2021 16:16:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBeAR-0002Xh-FG
	for lore@lore.pengutronix.de; Thu, 05 Aug 2021 16:16:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBeAQ-0003W0-Gk
	for lore@pengutronix.de; Thu, 05 Aug 2021 16:16:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3t+Hb0ayikXpN/2FC+bt91VYtyg1Al5TdQkBr/oUjKE=; b=VL+rh6H/oAnfSy99C55+NAfkbh
	9SEyZA5fkIgzSlxjojlWIxA3Tsa4y8qRR4AUb5OYBiA6+V7RU6ghFI44hYtnU18jfCLzQs//HxsgZ
	IGcfrwQjkKP5AHJIMndETzh5Xv1MCsiWY+SWknD0LOiq+8e1eUEvmpNDi3+Rvzl7T9Thg9hbW1r95
	Di6kBn6KIgjG9/ekr9rK4EVHHAVw66mlbLKPA28sgo4Hy3P0Fb+SaCTrD395FGHahwhp4jDDtrEEd
	0zBRLuHGp6QTDXHEFFN3eIuZEqyczes0flqItKBUi68Phrz/S8QDKVqAHr76UWTrAvnq2qS/6s6Ra
	IcrW+NEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBe98-009on8-PN; Thu, 05 Aug 2021 14:14:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBe93-009omd-Bi
 for barebox@lists.infradead.org; Thu, 05 Aug 2021 14:14:50 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mBe91-00037y-To; Thu, 05 Aug 2021 16:14:47 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
 <20210803094418.475609-6-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <dd763fc9-c984-9d39-8cee-ff5a736de663@pengutronix.de>
Date: Thu, 5 Aug 2021 16:14:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210803094418.475609-6-r.czerwinski@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_071449_478668_8BB0089D 
X-CRM114-Status: GOOD (  26.04  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 5/8] of: add reserved_mem_read initcall
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 03.08.21 11:44, Rouven Czerwinski wrote:
> Add a reserved_mem_read initcall which parses the reserved-memory
> entries and adds barebox of reserve entries. Also remove the OP-TEE size
> of reserve entry, since this is now parsed from the DT and does not need
> to be statically configured any longer.

Where do you do this OP-TEE size removal?

> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/of/Makefile       |  1 +
>  drivers/of/reserved-mem.c | 43 +++++++++++++++++++++++++++++++++++++++
>  2 files changed, 44 insertions(+)
>  create mode 100644 drivers/of/reserved-mem.c
> 
> diff --git a/drivers/of/Makefile b/drivers/of/Makefile
> index b6847752d2..b69cb84b99 100644
> --- a/drivers/of/Makefile
> +++ b/drivers/of/Makefile
> @@ -4,6 +4,7 @@ obj-$(CONFIG_OF_GPIO) += of_gpio.o
>  obj-$(CONFIG_OF_PCI) += of_pci.o
>  obj-y += partition.o
>  obj-y += of_net.o
> +obj-$(CONFIG_OFDEVICE) += reserved-mem.o
>  obj-$(CONFIG_MTD) += of_mtd.o
>  obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o
>  obj-$(CONFIG_OF_OVERLAY) += overlay.o resolver.o of_firmware.o
> diff --git a/drivers/of/reserved-mem.c b/drivers/of/reserved-mem.c
> new file mode 100644
> index 0000000000..8519a7e3dd
> --- /dev/null
> +++ b/drivers/of/reserved-mem.c
> @@ -0,0 +1,43 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2021 Rouven Czerwinski <r.czerwinski@pengutronix.de>, Pengutronix
> +
> +#define pr_fmt(fmt) "reserved-memory: " fmt
> +
> +#define DEBUG

Left-over

> +
> +#include <common.h>
> +#include <init.h>
> +#include <of.h>
> +#include <of_address.h>
> +#include <malloc.h>
> +#include <partition.h>

Left-over?

> +
> +static int reserved_mem_read(void)
> +{
> +	struct device_node *node, *child;
> +	struct resource resource;
> +	int flag;
> +
> +	node = of_find_node_by_path("/reserved-memory");
> +	if (!node)
> +		return 0;
> +
> +	for_each_child_of_node(node, child) {
> +		flag = OF_RESERVE_ENTRY_FLAG_NO_RESERVE;

Why was this necessary again?

> +
> +		of_address_to_resource(child, 0, &resource);
> +
> +		pr_err("Res-Mem start: 0x%08x\n", resource.start);
> +		pr_err("Res-Mem end: 0x%08x\n", resource.end);

should be _dbg if at all. Preferably same line with child->name as prefix.

> +
> +		if (of_find_property(child, "no-map", 0)) {
> +			pr_debug("child %p: no-map\n", child);
> +			flag |= OF_RESERVE_ENTRY_FLAG_XN;
> +		}
> +
> +		of_add_reserve_entry(resource.start, resource.end, flag);
> +	}
> +
> +	return 0;
> +}
> +postconsole_initcall(reserved_mem_read);
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

