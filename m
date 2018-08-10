Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fo2Km-0007G1-SQ
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 07:59:47 +0000
Date: Fri, 10 Aug 2018 09:59:32 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20180810075932.6qzuz6bd5tetjpuf@pengutronix.de>
References: <844001fa78a52f48a3cb1e9189831456@solinno.co.uk>
 <20180806183610.rro2xem64rljdsvy@pengutronix.de>
 <998b78c5d1dec5b03b7c9dadc42f32ae@solinno.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <998b78c5d1dec5b03b7c9dadc42f32ae@solinno.co.uk>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Help requested with Barebox on Globalscale Mirabox
To: Leigh Brown <leigh@solinno.co.uk>
Cc: Barebox <barebox@lists.infradead.org>

Hello Leigh,

On Thu, Aug 09, 2018 at 04:14:48PM +0100, Leigh Brown wrote:
> On 2018-08-06 19:36, Uwe Kleine-K=F6nig wrote:
> > Hello Leigh,
> > =

> > On Tue, Jul 31, 2018 at 02:21:04PM +0100, Leigh Brown wrote:
> > > Have I missed any steps?  Any help would be greatly appreciated.
> > =

> > Looks good.
> > =

> > Which revision are you on (i.e. git rev-parse @ in your barebox copy)?
> > What is currently running on the device?
> =

> I was running against the same revision as you tried (445a7f).  I'm now
> running against the latest revision (3307e8) with the same issue.
> =

> > Do you get an U when applying this patch?:
> [snip patch]
> =

> I did.  Thanks very much for that hint, it helped me debug the issue. I am
> booting from the UART as follows:
> =

> scripts/kwboot -t -b images/barebox-globalscale-mirabox.img -B 115200 /de=
v/ttyUSB0
> =

> I believe the issue is that in arch/arm/mach-mvebu/common.c the function
> armada_370_xp_barebox_entry() calls mvebu_remap_registers() before the
> stack is set up (it looks like the SP points somewhere in the SRAM
> range).  As mvebu_remap_registers() as compiled by my version of gcc
> uses the stack, it fails to return.
> =

> Making mvebu_remap_registers() inline fixes the issue, as per the followi=
ng
> patch:
> =

> diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
> index 83aeb41ae..588cef515 100644
> --- a/arch/arm/mach-mvebu/common.c
> +++ b/arch/arm/mach-mvebu/common.c
> @@ -183,11 +183,15 @@ mem_initcall(mvebu_meminit);
>   * There no way to determine internal registers base address
>   * safely later on, as the remap register itself is within the
>   * internal registers.
> + *
> + * As this function may be called before we have a working stack,
> + * make it inline to avoid the possibility of using the stack.
> + *
>   */
>  #define MVEBU_BRIDGE_REG_BASE		0x20000
>  #define DEVICE_INTERNAL_BASE_ADDR	(MVEBU_BRIDGE_REG_BASE + 0x80)
> =

> -static void mvebu_remap_registers(void)
> +static inline void mvebu_remap_registers(void)
>  {
>  	void __iomem *base =3D mvebu_get_initial_int_reg_base();

I think this makes sense.

Which toolchain are you using? Can you provide (also for the problem
below) your images/start_globalscale_mirabox.pbl compiled from an
unchanged tree (for example 3307e8)?

> > I just tried 7ba0f2d29959256025ece9ae961a6c3421445a7f on my ReadyNAS 104
> > which has an armada370, too.
> > =

> > I hangs when using second-stage booting from the Vendor U-Boot after:
> > =

> > 	barebox 2018.07.0-00139-g7ba0f2d29959-dirty #50 Mon Aug 6 20:27:11 CES=
T 2018
> > =

> > =

> > 	Board: Marvell Armada 370/XP
> > 	SoC: Marvell 6710 rev 1
> > 	mdio_bus: miibus0: probed
> > 	eth1: got preset MAC address: 28:c6:8e:36:df:57
> =

> Once I got past that issue I also had an issue in barebox_multi_pbl_start=
. I
> think the following patch is the right solution, but I'm not 100% sure.  =
It
> certainly makes it work for me.

I'm 100% sure, this is wrong :-) You said you're using mvebu_defconfig
and just disabled some machines, right? So you have
CONFIG_PBL_RELOCATABLE=3Dy and then hit the else branch in the check if
the image is in RAM?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
