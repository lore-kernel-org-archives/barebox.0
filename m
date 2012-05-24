Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXePq-0008Tw-NC
 for barebox@lists.infradead.org; Thu, 24 May 2012 20:13:47 +0000
Date: Thu, 24 May 2012 22:13:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120524201344.GD30400@pengutronix.de>
References: <1337866065-6775-1-git-send-email-agalakhov@gmail.com>
 <1337866065-6775-2-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337866065-6775-2-git-send-email-agalakhov@gmail.com>
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
Subject: Re: [PATCH 1/2] S5P DRAM support
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, May 24, 2012 at 07:27:44PM +0600, Alexey Galakhov wrote:
> Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
> ---
>  arch/arm/mach-samsung/Makefile                    |    2 +-
>  arch/arm/mach-samsung/include/mach/s3c-generic.h  |    6 +
>  arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h |    3 +
>  arch/arm/mach-samsung/mem-s5pcxx.c                |  319 +++++++++++++++++++++
>  4 files changed, 329 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/mach-samsung/mem-s5pcxx.c
> 
> +
> +static void __bare_init s5p_dram_init_seq_lpddr(phys_addr_t base, unsigned chip)
> +{
> +	const uint32_t emr = 0x400; /* DQS disable */
> +	const uint32_t mr = (((S5P_DRAM_WR) - 1) << 9)
> +			  | ((S5P_DRAM_CAS) << 4)
> +			  | (S5P_DRAM_BURST);
> +	/* FIXME this sequence is untested */

Maybe add these comments to the exported functions rather than in the
helpers? It would be more prominent and people would see it more easily.

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
