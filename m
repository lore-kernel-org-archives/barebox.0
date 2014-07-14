Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X6bqL-0006gs-EL
 for barebox@lists.infradead.org; Mon, 14 Jul 2014 08:42:43 +0000
Date: Mon, 14 Jul 2014 10:42:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140714084218.GX23235@pengutronix.de>
References: <1405110382-29843-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1405110382-29843-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] Documentation: add virt2real barebox mini-howto
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Jul 12, 2014 at 12:26:22AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  Documentation/boards/davinci.rst | 51 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 Documentation/boards/davinci.rst
> 
> diff --git a/Documentation/boards/davinci.rst b/Documentation/boards/davinci.rst
> new file mode 100644
> index 0000000..a2ddc3c
> --- /dev/null
> +++ b/Documentation/boards/davinci.rst
> @@ -0,0 +1,51 @@
> +TI Davinci
> +==========
> +
> +virt2real
> +---------
> +
> +virt2real is a miniature board for creation of WiFi
> +or Internet controllable smart devices.
> +
> +The board has
> +
> +  * TI DaVinchi DM365 running at 300 MHz;
> +  * 128 MiB DDR2 SDRAM;
> +  * 256 MiB NAND Flash Memory;
> +  * 2 x UART serial interfaces;
> +  * 1 x Ethernet interface (Micrel KS8851);
> +  * 1 x USB interface;
> +  * microSD card slot.
> +
> +The board uses U-Boot as bootloader.
> +
> +
> +Running barebox
> +^^^^^^^^^^^^^^^
> +
> +  1. Connect to the boards's UART0 (115200 8N1);
> +     Use J2.2 (GND), J2.4 (UART0_TXD), J2.6 (UART0_RXD) pins.
> +
> +  2. Turn board's power on;
> +
> +  3. Wait for ``Hit any key to stop autoboot`` prompt and press the space key.
> +
> +  4. Upload ``barebox.bin`` via Ymodem
> +
> +.. code-block:: none
> +    virt2real ># loady
> +..
> +
> +  5. Run barebox
> +
> +.. code-block:: none
> +    virt2real ># go 0x82000000
> +..
> +
> +
> +Links
> +^^^^^
> +
> +  * http://virt2real.com/
> +  * http://wiki.virt2real.ru/
> +  * https://github.com/virt2real
> -- 
> 2.0.1
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
