Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8jcQ-0005oq-Ca
 for barebox@lists.infradead.org; Thu, 11 May 2017 08:38:44 +0000
Date: Thu, 11 May 2017 10:38:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170511083820.4atqkk3cnkihdngl@pengutronix.de>
References: <20170510175117.18709-1-rockford@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170510175117.18709-1-rockford@yandex.ru>
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
Subject: Re: [PATCH] of: Search for /memory node by type, if it is not found
 by name
To: Andrey Panov <rockford@yandex.ru>
Cc: barebox@lists.infradead.org

On Wed, May 10, 2017 at 08:51:17PM +0300, Andrey Panov wrote:
> Update of Rockchip dts featured changes of simple "/memory" node
> to "/memory@6000000". Support this change.
> 
> Signed-off-by: Andrey Panov <rockford@yandex.ru>

Applied, thanks

Sascha

> ---
>  drivers/of/base.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index c9bdd9181..33f61622a 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1910,6 +1910,8 @@ int of_probe(void)
>  		barebox_set_model(of_model);
>  
>  	memory = of_find_node_by_path("/memory");
> +	if (!memory)
> +		memory = of_find_node_by_type(root_node, "memory");
>  	if (memory)
>  		of_add_memory(memory, false);
>  
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
