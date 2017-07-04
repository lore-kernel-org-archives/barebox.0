Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSHil-0003p4-J9
 for barebox@lists.infradead.org; Tue, 04 Jul 2017 06:54:05 +0000
Date: Tue, 4 Jul 2017 08:53:38 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170704065338.GA12492@ravnborg.org>
References: <20170703161922.GA24614@ravnborg.org>
 <20170703201746.GA15480@ravnborg.org>
 <20170704061133.jow6aixpw5mp5m4c@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170704061133.jow6aixpw5mp5m4c@pengutronix.de>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] clk: fix clk_get error handling
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Uwe.

Thanks for the quick feedback!

> Looking into the tree of functions that can be called from
> of_clk_get_by_name I didn't find a function that returns ENODEV.
> 
> But consider a clock provider that tries to give you the clock and
> triggers a EIO or ETIMEOUT. IMHO this should be given to the caller
> instead of continuing with clk_get_sys. So I suggest
> 
> -		if (!IS_ERR(clk) || PTR_ERR(clk) != -ENODEV)
> +		if (!IS_ERR(clk) || PTR_ERR(clk) != -ENOENT)
> 
> instead of your patch.

Makes good sense and it was only because the kernel did otherwise
I explicitly tested for -EPROBE_DEFER.
Will rework and send an updated patch later today.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
