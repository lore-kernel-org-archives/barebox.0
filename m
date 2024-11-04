Delivery-date: Mon, 04 Nov 2024 12:32:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7vK1-004j3R-1N
	for lore@lore.pengutronix.de;
	Mon, 04 Nov 2024 12:32:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7vK2-0004MP-1A
	for lore@pengutronix.de; Mon, 04 Nov 2024 12:32:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r8/7ewhD/zw/N9Eq/YDVyhrdhqzMXfi7dnpWq9IQc2s=; b=gkM0CBfGQu4WdWfUkedzBamqza
	J1+6gYgzsk9QojXID0afclaSMqDY/7MR7i4pYEo4Z0aXHggTUwq2FyWcD8QIG2S5CPt3GHrp23YeM
	MZjAQtXYm59ATQGY1wjOj3w0rogicnmaHzz/gPHwLc6R98W9dlbuhkIgl+19Yu2REUF8CcPYldC3J
	lz/U10vEt5am7mKnZrRVIhBe/aoGpRHCTN36DdgBL4gBimLCqgOIJ+/hHpJYIJrGujuLPwaQX8vpL
	M3DsGoRay/cW3SoNBfK1/wKqbbSfPUzZ6CQ/77pl8x9zIqZ/2K/a6ZEfq2gsJC2bj2RrIjcByoxAi
	emSu1g6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7vJM-0000000DXFC-44pR;
	Mon, 04 Nov 2024 11:31:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7vB0-0000000DUwc-25Tm
	for barebox@bombadil.infradead.org;
	Mon, 04 Nov 2024 11:23:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=r8/7ewhD/zw/N9Eq/YDVyhrdhqzMXfi7dnpWq9IQc2s=; b=eyGQlntywUngGwmcu8TYpaYuvU
	NM1DXwmzjN+BK0yDkQl1ohN0fPv+CX1We/g4o28ExlS/yXJrX18R/fbTth20KQDimbuRD1oCgSK1e
	IPblzMyrDGOfiM4GoKLy2craW/jM8Jd5LmQgVem61dkDEGHvzryBveLwM7eV2e8ca7sRcsQ6tLhUV
	uE7PB0nV1q+zv8kYrSnMtb06jfyxOVK71m9pGyt6I+wrFz7PPyAxx381DqHmC0gD+dqDP6GuxFh3C
	74prlGWkdrSNGjiLr4q9k5OClo+13LqFdb6rBtxfCBrmzxBWFEaoCuLzquShpyi0CfsyWiAyQH1zb
	X9GaBePw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7vAx-0000000BJEK-0suC
	for barebox@lists.infradead.org;
	Mon, 04 Nov 2024 11:23:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t7vAw-0002o7-MQ; Mon, 04 Nov 2024 12:23:14 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t7vAw-001yCO-1P;
	Mon, 04 Nov 2024 12:23:14 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t7vAw-00DSPY-18;
	Mon, 04 Nov 2024 12:23:14 +0100
Date: Mon, 4 Nov 2024 12:23:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zyiuov_7uSuxgs-Y@pengutronix.de>
References: <20241029-v2024-10-0-topic-socfpga-agilex5-v1-0-96df2d7dadf4@pengutronix.de>
 <20241029-v2024-10-0-topic-socfpga-agilex5-v1-10-96df2d7dadf4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241029-v2024-10-0-topic-socfpga-agilex5-v1-10-96df2d7dadf4@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_112315_491017_396A0FBE 
X-CRM114-Status: GOOD (  22.45  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/10] clk: socfpga: add agilex5 clock support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 29, 2024 at 09:42:40AM +0100, Steffen Trumtrar wrote:
> Add support for the Stratix10 and Agilex5 pll,gate and periph clocks.
> 
> Only tested on Agilex5.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/clk/socfpga/Makefile              |   4 +-
>  drivers/clk/socfpga/clk-agilex5.c         | 834 ++++++++++++++++++++++++++++++
>  drivers/clk/socfpga/clk-gate-s10.c        | 184 +++++++
>  drivers/clk/socfpga/clk-periph-s10.c      | 163 ++++++
>  drivers/clk/socfpga/clk-pll-s10.c         | 140 +++++
>  drivers/clk/socfpga/clk.h                 |   9 +
>  drivers/clk/socfpga/stratix10-clk.h       |  73 +++
>  include/dt-bindings/clock/agilex5-clock.h | 135 +++--
>  8 files changed, 1488 insertions(+), 54 deletions(-)

Move this patch up. clk support should be available when adding a board
using it.

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
> +
> +	num_clks = AGILEX5_NUM_CLKS;
> +
> +	clk_data = xzalloc(struct_size(clk_data, clk_data.hws, num_clks));
> +	if (!clk_data)
> +		return -ENOMEM;

Won't happen.

> +static int socfpga_gate_get_parent(struct clk_hw *hwclk)
> +{
> +	struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(hwclk);
> +	u32 mask, second_bypass;
> +	u8 parent = 0;
> +	const char *name = clk_hw_get_name(hwclk);
> +
> +printk("%s: %s\n", __func__, name);
> +
> +	if (socfpgaclk->bypass_reg) {
> +		mask = (0x1 << socfpgaclk->bypass_shift);
> +		parent = ((readl(socfpgaclk->bypass_reg) & mask) >>
> +			  socfpgaclk->bypass_shift);
> +printk("%s: parent %d\n", __func__, parent);

Debugging leftovers.

> +struct clk_hw *agilex_register_gate(const struct stratix10_gate_clock *clks, void __iomem *regbase)
> +{
> +	struct clk_hw *hw_clk;
> +	struct socfpga_gate_clk *socfpga_clk;
> +	struct clk_init_data init;
> +	const char *parent_name = clks->parent_name;
> +	int ret;
> +
> +	socfpga_clk = kzalloc(sizeof(*socfpga_clk), GFP_KERNEL);
> +	if (!socfpga_clk)
> +		return NULL;

Won't happen.

> diff --git a/include/dt-bindings/clock/agilex5-clock.h b/include/dt-bindings/clock/agilex5-clock.h

We have dts/include/dt-bindings/clock/intel,agilex5-clkmgr.h derived
from upstream dts import. Please switch to this one instead.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


