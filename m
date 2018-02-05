Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eigXR-00047C-Qu
 for barebox@lists.infradead.org; Mon, 05 Feb 2018 13:10:27 +0000
Received: from bohne.hi.pengutronix.de ([2001:67c:670:100:9e5c:8eff:fece:ccef])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <r.hieber@pengutronix.de>) id 1eigXC-0000mH-Kh
 for barebox@lists.infradead.org; Mon, 05 Feb 2018 14:10:10 +0100
References: <20180130112523.20258-1-r.hieber@pengutronix.de>
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <940c8ae3-8a19-aee1-9da9-09ebb3487a95@pengutronix.de>
Date: Mon, 5 Feb 2018 14:10:10 +0100
MIME-Version: 1.0
In-Reply-To: <20180130112523.20258-1-r.hieber@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] doc: bcm283x: update documentation for Raspberry Pi
To: barebox@lists.infradead.org

Yes/no/further discussion needed? :)

  - Roland

On 30.01.2018 12:25, Roland Hieber wrote:
> The old way does not seem to work for RPi 3, as the UART pins are
> mapped differently and the NOOBS bootcode does not seem to read a
> config.txt.
> 
> Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
> ---
>   Documentation/boards/bcm2835.rst | 34 ++++++++++++++++++++++++++--------
>   1 file changed, 26 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
> index 13cebb01c4..1a78cfba3c 100644
> --- a/Documentation/boards/bcm2835.rst
> +++ b/Documentation/boards/bcm2835.rst
> @@ -1,17 +1,35 @@
> -Broadcom BCM2835
> +Broadcom BCM283x
>   ================
>   
>   Raspberry Pi
>   ------------
>   
> -  1. Prepare a card with a FAT filesystem. Download a tiny NOOBS LITE
> -     zip archive and unpack it into FAT partition.
> -     See http://www.raspberrypi.org/help/noobs-setup/ for details.
> +  1. Prepare an SD or microSD card with a FAT filesystem of at least 30 MB in size.
> +
> +  2. Download the `Raspberry Pi firmware`_ (120 MB), unzip it, and copy the
> +     contents of the ``boot/`` folder to your card.
>   
> -  2. Compile ``barebox.bin`` image (use ``rpi_defconfig``).
> -     Copy it to the SD/microSD card and name it ``recovery.img``.
> +  3. Use ``make rpi_defconfig; make`` to build barebox. This will create the following images:
>   
> -  3. Connect to board's UART (115200 8N1);
> +     - ``images/barebox-raspberry-pi-1.img`` for the BCM2835/ARM1176JZF-S (Raspberry Pi 1)
> +     - ``images/barebox-raspberry-pi-2.img`` for the BCM2836/CORTEX-A7 (Raspberry Pi 2)
> +     - ``images/barebox-raspberry-pi-3.img`` for the BCM2837/CORTEX-A53 (Raspberry Pi 3, Raspberry Pi Zero)
> +
> +     Copy the respective image for your model to your SD card and name it
> +     ``barebox.img``.
> +
> +  4. Create a text file ``config.txt`` on the SD card with the following content::
> +
> +         kernel=barebox.img
> +         enable_uart=1
> +         dtoverlay=pi3-miniuart-bt
> +
> +     (For more information, refer to the `documentation for config.txt`_.)
> +
> +  5. Connect to board's UART (115200 8N1);
>        Use PIN6 (GND), PIN8 (UART_TX), PIN10 (UART_RX) pins.
>   
> -  4. Turn board's power on.
> +  6. Turn board's power on.
> +
> +.. _Raspberry Pi firmware: https://codeload.github.com/raspberrypi/firmware/zip/80e1fbeb78f9df06701d28c0ed3a3060a3f557ef
> +.. _documentation for config.txt: https://www.raspberrypi.org/documentation/configuration/config-txt/
> 

-- 
Pengutronix e.K.                  | Roland Hieber               |
Industrial Linux Solutions        | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
