Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghVr9-00012W-4q
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 08:38:28 +0000
Date: Thu, 10 Jan 2019 09:38:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190110083825.fgez6zfmfwyqafw2@pengutronix.de>
References: <20190109202754.29784-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190109202754.29784-1-antonynpavlov@gmail.com>
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
Subject: Re: [RFC] ARM: zynq: fix "'IO_SPACE_LIMIT' redefined" warning
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Wed, Jan 09, 2019 at 11:27:54PM +0300, Antony Pavlov wrote:
> The patch fixes the following compiler's warning:
> 
> In file included from include/common.h:33:0,
>                  from arch/arm/mach-zynq/zynq.c:18:
> arch/arm/include/asm/io.h:4:0: warning: "IO_SPACE_LIMIT" redefined
>  #define IO_SPACE_LIMIT 0
> 
> In file included from
> arch/arm/mach-zynq/zynq.c:17:0:
> include/asm-generic/io.h:92:0: note: this is the location of the previous definition
>  #define IO_SPACE_LIMIT 0xffff
> 
> Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/arm/mach-zynq/zynq.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/mach-zynq/zynq.c b/arch/arm/mach-zynq/zynq.c
> index a0a8d0d249..dd8f12c16a 100644
> --- a/arch/arm/mach-zynq/zynq.c
> +++ b/arch/arm/mach-zynq/zynq.c
> @@ -14,7 +14,6 @@
>   */
>  
>  #include <asm/system.h>
> -#include <asm-generic/io.h>

asm-generic/io.h shouldn't be included directly, but only from asm/io.h
if it decides to do so. io.h includes asm/io.h, so this is the one that
should be included instead.

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
