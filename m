Delivery-date: Tue, 18 May 2021 14:22:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyji-0004PC-Jm
	for lore@lore.pengutronix.de; Tue, 18 May 2021 14:22:10 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyjh-00078o-Ri
	for lore@pengutronix.de; Tue, 18 May 2021 14:22:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3D+zAS01bibjqeuaBlTngfvTgu/T3TcrVnMeyUE+PT8=; b=cxPTkrNaujSpIL3FL5wIDtOf2
	xLX/wc7YevIZDsL5jhgBi0/z5AxXi5q7nwtEjCbI0ePOP4IRbJ1coRffPmJOi4v1XTTevpVa4I9EF
	kMDT9/X3oHYy+6aGMQWWQ7aNVxUF+R79T1PGyBmo42mSXspl8sNiFcDvo1++8Ti9Fm5mPYU2JxcGD
	O2wOIiTFetQZs7VvNPji1P6/ME9c79vPkwLitK66mQPGx6uHt+qVTbo1uLIKPtBoAF7ReGeDiLJxh
	is9zZVvuKlwVFXvEC+Z81ipE1eta9b4+WJMd2Bg4Q47mrRMBpF4KHLOtBD80FcXUeS9TTu6pAc6Ad
	mNu+YOKeA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyiq-000kP9-V3; Tue, 18 May 2021 12:21:17 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyin-000kOi-16
 for barebox@desiato.infradead.org; Tue, 18 May 2021 12:21:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=rk+Mri0G4AJ/Cmcb9IytWCtWsxKkJCJD5tbDxvPGnkY=; b=KIPI/RmN7Sb2NwxESWj5SQnTNi
 Y5+SIuU9ULfDvQjiL4J5vAfDuc5bMJPrBz5eaWXJ+m1j7Kl3Mct1Ip46dv0Cu66Ju2NS2tyx4DmeO
 qHay3cKLV25S3fvvH+N8jtntUosL4OW7MWYoUYCi/OrWP+/1buar9D/8rq50K98kmqRSabn1I2k7a
 y+nxpI5K1dF5ILcP02YsdAehHPhpKFIp1ARFqraxGNKPblu+z8UnYwGrqU0FVrHphcEmdpb6oZcww
 LSCf1Vz3EwZ2ehUA/0YdZ40BB1WEKcthJhI20uCNhYT3SpgV5VLDzpzMV5VZgk0LrlGEP1optVIzl
 W6X+x9RQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyik-00Ee11-90
 for barebox@lists.infradead.org; Tue, 18 May 2021 12:21:11 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1liyih-0006uo-TG; Tue, 18 May 2021 14:21:07 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210518114929.12964-1-s.hauer@pengutronix.de>
 <20210518114929.12964-5-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <e40ebc0d-c95f-f274-4eb0-ae433c0e01a2@pengutronix.de>
Date: Tue, 18 May 2021 14:21:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210518114929.12964-5-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_052110_349703_18B7138D 
X-CRM114-Status: GOOD (  24.91  )
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
Subject: Re: [PATCH 04/14] clk: introduce clk_register()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 18.05.21 13:49, Sascha Hauer wrote:
> This introduces a clk_register() with the same semantics as in Linux.
> This also adds a struct clk_init_data. With this it becomes easier to
> port over new clock drivers from Linux.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/clk/clk.c   | 35 +++++++++++++++++++++++++++++++++++
>  include/linux/clk.h |  2 ++
>  2 files changed, 37 insertions(+)
> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index 73682126bf..2ca6d6b483 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -345,6 +345,41 @@ out:
>  	return ret;
>  }
>  
> +struct clk *clk_register(struct device_d *dev, struct clk_hw *hw)
> +{
> +	struct clk *clk;
> +	const struct clk_init_data *init = hw->init;
> +	char **parent_names;
> +	int i, ret;
> +
> +	if (!hw->init)
> +		return ERR_PTR(-EINVAL);
> +
> +	clk = clk_hw_to_clk(hw);
> +
> +	clk->name = xstrdup(init->name);
> +	clk->ops = init->ops;
> +	clk->num_parents = init->num_parents;
> +	parent_names = xzalloc(init->num_parents * sizeof(char *));
> +
> +	for (i = 0; i < init->num_parents; i++)
> +		parent_names[i] = xstrdup(init->parent_names[i]);
> +
> +	clk->parent_names = (const char *const*)parent_names;
> +
> +	clk->flags = init->flags;
> +
> +	ret = bclk_register(clk);
> +	if (ret) {
> +		for (i = 0; i < init->num_parents; i++)
> +			free(parent_names[i]);
> +		free(parent_names);
> +		return ERR_PTR(ret);
> +	}
> +
> +	return clk;
> +}
> +
>  int clk_is_enabled(struct clk *clk)
>  {
>  	int enabled;
> diff --git a/include/linux/clk.h b/include/linux/clk.h
> index 66ac6a9f14..654845023a 100644
> --- a/include/linux/clk.h
> +++ b/include/linux/clk.h
> @@ -399,6 +399,7 @@ struct clk {
>   */
>  struct clk_hw {
>  	struct clk clk;
> +	const struct clk_init_data *init;
>  };
>  
>  static inline struct clk *clk_hw_to_clk(struct clk_hw *hw)
> @@ -547,6 +548,7 @@ int clk_parent_set_rate(struct clk_hw *hw, unsigned long rate,
>  				unsigned long parent_rate);
>  
>  int bclk_register(struct clk *clk);
> +struct clk *clk_register(struct device_d *dev, struct clk_hw *hw);
>  
>  struct clk *clk_lookup(const char *name);
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

