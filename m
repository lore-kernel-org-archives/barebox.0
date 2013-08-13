Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9FNr-0000x3-AF
 for barebox@lists.infradead.org; Tue, 13 Aug 2013 14:15:40 +0000
Date: Tue, 13 Aug 2013 16:15:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130813141516.GT26614@pengutronix.de>
References: <1376378772-25649-1-git-send-email-s.hauer@pengutronix.de>
 <1376378772-25649-4-git-send-email-s.hauer@pengutronix.de>
 <520A34FE.2020008@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <520A34FE.2020008@gmail.com>
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

On Tue, Aug 13, 2013 at 03:30:38PM +0200, Sebastian Hesselbarth wrote:
> On 08/13/13 09:26, Sascha Hauer wrote:
> >diff --git a/arch/arm/boards/solidrun-cubox/lowlevel.c b/arch/arm/boards/solidrun-cubox/lowlevel.c
> >new file mode 100644
> >index 0000000..fdf5a7e
> >--- /dev/null
> >+++ b/arch/arm/boards/solidrun-cubox/lowlevel.c
> >@@ -0,0 +1,37 @@
> [...]
> >+ENTRY_FUNCTION(start_solidrun_cubox)(void)
> >+{
> >+	uint32_t fdt;
> >+
> >+	__barebox_arm_head();
> >+
> >+	arm_cpu_lowlevel_init();
> >+
> >+	fdt = (uint32_t)__dtb_dove_cubox_start - get_runtime_offset();
> >+
> >+	mvebu_barebox_entry(fdt);
> >+}
> [...]
> > diff --git a/arch/arm/mach-mvebu/lowlevel.c
> b/arch/arm/mach-mvebu/lowlevel.c
> > index 3f64c4a..11810cc 100644
> > --- a/arch/arm/mach-mvebu/lowlevel.c
> > +++ b/arch/arm/mach-mvebu/lowlevel.c
> > @@ -24,5 +24,5 @@
> >   void __naked barebox_arm_reset_vector(void)
> >   {
> >   	arm_cpu_lowlevel_init();
> > -	mvebu_barebox_entry();
> > +	mvebu_barebox_entry(0);
> >   }
> 
> Sascha,
> 
> thanks for the patch set, I'll give it a go soon.
> 
> I understand that this is just a first step, but you are adding extra
> lowlevel init to boards/solidrun-cubox/lowlevel.c but in the end it
> should be part of mach-mvebu/lowlevel.c instead?
> 
> I have a some MVEBU boards with Dove and Armada 370 available and
> could extend the patches to have a single lowlevel init again.

The board specific lowlevel init is necessary since this specifies the
dtb to use. Otherwise there's no way to find out on which board you are
running on.

(Another possibility would be to somehow append a devicetree, but I
haven't found a good way to do that)

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
