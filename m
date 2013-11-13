Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgTfb-000552-SQ
 for barebox@lists.infradead.org; Wed, 13 Nov 2013 06:11:21 +0000
Date: Wed, 13 Nov 2013 07:10:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131113061055.GQ24559@pengutronix.de>
References: <1384296396-18841-1-git-send-email-lisovy@gmail.com>
 <1384297864.18882.19.camel@lolumad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1384297864.18882.19.camel@lolumad>
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
Subject: Re: [PATCH 0/3 v2] Support for Voipac X53-DMM-668 module and Voipac
 Baseboard
To: Rostislav Lisovy <lisovy@gmail.com>
Cc: barebox@lists.infradead.org, pisa@cmp.felk.cvut.cz

On Wed, Nov 13, 2013 at 12:11:04AM +0100, Rostislav Lisovy wrote:
> One small issue I am facing:
> The board has a jumper to switch between 'internal boot' and 'serial
> boot'. If I set it to 'serial boot' and then use imx-usb-loader to load
> barebox to RAM, everything works just fine. When I then try to flash it
> (flash controller support is missing in this patch-set), flashing is
> successful, however I am not able to boot it later when switched to
> 'internal boot' mode. If I try to flash some old version of the barebox
> (from my version running in RAM -- thus the problem is probably not in
> the flash support), it not only flashes successfully, this older version
> is even able to boot in the 'internal boot' mode.
> 
> I also noticed that when I am using CONFIG_IMX_MULTI_BOARDS the whole
> set of CONFIG_ARCH_IMX_INTERNAL_BOOT_* disappears.
> 
> Commands I am using to flash barebox:
> erase /dev/nand0
> addpart /dev/nand0 512k(barebox)ro,512k(bareboxenv),4M(kernel),-(rootfs)
> nand -a /dev/nand0.*
> erase /dev/nand0.barebox.bb
> tftp /vmx53/barebox.bin /dev/nand0.barebox.bb

You should use the barebox_update infrastructure. See
imx53_bbu_internal_nand_register_handler(). With this you would exeute
on the commandline:

barebox_update /path/to/barebox.bin

As a bonus this command also creates a bad block table the imx53 ROM is
able to read.

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
