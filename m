Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1aG-00046w-KY
 for barebox@lists.infradead.org; Fri, 24 Jan 2020 16:13:26 +0000
References: <5f02d95b-418e-f0c0-68c6-29d7d9ab0db6@eurek.it>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <65cb5ff1-9cac-ea88-e06d-6658d814c251@pengutronix.de>
Date: Fri, 24 Jan 2020 17:13:20 +0100
MIME-Version: 1.0
In-Reply-To: <5f02d95b-418e-f0c0-68c6-29d7d9ab0db6@eurek.it>
Content-Language: en-US
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
Subject: Re: Barebox 2020.01.0 and Device Tree from Linux Kernel 5.4
To: gianluca <gianlucarenzi@eurek.it>, barebox@lists.infradead.org

Hello,

On 1/24/20 4:32 PM, gianluca wrote:
> I was wondering if the device tree from (latest) Linux Kernel can be used when building Barebox 2020.01.0 for iMX6 compatible custom board.
> For sure the include path and other stuff are quite different (kernel and barebox), so I am pretty sure it will fail to build with some sort of "foreign" device-tree.

barebox already regularly imports Linux's device tree directories into its dts/ directory.
v2020.01.0 contains the v5.4-rc7 state.

Another issue, will be the drivers to have full access from Barebox-Point-Of-View. If the device-tree properties and compatible strings are quite different, Barebox will fail to activating/probing/using the internal driver.

barebox driver compatibles should be aligned with the kernel's.
If a barebox driver lacks handling for a property, the driver can be extended.

> So I am asking:
> There is a "official" way to manage those differencies?

I recently added a short section about this in the Documentation
(https://barebox.org/doc/latest/devicetree/index.html):

  "For supporting architectures, barebox device trees are located in arch/$ARCH/dts.
   Usually the barebox board.dts imports the upstream device tree under dts/src/$ARCH
   with #include "$ARCH/board.dts" and then extends it with barebox-specifics like
   Barebox state, environment or boot-time device configuration."

Take a look at arch/arm/dts/imx6q-marsboard.dts to see how that looks in practice.
The kernel device tree is reused as is and extended slightly for barebox use.

> Am I forced to use TWO device-tree dts files (almost identical each other) ???
> 
> It seems it is like re-inventing the wheel...

No, as you can can extend the kernel device tree (see below).

> I think this procedure can be used with ALL supported boards present in barebox source tree.
> 
> Actually I am using a slightly modified device-tree for my boards from kernel, then adapted to be compiled for Barebox.
> Some nodes are "disabled" by default as status, so Barebox will activate them when probing the real-hardware.

I think

#include <arm/imx6q-yourboard.dts>

&device {
	status = "okay";
};

is what you're after.

> I would like to keep my code to activate/deactivate device-tree drivers, but without modifying the Kernel device-tree each time when I do a Kernel update.
> 
> Any hint will be very accepted.

HTH,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
