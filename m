Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.orpheo.org ([176.31.189.100] helo=orpheo.org)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xz1Ek-0000GN-4z
 for barebox@lists.infradead.org; Thu, 11 Dec 2014 10:44:48 +0000
Received: from [192.168.1.40] (dra38-6-88-164-121-33.fbx.proxad.net
 [88.164.121.33]) by orpheo.org (Postfix) with ESMTPSA id 9EE251121C90
 for <barebox@lists.infradead.org>; Thu, 11 Dec 2014 11:44:20 +0100 (CET)
Message-ID: <5489757A.1050805@ophrys.net>
Date: Thu, 11 Dec 2014 11:44:10 +0100
From: Victorien Vedrine <victorien.vedrine@ophrys.net>
MIME-Version: 1.0
References: <548872F5.6090704@ophrys.net>
 <20141211070458.GZ30369@pengutronix.de>
In-Reply-To: <20141211070458.GZ30369@pengutronix.de>
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
To: barebox@lists.infradead.org

Thanks for your answer.
In a first time, I used a barebox version with the last update at the =

10/16/2013. I Found the patch which you are talking about and I update =

barebox to the version of yesterday and I have the same problem.
The partitions of my SD card are this one (with fdisk) :

    P=E9riph=E9rique Amor=E7age  D=E9but         Fin      Blocs Id. Syst=E8=
me
    /dev/sdg1            2048        6143        2048   53  OnTrack DM6 Aux3
    /dev/sdg2            6144       10239        2048   10  OPUS
    /dev/sdg3           10240       43007       16384    6  FAT16
    /dev/sdg4           43008    15556607     7756800    5  =C9tendue
    /dev/sdg5           43040      567327      262144   83  Linux
    /dev/sdg6          567360    15556607     7494624    b  W95 FAT32

I use an iMX28 processor and I have this line on device_init fonction to =

add the SD card :

         add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, 0x2000,
                    IORESOURCE_MEM, &mci_pdata);

Is there any tests that I can do to find a solution or more informations =

for a bug ?

Best regards

Victorien

Le 11/12/2014 08:04, Sascha Hauer a =E9crit :
> Hi Victorien,
>
> On Wed, Dec 10, 2014 at 05:21:09PM +0100, Victorien Vedrine wrote:
>> Hi,
>> I'm developping a board with barebox and Linux. For my application,
>> I need 5 partition on my SD card (3 primary and 2 logical).
>> On barebox prompt, I just see the 3 primary partitions
>> (/dev/disk0.0, /dev/disk0.1, /dev/disk0.2) and 1 extended partition
>> (/dev/disk0.3). Is there a way to see the 2 logical partitions ?
> Which barebox version do you use?
>
> barebox supports extended partitions since:
>
> | commit 6fecd2aaca209884a0ec1f58ccc42b91d1d4b828
> | Author: Uwe Kleine-K=F6nig<u.kleine-koenig@pengutronix.de>
> | Date:   Fri Nov 8 11:13:41 2013 +0100
> |
> |     partitions: dos: parse extended partition
> |
> |     DOS MBRs might contain an extended partition that holds several log=
ical
> |     partitions. Add these to the partitions of the block device.
> |
> |     Signed-off-by: Uwe Kleine-K=F6nig<u.kleine-koenig@pengutronix.de>
> |     Signed-off-by: Sascha Hauer<s.hauer@pengutronix.de>
>
> If your version is newer then this seems to be a bug.
>
> Sascha
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
