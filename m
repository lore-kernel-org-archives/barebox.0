Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1domKO-0007Nt-JM
 for barebox@lists.infradead.org; Mon, 04 Sep 2017 08:02:19 +0000
Date: Mon, 4 Sep 2017 10:01:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170904080126.tn2j6anazjqqili2@pengutronix.de>
References: <20170818135707.17578-1-linux@rempel-privat.de>
 <20170818135707.17578-3-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170818135707.17578-3-linux@rempel-privat.de>
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
Subject: Re: [PATCH v2 2/4] asm-generic: partially sync io.h with linux kernel
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

Hi Oleksij,

On Fri, Aug 18, 2017 at 03:57:05PM +0200, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  include/asm-generic/io.h | 229 +++++++++++++++++++++++++++++++++++++++++------
>  1 file changed, 201 insertions(+), 28 deletions(-)
> 
> diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
> index 8d83d6806..a3192bae6 100644
> --- a/include/asm-generic/io.h
> +++ b/include/asm-generic/io.h
> @@ -69,50 +69,114 @@ static inline void __raw_writeq(u64 b, volatile void __iomem *addr)
>  #endif
>  
>  #ifndef PCI_IOBASE
> -#define PCI_IOBASE ((void __iomem *) 0)
> +#define PCI_IOBASE ((void __iomem *)0)
> +#endif
> +
> +#ifndef IO_SPACE_LIMIT
> +#define IO_SPACE_LIMIT 0xffff
>  #endif

When compiling imx_v7_defconfig this change results in tons of:

arch/arm/include/asm/io.h:6:0: warning: "IO_SPACE_LIMIT" redefined
#define IO_SPACE_LIMIT 0
^

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
