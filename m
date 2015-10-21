Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zompg-0003Lp-Ri
 for barebox@lists.infradead.org; Wed, 21 Oct 2015 06:25:09 +0000
Date: Wed, 21 Oct 2015 08:24:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151021062447.GY14476@pengutronix.de>
References: <1445330352-30153-1-git-send-email-mkl@pengutronix.de>
 <1445330352-30153-2-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445330352-30153-2-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH v2 1/8] of_path: of_find_path() factor out device
 detection logic into separate function
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 20, 2015 at 10:39:05AM +0200, Marc Kleine-Budde wrote:
> This patch factors out the device detection logic into separate function, so
> that it can be used from another function.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  drivers/of/of_path.c | 81 ++++++++++++++++++++++++++++------------------------
>  1 file changed, 44 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
> index 992972c9b52e..b3ef26c6a50d 100644
> --- a/drivers/of/of_path.c
> +++ b/drivers/of/of_path.c
> @@ -106,6 +106,48 @@ out:
>  	return ret;
>  }
>  
> +int __of_find_path(struct device_node *node, const char *propname, char **outpath, unsigned flags)

static please.

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
