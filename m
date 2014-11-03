Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XlIpg-0007y4-8s
 for barebox@lists.infradead.org; Mon, 03 Nov 2014 14:42:13 +0000
Date: Mon, 3 Nov 2014 15:41:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141103144148.GQ14443@pengutronix.de>
References: <1414074098-13717-1-git-send-email-voytikd@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1414074098-13717-1-git-send-email-voytikd@gmail.com>
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
Subject: Re: [PATCH] ARM: imx23-olinuxino: discover usb before ifup
To: Dmitry Voytik <voytikd@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 23, 2014 at 06:21:38PM +0400, Dmitry Voytik wrote:
> i.MX233 in OLinuXino uses LAN9512 for Ethernet connection.
> LAN9512 is connected to USB. Execute usb command before bringing
> network up.
> 
> This patch makes 'ifup eth0' workable.
> 
> Signed-off-by: Dmitry Voytik <voytikd@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/imx233-olinuxino/env/network/eth0-discover | 6 ++++++
>  1 file changed, 6 insertions(+)
>  create mode 100644 arch/arm/boards/imx233-olinuxino/env/network/eth0-discover
> 
> diff --git a/arch/arm/boards/imx233-olinuxino/env/network/eth0-discover b/arch/arm/boards/imx233-olinuxino/env/network/eth0-discover
> new file mode 100644
> index 0000000..76494fe
> --- /dev/null
> +++ b/arch/arm/boards/imx233-olinuxino/env/network/eth0-discover
> @@ -0,0 +1,6 @@
> +#!/bin/sh
> +
> +#  In OLinuXino board i.MX233 SoC uses LAN9512 (attached to USB) to connect
> +#  to an Ethernet LAN.
> +
> +usb
> -- 
> 1.9.1
> 
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
