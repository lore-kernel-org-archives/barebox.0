Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBhXQ-00068h-9A
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 07:39:09 +0000
Date: Wed, 12 Sep 2012 09:39:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120912073904.GK6180@pengutronix.de>
References: <20120908180310.GH20330@game.jcrosoft.org>
 <1347127542-11981-1-git-send-email-plagnioj@jcrosoft.com>
 <1347127542-11981-11-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347127542-11981-11-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 11/11] png: add picoPNG lib support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 08, 2012 at 08:05:42PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This is an alternative to LodePNG take from http://forge.voodooprojects.org/
> which is base on picoPNG C++ wrote by Lode Vandevenne. The same author as
> LodePNG.
> 
> PicoPNG only support RGBA PNG8
> 
> The source code of picopng.c was just adapted to be compliant with C89 and drop
> the internal ZLIB support. Coding style untouched.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  lib/Kconfig    |    5 +
>  lib/Makefile   |    1 +
>  lib/picopng.c  |  810 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  lib/picopng.h  |   34 +++
>  lib/png_pico.c |   85 ++++++
>  5 files changed, 935 insertions(+)
>  create mode 100644 lib/picopng.c
>  create mode 100644 lib/picopng.h
>  create mode 100644 lib/png_pico.c
> 
> diff --git a/lib/Kconfig b/lib/Kconfig
> index 2405d59..1fc6704 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -62,6 +62,11 @@ config LODEPNG
>  	help
>  	  Mostly PNG support
>  
> +config PICOPNG
> +	bool "picoPNG"
> +	help
> +	  Support only RGBA PNG8

	  This PNG libraray only supports RGBA PNG8 but is much smaller
	  in binary size then lodepng.

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
