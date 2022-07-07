Delivery-date: Thu, 07 Jul 2022 16:41:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9Sgn-009NWG-Er
	for lore@lore.pengutronix.de; Thu, 07 Jul 2022 16:41:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9Sgp-0006xd-Bv
	for lore@pengutronix.de; Thu, 07 Jul 2022 16:41:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a0yOB5mGQJtNnmd0w/sGCTtehcFoSu0eQdYHnRiQx+A=; b=PJMfTF9kxShLMS0IIDAAQx638V
	1JhdncmcZXJxjuxdOzMT7kbqjEFUGr4qZH/WSlqjGNCNT8aa1kpXdOylKJtTm8AYBotrBRVGGsm8B
	bWNhyRJau9u9rRj8pMKQ2qygN4qJUXS/jeUvSWOqFdgszSHSx+U7QuBiUatayHPw0e65TJHcPoZk3
	6//sg010D7iA338f6g175ootmRPYj1D5sPymryePDy8tS2qh3Mytk5soVht6RGEOAKTME6WQOoIvl
	x1kW+GvSwXgACz3j2OvnZDovlO7gkrhYlfKbFWkGFg9HRUoMTXwrax+u+t5dx9DOj94JQTShCTq2S
	ii8HN63w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Sf3-00GVtv-Rv; Thu, 07 Jul 2022 14:39:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Sez-00GVpP-58
	for barebox@lists.infradead.org; Thu, 07 Jul 2022 14:39:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=irc.pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1o9Set-0006U5-1w
	for barebox@lists.infradead.org; Thu, 07 Jul 2022 16:39:11 +0200
Message-ID: <de4ce50868f4dad468c0929ac16d9be13d2fa4d1.camel@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 07 Jul 2022 16:39:08 +0200
In-Reply-To: <20220706142105.2266956-2-m.felsch@pengutronix.de>
References: <20220706142105.2266956-1-m.felsch@pengutronix.de>
	 <20220706142105.2266956-2-m.felsch@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_073917_237449_0376551A 
X-CRM114-Status: GOOD (  16.44  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/4] phy: fix deep probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 2022-07-06 at 16:21 +0200, Marco Felsch wrote:
> Commit 9474a29003 ("phy: Add deep probe support") added the deep
> probe
> support but this commit was missing the of_phy_get_by_phandle() isn't
> calling the internal _of_phy_get() helper. Fix this by moving the
> of_device_ensure_probed() call into the of_phy_provider_lookup()
> helper
> which gets called by both functions.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/phy/phy-core.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index b298da0000..ef7bd76648 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -220,6 +220,11 @@ static struct phy_provider
> *of_phy_provider_lookup(struct device_node *node)
>  {
>         struct phy_provider *phy_provider;
>         struct device_node *child;
> +       int ret;
> +
> +       ret = of_device_ensure_probed(node);
> +       if (ret)
> +               return ERR_PTR(ret);
>  
>         list_for_each_entry(phy_provider, &phy_provider_list, list) {
>                 if (phy_provider->dev->device_node == node)
> @@ -255,10 +260,6 @@ static struct phy *_of_phy_get(struct
> device_node *np, int index)
>         if (ret)
>                 return ERR_PTR(-ENODEV);
>  
> -       ret = of_device_ensure_probed(args.np);
> -       if (ret)
> -               return ERR_PTR(ret);
> -
>         phy_provider = of_phy_provider_lookup(args.np);
>         if (IS_ERR(phy_provider)) {
>                 return ERR_CAST(phy_provider);

Tested-by: Johannes Zink <j.zink@pengutronix.de> # i.MX7



