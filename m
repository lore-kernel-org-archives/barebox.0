Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iw0-f177.google.com ([209.85.214.177])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PAaon-0001u5-0G
	for barebox@lists.infradead.org; Tue, 26 Oct 2010 04:07:30 +0000
Received: by iwn8 with SMTP id 8so5631772iwn.36
	for <barebox@lists.infradead.org>; Mon, 25 Oct 2010 21:07:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20101026033958.GD6017@pengutronix.de>
References: <AANLkTinosq5jY41=piCX3JaeFy6Z93gnG1Ym_VRqZ_sJ@mail.gmail.com>
	<20101022070504.GD22139@pengutronix.de>
	<AANLkTimNiUjRq3GLNNa0gYRGGZjLaTrWbsNRKPU9=1mw@mail.gmail.com>
	<20101026033958.GD6017@pengutronix.de>
Date: Mon, 25 Oct 2010 23:07:21 -0500
Message-ID: <AANLkTi==hZCG9TbR1udevZPJp=wbji-JTTZaMTYYcW6f@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
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
Subject: Re: Beagleboard and barebox problem
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 25, 2010 at 10:39 PM, Sascha Hauer <s.hauer@pengutronix.de> wro=
te:
> Hi Victor,
>
>> I fix the problem of envfs: wrong magic on /dev/env0 with your thread
>>
>> http://www.mail-archive.com/u-boot-users@lists.sourceforge.net/msg10197.=
html
>>
>> And every thing works fine
>>
>> uboot> addpart /dev/nand0 256k(uboot),128k(env),2048k(kernel),-(rootfs)
>
> I think on the beagle board the first space in Nand is occupied by the
> xloader and xloader itself expects the second stage loader at offset
> 512k, but I don't know the exact situation off my head. Michael, maybe
> you can comment on this?
>
>>
>> setenv bootargs console=3DttyS2,115200n8 noinitrd root=3D/dev/mmcblk0p2
>> rootfstype=3Dext2 rw rootdelay=3D1 nohz=3Doff
>>
>> But is not working for bare box
>>
>> How do you save the boot args ?
>
> have a look at /env/config (using the edit command). Every file there is
> saved into the environment using saveenv.
>
>>
>> The next step will be
>>
>> uboot> tftp uImage-mx27ads /dev/nand0.kernel.bb
>>
>> And the same for a ram disk File System in the nand0.rootfs.bb right ?
>
> Right, dont forget to erase the partitions with 'erase
> /dev/nand0.kernel.bb' beforehand, otherwise you'll have garbage in your
> nand.

You mean to erase the part of the nand where the kernel is saved
before copy the ramdisk to its partition? or before i run the 'boot'
comand ?



>>
>> And
>>
>> uboot> bootm /dev/nand0.kernel.bb
>
> In principle, yes. The normal process is to simply run 'boot' which is a
> script under /env/bin. This will setup things like the commandline
> correctly.
>
>>
>> But my second question is =A0How the kernel know were is the File
>> System, where should I set something similar to boot args ?
>
> Have a look at the files under /env, I think this will answer your
> questions (we have ls, cat and edit for this).
>
> I'm sorry the situation on the beagle board is still a bit rough and
> unclear. I hope we find time working on this.


Yes I could give some free time to work on this :) but could you
please give me more information about the mmc dirver I am new on
barebox but I would like to help to improve it  :)

Which other board is using this MMC driver ? I can check the code.

The problem is that beagle board is much more familiar with booting by
mmc because it does not have any RJ45 connector in order to transfer
by TFTP or NFS the uImage.

By the way about the small piece of code for the beagle board nand. Do
you consider that is good enough for an small patch ?


Thanks a lot

Sincerely yours

Victor Rodriguez


> Sascha
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |
> Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | http://www.p=
engutronix.de/ =A0|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0=
 =A0|
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-=
206917-5555 |
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
