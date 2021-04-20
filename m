Delivery-date: Tue, 20 Apr 2021 12:37:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYnks-0008R2-M4
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 12:37:18 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYnkr-0006c6-Pd
	for lore@pengutronix.de; Tue, 20 Apr 2021 12:37:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=khUXhqbXF2Ra5RV0KVuAeroc6eJTvo635dCLlq+lhW0=; b=pfygZLsIWbDUDLaiK99D8oGdu
	w0tE0rhaKMOIawjbTWmn/uaL9khbzyrboDXtfycOiUDUrBY69LL3dfbmWjZBzWhRoFaaRJuZE1czB
	hCM33a6kVLySnJOsvs7YDxWmp+UUG6pr/QnFurS81miyOZXUOwiM1kwb8i7cEvvoBS9pFppiYJwn6
	rF6fJtQEM2fq4w5zKLOahX7dv2MLlXKsHHLfVpvHPqFE5xY5PZI16EcbT1QpuzwD6JocWdXxWWzUR
	ekXpjRE/xXC/FiNKlZSBRZo1ZH1zI52yhMj2xj1KCza1KTye++OIsS2LajD+HToKQ7wM/aCOPe+mI
	MgEpJN4uA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYnk4-00BteP-3Q; Tue, 20 Apr 2021 10:36:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYnk0-00BteC-HY
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 10:36:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=VMDnxlCoeDodoJ9QceGEXZsEodN/qCNMHj5onidZnMs=; b=gazL5Kkn+smqHzZxA29nFkcbEa
 xlkFELmYSV9jITPhinF/V5P0bLpwRARrt9DLPX8FNmvMxs8uw1xK023rwr9F4I57R7WWMyV1tRiVq
 lBaNhAgCOL4zk5tea8/M+Vp+0DS1ry5EQqR1gy1Y0rOko1YZinQnceBDQfCAK2yg5hRuHiUf8ICmw
 xhjplt/q+JDEvb83TlbcC/dIloK3BKlgv+TUavPOd9f9BiFYQeXctEShwd85Cx9bLLSSr/ytbJdAh
 3zdgVYvIJWj7Kf+SiPL4SxB6mQmGyPuuIwDGExgHig/RQN+/cH12O79HyTXO1dnGyfw1WTnMnui3b
 d1qQ9Pbw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYnjx-00C1pX-OZ
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 10:36:23 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lYnjw-0006W6-Cu; Tue, 20 Apr 2021 12:36:20 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
 <20210420075700.246124-5-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <7f1cd016-a20b-b135-29c0-54b7d9811152@pengutronix.de>
Date: Tue, 20 Apr 2021 12:36:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210420075700.246124-5-r.czerwinski@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_033621_834335_410A4111 
X-CRM114-Status: GOOD (  25.57  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/8] of: add reserved_mem_read initcall
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Rouven,

On 20.04.21 09:56, Rouven Czerwinski wrote:
> Add a reserved_mem_read initcall which parses the reserved-memory
> entries and adds barebox of reserve entries. Also remove the OP-TEE size
> of reserve entry, since this is now parsed from the DT and does not need
> to be statically configured any longer.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/cpu/start.c      |  3 ---
>  drivers/of/Makefile       |  1 +
>  drivers/of/reserved-mem.c | 41 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 42 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/of/reserved-mem.c
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 10ac070fe3..811de056c0 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -226,9 +226,6 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
>  
>  	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
>  
> -	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
> -		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1, OF_RESERVE_ENTRY_FLAG_XN);
> -

That silently breaks BOOTM_OPTEE, doesn't it? Either this should remain
or CONFIG_OPTEE_SIZE != 0 should loudly complain that people need to put
this into the device tree..

>  	pr_debug("starting barebox...\n");
>  
>  	start_barebox();
> diff --git a/drivers/of/Makefile b/drivers/of/Makefile
> index b6847752d2..749fe16a2a 100644
> --- a/drivers/of/Makefile
> +++ b/drivers/of/Makefile
> @@ -4,6 +4,7 @@ obj-$(CONFIG_OF_GPIO) += of_gpio.o
>  obj-$(CONFIG_OF_PCI) += of_pci.o
>  obj-y += partition.o
>  obj-y += of_net.o
> +obj-y += reserved-mem.o
>  obj-$(CONFIG_MTD) += of_mtd.o
>  obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o
>  obj-$(CONFIG_OF_OVERLAY) += overlay.o resolver.o of_firmware.o
> diff --git a/drivers/of/reserved-mem.c b/drivers/of/reserved-mem.c
> new file mode 100644
> index 0000000000..ee15ae880c
> --- /dev/null
> +++ b/drivers/of/reserved-mem.c
> @@ -0,0 +1,41 @@
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +#include <of.h>
> +#include <of_address.h>
> +#include <malloc.h>
> +#include <partition.h>
> +
> +static int reserved_mem_read(void)
> +{
> +	struct device_node *node, *child;
> +	struct resource resource;
> +	int flag;
> +
> +	node = of_get_root_node();
> +	if (!node)
> +		return 0;
> +
> +	node = of_find_node_by_path("/reserved-memory");
> +	if (!node)
> +		return 0;
> +
> +	for_each_child_of_node(node, child) {
> +		flag = OF_RESERVE_ENTRY_FLAG_NO_RESERVE;
> +
> +		of_address_to_resource(child, 0, &resource);
> +
> +		pr_err("Res-Mem start: 0x%08x\n", resource.start);
> +		pr_err("Res-Mem end: 0x%08x\n", resource.end);
> +
> +		if(of_find_property(child, "no-map", 0)) {
> +			pr_err("Res-Mem: no-map\n");
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

