Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QlbW4-0000uI-Be
	for barebox@lists.infradead.org; Tue, 26 Jul 2011 06:53:21 +0000
Date: Tue, 26 Jul 2011 08:53:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110726065318.GE20587@pengutronix.de>
References: <1311623420-30234-1-git-send-email-franck.jullien@gmail.com>
	<1311623420-30234-5-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311623420-30234-5-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH 4/4] nios2/serial_altera_jtag.c: switch to ressources
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

On Mon, Jul 25, 2011 at 09:50:20PM +0200, franck.jullien@gmail.com wrote:
> From: Franck Jullien <franck.jullien@gmail.com>
> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  drivers/serial/serial_altera_jtag.c |    6 +++---
>  1 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
> index 322f9e9..7d42382 100644
> --- a/drivers/serial/serial_altera_jtag.c
> +++ b/drivers/serial/serial_altera_jtag.c
> @@ -37,7 +37,7 @@ static int altera_serial_jtag_setbaudrate(struct console_device *cdev, int baudr
>  
>  static void altera_serial_jtag_putc(struct console_device *cdev, char c)
>  {
> -	struct nios_jtag *jtag = (struct nios_jtag *)cdev->dev->map_base;
> +	struct nios_jtag *jtag = (struct nios_jtag *)dev_request_mem_region(cdev->dev, 0);

Same here.

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
