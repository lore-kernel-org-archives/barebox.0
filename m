Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZrK6m-0007wC-Ny
 for barebox@lists.infradead.org; Wed, 28 Oct 2015 06:21:17 +0000
Date: Wed, 28 Oct 2015 07:20:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151028062054.GQ25308@pengutronix.de>
References: <1445807016-6637-1-git-send-email-mkl@pengutronix.de>
 <1445807016-6637-3-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445807016-6637-3-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH v3 2/9] of_path: add of_find_path_by_node()
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sun, Oct 25, 2015 at 10:03:29PM +0100, Marc Kleine-Budde wrote:
> This patch adds the function of_find_path_by_node(), which is similar to
> of_find_path(), but it translates a device tree node into a barebox device path
> directly.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  drivers/of/of_path.c | 17 ++++++++++++++++-
>  include/of.h         |  1 +
>  2 files changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
> index ad64bee08af9..690390525919 100644
> --- a/drivers/of/of_path.c
> +++ b/drivers/of/of_path.c
> @@ -126,7 +126,7 @@ static int __of_find_path(struct device_node *node, const char *propname, char *
>  
>  	i = 1;
>  
> -	while (1) {
> +	while (propname) {
>  		ret = of_property_read_string_index(node, propname, i++, &str);
>  		if (ret)
>  			break;

Is this hunk intentional? Is this a fix for something?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
