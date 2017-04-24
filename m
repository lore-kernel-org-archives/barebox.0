Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d2eBQ-0008La-BB
 for barebox@lists.infradead.org; Mon, 24 Apr 2017 13:37:42 +0000
Date: Mon, 24 Apr 2017 15:37:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170424133712.6r5zegwnwwkctf6o@pengutronix.de>
References: <1492969061-12273-1-git-send-email-akurz@blala.de>
 <1492969061-12273-3-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1492969061-12273-3-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH v2 3/3] ARM i.MX50: Add support for i.MX50 based Amazon
 Kindle e-book readers
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Sun, Apr 23, 2017 at 07:37:41PM +0200, Alexander Kurz wrote:
> The Kindle Model No. D01100 (Kindle Wi-Fi), D01200 (Kindle Touch)
> and EY21 (Kindle Paperwhite) are refered as the Kindle 4th and 5th generation.
> Those models are based on an i.MX50 SoC and use LPDDR1 or LPDDR2 Memory.
> 
> The devices boot in internal boot mode from a build-in eMMC, alternatively
> some devices may be set into USB-downloader mode by pressing a specific key
> at startup.
> 
> Add support for the i.MX50 based Kindle device and make barebox a drop-in
> replacement for the factory shipped u-boot image.
> 
> Notable features:
> - Support for eMMC, USB, UART, I2C, SPI and Keys (except keyboard).
> - LPDDR1 and LPDDR2 setup is done via DCD, the same imximage may be used
>   for USB-startup and for installation.
> - Support for vendor specific ATAGs that are required for the Kindle-System.
> - usbserial barebox console access by pressing Select button at startup,
>   alternatively full console support on connector J14.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/autoboot_timeout b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/autoboot_timeout
> new file mode 100644
> index 0000000..00750ed
> --- /dev/null
> +++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/autoboot_timeout
> @@ -0,0 +1 @@
> +3
> diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/boot.default b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/boot.default
> new file mode 100644
> index 0000000..3118b7a
> --- /dev/null
> +++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/boot.default
> @@ -0,0 +1 @@
> +mmc_kernel
> diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.console b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.console
> new file mode 100644
> index 0000000..d775310
> --- /dev/null
> +++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.console
> @@ -0,0 +1 @@
> +console=ttymxc0,115200

This shouldn't be needed. barebox will automatically add
console=ttymxc0,115200 to the kernel command line when
this UART is used as console in barebox.

> diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.consoleblank b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.consoleblank
> new file mode 100644
> index 0000000..573541a
> --- /dev/null
> +++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.consoleblank
> @@ -0,0 +1 @@
> +0

This results in "0" being passed to the kernel command line. You
probably want to have "consoleblank=0", right?

I applied the series with these two things fixed. Is that ok for you?

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
