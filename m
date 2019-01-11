Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghs5z-0003fG-4i
 for barebox@lists.infradead.org; Fri, 11 Jan 2019 08:23:17 +0000
Date: Fri, 11 Jan 2019 09:23:11 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20190111082311.pvjibjdkpfvvb2k4@pengutronix.de>
References: <20190111104541.7dec78587e650eb199e81cf1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190111104541.7dec78587e650eb199e81cf1@gmail.com>
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
Subject: Re: barebox: plathome-openblocks-a6/kwbimage.cfg is missed
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@collabora.com>

[fixed e-mail address of Ezequiel, added Sebastian to Cc:]

Hello,

On Fri, Jan 11, 2019 at 10:45:41AM +0300, Antony Pavlov wrote:
> Hi!
> =

> It looks like the file arch/arm/boards/plathome-openblocks-a6/kwbimage.cf=
g is missed.
> =

> Here is my build log quotes:
> =

>   git clone git://git.pengutronix.de/git/barebox.git
>   cd barebox
>   git describe
>   v2018.12.0-140-g64fc4ac1b
> =

>   touch arch/arm/boards/globalscale-mirabox/binary.0
>   touch arch/arm/boards/lenovo-ix4-300d/binary.0
>   touch arch/arm/boards/marvell-armada-xp-gp/binary.0
>   touch arch/arm/boards/netgear-rn104/binary.0
>   touch arch/arm/boards/plathome-openblocks-ax3/binary.0
> =

>   CROSS_COMPILE=3Darm-linux-gnueabi- ./MAKEALL -a arm mvebu_defconfig
> =

>   ...
> =

>   Could not open input file /home/builduser/barebox/arch/arm/boards/plath=
ome-openblocks-a6/kwbimage.cfg

That problem goes back to v2014.08.0-242-g906afb533186 ("ARM: mvebu: Add
Plat'home's Kirkwood Openblocks A6 board support")

I didn't find vendor U-Boot sources for that machine, also mainline
U-Boot doesn't seem to support it.

According to the dts/src/arm/kirkwood-openblocks_a6.dts
that device has an "uboot" partition in NAND. So I suggest:

diff --git a/arch/arm/boards/plathome-openblocks-a6/kwbimage.cfg b/arch/arm=
/boards/plathome-openblocks-a6/kwbimage.cfg
new file mode 100644
index 000000000000..ba3011736fb7
--- /dev/null
+++ b/arch/arm/boards/plathome-openblocks-a6/kwbimage.cfg
@@ -0,0 +1,3 @@
+VERSION 1
+BOOT_FROM nand
+BINARY ./binary.0 0000005b 00000068

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
