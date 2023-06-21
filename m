Delivery-date: Wed, 21 Jun 2023 10:48:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBtWB-00FRnQ-Ck
	for lore@lore.pengutronix.de; Wed, 21 Jun 2023 10:48:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBtW7-0005i7-S7
	for lore@pengutronix.de; Wed, 21 Jun 2023 10:48:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qRGa5yb60YedioCMyqggynEaWN8Ptsh7GsTf2VEg+ME=; b=ZLUXfcCVCM163Fg+OzIgqMBRe5
	vBouCaZ5eL/uVaZ7oK+h+EMgSvFrwlfUvkixEMVhF3k4kCia7xUiPKQGNsr6X5eGbCoENq1XB4vnt
	OsF18entx8oEecuXWyE1JxYTxpSUPihqND5EwT5p6VJb1k7/1JpaTGV8sF9FM1BprowPhckQ7dazC
	KT17xZvSg+KimaBrDkyc4VJEHXgPDT3bFhADqInJ/sCb78IpH09jYFPrUeKzResrUsJnkAYNcwXY5
	gxesMvTvEnmV/KtUKL5Wdle5V+9IoU2bU1e16xjC4hDOABTUfsajzxImV99TSsqsGZGfPniifNco8
	+j2eOSUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBtV5-00DkMh-1d;
	Wed, 21 Jun 2023 08:47:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBtV2-00DkLg-1K
	for barebox@lists.infradead.org;
	Wed, 21 Jun 2023 08:47:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBtV0-0005e4-RS; Wed, 21 Jun 2023 10:47:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBtV0-0006Nx-KV; Wed, 21 Jun 2023 10:47:34 +0200
Date: Wed, 21 Jun 2023 10:47:34 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230621084734.GC18491@pengutronix.de>
References: <20230616102031.1556138-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230616102031.1556138-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_014736_444449_3D9B937C 
X-CRM114-Status: GOOD (  20.42  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] of: define of_read_file/barebox_register_of when
 !CONFIG_OFTREE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 16, 2023 at 12:20:31PM +0200, Ahmad Fatoum wrote:
> barebox may be built as x86 EFI payload with CONFIG_OFTREE=n. This
> recently started to fail, because of newly added symbols that had
> no stubs defined.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/of.h | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/of.h b/include/of.h
> index 0037bad6c4d7..92a15f5c4a13 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -6,6 +6,7 @@
>  #include <errno.h>
>  #include <linux/types.h>
>  #include <linux/list.h>
> +#include <linux/err.h>
>  #include <asm/byteorder.h>
>  
>  /* Default string compare functions */
> @@ -116,7 +117,6 @@ int of_diff(struct device_node *a, struct device_node *b, int indent);
>  int of_probe(void);
>  int of_parse_dtb(struct fdt_header *fdt);
>  struct device_node *of_unflatten_dtb(const void *fdt, int size);
> -struct device_node *of_read_file(const char *filename);
>  struct device_node *of_unflatten_dtb_const(const void *infdt, int size);
>  
>  int of_fixup_reserved_memory(struct device_node *node, void *data);
> @@ -124,6 +124,7 @@ int of_fixup_reserved_memory(struct device_node *node, void *data);
>  struct cdev;
>  
>  #ifdef CONFIG_OFTREE
> +extern struct device_node *of_read_file(const char *filename);
>  extern struct of_reserve_map *of_get_reserve_map(void);
>  extern int of_bus_n_addr_cells(struct device_node *np);
>  extern int of_n_addr_cells(struct device_node *np);
> @@ -361,6 +362,11 @@ static inline const char *of_node_full_name(const struct device_node *np)
>  }
>  
>  #else
> +static inline struct device_node *of_read_file(const char *filename)
> +{
> +	return ERR_PTR(-ENOSYS);
> +}
> +
>  static inline struct of_reserve_map *of_get_reserve_map(void)
>  {
>  	return NULL;
> @@ -429,6 +435,11 @@ static inline int of_set_root_node(struct device_node *node)
>  	return -ENOSYS;
>  }
>  
> +static inline int barebox_register_of(struct device_node *root)
> +{
> +	return -ENOSYS;
> +}
> +
>  static inline struct device *of_platform_device_create(struct device_node *np,
>  							 struct device *parent)
>  {
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


