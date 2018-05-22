Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL1GP-00050L-4O
 for barebox@lists.infradead.org; Tue, 22 May 2018 06:59:18 +0000
Date: Tue, 22 May 2018 08:59:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180522065905.2aj7ukhwlfwsjks7@pengutronix.de>
References: <20180521115438.26493-1-pmamonov@gmail.com>
 <20180521115438.26493-11-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180521115438.26493-11-pmamonov@gmail.com>
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
Subject: Re: [PATCH v2 10/12] mips: add PHYS_ADDR_T_64BIT option
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, May 21, 2018 at 02:54:36PM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  arch/mips/Kconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index c2c555dc3..433d914c2 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -25,6 +25,10 @@ config GENERIC_LINKER_SCRIPT
>  config HAS_NO_BOARD_HL_CODE
>  	bool
>  
> +config PHYS_ADDR_T_64BIT
> +	bool
> +	default n

'n' is the default already. You can skip this line.

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
