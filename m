Delivery-date: Thu, 05 Aug 2021 15:56:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBdrL-0001cu-FJ
	for lore@lore.pengutronix.de; Thu, 05 Aug 2021 15:56:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBdrK-0000vA-JI
	for lore@pengutronix.de; Thu, 05 Aug 2021 15:56:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Mt5pY/2eSVC+NEnxZI4+uU6ovHq0n35ASqZKVzBZyqA=; b=xQy/r7eyRj1Ek9yxocmfiaBPnt
	wwjAyQNt1EzEcfL91gP6/U3jZbwKecdE4rGZvgHBDmqz7M/dgR1/KFN97xyIjjDQQnwfVbj0VT3Sb
	YGixzVx77/HivdqlBmqzkfu3NS9w/v60TegeUN/QK93opl7gEvS8XTWmnq7Ij6L+djksJ1tkW7rAl
	J7ULNWLoOuE1Wu5O+Ug8MYt4hZ4gTKCk5hp5N+hJF0Llw8JmJmy8kP/CHWWGjc36T4yjjudHdo9ui
	W5j02CWcYkncEZ5YravID0Kkad83eTn4ceKNPSVW5pCigu0Jv5EdGN19cxLnfOcK1BVJuksoXfXn7
	dO299nBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBdq8-009kq4-2c; Thu, 05 Aug 2021 13:55:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBdq2-009koT-JS
 for barebox@lists.infradead.org; Thu, 05 Aug 2021 13:55:12 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mBdq1-0000TH-B1; Thu, 05 Aug 2021 15:55:09 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
 <20210803094418.475609-3-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <4a3d20df-d8f4-bf30-5286-77acc08e12d2@pengutronix.de>
Date: Thu, 5 Aug 2021 15:55:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210803094418.475609-3-r.czerwinski@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_065510_721162_2FB1DC2A 
X-CRM114-Status: GOOD (  20.16  )
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
Subject: Re: [PATCH v2 2/8] of: add of_get_reserve_map stub for !CONFIG_OFTREE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 03.08.21 11:44, Rouven Czerwinski wrote:
> This allows us to unconditionally include of.h in files which did not
> require CONFIG_OFTREE, required for the MMU code in later patches.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/of.h | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/include/of.h b/include/of.h
> index 4844e800b4..36936ecd6e 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -62,7 +62,6 @@ struct of_reserve_map {
>  
>  int of_add_reserve_entry(resource_size_t start, resource_size_t end,
>  		 int flags);
> -struct of_reserve_map *of_get_reserve_map(void);
>  void of_clean_reserve_map(void);
>  void fdt_add_reserve_map(void *fdt);
>  
> @@ -120,6 +119,7 @@ struct device_node *of_unflatten_dtb_const(const void *infdt, int size);
>  struct cdev;
>  
>  #ifdef CONFIG_OFTREE
> +struct of_reserve_map *of_get_reserve_map(void);
>  extern int of_bus_n_addr_cells(struct device_node *np);
>  extern int of_n_addr_cells(struct device_node *np);
>  extern int of_bus_n_size_cells(struct device_node *np);
> @@ -821,6 +821,10 @@ static inline int of_autoenable_i2c_by_component(char *path)
>  	return -ENODEV;
>  }
>  
> +static inline struct of_reserve_map *of_get_reserve_map(void)
> +{
> +	return NULL;
> +}
>  
>  #endif
>  
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

