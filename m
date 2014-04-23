Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WcsmX-0003Ty-Bv
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 08:43:58 +0000
Date: Wed, 23 Apr 2014 10:43:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140423084330.GE5858@pengutronix.de>
References: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
 <1397547514-19925-4-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1397547514-19925-4-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 03/10] MIPS: use arch_shutdown() for flushing caches
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 15, 2014 at 11:38:27AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/lib/shutdown.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/mips/lib/shutdown.c b/arch/mips/lib/shutdown.c
> index 6feec9b..09651a7 100644
> --- a/arch/mips/lib/shutdown.c
> +++ b/arch/mips/lib/shutdown.c
> @@ -3,8 +3,10 @@
>   * memory/cache state.
>   */
>  #include <common.h>
> +#include <asm/cache.h>
>  
>  void arch_shutdown(void)
>  {
> +	flush_cache_all();
>  }
>  EXPORT_SYMBOL(arch_shutdown);

You could combine this with 2/10. Otherwise 2/10 leaves the question:
why is this needed?

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
