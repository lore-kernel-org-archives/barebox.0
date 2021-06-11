Delivery-date: Fri, 11 Jun 2021 11:20:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrdLR-000373-VE
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 11:20:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrdLQ-0000fA-Ao
	for lore@pengutronix.de; Fri, 11 Jun 2021 11:20:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=klhaCqV86zm5RYUMny8QPS3pu0qf4JMwQ/N4h/XGds4=; b=X2bB9w0OJWGSVgTsFQkOSeEejw
	4R6F2gCmA0+iqiG9A5tN9AkAFD4auHgrwBWG0Wu1s0ybRcchZzgkJKoi2qloCwtzeMZdKmlnWodFb
	oHcRffKWtrP5/7cQpR4gyzEvEXsaPLkIcMCtRTCui22qtZKse3LGRZUzkeGmtdJzwLAbWxP4xrkh2
	5Fkh3fs0BnYgjlahF90aD6n+MhH/H1V3Qqo6tvZdRPDjFvOmpi0v0dL+l+friWXTL7Zm5hfPA3I81
	G72MF7py9VvrsRSBF3qBXcIwl9RvUjkFr95MFZLJVmQ2/MzN7YPtxhoEbaq4SJ2/ynJjNmiXssTeO
	JKp90ZFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrdJz-004UkR-Iw; Fri, 11 Jun 2021 09:19:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrdJr-004Uiw-5Q
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 09:19:17 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lrdJp-0000Ls-Qw; Fri, 11 Jun 2021 11:19:13 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
 <20210602095507.24609-5-s.hauer@pengutronix.de>
 <6dde4130-1f96-d925-9e53-9f8c74d89a1f@pengutronix.de>
 <20210611084107.GC22904@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <791dae7e-82b4-ae55-799d-8dd164b24f0c@pengutronix.de>
Date: Fri, 11 Jun 2021 11:19:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210611084107.GC22904@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_021915_412142_A048E0D0 
X-CRM114-Status: GOOD (  40.52  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/24] clk: introduce struct clk_hw
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 11.06.21 10:41, Sascha Hauer wrote:
> On Fri, Jun 11, 2021 at 09:55:36AM +0200, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 02.06.21 11:54, Sascha Hauer wrote:
>>
>>> In Linux the ops in struct clk_ops take a struct clk_hw * argument
>>
>>> instead of a struct clk * argument as in barebox. With this taking
>>
>>> new clk drivers from Linux requires a lot of mechanical conversions.
>>
>>> Instead of doing this over and over again swallow the pill once and
>>
>>> convert the existing barebox code over to clk_hw.
>>
>>>
>>
>>> The implementation is a little different from Linux. In Linux struct clk
>>
>>> is only known to the core clock code. In barebox struct clk is
>>
>>> publically known and it is embedded into struct clk_hw. This allows
>>
>>> us to still use struct clk members in the clock drivers which we
>>
>>> currently still need, because otherwise this patch would be even
>>
>>> bigger.
>>
>>>
>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>
>> drivers/clk/sifive, which was added recently doesn't have these changes
>> and thus the build fails. To reproduce, without installed RISC-V toolchain, try:
>>
>>    ./test/emulate.pl --runtime=podman sifive_defconfig
> 
> Can't exec "tuxmake": No such file or directory at ./test/emulate.pl line 377.
> 
> Where do I get this from?

pip3 install tuxmake

>> Doing the conversions aren't completely trivial to me, as there are no
>> clkdev clk_hw helpers ported and I still need to figure out how to use them.
>> Given that your caches are still hot, could you take a look?
> 
> Here we go. I added the following to next.

Just tested in QEMU and works fine!
You should still try emulate.pl above though. If it runs through, it will
start a QEMU VM, where dhcp working will tell you that the clock changes
seem ok.

Cheers,
Ahmad

> 
> Sascha
> 
> ---------------------------8<--------------------------------
> 
> From 61da1fea5d3c516d7f2609daebfc19e035a4c485 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Fri, 11 Jun 2021 10:38:27 +0200
> Subject: [PATCH] clk: sifive: Fix missing conversion to struct clk_hw
> 
> Sifive was not converted to the recent struct clk_hw changes. Add these.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/clk/sifive/sifive-prci.c | 42 +++++++++++++++++---------------
>  drivers/clk/sifive/sifive-prci.h | 18 +++++++-------
>  2 files changed, 32 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/clk/sifive/sifive-prci.c b/drivers/clk/sifive/sifive-prci.c
> index b452bbf8cc..1701a2c5a0 100644
> --- a/drivers/clk/sifive/sifive-prci.c
> +++ b/drivers/clk/sifive/sifive-prci.c
> @@ -185,7 +185,7 @@ static void __prci_wrpll_write_cfg1(struct __prci_data *pd,
>   * these functions.
>   */
>  
> -unsigned long sifive_prci_wrpll_recalc_rate(struct clk *hw,
> +unsigned long sifive_prci_wrpll_recalc_rate(struct clk_hw *hw,
>  					    unsigned long parent_rate)
>  {
>  	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
> @@ -194,7 +194,7 @@ unsigned long sifive_prci_wrpll_recalc_rate(struct clk *hw,
>  	return wrpll_calc_output_rate(&pwd->c, parent_rate);
>  }
>  
> -long sifive_prci_wrpll_round_rate(struct clk *hw,
> +long sifive_prci_wrpll_round_rate(struct clk_hw *hw,
>  				  unsigned long rate,
>  				  unsigned long *parent_rate)
>  {
> @@ -209,7 +209,7 @@ long sifive_prci_wrpll_round_rate(struct clk *hw,
>  	return wrpll_calc_output_rate(&c, *parent_rate);
>  }
>  
> -int sifive_prci_wrpll_set_rate(struct clk *hw,
> +int sifive_prci_wrpll_set_rate(struct clk_hw *hw,
>  			       unsigned long rate, unsigned long parent_rate)
>  {
>  	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
> @@ -231,7 +231,7 @@ int sifive_prci_wrpll_set_rate(struct clk *hw,
>  	return 0;
>  }
>  
> -int sifive_clk_is_enabled(struct clk *hw)
> +int sifive_clk_is_enabled(struct clk_hw *hw)
>  {
>  	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
>  	struct __prci_wrpll_data *pwd = pc->pwd;
> @@ -246,7 +246,7 @@ int sifive_clk_is_enabled(struct clk *hw)
>  		return 0;
>  }
>  
> -int sifive_prci_clock_enable(struct clk *hw)
> +int sifive_prci_clock_enable(struct clk_hw *hw)
>  {
>  	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
>  	struct __prci_wrpll_data *pwd = pc->pwd;
> @@ -263,7 +263,7 @@ int sifive_prci_clock_enable(struct clk *hw)
>  	return 0;
>  }
>  
> -void sifive_prci_clock_disable(struct clk *hw)
> +void sifive_prci_clock_disable(struct clk_hw *hw)
>  {
>  	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
>  	struct __prci_wrpll_data *pwd = pc->pwd;
> @@ -281,7 +281,7 @@ void sifive_prci_clock_disable(struct clk *hw)
>  
>  /* TLCLKSEL clock integration */
>  
> -unsigned long sifive_prci_tlclksel_recalc_rate(struct clk *hw,
> +unsigned long sifive_prci_tlclksel_recalc_rate(struct clk_hw *hw,
>  					       unsigned long parent_rate)
>  {
>  	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
> @@ -298,7 +298,7 @@ unsigned long sifive_prci_tlclksel_recalc_rate(struct clk *hw,
>  
>  /* HFPCLK clock integration */
>  
> -unsigned long sifive_prci_hfpclkplldiv_recalc_rate(struct clk *hw,
> +unsigned long sifive_prci_hfpclkplldiv_recalc_rate(struct clk_hw *hw,
>  						   unsigned long parent_rate)
>  {
>  	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
> @@ -473,6 +473,7 @@ void sifive_prci_hfpclkpllsel_use_hfpclkpll(struct __prci_data *pd)
>  static int __prci_register_clocks(struct device_d *dev, struct __prci_data *pd,
>  				  const struct prci_clk_desc *desc)
>  {
> +	struct clk_init_data init = { };
>  	struct __prci_clock *pic;
>  	int parent_count, i, r;
>  
> @@ -485,33 +486,36 @@ static int __prci_register_clocks(struct device_d *dev, struct __prci_data *pd,
>  
>  	/* Register PLLs */
>  	for (i = 0; i < desc->num_clks; ++i) {
> +		struct clk *clk;
> +
>  		pic = &(desc->clks[i]);
>  
> -		pic->hw.name = pic->name;
> -		pic->hw.parent_names = &pic->parent_name;
> -		pic->hw.num_parents = 1;
> -		pic->hw.ops = pic->ops;
> +		init.name = pic->name;
> +		init.parent_names = &pic->parent_name;
> +		init.num_parents = 1;
> +		init.ops = pic->ops;
> +		pic->hw.init = &init;
>  
>  		pic->pd = pd;
>  
>  		if (pic->pwd)
>  			__prci_wrpll_read_cfg0(pd, pic->pwd);
>  
> -		r = clk_register(&pic->hw);
> -		if (r) {
> +		clk = clk_register(dev, &pic->hw);
> +		if (IS_ERR(clk)) {
>  			dev_warn(dev, "Failed to register clock %s: %d\n",
> -				 pic->hw.name, r);
> -			return r;
> +				 clk_hw_get_name(&pic->hw), r);
> +			return PTR_ERR(clk);
>  		}
>  
> -		r = clk_register_clkdev(&pic->hw, pic->name, dev_name(dev));
> +		r = clk_register_clkdev(clk, pic->name, dev_name(dev));
>  		if (r) {
>  			dev_warn(dev, "Failed to register clkdev for %s: %d\n",
> -				 pic->hw.name, r);
> +				 clk_hw_get_name(&pic->hw), r);
>  			return r;
>  		}
>  
> -		pd->hw_clks.clks[i] = &pic->hw;
> +		pd->hw_clks.clks[i] = clk;
>  	}
>  
>  	pd->hw_clks.clk_num = i;
> diff --git a/drivers/clk/sifive/sifive-prci.h b/drivers/clk/sifive/sifive-prci.h
> index d851553818..e7a04ae790 100644
> --- a/drivers/clk/sifive/sifive-prci.h
> +++ b/drivers/clk/sifive/sifive-prci.h
> @@ -254,7 +254,7 @@ struct __prci_clock {
>  	const char *name;
>  	const char *parent_name;
>  	const struct clk_ops *ops;
> -	struct clk hw;
> +	struct clk_hw hw;
>  	struct __prci_wrpll_data *pwd;
>  	struct __prci_data *pd;
>  };
> @@ -281,18 +281,18 @@ void sifive_prci_hfpclkpllsel_use_hfclk(struct __prci_data *pd);
>  void sifive_prci_hfpclkpllsel_use_hfpclkpll(struct __prci_data *pd);
>  
>  /* Linux clock framework integration */
> -long sifive_prci_wrpll_round_rate(struct clk *hw, unsigned long rate,
> +long sifive_prci_wrpll_round_rate(struct clk_hw *hw, unsigned long rate,
>  				  unsigned long *parent_rate);
> -int sifive_prci_wrpll_set_rate(struct clk *hw, unsigned long rate,
> +int sifive_prci_wrpll_set_rate(struct clk_hw *hw, unsigned long rate,
>  			       unsigned long parent_rate);
> -int sifive_clk_is_enabled(struct clk *hw);
> -int sifive_prci_clock_enable(struct clk *hw);
> -void sifive_prci_clock_disable(struct clk *hw);
> -unsigned long sifive_prci_wrpll_recalc_rate(struct clk *hw,
> +int sifive_clk_is_enabled(struct clk_hw *hw);
> +int sifive_prci_clock_enable(struct clk_hw *hw);
> +void sifive_prci_clock_disable(struct clk_hw *hw);
> +unsigned long sifive_prci_wrpll_recalc_rate(struct clk_hw *hw,
>  					    unsigned long parent_rate);
> -unsigned long sifive_prci_tlclksel_recalc_rate(struct clk *hw,
> +unsigned long sifive_prci_tlclksel_recalc_rate(struct clk_hw *hw,
>  					       unsigned long parent_rate);
> -unsigned long sifive_prci_hfpclkplldiv_recalc_rate(struct clk *hw,
> +unsigned long sifive_prci_hfpclkplldiv_recalc_rate(struct clk_hw *hw,
>  						   unsigned long parent_rate);
>  
>  #endif /* __SIFIVE_CLK_SIFIVE_PRCI_H */
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

