Delivery-date: Mon, 06 Feb 2023 08:43:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pOwA1-00Fjsg-2J
	for lore@lore.pengutronix.de; Mon, 06 Feb 2023 08:43:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pOw9x-0002ke-QI
	for lore@pengutronix.de; Mon, 06 Feb 2023 08:43:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=upxQtaBxsPqEbldmPtanonqwbK4z0qzFlERUn+eWwq0=; b=D1kLHNDV/PmSd4SgyFabSBZR8I
	QCDngTCOp7kOZq2tw+wuLiWNy/lYdY+ziUGZpslzGbxBBNbdnnB/q/enchl0FZZ2BOa+a3XoXQCoI
	JANRy2HzArWQQh5ScTxWH9HFyJePzcEBe2JZGyOywV1Cy+6ZPyUpCJyq0EBvRP4+MkEMOHcFfPqb5
	/1m4Am5lviwecHF9zB3XOgWC6fY+xKhLGF2H1KcPVPJUkvKvtDNCzEdnPzFgtZsT0Cms1kZYH1cON
	u6WXQN/grXPCURwgUJVw/btzuiicPCu15zMdlhd/1RckMMWWizRfflofYwdL2drTdpDPpgenKcUej
	8Mocv7vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOw8M-007bTc-Jf; Mon, 06 Feb 2023 07:41:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOw8H-007bRr-1W
	for barebox@lists.infradead.org; Mon, 06 Feb 2023 07:41:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pOw8C-0002UU-Fl; Mon, 06 Feb 2023 08:41:40 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pOw8C-0002hW-8q; Mon, 06 Feb 2023 08:41:40 +0100
Date: Mon, 6 Feb 2023 08:41:40 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230206074140.GA13319@pengutronix.de>
References: <20230202120524.469258-1-l.stach@pengutronix.de>
 <20230203075558.GN13319@pengutronix.de>
 <e7c1e8c764dea60df8ebfe116ceb0c172fc4e64c.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e7c1e8c764dea60df8ebfe116ceb0c172fc4e64c.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230205_234145_104541_C4D2B6A5 
X-CRM114-Status: GOOD (  27.68  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: imx8mp: add USB suspend clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 03, 2023 at 10:07:22AM +0100, Lucas Stach wrote:
> Am Freitag, dem 03.02.2023 um 08:55 +0100 schrieb Sascha Hauer:
> > On Thu, Feb 02, 2023 at 01:05:24PM +0100, Lucas Stach wrote:
> > > Linux added another USB clock to properly describe the controller root
> > > and suspend clocks. As new DTs are using this clock to keep the shared
> > > gate enabled, access to the USB controller will hang Barebox without
> > > support for this clock.
> > > 
> > > Fixes: 0d682a2997a8 ("dts: update to v6.2-rc5")
> > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > ---
> > >  drivers/clk/imx/clk-imx8mp.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
> > > index a1611be1833e..40578c2a4bd6 100644
> > > --- a/drivers/clk/imx/clk-imx8mp.c
> > > +++ b/drivers/clk/imx/clk-imx8mp.c
> > > @@ -665,7 +665,8 @@ static int imx8mp_clocks_init(struct device_node *ccm_np)
> > >  	hws[IMX8MP_CLK_UART2_ROOT] = imx_clk_hw_gate4("uart2_root_clk", "uart2", ccm_base + 0x44a0, 0);
> > >  	hws[IMX8MP_CLK_UART3_ROOT] = imx_clk_hw_gate4("uart3_root_clk", "uart3", ccm_base + 0x44b0, 0);
> > >  	hws[IMX8MP_CLK_UART4_ROOT] = imx_clk_hw_gate4("uart4_root_clk", "uart4", ccm_base + 0x44c0, 0);
> > > -	hws[IMX8MP_CLK_USB_ROOT] = imx_clk_hw_gate4("usb_root_clk", "osc_32k", ccm_base + 0x44d0, 0);
> > > +	hws[IMX8MP_CLK_USB_ROOT] = imx_clk_hw_gate2_shared2("usb_root_clk", "hsio_axi", ccm_base + 0x44d0, 0);
> > > +	hws[IMX8MP_CLK_USB_SUSP] = imx_clk_hw_gate2_shared2("usb_suspend_clk", "osc_32k", ccm_base + 0x44d0, 0);
> > 
> > Do old dts files work with this change? In other words, can I apply this
> > directly to master or do I have to squash this change into the commit
> > that changes imx8mp.dtsi to use this clock?
> > 
> As the old clock ID is still supported from the clock driver after this
> change and operates the same gate, it should be fine to apply this
> patch to master.

Ok, just did that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


