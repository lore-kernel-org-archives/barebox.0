Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SkXFM-00047r-4f
 for barebox@lists.infradead.org; Fri, 29 Jun 2012 09:12:12 +0000
Received: from [192.168.0.42] (col31-4-88-188-83-94.fbx.proxad.net
 [88.188.83.94])
 by mail.free-electrons.com (Postfix) with ESMTPSA id 6BD51148
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2012 11:11:59 +0200 (CEST)
Message-ID: <4FED715F.5050906@free-electrons.com>
Date: Fri, 29 Jun 2012 11:11:59 +0200
From: Maxime Ripard <maxime.ripard@free-electrons.com>
MIME-Version: 1.0
References: <4FDF27F8.7010105@free-electrons.com>
In-Reply-To: <4FDF27F8.7010105@free-electrons.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: How to start barebox on Freescale iMX28 EVK
To: barebox@lists.infradead.org

Anyone ?

Le 18/06/2012 15:07, Maxime Ripard a =E9crit :
> Hi everyone,
> =

> I'm trying barebox on the imx28 evk evaluation board from freescale, and
> I can't get barebox to boot yet.
> =

> I think I might have a problem with the bootlets used, but I'm not sure.
> =

> So, to compile barebox, I did:
> ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi- make imx28evk_defconfig
> ARCH=3Darm CROSS_COMPILE=3Darm-none-linux-gnueabi- make
> =

> Using codebench 2011.09 toolchain.
> =

> Then, I used U-boot IVT bootlet from freescale bootlet tarball as a base
> for the one I created [1].
> =

> After that, I created the bootstream using
> elftosb -z -f imx28 -c  ./barebox_ivt.bd -o imx28_ivt_barebox.sb
> =

> Finally, I pushed on a properly formatted SD Card (with a 0x53 partition
> flag on the first partition) using Freescale mk_hdr script[2] to
> generate the proper headers:
> =

> ./mk_hdr.sh `sudo fdisk -lu /dev/sdb | awk '$5=3D=3D53 {print $2}'` 1  >
> temp.bin
> =

> sudo dd if=3Dtemp.bin of=3D/dev/sdb1 ibs=3D512 conv=3Dsync
> sudo dd if=3Dimx28_ivt_barebox.sb of=3D/dev/sdb1 ibs=3D512 obs=3D512 seek=
=3D1
> conv=3Dsync
> =

> When I finally plug the card in and boot the card, the two first
> bootlets are properly executed, and then, it hangs, displaying nothing
> but what is looking like an address: 0x8050100f
> =

> When flashing it in the exact same way with freescale's precompiled
> u-boot bootstream, it works fine though, so my guess is that it is more
> a problem regarding the barebox binary/the bootstream than the sd card
> generation process...
> =

> Do you have an idea on what could be wrong with what I'm doing ?
> =

> Thanks,
> Maxime
> =

> [1] http://code.bulix.org/eavngs-81672
> [2] http://code.bulix.org/vzqsiy-81673
> =



-- =

Maxime Ripard, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
