Delivery-date: Wed, 31 Aug 2022 10:28:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTJ5e-002Ujq-Cq
	for lore@lore.pengutronix.de; Wed, 31 Aug 2022 10:28:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTJ5c-00072N-EI
	for lore@pengutronix.de; Wed, 31 Aug 2022 10:28:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=30oZfvPOqVPuD9PtZLRWGD8+FtO1x60pK7iSHKp7gg8=; b=1R0BpBVlEXtCAZUTSVm48DyEhX
	dbu9uuaKC/IwePKB9a08Aal//RQoFepuLjjtHviu2l594neH1NUuh+I/2qAa/rVL5ZZL7+rcQOjQ5
	Q2VFGb65tcUFCn360XOBho5zSuV7rdeQ/PMxFSMyMEL2YSsYkXtlVzqVDG9dkRtRQV13xka16ZFDp
	8+BilOwkrktDAW22IJMgkn+5ad5I0jP7xUdBFxjuGxgahejJTWuc/DKQ2uuQlkyywEf+8qQOgEfUC
	jgjYSacqlP410koiWAu0Z3ie5YmrWR7ZniwX9mlOT9Jvn2yErmc8mHIWM1uGz+x5SSGcUyYuhgFDa
	y3BdX+0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTJ3j-004w6U-4c; Wed, 31 Aug 2022 08:26:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTIyq-004trP-Hm
	for barebox@lists.infradead.org; Wed, 31 Aug 2022 08:21:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=irc.pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1oTIym-0005vb-Pw; Wed, 31 Aug 2022 10:21:44 +0200
Message-ID: <ea03c971490b991a53b332beaded392862525f50.camel@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Aug 2022 10:21:29 +0200
In-Reply-To: <20220830150522.GI24324@pengutronix.de>
References: <20220830083937.466171-1-j.zink@pengutronix.de>
	 <20220830150522.GI24324@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_012148_636318_66D9F240 
X-CRM114-Status: GOOD (  36.63  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] clks: imx7: fix initial clock setup with deep probe
 enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On Tue, 2022-08-30 at 17:05 +0200, Sascha Hauer wrote:
> On Tue, Aug 30, 2022 at 10:39:37AM +0200, Johannes Zink wrote:
> > We register the i.MX7 clock controller driver at core_initcall
> > level and
> > then do some initial clock setup/reparenting at postcore_initcall
> > level.
> > This doesn't work as expected when deep probe is enabled, because
> > while
> > the driver is registered at core_initcall level, it's only probed
> > later on, currently at postcore_initcall level because it's a
> > dependency
> > of the timer for which of_ensure_device_probed is called.
> > 
> > As the initial clock setup is also at postcore_initcall level, it's
> > no
> > longer guaranteed that the code executes in the same order. Fix
> > this by
> > directly doing the setup at the end of the probe function.
> 
> Does this still work with deep probe disabled?
> 
> I am asking because this effectively reverts bce79428773 ("clk:
> i.MX7: do
> clock reparenting when all clocks are initialized"). Switching all
> i.MX7 boards to deep probe might be a solution as well.
> 
> Sascha
> 

Though I would not _expect_ any problems here, I would like to check
that more thoroughly. This will probably take a bit, please stand by.

Best regards
Johannes

> 
> > 
> > Co-developed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> > ---
> >  drivers/clk/imx/clk-imx7.c | 62 +++++++++++++++++-----------------
> > ----
> >  1 file changed, 27 insertions(+), 35 deletions(-)
> > 
> > diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-
> > imx7.c
> > index ffa39d17b0..67876a8404 100644
> > --- a/drivers/clk/imx/clk-imx7.c
> > +++ b/drivers/clk/imx/clk-imx7.c
> > @@ -358,7 +358,32 @@ static int const clks_init_on[] __initconst =
> > {
> >  
> >  static struct clk_onecell_data clk_data;
> >  
> > -static int imx7_clk_initialized;
> > +static void imx7_clk_setup(void)
> > +{
> > +       int i;
> > +
> > +       clks[IMX7D_OSC_24M_CLK] = clk_lookup("osc");
> > +
> > +       for (i = 0; i < ARRAY_SIZE(clks_init_on); i++)
> > +               clk_enable(clks[clks_init_on[i]]);
> > +
> > +       /* use old gpt clk setting, gpt1 root clk must be twice as
> > gpt counter freq */
> > +       clk_set_parent(clks[IMX7D_GPT1_ROOT_SRC],
> > clks[IMX7D_OSC_24M_CLK]);
> > +
> > +       /* set uart module clock's parent clock source that must be
> > great then 80MHz */
> > +       clk_set_parent(clks[IMX7D_UART1_ROOT_SRC],
> > clks[IMX7D_OSC_24M_CLK]);
> > +
> > +       clk_set_parent(clks[IMX7D_ENET1_REF_ROOT_SRC],
> > clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
> > +       clk_set_parent(clks[IMX7D_ENET1_TIME_ROOT_SRC],
> > clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
> > +       clk_set_parent(clks[IMX7D_ENET2_REF_ROOT_SRC],
> > clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
> > +       clk_set_parent(clks[IMX7D_ENET2_TIME_ROOT_SRC],
> > clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
> > +
> > +       clk_set_rate(clks[IMX7D_PLL_SYS_PFD4_CLK], 392000000);
> > +       clk_set_parent(clks[IMX7D_ENET_AXI_ROOT_SRC],
> > clks[IMX7D_PLL_SYS_PFD4_CLK]);
> > +       clk_set_rate(clks[IMX7D_ENET_AXI_ROOT_CLK], 197000000);
> > +       clk_set_rate(clks[IMX7D_ENET1_TIME_ROOT_CLK], 25000000);
> > +       clk_set_rate(clks[IMX7D_ENET2_TIME_ROOT_CLK], 25000000);
> > +}
> >  
> >  static int imx7_ccm_probe(struct device_d *dev)
> >  {
> > @@ -806,43 +831,10 @@ static int imx7_ccm_probe(struct device_d
> > *dev)
> >         clk_data.clk_num = ARRAY_SIZE(clks);
> >         of_clk_add_provider(dev->device_node,
> > of_clk_src_onecell_get, &clk_data);
> >  
> > -       imx7_clk_initialized = 1;
> > -
> > -       return 0;
> > -}
> > -
> > -static int imx7_clk_setup(void)
> > -{
> > -       int i;
> > -
> > -       if (!imx7_clk_initialized)
> > -               return 0;
> > -
> > -       clks[IMX7D_OSC_24M_CLK] = clk_lookup("osc");
> > -
> > -       for (i = 0; i < ARRAY_SIZE(clks_init_on); i++)
> > -               clk_enable(clks[clks_init_on[i]]);
> > -
> > -       /* use old gpt clk setting, gpt1 root clk must be twice as
> > gpt counter freq */
> > -       clk_set_parent(clks[IMX7D_GPT1_ROOT_SRC],
> > clks[IMX7D_OSC_24M_CLK]);
> > -
> > -       /* set uart module clock's parent clock source that must be
> > great then 80MHz */
> > -       clk_set_parent(clks[IMX7D_UART1_ROOT_SRC],
> > clks[IMX7D_OSC_24M_CLK]);
> > -
> > -       clk_set_parent(clks[IMX7D_ENET1_REF_ROOT_SRC],
> > clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
> > -       clk_set_parent(clks[IMX7D_ENET1_TIME_ROOT_SRC],
> > clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
> > -       clk_set_parent(clks[IMX7D_ENET2_REF_ROOT_SRC],
> > clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
> > -       clk_set_parent(clks[IMX7D_ENET2_TIME_ROOT_SRC],
> > clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
> > -
> > -       clk_set_rate(clks[IMX7D_PLL_SYS_PFD4_CLK], 392000000);
> > -       clk_set_parent(clks[IMX7D_ENET_AXI_ROOT_SRC],
> > clks[IMX7D_PLL_SYS_PFD4_CLK]);
> > -       clk_set_rate(clks[IMX7D_ENET_AXI_ROOT_CLK], 197000000);
> > -       clk_set_rate(clks[IMX7D_ENET1_TIME_ROOT_CLK], 25000000);
> > -       clk_set_rate(clks[IMX7D_ENET2_TIME_ROOT_CLK], 25000000);
> > +       imx7_clk_setup();
> >  
> >         return 0;
> >  }
> > -postcore_initcall(imx7_clk_setup);
> >  
> >  static __maybe_unused struct of_device_id imx7_ccm_dt_ids[] = {
> >         {
> > -- 
> > 2.30.2
> > 
> > 
> > 
> 

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



