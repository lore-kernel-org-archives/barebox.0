Delivery-date: Tue, 24 Jun 2025 11:00:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTzVw-00AY7f-1a
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 11:00:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTzVv-0002UV-Tt
	for lore@pengutronix.de; Tue, 24 Jun 2025 11:00:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z0HAfoY96PSX5Mh6N6SlpsFLkBHQ+RFTMDGmKjuYII4=; b=TLjg3Zrwr/68DbOzyj9XzAhuHn
	HYHcJMBChCBQ2uzlDdOqPQxLyvJw5+sd7s8DO0UpTwNdRmA5EiVONmCPeSjb81IT9/SGu1ZrHYx1w
	EtUziYdwlDWz7bCIBPKie7lwHSR9jfBGFk4qSZ+n4071LWNUZxq6H3FPlNDcg5+4GZUt++6oWVTyn
	XuU/WXjHDHVWDjYQMJRkFV1d8usS+tl3NA9aut986fGQrVh8sfjxg/YWW2ryayWvk7lS3d4A7/7VP
	XqzNBVfM3M94H08xeL9UCCmpvENk63yX+KtZkoM14lSD/aC42h+3b6YV854TgEaBrYLcmlkrHi0PX
	VhkBceEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTzVQ-000000056am-3zjf;
	Tue, 24 Jun 2025 08:59:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTzI0-000000054cO-0auA
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 08:46:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uTzHy-0004CV-Sp; Tue, 24 Jun 2025 10:45:58 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uTzHy-0055Fp-2G;
	Tue, 24 Jun 2025 10:45:58 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uTzHy-00F75A-1j;
	Tue, 24 Jun 2025 10:45:58 +0200
Date: Tue, 24 Jun 2025 10:45:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aFplxg4CG5vvpxu3@pengutronix.de>
References: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-0-e9de9e31b2c1@pengutronix.de>
 <20250623-v2024-10-0-topic-socfpga-agilex5-v3-7-e9de9e31b2c1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-7-e9de9e31b2c1@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_014600_182793_7728F812 
X-CRM114-Status: GOOD (  18.05  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 07/10] clk: socfpga: add agilex5 clock support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jun 23, 2025 at 03:57:52PM +0200, Steffen Trumtrar wrote:
> +
> +static int agilex5_clkmgr_probe(struct device *dev)
> +{
> +	struct device_node *np = dev->of_node;
> +	struct stratix10_clock_data *clk_data;
> +	struct resource *res;
> +	int i, num_clks;
> +
> +	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
> +	if (IS_ERR(res))
> +		return PTR_ERR(res);

dev_get_resource() should only be used when you know it is used
somewhere else as well. Otherwise please use dev_request_mem_resource().
That way you will recognize conflicts and as an additional bonus the
resource will show up in iomem ooutput.

> +static int __init agilex5_clk_init(void)
> +{
> +	return platform_driver_register(&agilex5_clkmgr_driver);
> +}
> +core_initcall(agilex5_clk_init);

You could use core_platform_driver here.


> +static unsigned long clk_peri_c_clk_recalc_rate(struct clk_hw *hwclk,
> +					     unsigned long parent_rate)
> +{
> +	struct socfpga_periph_clk *socfpgaclk = to_periph_clk(hwclk);
> +	unsigned long div = 1;
> +	u32 val;
> +
> +	val = readl(socfpgaclk->reg);
> +	val &= GENMASK(SWCTRLBTCLKSEN_SHIFT - 1, 0);
> +	parent_rate /= val;
> +
> +	return parent_rate / div;

div is always 1.

> +}
> +
> +struct clk_hw *agilex5_register_pll(const struct stratix10_pll_clock *clks,
> +				void __iomem *reg)
> +{
> +	struct clk_hw *hw_clk;
> +	struct socfpga_pll *pll_clk;
> +	struct clk_init_data init;
> +	const char *name = clks->name;
> +	int ret;
> +
> +	pll_clk = xzalloc(sizeof(*pll_clk));
> +	if (!pll_clk)
> +		return ERR_PTR(-ENOMEM);

xzalloc never fails.

You kept the original kzalloc in some places and replaced with xzalloc
elsewhere. Could you use xzalloc consistently?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


