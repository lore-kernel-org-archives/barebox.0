Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PVD72-0004MH-TF
	for barebox@lists.infradead.org; Wed, 22 Dec 2010 01:03:29 +0000
Date: Wed, 22 Dec 2010 01:58:29 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101222005829.GE19266@game.jcrosoft.org>
References: <m362uodqms.fsf@intrepid.localdomain>
	<m3vd2ocax2.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3vd2ocax2.fsf@intrepid.localdomain>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5] Fix error handling with malloc, memalign etc.
	Memalign() can't fail now.
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

  
> diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
> index 717fea5..9d52beb 100644
> --- a/drivers/clk/clkdev.c
> +++ b/drivers/clk/clkdev.c
please do not modify it I want to keep it as in the kernel
> @@ -116,9 +116,7 @@ struct clk_lookup *clkdev_alloc(struct clk *clk, const char *con_id,
>  {
>  	struct clk_lookup_alloc *cla;
>  
> -	cla = kzalloc(sizeof(*cla), GFP_KERNEL);
> -	if (!cla)
> -		return NULL;
> +	cla = xzalloc(sizeof(*cla), GFP_KERNEL);
>  
>  	cla->cl.clk = clk;
>  	if (con_id) {
> @@ -150,8 +148,6 @@ int clk_add_alias(const char *alias, const char *alias_dev_name, char *id,
>  
>  	l = clkdev_alloc(r, alias, alias_dev_name);
>  	clk_put(r);
> -	if (!l)
> -		return -ENODEV;
>  	clkdev_add(l);
>  	return 0;
>  }

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
