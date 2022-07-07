Delivery-date: Thu, 07 Jul 2022 16:41:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9ShL-009NaA-77
	for lore@lore.pengutronix.de; Thu, 07 Jul 2022 16:41:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9ShN-00075c-8Y
	for lore@pengutronix.de; Thu, 07 Jul 2022 16:41:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IfpZr24hnA6KzH9B/+Jm6/YlMZjbGZC13v8T/K9XH3Q=; b=DmcdF6ojx97ioAMUhJLCrxMa0D
	XHEV4AamBgLcwKMKVbu5VJCez8TrUt+kS68o6e8sh+P1Ux/+eFx1tn3PC9bn8EymMZ9Dv+Q/OqdgQ
	QHW41Txmd6xFHAgusMTZc23/eB+HlJ/XOQYpLaFYooDV85W2nYQFYLN4p+3zX6YzTXyXh+XmgdK0q
	KvTllaOupXaz5mERMaiEWRqdM73Y9DpNlzHC6YOxIvNSgvXrFUiu5T4zMt6qUKoeeAZHAcT5YidAt
	+fzDHkKm0uKi903e8UU1uNRmE9N88i949yxR4IXSQeqGkgFczYN02TAvIwUEe9JbkflAMOI4EjyyX
	mTpKm9XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Sg9-00GWV2-L9; Thu, 07 Jul 2022 14:40:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Sg2-00GWQx-UF
	for barebox@lists.infradead.org; Thu, 07 Jul 2022 14:40:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=irc.pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1o9Sg1-0006ey-MV
	for barebox@lists.infradead.org; Thu, 07 Jul 2022 16:40:21 +0200
Message-ID: <81282e81cd16d8933407e07a8c53144d94353cdc.camel@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 07 Jul 2022 16:40:18 +0200
In-Reply-To: <20220706142105.2266956-4-m.felsch@pengutronix.de>
References: <20220706142105.2266956-1-m.felsch@pengutronix.de>
	 <20220706142105.2266956-4-m.felsch@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_074022_997399_CDAB1B38 
X-CRM114-Status: GOOD (  26.27  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/4] usb: chipidea: imx: call enable_clk after all
 resources are requested
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 2022-07-06 at 16:21 +0200, Marco Felsch wrote:
> Currently we enable the clock immediately after requesting it and
> leave
> it on the whole time. Afterwards if the phy request is failing we
> leave
> the usb-controller <-> usb-phy connection in a partly initialized
> state.
> At least on i.MX8M SoCs this can cause strange system hangs during
> boot.
> 
> The (more) correct way would be to have the whole power-domain
> framework
> and the blk-ctrl driver support within barebox. So we can leave the
> power-domain in a known good state for linux. Since this is not the
> case
> we can move the clk_enable() call so it gets called after we know
> that
> all ressources are available. So the probability to leave the system
> in
> a partly initialized state is lesser.
> 
> Drop the !IS_ERR() since NULL and errors are handled in clk_enable()
> as
> well.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/usb/imx/chipidea-imx.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/imx/chipidea-imx.c
> b/drivers/usb/imx/chipidea-imx.c
> index bf8b6f1eb8..f71cf80b7d 100644
> --- a/drivers/usb/imx/chipidea-imx.c
> +++ b/drivers/usb/imx/chipidea-imx.c
> @@ -260,8 +260,6 @@ static int imx_chipidea_probe(struct device_d
> *dev)
>          * devices which have only one.
>          */
>         ci->clk = clk_get(dev, NULL);
> -       if (!IS_ERR(ci->clk))
> -               clk_enable(ci->clk);
>  
>         /* Device trees are using both "phys" and "fsl,usbphy". 
> Prefer the
>          * more modern former one but fall back to the old one.
> @@ -302,6 +300,14 @@ static int imx_chipidea_probe(struct device_d
> *dev)
>         ci->data.drvdata = ci;
>         ci->data.usbphy = ci->usbphy;
>  
> +       /*
> +        * Enable the clock after we ensured that all resources are
> available.
> +        * This is crucial since the phy can be missing which and so
> the
> +        * usb-controller <-> usb-phy communication is only partly
> initialized.
> +        * This can trigger strange system hangs at least on i.MX8M
> SoCs.
> +        */
> +       clk_enable(ci->clk);
> +
>         if ((ci->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_HSIC)
>                 imx_chipidea_port_init(ci);
>  

Tested-by: Johannes Zink <j.zink@pengutronix.de> # i.MX7



