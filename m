Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6zn2-0007nL-H6
 for barebox@lists.infradead.org; Sat, 25 Jan 2014 09:44:38 +0000
Date: Sat, 25 Jan 2014 10:44:11 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20140125094411.GD25691@pengutronix.de>
References: <1390505010-7546-1-git-send-email-m.grzeschik@pengutronix.de>
 <1390505010-7546-3-git-send-email-m.grzeschik@pengutronix.de>
 <52E19CFB.1040908@gmail.com>
 <20140124130757.GB25691@pengutronix.de>
 <52E2BC43.5040601@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52E2BC43.5040601@gmail.com>
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
Subject: Re: [PATCH 2/3] net: mv643xx: add driver support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jan 24, 2014 at 08:17:23PM +0100, Sebastian Hesselbarth wrote:
> On 01/24/2014 02:07 PM, Michael Grzeschik wrote:
> >Hi Sebastian,
> >
> >On Thu, Jan 23, 2014 at 11:51:39PM +0100, Sebastian Hesselbarth wrote:
> >>On 01/23/2014 08:23 PM, Michael Grzeschik wrote:
> >>We really all hate "mv643xx" because it is a pain to say and write it.
> >>I guess barebox will never be run on systems with mv64xxx controllers
> >>but only Marvell Orion SoC.
> >>
> >>I'd be *very* happy if you do s/mv643xx/orion/g
> >
> >I was not sure how the naming of the driver was chosen. I thought it was
> >ment to describe the SoCs IP-Core. But as mv64xxx is the SoCs prefix, I
> >totaly agree naming it orion. It actually would even be better to give
> >the driver the read IP-Core name.
> 
> The name comes from Marvell Discovery III system controllers used in
> some MIPS and PowerPCs, those match MV643xx. Naming it Orion isn't
> better but is easier to write. You can also chose to name it orion-gbe
> as Marvell used to name the driver for this IP mvgbe.
> 
> Anything except mv643xx or mvgbe is fine for me ;)

All right.

> 
> >>
> >>[...]
> >>>diff --git a/drivers/net/mv643xx.c b/drivers/net/mv643xx.c
> >>>new file mode 100644
> >>>index 0000000..3d0bfdc
> >>>--- /dev/null
> >>>+++ b/drivers/net/mv643xx.c
> >>>@@ -0,0 +1,714 @@
> >>>+/*
> >>[...]
> >>>+ */
> >>>+
> >>>+#include <common.h>
> >>>+#include <malloc.h>
> >>>+#include <net.h>
> >>>+#include <init.h>
> >>>+#include <driver.h>
> >>>+#include <io.h>
> >>>+#include <clock.h>
> >>>+#include <xfuncs.h>
> >>>+#include <linux/phy.h>
> >>>+#include <linux/clk.h>
> >>>+#include <linux/err.h>
> >>>+#include <of_net.h>
> >>>+#include <mach/dove-regs.h>
> >>
> >>Please don't. The same driver will be used on Kirkwood and possibly
> >>orion5x, mv78x00 if they get supported.
> >>
> >>Have every register offset defined in here or "mv643xx.h" and get
> >>rid of the above. If you need some callback for memory windows, let's
> >>get it on now and create it in a way it is compatible with using this
> >>driver on the other SoCs.
> >
> >The register offsets are in mv643xx.h. The mach/dove-regs.h is
> >only needed to be able to use dove_memory_find. See patch:
> >[Patch 1/3] ARM: mvebu: make dove_memory_find reachable for drivers
> 
> Ok, I'll look at that more closely. But the other Orion SoCs also have
> to provide a function here. As it is part of the "mbus", I see if we
> can have a common driver for it.

That would probably be the best.

> >>For the rest, I'll give it a go on Dove ASAP.
> >
> >It would be nice to see if it is also working if barebox running as
> >first stage bootloader. Can you try to get the UART-Image [1] via xmodem
> >transfer running?
> 
> Booting the UART image does work with current barebox master
>  d9a08d8bc5da ("net: phy: Fix crash when no phy is found")
> and without your patch. I haven't applied your patch, yet.

I can not reproduce that. My Images are not working with the
uart boot mechanism. Even the first merged patches to support
that do not boot here. What I do:

sx -vv images/barebox-solidrun-cubox-uart.img < /dev/ttyUSB0 > /dev/ttyUSB0; microcom  -p /dev/ttyUSB0
ending images/barebox-solidrun-cubox-uart.img, 1448 blocks: Give your local XMODEM receive command now.
Bytes Sent: 185472   BPS:9738

Transfer complete
connected to /dev/ttyUSB0
Escape character: Ctrl-\
Type the escape character followed by c to get to the menu or q to quit

----------
From this point there is just silence.


> Do you mean adding the ethernet driver breaks uart boot, or does not
> work if booted from uart? If the latter, I suspect either PHY or PHY
> output mis-configuration.

I just still don't know if the driver could be missing preparation
parts. As I could test it only booting barebox as second stage.

> But I'll check that later this weekend.

Thanks,
Michael

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
