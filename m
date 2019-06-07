Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8Xk-0005Hq-I3
 for barebox@lists.infradead.org; Fri, 07 Jun 2019 06:40:06 +0000
Date: Fri, 7 Jun 2019 08:40:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190607064002.ibd4t4joyrmflspq@pengutronix.de>
References: <20190604165308.15229-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604165308.15229-1-bst@pengutronix.de>
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
Subject: Re: [PATCH 1/3] scripts: imx-image: document -d, -e, -s, -u
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 04, 2019 at 06:53:06PM +0200, Bastian Krause wrote:
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  scripts/imx/imx-image.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index a7f1421fa3..90be8a9b9b 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -363,6 +363,15 @@ static void usage(const char *prgname)
>  		"-b           add barebox header to image. If used, barebox recognizes\n"
>  		"             the image as regular barebox image which can be used as\n"
>  		"             second stage image\n"
> +		"-d           write DCD table only\n"
> +		"-e           prepare image for encryption and use Freescale's Code Signing\n"
> +		"             to encrypt image. Note that the device-specific encapsulated\n"
> +		"             DEK as cryptgraphic blob needs to be appended afterwards\n"
> +		"-s           use Freescale's Code Signing Tool (CST) to sign the image\n"
> +		"             'cst' is expected to be in PATH or given via the environment\n"
> +		"             variable 'CST'\n"
> +		"-u           create USB image suitable for imx-usb-loader\n"
> +		"             necessary for signed images (-s) only\n"
>  		"-h           this help\n", prgname);
>  	exit(1);
>  }
> -- 
> 2.20.1
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
