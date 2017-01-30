Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cY5VE-0001Bn-UU
 for barebox@lists.infradead.org; Mon, 30 Jan 2017 06:31:50 +0000
Date: Mon, 30 Jan 2017 07:29:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170130062916.o272lw55tbar4bog@pengutronix.de>
References: <20170126130303.22250-1-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170126130303.22250-1-pmamonov@gmail.com>
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
Subject: Re: [PATCH] usb: ehci: pass full speed devices to companion controller
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 26, 2017 at 04:03:03PM +0300, Peter Mamonov wrote:
> According to the "Enhanced Host Controller Interface Specification for
> Universal Serial Bus" after a USB port reset the EHCI Driver checks the
> PortEnable bit in the PORTSC register. If set to a one, the connected device is
> a high-speed device [...]. At the time the EHCI Driver receives the port reset
> and enable request the LineStatus bits might indicate a low-speed device.
> Additionally, when the port reset process is complete, the PortEnable field may
> indicate that a full-speed device is attached. In either case the EHCI driver
> sets the PortOwner bit in the PORTSC register to a one to release port
> ownership to a companion host controller.
> 
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  drivers/usb/host/ehci-hcd.c | 27 +++++++++++++++++++++------
>  1 file changed, 21 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index 79bf4fb9d..d0be2104d 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -477,6 +477,18 @@ static inline void ehci_powerup_fixup(struct ehci_priv *ehci)
>  }
>  #endif
>  
> +static void pass_to_companion(struct ehci_priv *ehci, int port)
> +{
> +	uint32_t *status_reg = (uint32_t *)&ehci->hcor->or_portsc[port - 1];
> +	uint32_t reg = ehci_readl(status_reg);
> +
> +	reg &= ~EHCI_PS_CLEAR;
> +	dev_dbg(ehci->dev, "port %d --> companion\n",
> +	      port - 1);
> +	reg |= EHCI_PS_PO;
> +	ehci_writel(status_reg, reg);
> +}
> +
>  static int
>  ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
>  		 int length, struct devrequest *req)
> @@ -509,6 +521,10 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
>  			return -1;
>  		}
>  		status_reg = (uint32_t *)&ehci->hcor->or_portsc[port - 1];
> +		if (ehci_readl(status_reg) & EHCI_PS_PO) {
> +			dev_dbg(ehci->dev, "Port %d is owned by companion controller\n", port);
> +			return -1;
> +		}
>  		break;
>  	default:
>  		status_reg = NULL;
> @@ -655,11 +671,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
>  			if ((reg & (EHCI_PS_PE | EHCI_PS_CS)) == EHCI_PS_CS &&
>  			    !ehci_is_TDI() &&
>  			    EHCI_PS_IS_LOWSPEED(reg)) {
> -				/* Low speed device, give up ownership. */
> -				dev_dbg(ehci->dev, "port %d low speed --> companion\n",
> -				      port - 1);
> -				reg |= EHCI_PS_PO;
> -				ehci_writel(status_reg, reg);
> +				pass_to_companion(ehci, port);
>  				break;
>  			} else {
>  				int ret;
> @@ -690,7 +702,10 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
>  				else
>  					dev_err(ehci->dev, "port(%d) reset error\n",
>  						port - 1);
> -
> +				mdelay(200);
> +				reg = ehci_readl(status_reg);
> +				if (!(reg & EHCI_PS_PE))
> +					pass_to_companion(ehci, port);
>  			}
>  			break;
>  		default:
> -- 
> 2.11.0
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
