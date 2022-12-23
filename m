Delivery-date: Fri, 23 Dec 2022 10:17:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8eBd-005uI7-Mu
	for lore@lore.pengutronix.de; Fri, 23 Dec 2022 10:17:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8eBb-00066q-J6
	for lore@pengutronix.de; Fri, 23 Dec 2022 10:17:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ufbPcKPptL0b5DjzLlDWsTjqwNyRM89dp4rI+8ypPWc=; b=i0T6MxkaojGV6Ry5DvqjyTv1M8
	YeqiwelZ8/qw56rlIxIGjOC0gSvxs2uiMGSkn/KrmCeFRh4YLw2HCkbwC0m3kv2StVr0UJbLwN5O4
	/0zmG3xRzZ3avK+XBaSs1kj/SB8GVrpIaxcJBafroj6PfUJjAz4ZOv+vnDQPDeDmksi+aPQvFi4eG
	ui36+r0YtoNP7IAq1ZbRMIVd7kwiD2r7Rnf4/f+qEmM6dCsr4WseU1ZgreS6HeLRpr7KT/zqdM/8Z
	ZKzQwSBlTM5fijUBTBcxNAcqqtByhgamf6+JDpvJMYZrkVhwZtCNQl8hXALlpRa952FZMeiUo06eZ
	o/wf+oIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8eAL-005bwx-3C; Fri, 23 Dec 2022 09:16:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8e82-005aX0-H1
	for barebox@lists.infradead.org; Fri, 23 Dec 2022 09:14:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p8e80-0005VB-TY; Fri, 23 Dec 2022 10:14:08 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p8e80-0001Wa-GF; Fri, 23 Dec 2022 10:14:08 +0100
Date: Fri, 23 Dec 2022 10:14:08 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Leif Middelschulte <leif.middelschulte@klsmartin.com>,
	uol@pengutronix.de, ore@pengutronix.de,
	=?utf-8?B?U8O4cmVu?= Andersen <san@skov.dk>
Message-ID: <20221223091408.u27ndsftjcgsvrm6@pengutronix.de>
References: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
 <20221222141201.3087192-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221222141201.3087192-4-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_011410_733085_37D3063D 
X-CRM114-Status: GOOD (  18.24  )
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
Subject: Re: [PATCH 3/6] ARM: i.MX6: skov: refactor LVDS/parallel device tree
 fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22-12-22, Ahmad Fatoum wrote:
> In preparation for a fix in a follow-up commit, refactor the code, so
> each fixup is done in its own function. This enables easy early exists
> without increasing indentation level. No functional change
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  arch/arm/boards/skov-imx6/board.c | 59 +++++++++++++++++++------------
>  1 file changed, 37 insertions(+), 22 deletions(-)
> 
> diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
> index d5d229ae81ac..7ddc6e937b0b 100644
> --- a/arch/arm/boards/skov-imx6/board.c
> +++ b/arch/arm/boards/skov-imx6/board.c
> @@ -451,6 +451,39 @@ static int skov_imx6_fixup(struct device_node *root, void *unused)
>  	return 0;
>  }
>  
> +static void skov_init_parallel_lcd(void)
> +{
> +	struct device_node *lcd;
> +
> +	lcd = of_find_compatible_node(NULL, NULL, "fsl,imx-parallel-display");
> +	if (!lcd) {
> +		dev_err(skov_priv->dev, "Cannot find \"fsl,imx-parallel-display\" node\n");
> +		return;
> +	}
> +
> +	of_device_enable_and_register(lcd);
> +}
> +
> +static void skov_init_ldb(void)
> +{
> +	struct device_node *ldb, *chan;
> +
> +	ldb = of_find_compatible_node(NULL, NULL, "fsl,imx6q-ldb");
> +	if (!ldb) {
> +		dev_err(skov_priv->dev, "Cannot find \"fsl,imx6q-ldb\" node\n");
> +		return;
> +	}
> +
> +	of_device_enable_and_register(ldb);
> +
> +	/* ... as well as its channel 0 */
> +	chan = of_find_node_by_name_address(ldb, "lvds-channel@0");
> +	if (chan)
> +		of_device_enable(chan);
> +	else
> +		dev_err(skov_priv->dev, "Cannot find \"lvds-channel@0\" node\n");
> +}
> +
>  /*
>   * Some variants need tweaks to make them work
>   *
> @@ -461,7 +494,6 @@ static int skov_imx6_fixup(struct device_node *root, void *unused)
>  static void skov_init_board(const struct board_description *variant)
>  {
>  	struct device_node *gpio_np = NULL;
> -	struct device_node *np;
>  	char *environment_path, *envdev;
>  	int ret;
>  
> @@ -524,28 +556,11 @@ static void skov_init_board(const struct board_description *variant)
>  		gpio_free(200);
>  	}
>  
> -	if (variant->flags & SKOV_DISPLAY_PARALLEL) {
> -		np = of_find_compatible_node(NULL, NULL, "fsl,imx-parallel-display");
> -		if (np)
> -			of_device_enable_and_register(np);
> -		else
> -			dev_err(skov_priv->dev, "Cannot find \"fsl,imx-parallel-display\" node\n");
> -	}
> +	if (variant->flags & SKOV_DISPLAY_PARALLEL)
> +		skov_init_parallel_lcd();
>  
> -	if (variant->flags & SKOV_DISPLAY_LVDS) {
> -		np = of_find_compatible_node(NULL, NULL, "fsl,imx6q-ldb");
> -		if (np)
> -			of_device_enable_and_register(np);
> -		else
> -			dev_err(skov_priv->dev, "Cannot find \"fsl,imx6q-ldb\" node\n");
> -
> -		/* ... as well as its channel 0 */
> -		np = of_find_node_by_name_address(np, "lvds-channel@0");
> -		if (np)
> -			of_device_enable(np);
> -		else
> -			dev_err(skov_priv->dev, "Cannot find \"lvds-channel@0\" node\n");
> -	}
> +	if (variant->flags & SKOV_DISPLAY_LVDS)
> +		skov_init_ldb();
>  }
>  
>  static int skov_set_switch_lan2_mac(struct skov_imx6_priv *priv)
> -- 
> 2.30.2
> 
> 
> 


