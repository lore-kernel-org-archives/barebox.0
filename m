Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gx0-f177.google.com ([209.85.161.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RFoQS-0002od-EH
	for barebox@lists.infradead.org; Mon, 17 Oct 2011 14:44:25 +0000
Received: by ggnk3 with SMTP id k3so846809ggn.36
	for <barebox@lists.infradead.org>; Mon, 17 Oct 2011 07:44:22 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20111013152547.GT13898@pengutronix.de>
References: <CAGiJk9ePXFCwosqXUtU9yzGPmmZ5O6R_9gFtJXnJ9=DUnCpOxg@mail.gmail.com>
	<20111013152547.GT13898@pengutronix.de>
Date: Mon, 17 Oct 2011 16:44:21 +0200
Message-ID: <CAGiJk9fPbYfnJc+s-R+-h5TBE8Lr3VVhQc+Cr9KivnNhe3syJw@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
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
Subject: Re: Booting Pandaboard from SD card
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

2011/10/13 Sascha Hauer <s.hauer@pengutronix.de>:
> On Thu, Oct 13, 2011 at 10:49:30AM +0200, Samuel Stirtzel wrote:
>> Hi,
>> currently I try to get a Pandaboard to boot out of Barebox, so far I
>> got Barebox up and running.
>>
>>
>> For testing purpose I'd like to boot from a SD card, optimal would be
>> if I could set up the card like the description in the Omappedia
>> tutorial [1].
>> Is there a tutorial how to set up barebox to boot from SD cards?
>>
>>
>> What I already tried:
>>
>> In the configuration file from arch/arm/boards/panda/env is the
>> description for a network boot configuration,
>> I used this file to start out and wanted to boot from the barebox prompt.
>>
>> Barebox is build from my toolchain and i copy the MLO file, the
>> barebox.bin and the bareboxenv file to the boot partition of the card.
>> For convenience I currently use a precompiled MLO that has been made
>> for u-boot thus I just renamed the barebox.bin file to u-boot.bin.
>>
>> On startup the following messages were displayed:
>> -
>> Texas Instruments X-Loader 1.5.1 (Sep =A06 2011 - 13:37:48)
>> Reading boot sector
>> Loading u-boot.bin from mmc
>>
>>
>> barebox 2011.10.0 (Oct 13 2011 - 09:45:17)
>>
>> Board: Texas Instrument's Panda
>> PandaBoard Revision: 003
>> ehci@ehci0: USB EHCI 1.00
>> Malloc space: 0x8d000000 -> 0x8f000000 (size 32 MB)
>> Stack space : 0x8cff8000 -> 0x8d000000 (size 32 kB)
>> running /env/bin/init...
>> not found
>> -
>> For me it looks like i forgot to copy a file or something, any advice?
>
> I just compiled the current master branch with panda_defconfig and this
> does not happen on my board. Instead I get a null pointer exception in
> the mmc driver. I just sent out a patch which fixes this.
Like Fabian hinted, i used the version with the 2011.10.0 tag and
applied the unaligned access patch.

>
> Have you changed your config?

Only the boot arguments have been changed, I used the tool bareboxenv,
something like:
./scripts/bareboxenv ./arch/arm/boards/panda/env/ ~/barebox-test/myenv-panda
and copied it as bareboxenv to the SD card.

This step was shown in a tutorial (can't find the link right now),
should I use the defaultenv instead?
If I would use the defaultenv, can I do it like:
scripts/bareboxenv ./defaultenv/ ~/barebox-test/myenv-panda
Or is there another way to do it?

>
>>
>>
>> Although booting the uImage with bootm looks ok it won't work, the
>> following message was displayed:
>> -
>> Verifying Checksum ... OK
>> =A0 =A0Image Name: =A0 Angstrom/2.6.35.7/omap4430-panda
>> =A0 =A0Image Type: =A0 ARM Linux Kernel Image (uncompressed)
>> =A0 =A0Data Size: =A0 =A03688408 Bytes =3D =A03.5 MB
>> =A0 =A0Load Address: 80008000
>> =A0 =A0Entry Point: =A080008000
>> OK
>>
>> Starting kernel ...
>>
>> commandline: <NULL>
>> arch_number: 2791
>> Uncompressing Linux... done, booting the kernel.
>
> Does not work for me aswell, although with a current v3.1-rc9 kernel.
> Here's what I get with earlyprintk:
>
> Uncompressing Linux... done, booting the kernel.
> [ =A0 =A00.463745] GPMC revision 6.0
> [ =A0 59.033691] INFO: rcu_sched_state detected stall on CPU 0 (t=3D7680 =
jiffies)
>
> After this no more messages.
>
> Haven't investigated further so far, but maybe the kernel expects some GP=
MC
> registers to be set correctly.
I disabled GPMC in the kernel, with u-boot it worked* on my 2.6.35
Linux (plus some TI patches).

* Not totally since I got framebuffer problems, but that is another
problem and not the fault of the bootloader.

>
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



-- =

Regards
Samuel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
