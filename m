Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QlbVZ-0000tU-A1
	for barebox@lists.infradead.org; Tue, 26 Jul 2011 06:52:50 +0000
Date: Tue, 26 Jul 2011 08:52:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110726065246.GD20587@pengutronix.de>
References: <1311623420-30234-1-git-send-email-franck.jullien@gmail.com>
	<1311623420-30234-4-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311623420-30234-4-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH 3/4] nios2/serial_altera.c: switch to ressources
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

On Mon, Jul 25, 2011 at 09:50:19PM +0200, franck.jullien@gmail.com wrote:
> From: Franck Jullien <franck.jullien@gmail.com>
> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  drivers/serial/serial_altera.c |    8 ++++----
>  1 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_altera.c
> index 54c7178..c0a8356 100644
> --- a/drivers/serial/serial_altera.c
> +++ b/drivers/serial/serial_altera.c
> @@ -29,7 +29,7 @@
>  
>  static int altera_serial_setbaudrate(struct console_device *cdev, int baudrate)
>  {
> -	struct nios_uart *uart = (struct nios_uart *)cdev->dev->map_base;
> +	struct nios_uart *uart = (struct nios_uart *)dev_request_mem_region(cdev->dev, 0);

Hm, dev_request_mem_region is not really a request function, so this
will work. Anyway, once we turn it into a real request function this
would break. Please use cdev->dev->priv instead.

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
