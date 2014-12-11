Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.orpheo.org ([176.31.189.100] helo=orpheo.org)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xz2WD-00017b-SJ
 for barebox@lists.infradead.org; Thu, 11 Dec 2014 12:06:54 +0000
Message-ID: <548988BA.3080700@ophrys.net>
Date: Thu, 11 Dec 2014 13:06:18 +0100
From: Victorien Vedrine <victorien.vedrine@ophrys.net>
MIME-Version: 1.0
References: <548872F5.6090704@ophrys.net>
 <20141211070458.GZ30369@pengutronix.de> <54895E46.5040109@ophrys.net>
 <20141211113246.GH30369@pengutronix.de>
In-Reply-To: <20141211113246.GH30369@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Logical partition on barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Thanks,

I debug common/partitions/dos.c and the problem is =

"dos_extended_partition() is not executed. I found why :
On dos_partition function there is a test to know the type of partition =

(line 212). The comment says "partition type 0x05 or 0x0f can be =

extended and just 0x0f is tested. The type extended partition on my SD =

card is 0x05 and then it doesn't work.
I modify the source code of common/partitions/dos.c with
             if ((pentry.dos_partition_type =3D=3D =

0x0f)||(pentry.dos_partition_type =3D=3D 0x05)) {
and now it's work.

Victorien


Le 11/12/2014 12:32, Sascha Hauer a =E9crit :
> On Thu, Dec 11, 2014 at 10:05:10AM +0100, Victorien Vedrine wrote:
>>     Thanks for your answer.
>>     In a first time, I used a barebox version with the last update at the
>>     10/16/2013. I Found the patch which you are talking about and I upda=
te
>>     barebox to the version of yesterday and I have the same problem.
>>     The partitions of my SD card are this one (with fdisk) :
>>
>>       P=E9riph=E9rique Amor=E7age  D=E9but         Fin      Blocs    Id.=
 Syst=E8me
>>       /dev/sdg1            2048        6143        2048   53  OnTrack DM=
6 Aux3
>>       /dev/sdg2            6144       10239        2048   10  OPUS
>>       /dev/sdg3           10240       43007       16384    6  FAT16
>>       /dev/sdg4           43008    15556607     7756800    5  =C9tendue
>>       /dev/sdg5           43040      567327      262144   83  Linux
>>       /dev/sdg6          567360    15556607     7494624    b  W95 FAT32
>>
>>     I use an iMX28 processor and I have this line on device_init fonctio=
n to
>>     add the SD card :
>>
>>           add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, 0x2000,
>>                      IORESOURCE_MEM, &mci_pdata);
> This is correct. If your card is shown then you made everything right
> here.
>
>>     Is there any tests that I can do to find a solution or more informat=
ions
>>     for a bug ?
> You could add a #define DEBUG on top of common/partitions/dos.c (above
> the includes) and see if this gives more information. Otherwise you
> can do some further debugging this file. Does dos_extended_partition()
> get called?
>
> Sascha
>
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
