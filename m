Delivery-date: Wed, 11 May 2022 12:28:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nojaQ-009XKN-Nr
	for lore@lore.pengutronix.de; Wed, 11 May 2022 12:28:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nojaP-0003FR-Hz
	for lore@pengutronix.de; Wed, 11 May 2022 12:28:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2iNSoCA+3Feasg+GmI560cHjhKjtiNF3vlwcOuS1ys=; b=ASLyOFR12yCTom
	J3gc5xjZ4ipPGuJAjxW6tR9mMM0Z6N93O70TLsz9ufONpVCMrMt8OSzQp6aT1j874Zo/INYsFic0+
	ELc8fWYxLixB7rh92cULJtl1ajcyUIihThNPVtO6yGNd69pEcpMseUUOcfBfkJmF1JyacqTukTo5b
	0rW9JkMUZfvI51/cWW0DmhMNFXjIXU0OefSPLNKyBvF8W18c2zJKDyPICE1sq2NPbfmLE3kpn+pXG
	ceEq2f/RmznTjuR5Pg5zjO6JTlsK6athcM9f6h33boGDACpbNH+MK8xtM40WSDClZ8v1aqlTJyeTX
	kcAFKHRPyF2Cf6Sp+5eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nojYx-006OfZ-UO; Wed, 11 May 2022 10:27:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nojYq-006OXh-DC
 for barebox@lists.infradead.org; Wed, 11 May 2022 10:27:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nojYk-0002zb-EW; Wed, 11 May 2022 12:27:10 +0200
Message-ID: <5a88da68-e5a4-2435-2800-47ea8fa927fc@pengutronix.de>
Date: Wed, 11 May 2022 12:27:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
References: <20220511100911.2009482-1-bst@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220511100911.2009482-1-bst@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_032716_496279_6425ED18 
X-CRM114-Status: GOOD (  23.12  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] clk: handle NULL args in clk_set_parent()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Bastian,

On 11.05.22 12:09, Bastian Krause wrote:
> NULL struct clk pointers should be treated just as the Linux kernel clk
> driver does [1]. The reasoning should also apply to the parent clk
> argument.
> 
> A NULL struct clk pointer can happen for example on the Freescale i.MX6
> SABRE Smart Device Board if CONFIG_DRIVER_VIDEO_IMX_IPUV3 is disabled,
> leading to assigned-clocks IMX6QDL_CLK_LDB_DI0_SEL and
> IMX6QDL_CLK_LDB_DI1_SEL [2] being unavailable. Without this patch, the
> board hangs while setting those assigned clock configurations since [3].
> 
> [1] 89ac8d7ae1cd ("clk: handle NULL struct clk gracefully")
> [2] dts/src/arm/imx6qdl-sabresd.dtsi
> [3] f5eb5fddb4 ("clk: fix of clk set defaults when dev is a clk provider")

Thanks for your patch.

> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  drivers/clk/clk.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index 8e317b4b05..efb5d4ad4a 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -230,7 +230,10 @@ int clk_set_parent(struct clk *clk, struct clk *newparent)
>  {
>  	struct clk_hw *hw;
>  	int i, ret;
> -	struct clk *curparent = clk_get_parent(clk);

Linux clk_get_parent returns NULL if clk is NULL.
Can you teach barebox to do the same?

Linux clk_set_parent accepts a NULL parent to add a clock
to the orphan list. We don't seem to maintain an orphan
list in barebox, so early exist with return value zero
seems okay.

> +	struct clk *curparent;
> +
> +	if (!clk || !newparent)
> +		return 0;
>  
>  	if (IS_ERR(clk))
>  		return PTR_ERR(clk);
> @@ -254,6 +257,8 @@ int clk_set_parent(struct clk *clk, struct clk *newparent)
>  	if (i == clk->num_parents)
>  		return -EINVAL;
>  
> +	curparent = clk_get_parent(clk);
> +

With early-exiting clk_get_parent, you won't need to shift this code around.

Cheers,
Ahmad

>  	if (clk->enable_count)
>  		clk_enable(newparent);
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

