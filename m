Delivery-date: Tue, 18 May 2021 13:58:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyN0-0004H2-CG
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:58:42 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyMz-0003n6-8L
	for lore@pengutronix.de; Tue, 18 May 2021 13:58:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ffy/udfX9Vq6Hh5FAtU6J35/YacJ0vZvprihlRLHfOY=; b=AHvE94r3NVNuXX9iVfFXLGBcw
	5T6jZrATS1MQvOBEAhYaKYGIQ/qEF2kOr/LytW3579okZ9kRSv3zprjwQLHqXA0ILsItNBaiLSSoK
	uOi1uHGwi4nUIFgUKGpX87SH7O20McCEPCb31V5zVzdNf8VpD2yWtF/+IFDTR4pLicqNrGr4qw0l1
	3a0XQDBQXbupw2a5Joa8TCdawAgFQEPcwjv9wxnQq9T18TuMeL8U84f5stoENDHd02Qba8L44rTKg
	sdm7BGh2kCj8huGTC3JTXcd79TP6MoTJ4wCyTnDL+YKbndLbzevZu3lxTsV3TX5g6/dgHPTpj3sHI
	ye5B1eQRQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyM4-000gWZ-4r; Tue, 18 May 2021 11:57:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyLf-000gS0-9P
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:57:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=bfUwb4tLhj/iFk6eMIjywafw9YHwoTXOZz/B0UzTDo4=; b=BxWUYD90J4DMoOZKALMU5YORmG
 rsL1D3RorVcKheGSa+YeBW7ADQH2+SPidjadmFCUFuEgGSDEBvzG3qn8mPeSKiTJv3mTgGRn9cc3b
 s3SNVlrzjpxTpJWB4Mb8FU4dPJvrD1v0vqz5a2S7Odmy+EJbi1q15dV/O+AyyzFZhcUb89uD3jefx
 khIoDVQt+dxL6poEwHsaKn7623CTgN/n7plKuDjTNKYFvfZhqadnjUh1XPoPOmCbSruhi86Z0RZ6B
 BVH7vJhqEJ9QWO8MG+KWbo7v4Go9jio8A8Z/1TfhRbvFiVhZUwdlRJM+VbDcSeXidCb9GGRVDs/BZ
 9l2TQhTg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyLc-00Ecr2-I3
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:57:17 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1liyLb-0003Vn-0d; Tue, 18 May 2021 13:57:15 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210518114929.12964-1-s.hauer@pengutronix.de>
 <20210518114929.12964-2-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <bab989b0-e85d-7bd5-34ca-326c966f27f6@pengutronix.de>
Date: Tue, 18 May 2021 13:57:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210518114929.12964-2-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_045716_632885_6706ED82 
X-CRM114-Status: GOOD (  20.25  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 01/14] clk: introduce clk init op
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 18.05.21 13:49, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/clk/clk.c   | 12 ++++++++++++
>  include/linux/clk.h |  1 +
>  2 files changed, 13 insertions(+)
> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index b04d44593b..fb5bf57e4b 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -261,6 +261,7 @@ struct clk *clk_get_parent(struct clk *clk)
>  int clk_register(struct clk *clk)
>  {
>  	struct clk *c;
> +	int ret;
>  
>  	list_for_each_entry(c, &clks, list) {
>  		if (!strcmp(c->name, clk->name)) {
> @@ -274,10 +275,21 @@ int clk_register(struct clk *clk)
>  
>  	list_add_tail(&clk->list, &clks);
>  
> +	if (clk->ops->init) {
> +		ret = clk->ops->init(clk);
> +		if (ret)
> +			goto out;
> +	}
> +
>  	if (clk->flags & CLK_IS_CRITICAL)
>  		clk_enable(clk);
>  
>  	return 0;
> +out:
> +	list_del(&clk->list);
> +	free(clk->parents);
> +
> +	return ret;
>  }
>  
>  int clk_is_enabled(struct clk *clk)
> diff --git a/include/linux/clk.h b/include/linux/clk.h
> index c49fe9a54c..5d05ffd1b3 100644
> --- a/include/linux/clk.h
> +++ b/include/linux/clk.h
> @@ -336,6 +336,7 @@ static inline void clk_put(struct clk *clk)
>  #define CLK_GATE_HIWORD_MASK	(1 << 1)
>  
>  struct clk_ops {
> +	int 		(*init)(struct clk *clk);
>  	int		(*enable)(struct clk *clk);
>  	void		(*disable)(struct clk *clk);
>  	int		(*is_enabled)(struct clk *clk);
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

