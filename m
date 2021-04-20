Delivery-date: Tue, 20 Apr 2021 12:30:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYneD-0008Q0-UL
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 12:30:25 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYneC-0005VY-Sp
	for lore@pengutronix.de; Tue, 20 Apr 2021 12:30:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n6X9oWAzf0ZPtTDRNHGaHJTJ5qSL/fL0vlGYx+Ve0yk=; b=SfMq35re066FGxwrdAXOiqktp
	jxSDLMaBzqpv568C1AV1jDG5dE80GeojtvWRLNRitu1+emmnRqHAH20xE4S2XdbdLuPRQQR83XbJo
	Cx9Ap6nvkYl1G9QHSbRPvLyky2/Xg+8rHXXj+5PdQ4q9uXghocb91OL16HWdGyvKttX2BfdZDhPZR
	HJ0pHgtj0YULkxvbBGf9yPPGVib4KnJnR+GNONs3GJdvJblOfwrtNb8p+xvbNklBz7i76SATH8W2y
	gnJ4kXDYh+3R+3tVOp1dETraaSVItIxy3uoZ0/fntQRpmjBi60F+eyeO4zlkSpJ7GTqf8DEXeW+Nf
	Z/+8xO9bg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYnd5-00Bspa-5o; Tue, 20 Apr 2021 10:29:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYnd1-00Bsp9-M5
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 10:29:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=Fts6CfAYEDxIThAbeXDLR0taALF8vXuzOIif3hLSAHs=; b=Q3gEuXxZbCOGKgy0rDES04W2Sr
 e8gLBZVl60Yhu/Ru3Y5PwjCb3+nbLxTVwXVPSozK0Y2YpcURc68jwy1R6TWeC6BaAiFseYVZ+gno2
 XB9BUhjcNDfRfaxzHXO8pADllVRqIWOw9A4dhhuYofFv0uR6cymrK4ZEOzPWBzHDVVIGfdxGFcK6s
 jdtxa7RTo69izedWlrD7DR4G692RXGgOXqcnLu8N2O1cQcl12ovNJEUZvTy2KjMebAUDhGWHMljqO
 j8MabNR57BQhh72zIiR0SSegpyjKK7YQRAcnZJLTc8899OFHUqOH642kh+Y21GYcO959jEaUR/YOL
 WA2JnI5Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYncy-00C1Ry-J4
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 10:29:10 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lYncw-0005ML-Sc; Tue, 20 Apr 2021 12:29:06 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
 <20210420075700.246124-6-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <5a8054fc-0ef9-0ef9-35e0-0027527b9566@pengutronix.de>
Date: Tue, 20 Apr 2021 12:29:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210420075700.246124-6-r.czerwinski@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_032908_668435_06A969A2 
X-CRM114-Status: GOOD (  27.46  )
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
Subject: Re: [PATCH 6/8] pbl: fdt: add support to parse reserved mem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 20.04.21 09:56, Rouven Czerwinski wrote:
> This allows the PBL to fill a reserved memory map which a subsequent
> commit will use modify the early MMU mapping.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  include/pbl.h | 15 ++++++++++
>  pbl/fdt.c     | 80 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 95 insertions(+)
> 
> diff --git a/include/pbl.h b/include/pbl.h
> index 194d5e7508..df0f41ac5b 100644
> --- a/include/pbl.h
> +++ b/include/pbl.h
> @@ -34,4 +34,19 @@ ssize_t pbl_fat_load(struct pbl_bio *, const char *filename, void *dest, size_t
>  
>  void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize);
>  
> +struct pbl_reserved_memory {
> +	phys_addr_t			base;
> +	phys_addr_t			size;
> +	unsigned int			flag;

flags

> +};
> +
> +#define MAX_RESERVED_REGIONS	8
> +
> +#define FDT_RES_MEM_FLAG_NOMAP		BIT(0)
> +
> +void fdt_fill_reserve_mem(const void *fdt);
> +
> +struct pbl_reserved_memory* get_pbl_reserved_memory(void);
> +int get_pbl_reserved_memory_num(void);
> +
>  #endif /* __PBL_H__ */
> diff --git a/pbl/fdt.c b/pbl/fdt.c
> index b4a40a514b..f8e301843f 100644
> --- a/pbl/fdt.c
> +++ b/pbl/fdt.c
> @@ -68,3 +68,83 @@ err:
>  	pr_err("No memory, cannot continue\n");
>  	while (1);
>  }
> +
> +struct pbl_reserved_memory reserved_mem[MAX_RESERVED_REGIONS];
> +int reserved_mem_count;

Both can be made static.

> +
> +void fdt_fill_reserve_mem(const void *fdt)
> +{
> +	const __be32 *nap, *nsp, *reg;
> +	uint32_t na, ns;
> +	int node, size, i, parent;
> +	const void * prop;
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

fdt_address_cells?

> +
> +	nsp = fdt_getprop(fdt, parent, "#size-cells", &size);
> +	if (!nsp || (size != 4)) {
> +		pr_err("Cannot find #size-cells property");
> +		return;
> +	}
> +	ns = fdt32_to_cpu(*nap);

fdt_size_cells?

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

I wondered whether there's a helper for that, but couldn't find anything.

> +
> +		/* get the memsize and truncate it to under 4G on 32 bit machines */
> +		memsize64 = 0;
> +		for (i = 0; i < ns; i++)
> +			memsize64 = (memsize64 << 32) | fdt32_to_cpu(*reg++);
> +
> +		prop = fdt_getprop(fdt, node, "nomap", NULL);
> +		if (!prop)
> +			nomap = false;
> +
> +		reserved_mem[reserved_mem_count].base = membase64;
> +		reserved_mem[reserved_mem_count].size = memsize64;
> +		if (nomap)
> +			reserved_mem[reserved_mem_count].flag |= FDT_RES_MEM_FLAG_NOMAP;
> +		reserved_mem_count++;
> +	}
> +
> +	if ((node < 0) && (node != -FDT_ERR_NOTFOUND)) {
> +		pr_err("Error while parsing reserved-memory nodes: %d\n", node);
> +		return;
> +	}
> +}
> +
> +struct pbl_reserved_memory* get_pbl_reserved_memory(void) {

{ on separate line, make it const.

> +	return (struct pbl_reserved_memory*)&reserved_mem;

just return reserved_mem; should work

> +}
> +
> +int get_pbl_reserved_memory_num(void) {

Ditto

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

