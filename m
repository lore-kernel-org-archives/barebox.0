Delivery-date: Mon, 12 Sep 2022 11:25:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfgp-00252m-KX
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 11:25:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfgo-0003t8-57
	for lore@pengutronix.de; Mon, 12 Sep 2022 11:25:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xi7/8wIZjGS9C41O5yIZMf0NIGLm65jzcfNCJkv80vg=; b=sMKAIgiObtkOOdfwzSoL1nTAG7
	FVOyRjg7q39Hw4cwTMK2f0HkvFMg0q+4FiAk1CKqE9dqKTUksida9VRfRAZ4L+1BTtvqOxnuvDICk
	A8aRoxoHj0tg8NuiGnOpr71jSffEyGmxm1dyk0ISGOX00FvHLdooGq2l1RtctIS9xG9Ltd3B30kVb
	pKRzkjge3Jdcc28n14pngf2yddXIP81GuuaQhFkFBOF/DhDxzZANpjZW21mWbUF6t9NbXhe7LwU2d
	i0qX7rehEug0st+7ZFuk5nBx7znS85nlGCV9EgyphWnkNxpIdrKKR9RRqQXloN7JpMQBVKUTcGdwt
	IO8AOruA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXffN-008DdY-Ie; Mon, 12 Sep 2022 09:23:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXffD-008Da9-MU
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 09:23:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXffB-0003mf-FG; Mon, 12 Sep 2022 11:23:33 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXffB-0007XS-6h; Mon, 12 Sep 2022 11:23:33 +0200
Date: Mon, 12 Sep 2022 11:23:33 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220912092333.GL24324@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
 <20220905095557.596891-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905095557.596891-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_022336_041976_F4DA1325 
X-CRM114-Status: GOOD (  25.02  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 01/32] clk: define stub implementation for clk_get_parent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 05, 2022 at 11:55:26AM +0200, Ahmad Fatoum wrote:
> To make it easier to build drivers utilizing clk_get_parent on sandbox
> for static analysis, provide a stub implementation of the function.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/clk.h | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)

This will break architectures which do not use the common clk framework
and implement clk_get_parent themselves.

Fortunately there's only one architecture left doing this: AT91

Sascha

> 
> diff --git a/include/linux/clk.h b/include/linux/clk.h
> index 42c64d650d1f..b18fc733843d 100644
> --- a/include/linux/clk.h
> +++ b/include/linux/clk.h
> @@ -128,14 +128,6 @@ int clk_hw_set_rate(struct clk_hw *hw, unsigned long rate);
>  int clk_set_parent(struct clk *clk, struct clk *parent);
>  int clk_hw_set_parent(struct clk_hw *hw, struct clk_hw *hwp);
>  
> -/**
> - * clk_get_parent - get the parent clock source for this clock
> - * @clk: clock source
> - *
> - * Returns struct clk corresponding to parent clock source, or
> - * valid IS_ERR() condition containing errno.
> - */
> -struct clk *clk_get_parent(struct clk *clk);
>  struct clk_hw *clk_hw_get_parent(struct clk_hw *hw);
>  
>  int clk_set_phase(struct clk *clk, int degrees);
> @@ -658,6 +650,14 @@ struct clk_hw *of_clk_hw_simple_get(struct of_phandle_args *clkspec, void *data)
>  struct clk *of_clk_get(struct device_node *np, int index);
>  struct clk *of_clk_get_by_name(struct device_node *np, const char *name);
>  struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec);
> +/**
> + * clk_get_parent - get the parent clock source for this clock
> + * @clk: clock source
> + *
> + * Returns struct clk corresponding to parent clock source, or
> + * valid IS_ERR() condition containing errno.
> + */
> +struct clk *clk_get_parent(struct clk *clk);
>  unsigned int of_clk_get_parent_count(struct device_node *np);
>  int of_clk_parent_fill(struct device_node *np, const char **parents,
>  		       unsigned int size);
> @@ -717,6 +717,10 @@ static inline unsigned int of_clk_get_parent_count(struct device_node *np)
>  {
>  	return 0;
>  }
> +static inline struct clk *clk_get_parent(struct clk *clk)
> +{
> +	return ERR_PTR(-ENOENT);
> +}
>  static inline int of_clk_init(struct device_node *root,
>  			      const struct of_device_id *matches)
>  {
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


