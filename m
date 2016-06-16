Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bDXlH-0002U0-4U
 for barebox@lists.infradead.org; Thu, 16 Jun 2016 13:55:13 +0000
Date: Thu, 16 Jun 2016 15:54:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160616135449.GI9677@pengutronix.de>
References: <CAO6XYUuv_VTv6trEFhjzZ=ey+2addAGBRsdqKQwFgbobaHLi-w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO6XYUuv_VTv6trEFhjzZ=ey+2addAGBRsdqKQwFgbobaHLi-w@mail.gmail.com>
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
Subject: Re: Boot iMX6 from IRAM on new Variscite SOM
To: "Michael D. Burkey" <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

Hi Michael,

On Mon, Jun 13, 2016 at 06:38:31PM -0400, Michael D. Burkey wrote:
> I have already spoken with Sascha about this a bit, but figured I'd
> throw it out here in case anyone had any suggestions.
> 
> Specifically, I'm updating the support for the Variscite SOM to handle
> the newest version of their SOM -- which now includes an EEPROM that
> contains a "DCD-like" script for configuring the DDR3 timing
> parameters.
> 
> Essentially this means that I have to follow a boot procedure similar
> to that used by the current Wandboard setup, which loads part of
> barebox into IRAM/OCRAM on the iMX6, read/configures the DDR3 timings,
> then reloads barebox into DDR3 and starts it.
> 
> I think I have gotten things more or less setup at this point and have
> copied the setup from the Wandboard, but am having trouble getting
> things to actually start from the internal RAM on the board.
> 
> For now, I have a correct DCD already built-in that preconfigures DDR3
> "just in case" and if I set the load address to be DDR3, then
> everything starts up as normal -- which in and of itself points to a
> problem.
> 
> My suspicion is that the boot ROM is still trying to load the full
> image rather than just part of it -- which means that, when I point it
> to the IRAM/OCRAM, it is writing to the aliased memory regions of the
> built in RAM and overwriting itself in the process.
> 
> What/where actually controls the length of the code that gets
> automatically loaded by the iMX6 internal boot ROM and what needs to
> be updated?

Your image name should end with .imx-sram-img, see images/Makefile.imx:

FILE_barebox-imx6-wandboard.img = start_imx6_wandboard.imx-sram-img

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
