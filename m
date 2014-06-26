Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X0GVT-0006qx-Qp
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 20:42:56 +0000
Date: Thu, 26 Jun 2014 22:42:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626204232.GL14257@pengutronix.de>
References: <1403772557-28482-3-git-send-email-holgerschurig@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403772557-28482-3-git-send-email-holgerschurig@gmail.com>
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
Subject: Re: [PATCH 2/4] sandbox: only access of_add_memory_bank if it's
 defined
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 26, 2014 at 10:49:15AM +0200, Holger Schurig wrote:
> ... and it's defined only when CONFIG_OFTREE_MEM_GENERIC is on.
> 
> Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
> ---
>  drivers/of/base.c |    6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index c440a69..818d76e 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1697,6 +1697,7 @@ int of_set_property(struct device_node *np, const char *name, const void *val, i
>  	return 0;
>  }
>  
> +#ifdef CONFIG_OFTREE_MEM_GENERIC
>  int of_add_memory(struct device_node *node, bool dump)
>  {
>  	const char *device_type;
> @@ -1720,6 +1721,7 @@ int of_add_memory(struct device_node *node, bool dump)
>  
>  	return 0;
>  }
> +#endif

This will break MIPS support. MIPS has it's own implementation of
of_add_memory_bank (see ./arch/mips/boot/dtb.c), so in MIPS case
the Kconfig options means "I have my own version of of_add_memory_bank"

I currently don't know a good way out of this situation.

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
