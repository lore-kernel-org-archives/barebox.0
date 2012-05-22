Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWu8T-0000cC-F6
 for barebox@lists.infradead.org; Tue, 22 May 2012 18:48:46 +0000
Date: Tue, 22 May 2012 20:48:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120522184838.GN30400@pengutronix.de>
References: <CAONxwYMN4tDV-0vcophuLRA0rJC_T6OaLNyZM22yoso09cJFRg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAONxwYMN4tDV-0vcophuLRA0rJC_T6OaLNyZM22yoso09cJFRg@mail.gmail.com>
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
Subject: Re: SD card probe failure
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 22, 2012 at 04:28:14PM +0200, Roberto Nibali wrote:
> Hi
> 
> I'm loading barebox as a second stage bootloader, because I haven't figured
> out yet how to boot it from SD card directly. It seems though as if barebox
> in general is not happy with the SD card:
> 
> 
> barebox 2012.05.0-00194-g38d361d-dirty #0 Mon May 14 10:52:47 CEST 2012
> 
> 
> Board: SID1 NOAH
> registered netconsole as cs1
> imx-esdhc@mci0: registered as mci0
> imx-esdhc@imx-esdhc0: timeout 1
> Cannot reset the SD/MMC card
> ehci@ehci0: USB EHCI 1.00
> cfi_flash@cfi_flash0: found cfi flash at a0000000, size 67108864
> Malloc space: 0x83b00000 -> 0x83efffff (size  4 MB)
> Stack space : 0x83af8000 -> 0x83b00000 (size 32 kB)
> envfs: wrong magic on /dev/env0
> no valid environment found on /dev/env0. Using default environment
> running /env/bin/init...
> 
> Hit any key to stop autoboot:  5
> 
> type update_kernel nor [<imagename>] to update kernel into flash
> type update_root nor [<imagename>] to update rootfs into flash
> 
> sid1-noah:/
> sid1-noah:/ devinfo mci0
> resources:
> driver: mci
> 
>  No information available:
>   MCI card not probed yet
> Parameters:
>            probe = 0
> sid1-noah:/ mci0.probe=1
> imx-esdhc@imx-esdhc0: timeout 1
> Cannot reset the SD/MMC card
> set parameter: Connection timed out
> sid1-noah:/
> 
> Any ideas? What are possible causes of this?

Does the SD card work in the first stage loader? If yes, you could try
to remove the mux setup from barebox, so that you can be sure that you
do not misconfigure things that were already configured correctly.
I have no hardware handy to test the driver on a i.MX25, but Erics
Eukrea board has MMC support, so I believe the driver should work in
general.

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
