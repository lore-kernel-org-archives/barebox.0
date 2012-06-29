Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Skan6-0006SY-N9
 for barebox@lists.infradead.org; Fri, 29 Jun 2012 12:59:17 +0000
Message-ID: <4FEDA694.3090203@free-electrons.com>
Date: Fri, 29 Jun 2012 14:59:00 +0200
From: Maxime Ripard <maxime.ripard@free-electrons.com>
MIME-Version: 1.0
References: <4FDF27F8.7010105@free-electrons.com>
 <4FED715F.5050906@free-electrons.com> <20120629092939.GD2698@pengutronix.de>
In-Reply-To: <20120629092939.GD2698@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: How to start barebox on Freescale iMX28 EVK
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

Le 29/06/2012 11:29, Sascha Hauer a =E9crit :
> On Fri, Jun 29, 2012 at 11:11:59AM +0200, Maxime Ripard wrote:
>> Anyone ?
>>
>> Le 18/06/2012 15:07, Maxime Ripard a =E9crit :
>>> Hi everyone,
>>>
>>> I'm trying barebox on the imx28 evk evaluation board from freescale, and
>>> I can't get barebox to boot yet.
>>>
>>> I think I might have a problem with the bootlets used, but I'm not sure.
>>>
>>> So, to compile barebox, I did:
>>> ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi- make imx28evk_defconfig
>>> ARCH=3Darm CROSS_COMPILE=3Darm-none-linux-gnueabi- make
>>>
>>> Using codebench 2011.09 toolchain.
>>>
>>> Then, I used U-boot IVT bootlet from freescale bootlet tarball as a base
>>> for the one I created [1].
>>>
>>> After that, I created the bootstream using
>>> elftosb -z -f imx28 -c  ./barebox_ivt.bd -o imx28_ivt_barebox.sb
>>>
>>> Finally, I pushed on a properly formatted SD Card (with a 0x53 partition
>>> flag on the first partition) using Freescale mk_hdr script[2] to
>>> generate the proper headers:
>>>
>>> ./mk_hdr.sh `sudo fdisk -lu /dev/sdb | awk '$5=3D=3D53 {print $2}'` 1  >
>>> temp.bin
>>>
>>> sudo dd if=3Dtemp.bin of=3D/dev/sdb1 ibs=3D512 conv=3Dsync
>>> sudo dd if=3Dimx28_ivt_barebox.sb of=3D/dev/sdb1 ibs=3D512 obs=3D512 se=
ek=3D1
>>> conv=3Dsync
>>>
>>> When I finally plug the card in and boot the card, the two first
>>> bootlets are properly executed, and then, it hangs, displaying nothing
>>> but what is looking like an address: 0x8050100f
> =

> This code comes from the i.MX28 ROM and means:
> =

> Requested data beyond the end of a section.
> =

> Maybe your entry point is wrong? I just had a look at our .bd file and
> it looks like this:
> =

> sources {
>         power_prep=3D"./power_prep/power_prep";
>         u_boot=3D"/home/sha/dude/bosch/OSELAS.BSP-Bosch-SCM/platform-scm/=
build-target/barebox-2012.05.0/barebox";
> }
> =

> section (0) {
> =

>         //----------------------------------------------------------
>         // Power Supply initialization
>         //----------------------------------------------------------
> =

>         load power_prep;
>         load ivt (entry =3D power_prep:_start) > 0x8000;
>         hab call 0x8000;
> =

>         //----------------------------------------------------------
>         //  Load and call u_boot - ELF ARM image
>         //----------------------------------------------------------
> =

>         load u_boot;
>         load ivt (entry =3D u_boot:exception_vectors) > 0x8000;
>         hab call 0x8000;
> =

> }

Yep, it was just that. Changing the entry point to exception_vectors did
the trick. Thanks a lot!

Maxime

-- =

Maxime Ripard, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
