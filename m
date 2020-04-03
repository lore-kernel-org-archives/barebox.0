Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKLbd-00007U-OF
 for barebox@lists.infradead.org; Fri, 03 Apr 2020 12:39:31 +0000
References: <20200403122659.32298-1-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8b4ce6ee-b978-1cc8-956c-ce6e1b5f7e35@pengutronix.de>
Date: Fri, 3 Apr 2020 14:39:27 +0200
MIME-Version: 1.0
In-Reply-To: <20200403122659.32298-1-antonynpavlov@gmail.com>
Content-Language: en-US
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
Subject: Re: [PATCH] startup: introduce global.endianity variable
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org

Hi,

On 4/3/20 2:26 PM, Antony Pavlov wrote:
> The global.endianity variable make it possible

I'd prefer you call it endianness, as that's the term we are
using elsewhere in barebox.

(unless you've a good reason to introduce a new name,
 if so that should be part of the commit message)

Cheers
Ahmad

> to determine current endian mode from command
> line or from script on bi-endian capable system.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  common/globalvar.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/common/globalvar.c b/common/globalvar.c
> index c87f2c9339..7632cb6418 100644
> --- a/common/globalvar.c
> +++ b/common/globalvar.c
> @@ -591,6 +591,8 @@ int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
>  
>  static int globalvar_init(void)
>  {
> +	const char *endianity;
> +
>  	register_device(&global_device);
>  
>  	if (IS_ENABLED(CONFIG_NVVAR))
> @@ -598,11 +600,19 @@ static int globalvar_init(void)
>  
>  	globalvar_add_simple("version", UTS_RELEASE);
>  
> +	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
> +		endianity = "big";
> +	else
> +		endianity = "little";
> +
> +	globalvar_add_simple("endianity", endianity);
> +
>  	return 0;
>  }
>  pure_initcall(globalvar_init);
>  
>  BAREBOX_MAGICVAR_NAMED(global_version, global.version, "The barebox version");
> +BAREBOX_MAGICVAR_NAMED(global_endianity, global.endianity, "The barebox endianity");
>  
>  /**
>   * nvvar_save - save NV variables to persistent environment
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
