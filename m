Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X0FHr-0005nj-6t
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 19:24:47 +0000
Date: Thu, 26 Jun 2014 21:24:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626192425.GH14257@pengutronix.de>
References: <1403772557-28482-2-git-send-email-holgerschurig@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403772557-28482-2-git-send-email-holgerschurig@gmail.com>
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
Subject: Re: [PATCH 1/4] commands: include missing header
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 26, 2014 at 10:49:14AM +0200, Holger Schurig wrote:
> When compiled for ARCH=sandbox, we get a compiler warning
> if we don't include the needed header file as well.
> 
> Signed-off-by: Holger Schurig <holgerschurig@gmail.com>

Applied this one, thanks

SAscha

> ---
>  commands/linux_exec.c |    1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/commands/linux_exec.c b/commands/linux_exec.c
> index 741168a..590e0bf 100644
> --- a/commands/linux_exec.c
> +++ b/commands/linux_exec.c
> @@ -16,6 +16,7 @@
>   */
>  
>  #include <common.h>
> +#include <malloc.h>
>  #include <command.h>
>  #include <mach/linux.h>
>  
> -- 
> 1.7.10.4
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
