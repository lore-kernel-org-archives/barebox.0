Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqEQL-0008S5-Kq
 for barebox@lists.infradead.org; Wed, 13 Apr 2016 06:37:14 +0000
Date: Wed, 13 Apr 2016 08:36:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160413063649.GU9102@pengutronix.de>
References: <CAKu_b=KWS1Jce4gW+eSNzHX4SceEDPFKOfM4pxyTxBy1ZD8g7w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKu_b=KWS1Jce4gW+eSNzHX4SceEDPFKOfM4pxyTxBy1ZD8g7w@mail.gmail.com>
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
Subject: Re: imx53 memory detection
To: Jason Cobham <cobham.jason@gmail.com>
Cc: barebox@lists.infradead.org

Hi Jason,

On Tue, Apr 12, 2016 at 10:08:01PM -0700, Jason Cobham wrote:
> Support for Barebox on the Digi connectcore imx53 board stopped
> working recently. I believe the memory detection never worked properly
> to begin with. I've re-factored lowlevel.c to match similar mx53
> boards, however the ram size is always detected incorrectly.

So you replaced barebox_arm_entry with imx53_barebox_entry, right? What
memory size do you have and what size gets detected then?

> I have a
> reliable way of detecting the board memory size in device_initcall.
> 
> I've tried adding mem_initcall/arm_add_mem_device() however mmu
> support causes a panic when enabled. without mmu support enabled, the
> board boots with the correct memory size however I get an error,
> "Cannot request SDRAM region for stack".
> 
> I've tried to use the freescale loco/qsb as a template since the digi
> board is similar, but I don't see where it's memory size is defined. I
> assume it's automatically detected.

Yes, it's read back from the memory controller in arch/arm/mach-imx/esdctl.c.

The whole approach goes like this:

- The SDRAM controller is configured by board specific lowlevel code (or
  DCD data)
- barebox_arm_entry() is called with some memory passed to it. This can be
  the full memory of the board, but doesn't necessarily have to be. It
  is only the memory barebox will use for itself, stack, malloc area.
  imx53_barebox_entry() is a shortcut which reads back the SDRAM
  controller settings to automatically detect SDRAM size and which calls
  barebox_arm_entry() with the result.
- during mem_initcall the imx-esdctl driver is registered. This driver
  again reads back the SDRAM controller settings and registers memory
  banks according to the settings.
- Also during mem_initcall the memory areas specified in the device tree
  are registered.

If there are conflicts between the different banks then the first one
wins. If then the MMU code later detects that the SDRAM passed to
barebox_arm_entry() is actually bigger than the memory registered in the
memory banks it can have undesired results.


As a first step you should remove the /memory node in
arch/arm/dts/imx53-ccxmx53.dtsi. Since there are different possible
memory setups for this board it is wrong anyway. Then it would be
interesting what imx_esdctl_v4_add_mem() detects. I believe it should be
possible to fix it if it detects the wrong memory size.

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
