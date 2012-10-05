Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK89m-0006q0-Ck
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 13:41:35 +0000
Date: Fri, 5 Oct 2012 15:41:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121005134131.GU1322@pengutronix.de>
References: <1349422624-5278-1-git-send-email-gregory.hermant@calao-systems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349422624-5278-1-git-send-email-gregory.hermant@calao-systems.com>
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
Subject: Re: [PATCH 1/2] Add support for the Calao-systems HABA-KNX controllers
To: Gregory Hermant <gregory.hermant@calao-systems.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 05, 2012 at 09:37:03AM +0200, Gregory Hermant wrote:
> Signed-off-by: Gregory Hermant <gregory.hermant@calao-systems.com>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

>  create mode 100644 arch/arm/boards/haba-knx/Makefile
>  create mode 100644 arch/arm/boards/haba-knx/config.h
>  create mode 100644 arch/arm/boards/haba-knx/env/boot.d/10
>  create mode 100644 arch/arm/boards/haba-knx/env/boot.d/11
>  create mode 100644 arch/arm/boards/haba-knx/env/boot.d/12
>  create mode 100644 arch/arm/boards/haba-knx/env/boot.d/13

Please drop the links for now until the boot sequence patches are
reworked.

> +
> +# MAC address if needed
> +#ethaddr=xx:xx:xx:xx:xx:xx
> +ethaddr=6a:63:73:00:00:34

No hardcoded MAC addresses in the environment please.

> +#include <spi/flash.h>
> +
> +static void haba_knx_set_board_type(void)
> +{
> +	if (machine_is_haba_knx_lite())
> +		armlinux_set_architecture(MACH_TYPE_HABA_KNX_LITE);
> +	else
> +		armlinux_set_architecture(MACH_TYPE_HABA_KNX_EXPLORER);

Can the board type somehow be autodetected? That would be great.

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
