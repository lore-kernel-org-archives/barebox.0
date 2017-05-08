Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7hGa-0006Xw-M0
 for barebox@lists.infradead.org; Mon, 08 May 2017 11:55:58 +0000
Date: Mon, 8 May 2017 13:55:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170508115530.a2bpinjsgcmtsodf@pengutronix.de>
References: <20170506140233.3129-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170506140233.3129-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2 1/2] Documentation: usbgadget: provide autostart notes
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, May 06, 2017 at 04:02:32PM +0200, Oleksij Rempel wrote:
> The usbgadget autostart functionality is already added. It's
> time to reflect it in the documentation.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  Documentation/user/usb.rst | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
> index bbcb045cee..ec219cfbe4 100644
> --- a/Documentation/user/usb.rst
> +++ b/Documentation/user/usb.rst
> @@ -216,3 +216,24 @@ mode. Once a specific mode has been selected it can't be changed later anymore.
>    musb-hdrc: setup fifo_mode 4
>    musb-hdrc: 28/31 max ep, 16384/16384 memory
>    barebox:/
> +
> +USB Gadget autostart Support
> +----------------------------
> +
> +Barebox can be configured to start usbgadget automatically by using global variables,
> +instead of creating boot script. This can be useful if autostart policy should be
> +chosen at boot time from other driver or script.
> +To get usbgadget autostart support barebox has to be compiled with
> +CONFIG_USB_GADGET_AUTOSTART enabled.
> +
> +USB Gadget autostart Options
> +^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> +
> +``global.usbgadget.autostart``
> +  Boolean flag. If set to 1, usbgadget will be started automatically on boot and
> +  enable USB OTG mode. (Default 0).
> +``global.usbgadget.acm``
> +  Boolean flag. If set to 1, CDC ACM function will be created.
> +  See :ref:`command_usbgadget` -a. (Default 0).
> +``global.usbgadget.fastboot_function``
> +  Function description for fastboot. See :ref:`command_usbgadget` -A [desc].
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
