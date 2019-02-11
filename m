Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtH9V-0002z3-LG
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 19:22:06 +0000
Date: Mon, 11 Feb 2019 20:21:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190211192159.dndlolmj4b453cjv@pengutronix.de>
References: <21f6fae81ddfaa473b00005ce2e44b692f7861c8.camel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <21f6fae81ddfaa473b00005ce2e44b692f7861c8.camel@phytec.de>
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
Subject: Re: AM335x broken
To: Teresa Remmet <t.remmet@phytec.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Teresa,

On Mon, Feb 11, 2019 at 03:44:28PM +0100, Teresa Remmet wrote:
> Hello,
> 
> AM335x is broken on current master in multiple ways. 
> NAND and and SPI boot are not working right now as the image size can
> not be found:
> 
> barebox 2019.01.0-00305-g96abbe544e19 #1682 Mon Feb 11 15:20:00 CET
> 2019
> 
> 
> Board: Phytec phyCORE AM335x
> nand: ONFI flash detected
> nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron
> MT29F4G08ABADAH4), 512Mi
> B, page size: 2048, OOB size: 64
> booting from NAND
> failed to get image size
> trying to load image from backup partition.
> failed to get image size
> booting failed
> 
> I bisected the issue down to:
> commit 5c0e16591d9471a345b77a41fde76de34f301f6b
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Wed Jan 16 10:15:55 2019 +0100
> 
>     images: Drop unnecessary fix_size
>     
>     Now that we compile the compressed binary into the decompressor we
>     no longer need fix_size but can use the linker to fill in the image
>     size into the binary.
>     
>     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Reverting this patch helps. But what is the correct solution?

Update to a newer toolchain ;)

This problem seems to exist with gcc-5 and older where the
barebox_image_size linker variable is generated as something which needs
runtime relocation.

We can just revert 5c0e16591d94. This brings us the problem that
fix-size will be used by the Mips multiimage builds. It fails there
as fix-size tests for the input being a valid Arm barebox image. We
would have to relax that constraint.

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
