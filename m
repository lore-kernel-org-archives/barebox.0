Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a4kVL-0002cM-Ev
 for barebox@lists.infradead.org; Fri, 04 Dec 2015 07:10:08 +0000
Date: Fri, 4 Dec 2015 08:09:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151204070945.GR11966@pengutronix.de>
References: <1449064131-12659-1-git-send-email-mpa@pengutronix.de>
 <1449064131-12659-7-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449064131-12659-7-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH 6/9] arm: Clarify memory layout calculation
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 02, 2015 at 02:48:48PM +0100, Markus Pargmann wrote:
> The memory calculations used are all hardcoded into three different
> files, start-pbl.c, uncompress.c and start.c. To make this more readable
> and reliable, this patch gathers these information in barebox-arm.h with
> static inline functions for the calculation of the memory offsets.
> 
> This patch also adds proper handling of different barebox/board data
> sizes. Currently only 1MB+Alignment of RAM is reserved for Barebox and
> board data. This could be too small for bigger devicetrees and barebox.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---

> +
> +static inline unsigned long arm_mem_barebox_image(unsigned long membase,
> +						  unsigned long endmem,
> +						  unsigned long size)
> +{
> +	endmem = arm_mem_ttb(membase, endmem);
> +
> +#ifdef CONFIG_RELOCATABLE
> +	endmem -= size;
>  	endmem &= ~(SZ_1M - 1);
> +#endif

if (IS_ENABLED(CONFIG_RELOCATABLE)) please

Otherwise this is a nice cleanup.

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
