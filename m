Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNE3N-0002HT-DV
 for barebox@lists.infradead.org; Wed, 23 Oct 2019 10:39:46 +0000
Received: by mail-qt1-x841.google.com with SMTP id c17so28526123qtn.8
 for <barebox@lists.infradead.org>; Wed, 23 Oct 2019 03:39:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAEp+FuA76KBuHaZHbDAGrpxtmsw6YSjWp+mVTfJQn98+RuUhxA@mail.gmail.com>
 <1694d1a3-6eb3-4146-e0f1-2988925f1832@atsonline.de>
In-Reply-To: <1694d1a3-6eb3-4146-e0f1-2988925f1832@atsonline.de>
From: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Date: Wed, 23 Oct 2019 12:39:33 +0200
Message-ID: <CAEp+FuD-tQYJ1grcxZC0scaGtE4y_33zgLpUcgqWfr+PJ2sfNA@mail.gmail.com>
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
Subject: Re: flash barebox to NAND
To: Andreas Geisenhainer <Andreas.Geisenhainer@atsonline.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 23, 2019 at 12:27 PM Andreas Geisenhainer
<Andreas.Geisenhainer@atsonline.de> wrote:
>
> On 2019-10-23 11:39 a.m., Mihaita Ivascu wrote:
> > Hello all,
> >
> >    I would like to know what possibilities do I have to flash a barebox
> > image to mtd partition from Linux?
> >   Using ubifs commands does not work. the barebox will not boot so
> > probably additional info needs to be written except the barebox image
> > itself.
>
> I needed to flash updates to barebox from userspace myself and struggled
> with a solution for a bit.
>
> I'm doing three things:
>
>   1) get the correct /dev-device for barebox
>   2) use `flash_erase` on that device
>   3) use `nandwrite` to write the barebox_*.img onto the device
>

   Thanks for your prompt reply. I already tried that but it won't
boot for me. Maybe additional info related to barebox env needs to be
written.
   I am trying by sending UTP commands from MFGtools:

UTP: received command '$ flash_erase /dev/mtd0 0 0'
UTP: executing "flash_erase /dev/mtd0 0 0"
Erasing 128 Kibyte @ 39002e0000 -- -1 % compl[    6.275463] utp_poll:
pass returned.
Erasing 128 Kibyte @ 64004e0000 -- -1 % complete
UTP: sending Success to kernel for command $ flash_erase /dev/mtd0 0 0.
UTP: received command 'send'
UTP: sending Success to kernel for command send.
UTP: received command '$ nandwrite -p /dev/mtd0 -p $FILE'
UTP: executing "nandwrite -p /dev/mtd0 -p $FILE"
Writing data to block 0 at offset 0x0
Writing data to block 1 at offset 0x20000
Writing data to block 2 at offset 0x40000
Writing data to block 3 at offset 0x60000
Writing data to block 4 at offset 0x80000
UTP: sending Success to kernel for command $ nandwrite -p /dev/mtd0 -p $FILE.
[    6.823965] utp_poll: pass returned.

  I am writing a barebox.bin using nandwrite but it seems the new
barebox(which is correct should boot) won't boot. So I am wondering if
the nandwrite command is enough?
  I know nandwrite you can use it successfully for flashing roots or
kernel on mtd partition but maybe for the bootloader is not working

Thanks,
       Mihaita

> This works for me, and there's probably some documentation for this
> around, but i do not recall where i found it anymore.
>
> good luck
> Andreas

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
