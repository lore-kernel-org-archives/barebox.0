Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6BJs-0004M8-7J
 for barebox@lists.infradead.org; Wed, 11 Apr 2018 08:41:33 +0000
Date: Wed, 11 Apr 2018 10:41:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180411084120.cxoyjrvp7f52aus2@pengutronix.de>
References: <20180326192025.28809-1-l.stach@pengutronix.de>
 <20180326192025.28809-4-l.stach@pengutronix.de>
 <20180405075402.gbplqqwoubu7cqpg@pengutronix.de>
 <1523357612.4981.5.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1523357612.4981.5.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 04/10] ARM: add file for HYP mode related setup
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 10, 2018 at 12:53:32PM +0200, Lucas Stach wrote:
> Am Donnerstag, den 05.04.2018, 09:54 +0200 schrieb Sascha Hauer:
> > On Mon, Mar 26, 2018 at 09:20:19PM +0200, Lucas Stach wrote:
> > > This adds routines to add hyp mode vectors and switch back to HYP
> > > mode from SVC. This is needed in both the PBL and Barebox proper.
> > > =

> > > > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > > > Tested-by: Roland Hieber <r.hieber@pengutronix.de>
> > > ---
> > > v3:
> > > - fix whitespace
> > > - use __BARE_INIT
> > > ---
> > > =A0arch/arm/cpu/Makefile=A0=A0=A0=A0=A0=A0=A0=A0=A0|=A0=A0=A04 ++
> > > =A0arch/arm/cpu/hyp.S=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0| 116 ++++++=
++++++++++++++++++++++++++++++++++++
> > > =A0arch/arm/cpu/sm_as.S=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0|=A0=A011 ----
> > > =A0arch/arm/include/asm/secure.h |=A0=A0=A08 +++
> > > =A04 files changed, 128 insertions(+), 11 deletions(-)
> > > =A0create mode 100644 arch/arm/cpu/hyp.S
> > > =

> > > diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> > > index 13fe12c31f6f..f86dff975bb4 100644
> > > --- a/arch/arm/cpu/Makefile
> > > +++ b/arch/arm/cpu/Makefile
> > > @@ -9,6 +9,10 @@ obj-$(CONFIG_ARM_EXCEPTIONS) +=3D exceptions.o
> > > =A0obj-$(CONFIG_MMU) +=3D mmu.o mmu-early.o
> > > =A0pbl-$(CONFIG_MMU) +=3D mmu-early.o
> > > =A0lwl-y +=3D lowlevel.o
> > > +obj-y +=3D hyp.o
> > > +AFLAGS_hyp.o :=3D-Wa,-march=3Darmv7-a -Wa,-mcpu=3Dall
> > > +pbl-y +=3D hyp.o
> > > +AFLAGS_pbl-hyp.o :=3D-Wa,-march=3Darmv7-a -Wa,-mcpu=3Dall
> > > =A0endif
> > > =A0
> > > =A0obj-$(CONFIG_ARM_EXCEPTIONS) +=3D interrupts.o
> > > diff --git a/arch/arm/cpu/hyp.S b/arch/arm/cpu/hyp.S
> > > new file mode 100644
> > > index 000000000000..1314b56eab25
> > > --- /dev/null
> > > +++ b/arch/arm/cpu/hyp.S
> > > @@ -0,0 +1,116 @@
> > > +#include <linux/linkage.h>
> > > +#include <asm/system.h>
> > > +#include <asm/opcodes-virt.h>
> > > +#include <init.h>
> > > +
> > > +.arch_extension sec
> > > +.arch_extension virt
> > > +
> > > +__BARE_INIT
> > > +
> > > +.data
> > > > > +	.align=A0=A02
> > > +ENTRY(__boot_cpu_mode)
> > > > > +	.long=A0=A0=A00
> > > +.text
> > > +
> > > +ENTRY(__hyp_install)
> > > > > > > +	mrs	r12, cpsr
> > > > > > > +	and	r12, r12, #MODE_MASK
> > > +
> > > > > +	@ Save the initial CPU state
> > > > > > > +	adr	r0, .L__boot_cpu_mode_offset
> > > > > > > +	ldr	r1, [r0]
> > > +	str	r12, [r0, r1]
> > =

> > Naa, this won't work. You save the cpsr value in __boot_cpu_mode, but
> > this variable exists both in PBL and regular barebox, __hyp_install
> > is called multiple times and cpsr is modified right after saving it.
> =

> It does. ;)
> =

> I guess its non-obvious from the code flow, but what we do is to drop
> down to SVC in the PBL, then jump back to HYP before starting barebox
> proper and the dropping down to SVC again on barebox entry.
> All in all this is less-than-pretty, but IMHO it's the lesser evil than
> trying to implement some communication channel from PBL to barebox
> proper to pass information like this.
> =

> So I guess this code needs some more comments...

Yep ;)

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
