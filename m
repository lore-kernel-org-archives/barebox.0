Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Vdy-0001VR-N4
 for barebox@lists.infradead.org; Fri, 14 Feb 2020 07:44:12 +0000
Date: Fri, 14 Feb 2020 08:44:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200214074408.vxolremae7rw2fhc@pengutronix.de>
References: <20200212093839.25968-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212093839.25968-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] serial: ns16550_pci: fix possible read of uninitialized
 variable
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Wed, Feb 12, 2020 at 10:38:39AM +0100, Ahmad Fatoum wrote:
> When quirk->init is NULL, we evaluate an uninitialized rc.
> Is we have already checked for rc < 0 at the point of assignment,
> this if clause isn't needed. Remove it.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/serial/serial_ns16550_pci.c | 6 ------
>  1 file changed, 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/serial/serial_ns16550_pci.c b/drivers/serial/serial_ns16550_pci.c
> index d4b5bd8898b7..392a2810d815 100644
> --- a/drivers/serial/serial_ns16550_pci.c
> +++ b/drivers/serial/serial_ns16550_pci.c
> @@ -3655,12 +3655,6 @@ pciserial_init_ports(struct pci_dev *dev, const struct pciserial_board *board)
>  	uart.pdata = xzalloc(sizeof(*uart.pdata));
>  	uart.pdata->clock = board->base_baud * 16;
>  
> -	if (rc < 0) {
> -		kfree(priv);
> -		priv = ERR_PTR(rc);
> -		goto err_deinit;
> -	}
> -
>  	for (i = 0; i < nr_ports; i++) {
>  		struct device_d *ns16550_dev;
>  		struct resource *res;
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
