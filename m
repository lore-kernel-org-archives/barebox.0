Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gDAIo-0002NR-2H
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 15:33:36 +0000
Date: Thu, 18 Oct 2018 17:33:18 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181018153318.GB2206@ravnborg.org>
References: <20181018065827.19973-1-s.hauer@pengutronix.de>
 <20181018065827.19973-13-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181018065827.19973-13-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 12/20] ARM: boards: kontron-samx6i: Add include file to
 provide prototype
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Oct 18, 2018 at 08:58:19AM +0200, Sascha Hauer wrote:
> samx6i_get_size() is declared and used in two different C files.
> Provide a header file for the prototype instead.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> index ab9969e32c..3b9fbd464a 100644
> --- a/arch/arm/boards/kontron-samx6i/mem.c
> +++ b/arch/arm/boards/kontron-samx6i/mem.c
> @@ -15,6 +15,8 @@
>  #include <mach/imx-gpio.h>
>  #include <mach/imx6.h>
>  
> +#include "mem.h"
> +
>  #define PCBVERSION_PIN IMX_GPIO_NR(2, 2)
>  #define PCBID0_PIN IMX_GPIO_NR(6, 7)
>  #define PCBID1_PIN IMX_GPIO_NR(6, 9)
> diff --git a/arch/arm/boards/kontron-samx6i/mem.h b/arch/arm/boards/kontron-samx6i/mem.h
> new file mode 100644
> index 0000000000..252b82621d
> --- /dev/null
> +++ b/arch/arm/boards/kontron-samx6i/mem.h
> @@ -0,0 +1,6 @@
> +#ifndef __BOARD_KONTRON_SAMX6I_MEM_H
> +#define __BOARD_KONTRON_SAMX6I_MEM_H
> +
> +resource_size_t samx6i_get_size(void);
> +
> +#endif /* __BOARD_KONTRON_SAMX6I_MEM_H */
> \ No newline at end of file
Add missing newline?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
