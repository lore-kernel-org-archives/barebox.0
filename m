Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WY8MV-0002pB-Gq
 for barebox@lists.infradead.org; Thu, 10 Apr 2014 06:21:24 +0000
Date: Thu, 10 Apr 2014 08:21:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140410062101.GM27055@pengutronix.de>
References: <1396856329-17464-1-git-send-email-antonynpavlov@gmail.com>
 <20140408060619.GR27055@pengutronix.de>
 <20140408111350.055b6103bc9bcde789d0ef27@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140408111350.055b6103bc9bcde789d0ef27@gmail.com>
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
Subject: Re: [PATCH 0/3] MIPS: loongson-ls1b: switch to device tree probe
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 08, 2014 at 11:13:50AM +0400, Antony Pavlov wrote:
> On Tue, 8 Apr 2014 08:06:19 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Mon, Apr 07, 2014 at 11:38:46AM +0400, Antony Pavlov wrote:
> > > New boards should probe from devicetree and
> > > not use the platform registration code.
> > > 
> > > This patchseries adds device tree stuff for
> > > Longson LS1B SoC and Loongson Tech LS1B Demo Board.
> > > 
> > > Antony Pavlov (3):
> > >   MIPS: add Longson LS1B SoC dtsi file
> > >   MIPS: add Loongson Tech LS1B Demo Board dts file
> > >   MIPS: loongson-ls1b: switch to device tree
> > 
> > Applied, thanks.
> > 
> > BTW what's the status of mips devicetree support in Linux Mainline? I
> > sometimes have a look at arch/mips/boot/dts there and find it empty.
> > Does the kernel start with the devicetrees you add to barebox?
> 
> linux-mips world is different from linux-arm world in many ways :)
> 
> $ find linux.git/arch/mips/ -iname '*dts*'
> linux.git/arch/mips/mti-sead3/sead3.dts
> linux.git/arch/mips/boot/dts
> linux.git/arch/mips/ralink/dts
> linux.git/arch/mips/ralink/dts/rt2880_eval.dts
> linux.git/arch/mips/ralink/dts/mt7620a.dtsi
> linux.git/arch/mips/ralink/dts/rt2880.dtsi
> linux.git/arch/mips/ralink/dts/rt3883.dtsi
> linux.git/arch/mips/ralink/dts/rt3883_eval.dts
> linux.git/arch/mips/ralink/dts/rt3052_eval.dts
> linux.git/arch/mips/ralink/dts/rt3050.dtsi
> linux.git/arch/mips/ralink/dts/mt7620a_eval.dts
> linux.git/arch/mips/lantiq/dts
> linux.git/arch/mips/lantiq/dts/easy50712.dts
> linux.git/arch/mips/lantiq/dts/danube.dtsi
> linux.git/arch/mips/netlogic/dts
> linux.git/arch/mips/netlogic/dts/xlp_gvp.dts
> linux.git/arch/mips/netlogic/dts/xlp_evp.dts
> linux.git/arch/mips/netlogic/dts/xlp_fvp.dts
> linux.git/arch/mips/netlogic/dts/xlp_svp.dts
> linux.git/arch/mips/cavium-octeon/octeon_3xxx.dts
> linux.git/arch/mips/cavium-octeon/octeon_68xx.dts

Ah, there they are.

> 
> So there is no support in barebox for a mainline linux dts-capable machine.

Ok, then we do not need to make the dts files Linux mainline compatible.
You probably keep an eye on the mips development so that we won't end up
with conflicting devicetrees.

> 
> Loongson developers have no plan to port OpenFirmware in the near future,
> see this
>    http://www.linux-mips.org/archives/linux-mips/2014-03/msg00164.html

Uh, not nice :(

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
