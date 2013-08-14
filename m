Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9URw-0005lF-89
 for barebox@lists.infradead.org; Wed, 14 Aug 2013 06:20:53 +0000
Date: Wed, 14 Aug 2013 08:20:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130814062027.GW26614@pengutronix.de>
References: <1376378772-25649-1-git-send-email-s.hauer@pengutronix.de>
 <1376378772-25649-4-git-send-email-s.hauer@pengutronix.de>
 <520A34FE.2020008@gmail.com>
 <20130813141516.GT26614@pengutronix.de>
 <520A4133.6040908@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <520A4133.6040908@gmail.com>
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
Subject: Re: [PATCH 3/6] ARM: mvebu: introduce multi image support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Tue, Aug 13, 2013 at 04:22:43PM +0200, Sebastian Hesselbarth wrote:
> >>>diff --git a/arch/arm/mach-mvebu/lowlevel.c
> >>b/arch/arm/mach-mvebu/lowlevel.c
> >>>index 3f64c4a..11810cc 100644
> >>>--- a/arch/arm/mach-mvebu/lowlevel.c
> >>>+++ b/arch/arm/mach-mvebu/lowlevel.c
> >>>@@ -24,5 +24,5 @@
> >>>   void __naked barebox_arm_reset_vector(void)
> >>>   {
> >>>   	arm_cpu_lowlevel_init();
> >>>-	mvebu_barebox_entry();
> >>>+	mvebu_barebox_entry(0);
> >>>   }
> >>
> >>Sascha,
> >>
> >>thanks for the patch set, I'll give it a go soon.
> >>
> >>I understand that this is just a first step, but you are adding extra
> >>lowlevel init to boards/solidrun-cubox/lowlevel.c but in the end it
> >>should be part of mach-mvebu/lowlevel.c instead?
> >>
> >>I have a some MVEBU boards with Dove and Armada 370 available and
> >>could extend the patches to have a single lowlevel init again.
> >
> >The board specific lowlevel init is necessary since this specifies the
> >dtb to use. Otherwise there's no way to find out on which board you are
> >running on.
> 
> Ok, but I could try to cook the board lowlevel init down to its bare
> minimum and only set fdt address. Or have some mvebu specific
> fdt_address variable that can be overwritten. The less board specific
> stuff there is, the better.

If you find ways to redruce the board specific code, go ahead. Note that
this code does not run at the address it's linked at, so accessing
global variables is not possible.

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
