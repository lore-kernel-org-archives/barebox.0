Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a4kYP-0003zq-M9
 for barebox@lists.infradead.org; Fri, 04 Dec 2015 07:13:18 +0000
Date: Fri, 4 Dec 2015 08:12:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151204071255.GS11966@pengutronix.de>
References: <1449064131-12659-1-git-send-email-mpa@pengutronix.de>
 <1449064131-12659-6-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449064131-12659-6-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH 5/9] lib: Import reed solomon code from kernel
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 02, 2015 at 02:48:47PM +0100, Markus Pargmann wrote:
> reed solomon code is used by RAMOOPS to check and fix data stored in
> volatile memory.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
>  include/linux/rslib.h           | 109 ++++++++++++
>  lib/Kconfig                     |  15 ++
>  lib/Makefile                    |   1 +
>  lib/reed_solomon/Makefile       |   6 +
>  lib/reed_solomon/decode_rs.c    | 271 +++++++++++++++++++++++++++++
>  lib/reed_solomon/encode_rs.c    |  54 ++++++
>  lib/reed_solomon/reed_solomon.c | 377 ++++++++++++++++++++++++++++++++++++++++
>  7 files changed, 833 insertions(+)
>  create mode 100644 include/linux/rslib.h
>  create mode 100644 lib/reed_solomon/Makefile
>  create mode 100644 lib/reed_solomon/decode_rs.c
>  create mode 100644 lib/reed_solomon/encode_rs.c
>  create mode 100644 lib/reed_solomon/reed_solomon.c
> 

> diff --git a/lib/Kconfig b/lib/Kconfig
> index fbf9f0f34849..f2f3b5775ace 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -22,6 +22,21 @@ config XZ_DECOMPRESS
>  	bool "include xz uncompression support"
>  	select UNCOMPRESS
>  
> +config REED_SOLOMON
> +	bool
> +
> +config REED_SOLOMON_ENC8
> +	bool
> +
> +config REED_SOLOMON_DEC8
> +	bool
> +
> +config REED_SOLOMON_ENC16
> +	bool
> +
> +config REED_SOLOMON_DEC16
> +	bool
> +

These fine grained config options seem unnecessary. Can we limit this to
a single config REED_SOLOMON only? The linker will discard unused
symbols anyway.

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
