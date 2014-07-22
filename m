Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9VWo-0002uQ-21
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 08:34:30 +0000
Message-ID: <1406017939.4667.14.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 22 Jul 2014 10:32:19 +0200
In-Reply-To: <1406015842-20754-4-git-send-email-holgerschurig@gmail.de>
References: <1406015842-20754-4-git-send-email-holgerschurig@gmail.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 3/3] sandbox: work around missing of_add_memory_bank()
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

Am Dienstag, den 22.07.2014, 09:57 +0200 schrieb Holger Schurig:
> From: Holger Schurig <holgerschurig@gmail.com>
> 
> The goal of "make ARCH=sandbox allyesconfig && make all" is not to
> generate a sensible barebox that you'd use. The goal is to create
> as much code coverage as possible, so that you see compiler warnings
> are can send barebox throught a static checker.
> 
> Therefore this simple band-aid to compile drivers/of/base.c wouldn't
> create a working device tree implementation, but it will compile.
> 
> Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
> ---
>  drivers/of/base.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index c440a69..69d9b09 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1713,8 +1713,10 @@ int of_add_memory(struct device_node *node, bool dump)
>  			continue;
>  		}
>  
> +#ifndef CONFIG_SANDBOX
>  		of_add_memory_bank(node, dump, n,
>  				res.start, resource_size(&res));
> +#endif
>  		n++;
>  	}
>  
I really dislike this patch. This adds ifdeffery (which everyone hates)
just for the sake of a static checker that depends on the build to be
run. There are a lot of static checkers out there which don't have this
requirement.

If you still want the build to include this stuff, fix it by adding a
working of_add_memory_bank() for sandbox, this would be both useful in a
general sense and fix your problem.

Regards,
Lucas

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
