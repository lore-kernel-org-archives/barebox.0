Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4kW4-0000tQ-Ba
 for barebox@lists.infradead.org; Wed, 09 Jul 2014 05:34:04 +0000
Date: Wed, 9 Jul 2014 07:33:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140709053342.GB23235@pengutronix.de>
References: <1404850976-27975-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404850976-27975-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] Documentation: add uemd mb7707 barebox mini-howto
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 09, 2014 at 12:22:56AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  Documentation/boards/uemd.rst | 40 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
>  create mode 100644 Documentation/boards/uemd.rst
> 
> diff --git a/Documentation/boards/uemd.rst b/Documentation/boards/uemd.rst
> new file mode 100644
> index 0000000..4fb30fa
> --- /dev/null
> +++ b/Documentation/boards/uemd.rst
> @@ -0,0 +1,40 @@
> +UEMD
> +====
> +
> +MB 77.07
> +--------
> +
> +MB 77.07 board uses MBOOT as bootloader.
> +MBOOT is a U-Boot clone with reduced functionality.
> +See https://github.com/RC-MODULE/mboot for details.
> +
> +Running barebox
> +^^^^^^^^^^^^^^^
> +
> +  1. Connect to the boards's UART (38400 8N1);
> +
> +  2. Turn board's power on;
> +
> +  3. Wait ``Hit any key (in 2 sec) to skip autoload...`` prompt and press the space key;
> +
> +  4. Compile ``zbarebox.bin`` image and upload it to the board via tftp
> +
> +.. code-block:: none
> +
> +  MBOOT # tftpboot zbarebox.bin
> +  greth: greth_halt
> +  TFTP Using GRETH_10/100 device
> +  TFTP params: server 192.168.0.1 our_ip 192.168.0.7
> +  TFTP params: filename 'zbarebox.bin' load_address 0x40100000
> +  TFTP Loading: ################
> +  TFTP done
> +
> +..
> +
> +  5. Run barebox
> +
> +.. code-block:: none
> +
> +  MBOOT # go 0x40100000
> +
> +..
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
