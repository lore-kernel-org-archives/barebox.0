Delivery-date: Tue, 04 Jul 2023 11:11:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGc4e-00EamI-V0
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 11:11:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGc4c-0003gU-DC
	for lore@pengutronix.de; Tue, 04 Jul 2023 11:11:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S97+jt7tbJQx/ngKf3Ub8mI3lY6VWBRUA+9drNJsorE=; b=slgyu7lF1ruw1frYmBYn9oDxfH
	bNWsDhTrzecNCBgDhG8d7C6qLsj5vClnrydboWauYyolTuM2a1C2ENC2fxI1dRo/d0tC06YfdXuVS
	F63Rwk3e7o/8jEmCrpoLf+zbww9flIXzWnJVzhn6fwgiS4/SPFSqjLbPnkngh/g6PvBj3XGbEZOCp
	haGg/t0oVbfCdKBvTUE79lKSxtvafuRfTwfxgiMnLV9PYXtOsB25a5frfU76AhQsVfOTLOsLms/IT
	ByGxACvG0e0CZkoRAgRzR22lw7z8rwxDxYV+z/s0UP5XBkMbJtebgswJDyTxOcbWSl7Dl36SHfBu2
	x+2G3lAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGc3V-00CfkI-07;
	Tue, 04 Jul 2023 09:10:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGc3S-00CfjU-0m
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 09:10:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGc3P-0003Rp-OP; Tue, 04 Jul 2023 11:10:35 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGc3P-0007wh-EO; Tue, 04 Jul 2023 11:10:35 +0200
Date: Tue, 4 Jul 2023 11:10:35 +0200
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org, Assmann Kai <Kai.Assmann@de.bosch.com>
Message-ID: <20230704091035.GZ18491@pengutronix.de>
References: <20230626103756.983193-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230626103756.983193-1-s.trumtrar@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_021038_285460_6DEDD9D9 
X-CRM114-Status: GOOD (  28.32  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: zynq: get ps_clk_rate from dt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 26, 2023 at 12:37:46PM +0200, Steffen Trumtrar wrote:
> From: "Assmann Kai (BEG/EMS1)" <Kai.Assmann@de.bosch.com>
> 
> This adds a barebox-specific binding to overwrite the PS clock
> frequency.
> 
> Currently the ps_clk_rate is locked to 33.3MHz. Introduce a devicetree
> property "ps-clock-frequency" that specifies this clock.
> 
> If the property is found, overwrite ps_clk_rate otherwise stay at the
> default 33.3MHz
> 
> Signed-off-by: Assmann Kai (BEG/MSD-NE2) <Kai.Assmann@de.bosch.com>
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---

Applied, thanks

Sascha

> 
> Notes:
>     changes since v1:
>      - reword commit message
>      - add binding rst
>      - change type of ps_clk_frequency
> 
>  .../devicetree/bindings/clocks/xlnx,ps7-clkc.rst       | 10 ++++++++++
>  drivers/clk/zynq/clkc.c                                |  4 +++-
>  2 files changed, 13 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/clocks/xlnx,ps7-clkc.rst
> 
> diff --git a/Documentation/devicetree/bindings/clocks/xlnx,ps7-clkc.rst b/Documentation/devicetree/bindings/clocks/xlnx,ps7-clkc.rst
> new file mode 100644
> index 0000000000..523b0cf56e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clocks/xlnx,ps7-clkc.rst
> @@ -0,0 +1,10 @@
> +Xilinx PS7 clkc
> +===============
> +
> +In addition to the upstream bindings, following properties are understood:
> +
> +Optional properties:
> +
> +- ``ps-clock-frequency`` : Overrides the ps clock frequency set by the driver.
> +  Per default the clock is set to 33.3MHz. When this property is set, the frequency
> +  is overwritten by the devicetree property.
> diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
> index 1219e25f7a..d6de583e32 100644
> --- a/drivers/clk/zynq/clkc.c
> +++ b/drivers/clk/zynq/clkc.c
> @@ -368,7 +368,7 @@ static int zynq_clock_probe(struct device *dev)
>  {
>  	struct resource *iores;
>  	void __iomem *clk_base;
> -	unsigned long ps_clk_rate = 33333330;
> +	u32 ps_clk_rate = 33333330;
>  	resource_size_t slcr_offset = 0;
>  
>  	iores = dev_get_resource(dev, IORESOURCE_MEM, 0);
> @@ -390,6 +390,8 @@ static int zynq_clock_probe(struct device *dev)
>  		slcr_offset = parent_res->start;
>  	}
>  
> +	of_property_read_u32(dev->device_node, "ps-clk-frequency", &ps_clk_rate);
> +
>  	iores = request_iomem_region(dev_name(dev), iores->start + slcr_offset,
>  				     iores->end + slcr_offset);
>  	if (IS_ERR(iores))
> -- 
> 2.41.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


