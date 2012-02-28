Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S2Is0-0001Dh-Fg
 for barebox@lists.infradead.org; Tue, 28 Feb 2012 08:57:17 +0000
Date: Tue, 28 Feb 2012 09:57:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120228085705.GN3852@pengutronix.de>
References: <35246B69-4D16-4459-9E1E-0C79C4350EFF@yamaha.co.uk>
 <AF4465C4-1845-4DA0-B5B8-EEE9CB5A8AB5@yamaha.co.uk>
 <20120224072308.GS3852@pengutronix.de>
 <20120227193247.GI12248@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120227193247.GI12248@game.jcrosoft.org>
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
Subject: Re: PATCH: Fix MMC boot in OMAP4 xload configurations
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 27, 2012 at 08:32:47PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 08:23 Fri 24 Feb     , Sascha Hauer wrote:
> > Hi Mark,
> > 
> > On Thu, Feb 23, 2012 at 04:53:28PM +0000, Mark Olleson wrote:
> > > omap4_bootsrc() always returns OMAP_BOOTSRC_UNKNOWN when an OMAP4
> > > xload image is built with pcm049_xload_defconfig.  This is likely to
> > > be the case for all OMAP4 xload configurations.
> > > 
> > > This means that when the CPU is configured to boot from MMC1 with
> > > boot[5:0],  xload will load the second stage boot loader from NAND
> > > flash (if present) rather than MMC1 as intended. 
> > > 
> > > omap4_bootsrc() reads data left behind towards the top of the SRAM by
> > > the ROM-based boot-loader.  This is the same SRAM into which the xload
> > > image is loaded.   The xload image is of a sufficient size that it
> > > overwrites these locations, and OMAP4_TRACING_VECTOR3 always contains
> > > 0.
> > > 
> > > These locations are in fact trampled by data in the BSS section of the
> > > image.   The single largest item in there is FILE files[MAX_FILES].
> > > This patch reduces the size of files[] considerably.  The image now
> > > JUST fits.
> > 
> > Sorry, this is not even a short term solution, it will probably break
> > very soon again.
> > 
> > > 
> > > Long term, a better solution would be to not rely on
> > > OMAP4_TRACING_VECTOR3, and instead use the structure passed into the
> > > xload by the ROM-based boot loader - which also indicates the boot
> > > device.     This wold allow us another 4kB of code before we overflow
> > > the SRAM completely.
> > 
> > That sounds interesting. I wasn't aware that the ROM passes a structure
> > into the bootloader.
> > 
> > Another thing is that I still have the Thumb2 patches pending which are
> > currently blocked by Jean-Christophe.
> > 
> > Jean-Christophe, please please have a look on these patches again or at
> > least say *what* is wrong with them so that I have a chance to rework
> > them.
> sorry need to finish some work on the kernel and the support of sam9x5 series
> 
> on AT91 we must have the vector at the begeniing of the binary and the only
> valid instruction are ldr and branch
> 
> so with your patch the rom code cannot boot barebox

Please check the series I just sent.

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
