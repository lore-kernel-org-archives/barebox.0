Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W7hSY-0005OY-Pi
 for barebox@lists.infradead.org; Mon, 27 Jan 2014 08:22:23 +0000
Date: Mon, 27 Jan 2014 09:22:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140127082200.GR16215@pengutronix.de>
References: <1390680958-9991-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1390680958-9991-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/4] dt-bindings: add ARM GIC
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Sat, Jan 25, 2014 at 09:15:55PM +0100, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Applied, thanks

Sascha

> ---
>  include/dt-bindings/interrupt-controller/arm-gic.h | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>  create mode 100644 include/dt-bindings/interrupt-controller/arm-gic.h
> 
> diff --git a/include/dt-bindings/interrupt-controller/arm-gic.h b/include/dt-bindings/interrupt-controller/arm-gic.h
> new file mode 100644
> index 0000000..1ea1b70
> --- /dev/null
> +++ b/include/dt-bindings/interrupt-controller/arm-gic.h
> @@ -0,0 +1,22 @@
> +/*
> + * This header provides constants for the ARM GIC.
> + */
> +
> +#ifndef _DT_BINDINGS_INTERRUPT_CONTROLLER_ARM_GIC_H
> +#define _DT_BINDINGS_INTERRUPT_CONTROLLER_ARM_GIC_H
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +
> +/* interrupt specific cell 0 */
> +
> +#define GIC_SPI 0
> +#define GIC_PPI 1
> +
> +/*
> + * Interrupt specifier cell 2.
> + * The flaggs in irq.h are valid, plus those below.
> + */
> +#define GIC_CPU_MASK_RAW(x) ((x) << 8)
> +#define GIC_CPU_MASK_SIMPLE(num) GIC_CPU_MASK_RAW((1 << (num)) - 1)
> +
> +#endif
> -- 
> 1.8.4.2
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
