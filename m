Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgE8-0000Or-6g
 for barebox@lists.infradead.org; Fri, 13 Mar 2020 09:03:34 +0000
Date: Fri, 13 Mar 2020 10:03:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200313090326.GK3335@pengutronix.de>
References: <20200312204607.24096-1-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312204607.24096-1-pmamonov@gmail.com>
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
Subject: Re: [RFC] serial: ns16550: select default pinctrl state
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 12, 2020 at 11:46:07PM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  drivers/serial/serial_ns16550.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index 3edeb0dcb..6b5e92c13 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -39,6 +39,7 @@
>  #include <malloc.h>
>  #include <io.h>
>  #include <linux/clk.h>
> +#include <pinctrl.h>
>  
>  #include "serial_ns16550.h"
>  #include <platform_data/serial-ns16550.h>
> @@ -347,6 +348,8 @@ static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
>  		dev_err(dev, "unsupported reg-io-width (%d)\n",
>  			width);
>  	}
> +
> +	of_pinctrl_select_state_default(np);

Why? This should have been done by the core already at this point.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
