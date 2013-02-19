Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7i45-0003yF-Mk
 for barebox@lists.infradead.org; Tue, 19 Feb 2013 07:56:38 +0000
Date: Tue, 19 Feb 2013 08:56:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130219075635.GW1906@pengutronix.de>
References: <1361186535-14811-1-git-send-email-fabio.porcedda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361186535-14811-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: Re: [PATCH] at91sam9260/9g20ek: refactor init_board script
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 18, 2013 at 12:22:15PM +0100, Fabio Porcedda wrote:
> Refactor to remove duplicated code without changing functionality.
> Put "then" on the same line of "if", because:
>  - is the most used style in barebox
>  - is like c code style
>  - is more compact
> 
> Reduce the number of lines from 50 to 40.

Applied, thanks

Sascha

> 
> Tested on at91sam9260ek.
> 
> Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/at91sam9260ek/env/bin/init_board | 54 ++++++++++--------------
>  1 file changed, 22 insertions(+), 32 deletions(-)
> 
> diff --git a/arch/arm/boards/at91sam9260ek/env/bin/init_board b/arch/arm/boards/at91sam9260ek/env/bin/init_board
> index 977430d..27d767d 100644
> --- a/arch/arm/boards/at91sam9260ek/env/bin/init_board
> +++ b/arch/arm/boards/at91sam9260ek/env/bin/init_board
> @@ -8,43 +8,33 @@ vendor_id=0x4321
>  
>  dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
>  
> -if [ $at91_udc0.vbus != 1 ]
> -then
> +if [ $at91_udc0.vbus != 1 ]; then
>  	echo "No USB Device cable plugged, normal boot"
>  	exit
>  fi
>  
>  gpio_get_value ${dfu_button}
> -if [ $? != 0 ]
> -then
> -	autoboot_timeout=16
> -	echo "enable tty over USB Device, increase the boot delay to ${autoboot_timeout}s"
> -	usbserial
> -	exit
> -fi
> -
> -echo "${button_name} pressed detected wait ${button_wait}s"
> -timeout -s -a ${button_wait}
> -
> -if [ $at91_udc0.vbus != 1 ]
> -then
> -	echo "No USB Device cable plugged, normal boot"
> -	exit
> -fi
> -
> -gpio_get_value ${dfu_button}
> -if [ $? != 0 ]
> -then
> +if [ $? = 0 ]; then
> +	echo "${button_name} pressed detected wait ${button_wait}s"
> +	timeout -s -a ${button_wait}
> +
> +	if [ $at91_udc0.vbus != 1 ]; then
> +		echo "No USB Device cable plugged, normal boot"
> +		exit
> +	fi
> +
> +	gpio_get_value ${dfu_button}
> +	if [ $? = 0 ]; then
> +		echo ""
> +		echo "Start DFU Mode"
> +		echo ""
> +		led ds5 1
> +		dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
> +		exit
> +	fi
>  	echo "${button_name} released, normal boot"
> -	autoboot_timeout=16
> -	echo "enable tty over USB Device, increase the boot delay to ${autoboot_timeout}s"
> -	usbserial
> -	exit
>  fi
>  
> -echo ""
> -echo "Start DFU Mode"
> -echo ""
> -
> -led ds5 1
> -dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
> +autoboot_timeout=16
> +echo "enable tty over USB Device, increase the boot delay to ${autoboot_timeout}s"
> +usbserial
> -- 
> 1.8.1.1
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
