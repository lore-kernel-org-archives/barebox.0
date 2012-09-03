Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Ser-0003Zn-Fs
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 09:09:26 +0000
Date: Mon, 3 Sep 2012 11:09:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120903090923.GH26594@pengutronix.de>
References: <1346653088-7576-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346653088-7576-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 1/3] sandbox: add asm-generic/io.h
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 03, 2012 at 08:18:06AM +0200, Alexander Aring wrote:
> Add in sandbox asm/io.h the asm-generic/io.h header file.
> Needed by NAND support.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/sandbox/include/asm/io.h | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/sandbox/include/asm/io.h b/arch/sandbox/include/asm/io.h
> index da84fa5..fbc23bf 100644
> --- a/arch/sandbox/include/asm/io.h
> +++ b/arch/sandbox/include/asm/io.h
> @@ -1 +1,7 @@
> -/* nothing */
> +#ifndef __ASM_SANDBOX_IO_H
> +#define __ASM_SANDBOX_IO_H
> +
> +#include <asm-generic/io.h>
> +
> +#endif /* __ASM_SANDBOX_IO_H */
> +
> -- 
> 1.7.12
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
