Delivery-date: Thu, 05 Aug 2021 16:22:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBeGR-0002mn-HB
	for lore@lore.pengutronix.de; Thu, 05 Aug 2021 16:22:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBeGQ-0004A9-EX
	for lore@pengutronix.de; Thu, 05 Aug 2021 16:22:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O1obYhJf+RGACPNvJTGIPslEWsrLvgxIcRAvRiE1TnI=; b=rptDJWMCcmrJLvv9phFOERXzxi
	QzWFcEkv/dD/ohOALDayj4/5KsYR/UAZKl2Kv194iE1NIgXFe7mgb8Sbei/h3xHtUJqsOCR0sC3N5
	+ZWjFI9rI/x5sIVj1BdwRZi12LxQUH7qIlUEEanIQM7b7RqrzRWHmAsslbicODZl4Fby1/ceZxUWz
	8pR0xTl7hu2zySTExEpt6t8VwKjMOVOOTBbhJzToqln4WlIi0qN1erIX7b17imUcwDiXqsiqaGv21
	Txf2Oq7kPaiQrpgn5nUGIR1TnzwDke4ODturox9CHHaxfYMFPdX6oOrtKNO40nzpyUDBcHEAuzZQb
	qm9HwDjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBeF8-009q6S-5V; Thu, 05 Aug 2021 14:21:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBeF3-009q63-Dm
 for barebox@lists.infradead.org; Thu, 05 Aug 2021 14:21:03 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mBeF1-0003y5-Rf; Thu, 05 Aug 2021 16:20:59 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
 <20210803094418.475609-7-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <9452a831-7497-962f-dca4-74638b3d3553@pengutronix.de>
Date: Thu, 5 Aug 2021 16:20:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210803094418.475609-7-r.czerwinski@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_072101_522200_4F8ACE49 
X-CRM114-Status: GOOD (  32.04  )
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
Subject: Re: [PATCH v2 6/8] pbl: fdt: add support to parse reserved mem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

On 03.08.21 11:44, Rouven Czerwinski wrote:
> This allows the PBL to fill a reserved memory map which a subsequent
> commit will use modify the early MMU mapping.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  include/pbl.h |  25 ++++++++++++
>  pbl/fdt.c     | 103 ++++++++++++++++++++++++++++++++++++++++++--------
>  2 files changed, 113 insertions(+), 15 deletions(-)
> 
> diff --git a/include/pbl.h b/include/pbl.h
> index f58daec735..03272879d7 100644
> --- a/include/pbl.h
> +++ b/include/pbl.h
> @@ -42,5 +42,30 @@ struct fdt_device_id {
>  const void *
>  fdt_device_get_match_data(const void *fdt, const char *nodepath,
>  			  const struct fdt_device_id ids[]);
> +struct pbl_reserved_memory {
> +	phys_addr_t			base;
> +	phys_addr_t			size;
> +	unsigned int			flags;
> +};
> +
> +#define MAX_RESERVED_REGIONS	8
> +
> +#define FDT_RES_MEM_FLAG_NOMAP		BIT(0)
> +
> +void fdt_fill_reserve_mem(const void *fdt);
> +
> +#ifdef CONFIG_LIBFDT
> +const struct pbl_reserved_memory *get_pbl_reserved_memory(void);
> +int get_pbl_reserved_memory_num(void);
> +#else
> +static inline const struct pbl_reserved_memory *get_pbl_reserved_memory(void)
> +{
> +	return NULL;
> +}
> +static inline int get_pbl_reserved_memory_num(void)
> +{
> +	return 0;
> +}
> +#endif
>  
>  #endif /* __PBL_H__ */
> diff --git a/pbl/fdt.c b/pbl/fdt.c
> index 18ddb9f48a..383d0fec74 100644
> --- a/pbl/fdt.c
> +++ b/pbl/fdt.c
> @@ -5,8 +5,8 @@
>  
>  void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize)
>  {
> -	const __be32 *nap, *nsp, *reg;
> -	uint32_t na, ns;
> +	const __be32 *reg;
> +	int na, ns;
>  	uint64_t memsize64, membase64;
>  	int node, size, i;
>  
> @@ -16,26 +16,17 @@ void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsiz
>  		goto err;
>  	}
>  
> -	/* Find the #address-cells and #size-cells properties */
> -	node = fdt_path_offset(fdt, "/");
> -	if (node < 0) {
> -		pr_err("Cannot find root node\n");
> -		goto err;
> -	}
> -
> -	nap = fdt_getprop(fdt, node, "#address-cells", &size);
> -	if (!nap || (size != 4)) {
> +	na = fdt_address_cells(fdt, 0);
> +	if (na < 0) {
>  		pr_err("Cannot find #address-cells property");
>  		goto err;
>  	}
> -	na = fdt32_to_cpu(*nap);
>  
> -	nsp = fdt_getprop(fdt, node, "#size-cells", &size);
> -	if (!nsp || (size != 4)) {
> +	ns = fdt_size_cells(fdt, 0);
> +	if (ns < 0) {
>  		pr_err("Cannot find #size-cells property");
>  		goto err;
>  	}
> -	ns = fdt32_to_cpu(*nap);

I like the simplification, but it looks unrelated to the early reserved mem support..?
Perhaps split it up?

>  
>  	/* Find the memory range */
>  	node = fdt_node_offset_by_prop_value(fdt, -1, "device_type",
> @@ -103,3 +94,85 @@ const void *fdt_device_get_match_data(const void *fdt, const char *nodepath,
>  
>  	return NULL;
>  }
> +
> +static struct pbl_reserved_memory reserved_mem[MAX_RESERVED_REGIONS];
> +static int reserved_mem_count;
> +
> +void fdt_fill_reserve_mem(const void *fdt)
> +{
> +	const __be32 *nap, *nsp, *reg;
> +	uint32_t na, ns;
> +	int node, size, i, parent;
> +	const void *prop;
> +	uint64_t memsize64, membase64;
> +	bool nomap;
> +
> +	/* Make sure FDT blob is sane */
> +	if (fdt_check_header(fdt) != 0) {
> +		pr_err("Invalid device tree blob\n");
> +		return;
> +	}
> +
> +	parent = fdt_path_offset(fdt, "/reserved-memory");
> +	if (parent < 0) {
> +		pr_info("Cannot find reserved-memory node\n");
> +		return;
> +	}
> +
> +	nap = fdt_getprop(fdt, parent, "#address-cells", &size);
> +	if (!nap || (size != 4)) {
> +		pr_err("Cannot find #address-cells property");
> +		return;
> +	}
> +	na = fdt32_to_cpu(*nap);
> +
> +	nsp = fdt_getprop(fdt, parent, "#size-cells", &size);
> +	if (!nsp || (size != 4)) {
> +		pr_err("Cannot find #size-cells property");
> +		return;
> +	}
> +	ns = fdt32_to_cpu(*nap);

Oh, did you mean to use the cool fdt_address_cells and fdt_size_cells helper you found here
but fuzzily wrote your code? ^^'

> +
> +	fdt_for_each_subnode(node, fdt, parent) {
> +		nomap = true;
> +		reg = fdt_getprop(fdt, node, "reg", &size);
> +		if (size < (na + ns) * sizeof(u32)) {
> +			pr_err("cannot get memory range\n");
> +			return;
> +		}
> +
> +		membase64 = 0;
> +		for (i = 0; i < na; i++)
> +			membase64 = (membase64 << 32) | fdt32_to_cpu(*reg++);
> +
> +		/* get the memsize and truncate it to under 4G on 32 bit machines */
> +		memsize64 = 0;
> +		for (i = 0; i < ns; i++)
> +			memsize64 = (memsize64 << 32) | fdt32_to_cpu(*reg++);

Can you turn this into a helper and use that for both fdt_find_mem and fdt_fill_reserve_mem?

> +
> +		prop = fdt_getprop(fdt, node, "nomap", NULL);
> +		if (!prop)
> +			nomap = false;

Nitpick:

 if (fdt_getprop(fdt, node, "nomap", NULL))
	reserved_mem[reserved_mem_count].flags |= FDT_RES_MEM_FLAG_NOMAP;

would've worked too. Neither prop or nomap is strictly needed.

> +
> +		reserved_mem[reserved_mem_count].base = membase64;
> +		reserved_mem[reserved_mem_count].size = memsize64;
> +		if (nomap)
> +			reserved_mem[reserved_mem_count].flags |= FDT_RES_MEM_FLAG_NOMAP;
> +		reserved_mem_count++;
> +	}
> +
> +	if ((node < 0) && (node != -FDT_ERR_NOTFOUND)) {
> +		pr_err("Error while parsing reserved-memory nodes: %d\n", node);
> +		return;
> +	}
> +}
> +
> +const struct pbl_reserved_memory *get_pbl_reserved_memory(void)
> +{
> +	return reserved_mem;
> +}
> +
> +int get_pbl_reserved_memory_num(void)
> +{
> +	return reserved_mem_count;
> +}
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

