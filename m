Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw1JE-0000sA-IH
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 09:03:31 +0000
Date: Tue, 19 Feb 2019 10:03:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190219090320.wvdpacpxcaaizalu@pengutronix.de>
References: <1549894227-18660-1-git-send-email-thomas.haemmerle@wolfvision.net>
 <20190212083148.w23wpevefvm3pezv@pengutronix.de>
 <79e74d64-d8f3-626b-cefc-1ea810242ec2@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <79e74d64-d8f3-626b-cefc-1ea810242ec2@wolfvision.net>
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
Subject: Re: [PATCH] firmware-zynqmp: port from linux
To: Thomas =?iso-8859-15?Q?H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Feb 14, 2019 at 02:35:00PM +0000, Thomas H=E4mmerle wrote:
> Hi Sascha,
> =

> On 12.02.19 09:31, Sascha Hauer wrote:
> > Hi Thomas,
> > =

> > On Mon, Feb 11, 2019 at 02:10:40PM +0000, Thomas H=E4mmerle wrote:
> >> From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
> >>
> >> Port Xilinx Zynq MPSoC Firmware layer driver from linux.
> >>
> >> Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
> >> ---
> >>   arch/arm/Kconfig                                   |   1 +
> >>   arch/arm/mach-zynqmp/Makefile                      |   2 +-
> >>   arch/arm/mach-zynqmp/firmware-zynqmp.c             | 601 +++++++++++=
++++++++++
> >>   .../arm/mach-zynqmp/include/mach/firmware-zynqmp.h |  66 +++
> >>   4 files changed, 669 insertions(+), 1 deletion(-)
> >>   create mode 100644 arch/arm/mach-zynqmp/firmware-zynqmp.c
> >>   create mode 100644 arch/arm/mach-zynqmp/include/mach/firmware-zynqmp=
.h
> >>
> >> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> >> index c1f385b..fdbe5b7 100644
> >> --- a/arch/arm/Kconfig
> >> +++ b/arch/arm/Kconfig
> >> @@ -250,6 +250,7 @@ config ARCH_ZYNQMP
> >>   	select CPU_V8
> >>   	select HAS_DEBUG_LL
> >>   	select HAVE_PBL_MULTI_IMAGES
> >> +	select ARM_SMCCC
> >>   	select COMMON_CLK
> >>   	select COMMON_CLK_OF_PROVIDER
> >>   	select CLKDEV_LOOKUP
> >> diff --git a/arch/arm/mach-zynqmp/Makefile b/arch/arm/mach-zynqmp/Make=
file
> >> index c601374..021efc9 100644
> >> --- a/arch/arm/mach-zynqmp/Makefile
> >> +++ b/arch/arm/mach-zynqmp/Makefile
> >> @@ -1,2 +1,2 @@
> >>   # SPDX-License-Identifier: GPL-2.0-or-later
> >> -obj- :=3D __dummy__.o
> >> +obj-y +=3D firmware-zynqmp.o
> >> diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zy=
nqmp/firmware-zynqmp.c
> > =

> > =

> > Maybe drivers/firmware/ would be a more appropriate directory to put
> > this driver in.
> =

> I was not sure where to put the this driver in:
> =

> In linux drivers/firmware is the location for drivers which communicate
> with a firmware (like this one).
> =

> In barebox, this directory contains drivers to load firmware to devices
> (socfpga.c for example). Since I will also create a driver to load the
> PL (programmable logic) of ZynqMP which I will place in
> drivers/firmware, I decided to put this driver to arch/arm.

Ok, then leave it there for now. I don't have a better idea either.

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
