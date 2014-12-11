Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xz1zY-0006on-CZ
 for barebox@lists.infradead.org; Thu, 11 Dec 2014 11:33:09 +0000
Date: Thu, 11 Dec 2014 12:32:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141211113246.GH30369@pengutronix.de>
References: <548872F5.6090704@ophrys.net>
 <20141211070458.GZ30369@pengutronix.de>
 <54895E46.5040109@ophrys.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54895E46.5040109@ophrys.net>
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
Subject: Re: Logical partition on barebox
To: Victorien Vedrine <victorien.vedrine@ophrys.net>
Cc: barebox@lists.infradead.org

On Thu, Dec 11, 2014 at 10:05:10AM +0100, Victorien Vedrine wrote:
>    Thanks for your answer.
>    In a first time, I used a barebox version with the last update at the
>    10/16/2013. I Found the patch which you are talking about and I update
>    barebox to the version of yesterday and I have the same problem.
>    The partitions of my SD card are this one (with fdisk) :
> =

>      P=E9riph=E9rique Amor=E7age=A0 D=E9but=A0=A0=A0=A0=A0=A0=A0=A0 Fin=
=A0=A0=A0=A0=A0 Blocs=A0=A0=A0 Id. Syst=E8me
>      /dev/sdg1=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 2048=A0=A0=A0=A0=A0=A0=A0=
 6143=A0=A0=A0=A0=A0=A0=A0 2048=A0=A0 53=A0 OnTrack DM6 Aux3
>      /dev/sdg2=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 6144=A0=A0=A0=A0=A0=A0 10=
239=A0=A0=A0=A0=A0=A0=A0 2048=A0=A0 10=A0 OPUS
>      /dev/sdg3=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 10240=A0=A0=A0=A0=A0=A0 4300=
7=A0=A0=A0=A0=A0=A0 16384=A0=A0=A0 6=A0 FAT16
>      /dev/sdg4=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 43008=A0=A0=A0 15556607=A0=
=A0=A0=A0 7756800=A0=A0=A0 5=A0 =C9tendue
>      /dev/sdg5=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 43040=A0=A0=A0=A0=A0 567327=
=A0=A0=A0=A0=A0 262144=A0=A0 83=A0 Linux
>      /dev/sdg6=A0=A0=A0=A0=A0=A0=A0=A0=A0 567360=A0=A0=A0 15556607=A0=A0=
=A0=A0 7494624=A0=A0=A0 b=A0 W95 FAT32
> =

>    I use an iMX28 processor and I have this line on device_init fonction =
to
>    add the SD card :
> =

>      =A0=A0=A0 add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, 0x20=
00,
>      =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=A0 IORESOURCE_MEM, &mci_pdata);

This is correct. If your card is shown then you made everything right
here.

> =

>    Is there any tests that I can do to find a solution or more informatio=
ns
>    for a bug ?

You could add a #define DEBUG on top of common/partitions/dos.c (above
the includes) and see if this gives more information. Otherwise you
can do some further debugging this file. Does dos_extended_partition()
get called?

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
