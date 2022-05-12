Delivery-date: Thu, 12 May 2022 09:05:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1np2tb-00AYtg-Jp
	for lore@lore.pengutronix.de; Thu, 12 May 2022 09:05:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1np2tZ-0002xR-Tq
	for lore@pengutronix.de; Thu, 12 May 2022 09:05:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=grxJ1XyrcHBAAmZinD//qEe+iBmPw5Dt2W7GbQmk/WA=; b=b00Kf1+0aAELTLrX3jesSYDaX5
	xIRnOTlamVzOqaOYDyYMIeT4WCDisa6pUPkffMFF6mylUhU9b7F0Gc/VNXCCW1wW3rhKMvsIuG+O6
	ZAEJL88CQM3wAwi7f+yan+iEwxANajmZVXGHAWxDt7ojMX0kmW9oC7rmAvc9xVplojr9q3uUMlJB7
	1UpxfiNPVVAuRwlAROYYUQ1d1FrLhkOMPgFIjhw3pBhOCqwUnRG4v8Cx+rPtcTlHl6t9RJW5vDCN5
	eTZxZkb+UdAU/QV3BrjM3vXrvXD+M64G6saOquML9cUof91lecvuzpVIa4D4xlfqOYHKvMSevSQh3
	a73LH6dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1np2rp-00AdJl-CE; Thu, 12 May 2022 07:04:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1np2re-00AdCs-Mo
 for barebox@lists.infradead.org; Thu, 12 May 2022 07:04:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1np2rX-0002c6-2u; Thu, 12 May 2022 09:03:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1np2rW-0007iV-QI; Thu, 12 May 2022 09:03:50 +0200
Date: Thu, 12 May 2022 09:03:50 +0200
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20220512070350.GB25578@pengutronix.de>
References: <20220511100911.2009482-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220511100911.2009482-1-bst@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:03:37 up 42 days, 19:33, 82 users,  load average: 0.32, 0.37, 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220512_000358_772426_45037BA9 
X-CRM114-Status: GOOD (  26.96  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] clk: handle NULL args in clk_set_parent()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 11, 2022 at 12:09:11PM +0200, Bastian Krause wrote:
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
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  drivers/clk/clk.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

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
>  	if (clk->enable_count)
>  		clk_enable(newparent);
>  
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

