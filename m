Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fx6SH-00058E-7A
 for barebox@lists.infradead.org; Tue, 04 Sep 2018 08:12:58 +0000
Date: Tue, 4 Sep 2018 10:12:45 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20180904081245.lne4kmkc75sbrsz3@pengutronix.de>
References: <20180903133212.17771-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180903133212.17771-1-mkl@pengutronix.de>
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
Subject: Re: [PATCH v2] scripts imx-image: add support for newer versions of
 "cst"
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 03, 2018 at 03:32:12PM +0200, Marc Kleine-Budde wrote:
> Older versions of "cst" want to read the CSF from STDIN, while newer versions
> want to read the CSF from a file. Sadly, the "-i" option doesn't understand
> "-i -" to read from STDIN, so we give it "/dev/stdin" instead.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  scripts/imx/imx-image.c | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index b241e8c4b68e..ffde8149650f 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -546,7 +546,28 @@ static int hab_sign(struct config_data *data)
>  		}
>  	}
>  
> -	ret = asprintf(&command, "%s -o %s", cst, csffile);
> +	/*
> +	 * Older versions of "cst" want to read the CSF from STDIN,
> +	 * while newer versions want to read the CSF from a
> +	 * file. Sadly, the "-i" option doesn't understand "-i -" to
> +	 * read from STDIN, so we give it "/dev/stdin" instead.
> +	 */
> +	ret = asprintf(&command,
> +		       "%s | grep 'Input CSF text filename'",
> +		       cst);
> +	if (ret < 0)
> +		return -ENOMEM;
> +
> +	ret = system(command);
> +	free(command);
> +	if (ret == -1)
> +		return -EINVAL;
> +	else if (ret == 0)
> +		ret = asprintf(&command, "%s -o %s -i /dev/stdin",
> +			       cst, csffile);
> +	else
> +		ret = asprintf(&command, "%s -o %s;",
> +			       cst, csffile);
>  	if (ret < 0)
>  		return -ENOMEM;
>  
> -- 
> 2.18.0
> 
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
