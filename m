Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4kbY-0002aD-R4
 for barebox@lists.infradead.org; Wed, 09 Jul 2014 05:39:45 +0000
Date: Wed, 9 Jul 2014 07:39:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140709053922.GD23282@pengutronix.de>
References: <1402056115-1789-1-git-send-email-shc_work@mail.ru>
 <20140707062530.GD23235@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140707062530.GD23235@pengutronix.de>
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
Subject: Re: [PATCH] ARM: dts: Remove skeleton.dtsi
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Jul 07, 2014 at 08:25:30AM +0200, Sascha Hauer wrote:
> On Fri, Jun 06, 2014 at 04:01:55PM +0400, Alexander Shiyan wrote:
> > Reuse basic "skeleton.dtsi" template for some DTS targets.
> > 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> 
> Applied, thanks

And dropped it again. It breaks socfpga_defconfig:

FATAL ERROR: Unable to parse input tree
Error: arch/arm/dts/socfpga.dtsi:18.1-9 syntax error
scripts/Makefile.lib:231: recipe for target 'arch/arm/dts/socfpga_cyclone5_sockit.dtb' failed
make[1]: *** [arch/arm/dts/socfpga_cyclone5_sockit.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
FATAL ERROR: Unable to parse input tree
Error: arch/arm/dts/socfpga.dtsi:18.1-9 syntax error
scripts/Makefile.lib:231: recipe for target 'arch/arm/dts/socfpga_cyclone5_socrates.dtb' failed
make[1]: *** [arch/arm/dts/socfpga_cyclone5_socrates.dtb] Error 1
Makefile:769: recipe for target 'arch/arm/dts' failed
make: *** [arch/arm/dts] Error 2
make: *** Waiting for unfinished jobs....

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
