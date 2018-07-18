Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x234.google.com ([2607:f8b0:4003:c06::234])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ffqgx-0002aL-OA
 for barebox@lists.infradead.org; Wed, 18 Jul 2018 17:56:49 +0000
Received: by mail-oi0-x234.google.com with SMTP id 13-v6so10475593ois.1
 for <barebox@lists.infradead.org>; Wed, 18 Jul 2018 10:56:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAEp+FuAeZykr4wa-BK-zdTKUPH=kikkeZWLHHpycQ9uRJFkPug@mail.gmail.com>
 <16d74981-28c9-d637-c7de-f1902529ab30@rempel-privat.de>
 <35db1bb9-cb13-26b3-09b7-30f583585155@pengutronix.de>
 <1531925793.3511.128.camel@pengutronix.de>
 <CAEp+FuAsDL9msTeiC=2+bbKHkrEObdKKdctN_G3RdVX8uP=ZsQ@mail.gmail.com>
 <c1c3be93-c29e-7e65-c09b-86edbd0adb1e@rempel-privat.de>
In-Reply-To: <c1c3be93-c29e-7e65-c09b-86edbd0adb1e@rempel-privat.de>
From: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Date: Wed, 18 Jul 2018 19:56:24 +0200
Message-ID: <CAEp+FuA2+n-zFRxsxUkiroDcosO78jPt4dp69t-Z=t+pt26_6A@mail.gmail.com>
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
Subject: Re: MFGtools support in barebox
To: linux@rempel-privat.de
Cc: barebox@lists.infradead.org, bst@pengutronix.de

          Ok, thanks. I will take a look. I think for that scenario I
do not need fastboot. Once I have barebox in RAM I can do
barebox_update to flash it in NAND, reboot and then run a script from
USB
 that created partitions in NAND and copies FIT image(which contains
kernel+rootfs) on NAND
          Fastboot would be helpful if I could flash the NAND without
running anything in target's RAM initially( no barebox nor Linux).
          My goal is to have a target with nothing on NAND and be able
to flash anything is needed(barebox, kernel, etc) by just using one
tool(MFGtools, fastboot, etc). Not 2 steps approach: to copy the NAND
first and then to do anything else by running commands/scripts
commands. This is how I do it now.
          I know that using MFGtools from NXP is possible. But with
uboot booatloader. NXP says they don't support barebox.

          Aside from this issue, are you aware of any method of
flashing the barebox  on NAND from Linux(after the kernel was loaded
successfully on the target) ?
barebox_update does not exist in Linux obviously and porting it is not
so trivial, on top of that I don't think I am able to access the nand
device from Linux, but only MTD partitions .
I have tried  nandwrite and kobs-ng commands but I was not successful.

Thanks,
       Mihaita

On Wed, Jul 18, 2018 at 6:35 PM Oleksij Rempel <linux@rempel-privat.de> wrote:
>
> Am 18.07.2018 um 17:11 schrieb Mihaita Ivascu:
> > Hi,
> >
> >     Thanks for answer.
> >      I think I need it to do it from Windows as we have some boards
> > that need to be updated in the factory by people that do not necessary
> > have Linux skills or Linux workstation.
> >      That is why we thought we could use MFGtools app.
> >      My problem is that the board we have have only NAND and USB as
> > boot options. And I need to flash the NAND the first time.
> >       I have already looked at imx-usb-loader solution but it required
> > a Linux OS which is not possible in my case
> >      I have already used barebox_update successfully but only after I
> > had a working barebox already.
> >      I was successful into loading barebox image from MFGtools into
> > RAM and there execute barebox_update to flash on the NAND itself.
> >      But the barebox won't load afterwards the kernel image with
> > mfgtools support.
> >
> >     So I have two options I think:
> >
> >     i) porting barebox_update to Linux. Is there a way to flash the
> > barebox on NAND from Linux itself(after the board has booted
> > successfully) ?
> >    ii) adding support for MFGtools in barebox. I do not have toom uch
> > knowledge about it. I know I should add UTP protocol support in usb
> > gadget code in barebox but was not successful so far.
> >
> >         How do you guys see a solution to this scenario?
>
> If you can load barebox in to RAM with MFGtools, you can use fastboot
> tool flash all needed parts. fastboot is available for windows and
> supported by barebox.
> --
> Regards,
> Oleksij
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
