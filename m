Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YRyHr-0006tT-5b
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 07:27:39 +0000
Date: Sun, 1 Mar 2015 08:27:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150301072717.GC11010@pengutronix.de>
References: <1425159621-22805-1-git-send-email-mkl@pengutronix.de>
 <1425159621-22805-5-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425159621-22805-5-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 04/16] of: make first argument of several
 of_property_*_string functions const
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Feb 28, 2015 at 10:40:09PM +0100, Marc Kleine-Budde wrote:
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  drivers/of/base.c |  8 ++++----
>  include/of.h      | 16 ++++++++--------
>  2 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index af10fd1da32c..4b5d4d75f19c 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -799,7 +799,7 @@ EXPORT_SYMBOL_GPL(of_property_read_u64);
>   *
>   * The out_string pointer is modified only if a valid string can be decoded.
>   */
> -int of_property_read_string(struct device_node *np, const char *propname,
> +int of_property_read_string(const struct device_node *np, const char *propname,
>  				const char **out_string)

Is this necessary for something or just a nice to have? The functions
are takes from the kernel and the device_node arguments cannot be const
there because the functions take a reference on the node.

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
