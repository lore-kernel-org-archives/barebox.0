Delivery-date: Fri, 16 Jun 2023 12:23:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA6bz-008vO6-TY
	for lore@lore.pengutronix.de; Fri, 16 Jun 2023 12:23:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA6bx-0002WX-8Z
	for lore@pengutronix.de; Fri, 16 Jun 2023 12:23:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IiJeQpzH7uyRT4z/IPQhYcBGaosSYDkUG7S7RswFB0k=; b=XKmRPdr2IdBl6Q6EVYDhDH6inw
	JEoEHIGO07/WgcMVwtrkV19Uyhm4a+fIppXlEIsz1I/ae2rWnhI6JmW3L05Jt+XGIo1l3v+HCPLDK
	i/2AT/ksV9eGUSost+R342rQ62QQ5gviMGLA2A/KmbNORYZ1xH26QjUg9SOG1A/1HpvlwjJ6PVtX9
	FgsHu42mCbL3YFNPObDi+bvsF+ILUZ7LLSs9E5VO3o2HLYUSiay5IfByDw8HJsDgubDwTChdByqq6
	lJCK9zF88S03314ckvIiLKbHaU1xEg8bdNz8wweKI8XZjo8kLbi4Cv7sECCZ3mzjdttiNM2XFmm2K
	cXsoxZ+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA6aw-0000bR-1U;
	Fri, 16 Jun 2023 10:22:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA6as-0000aY-2v
	for barebox@lists.infradead.org;
	Fri, 16 Jun 2023 10:22:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qA6ap-0002QI-NJ
	for barebox@lists.infradead.org; Fri, 16 Jun 2023 12:22:11 +0200
Message-ID: <1b30db3b-9ac3-d14a-28b2-4785d25de36e@pengutronix.de>
Date: Fri, 16 Jun 2023 12:22:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20230616102031.1556138-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230616102031.1556138-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_032214_940751_B18437BB 
X-CRM114-Status: GOOD (  18.92  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] of: define of_read_file/barebox_register_of when
 !CONFIG_OFTREE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 16.06.23 12:20, Ahmad Fatoum wrote:
> barebox may be built as x86 EFI payload with CONFIG_OFTREE=n. This
> recently started to fail, because of newly added symbols that had
> no stubs defined.

The symptom is recent barebox builds (not using efi_defconfig) failing
with:

common/efi/payload/init.c:351:23: error: implicit declaration of function 'barebox_register_of'
                                 [-Werror=implicit-function-declaration]

(Adding this, so search engines may pick this up).

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/of.h | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
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

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



