Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x22a.google.com ([2607:f8b0:400c:c05::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYWRO-0005rZ-37
 for barebox@lists.infradead.org; Wed, 24 Feb 2016 10:13:08 +0000
Received: by mail-vk0-x22a.google.com with SMTP id k196so12443054vka.0
 for <barebox@lists.infradead.org>; Wed, 24 Feb 2016 02:12:45 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160223120404.GG3939@pengutronix.de>
References: <CAFfN3gVQe42ymDjXDZntq_cR0mms9W2MPin0G7_-QWwgUJag5g@mail.gmail.com>
 <20160223110930.GF3939@pengutronix.de>
 <CAFfN3gVK2BHq4wC9gTxN-pJ=-j6FHiikfuV+FdGfVwiOKG2a_Q@mail.gmail.com>
 <20160223120404.GG3939@pengutronix.de>
Date: Wed, 24 Feb 2016 11:12:44 +0100
Message-ID: <CAFfN3gV8iJTNJxkm41QcRPoame_NPqxnCh4P5Z9DApoLyHFLdA@mail.gmail.com>
From: Hubert Feurstein <h.feurstein@gmail.com>
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
Subject: Re: bootm: booting of uncompressed uimages broken
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

> Hm, yes, you said so in your mail, I misread it. Then I don't see what
> could be the problem. Does bootm -v give some valuable output?

here is the output of bootm -v <image> (fixed version):
barebox:/ bootm -v /mnt/emmc0/boot/uImage
   Image Name:   Linux-3.10.14.vd2
   Created:      2015-08-06  10:13:02 UTC
   OS:           Linux
   Architecture: ARM
   Type:         Kernel Image
   Compression:  uncompressed
   Data Size:    2929528 Bytes = 2.8 MiB
   Load Address: 10008000
   Entry Point:  10008000

Loading U-Boot uImage '/mnt/emmc0/boot/uImage'
OS image not yet relocated
Passing control to ARM Linux uImage handler
no initrd load address, defaulting to 0x18000000
commandline: console=ttymxc2,115200n8

Starting kernel at 0x10008000, oftree at 0x18000000...

> Could it be that the device tree blob is inside the Kernels bss segment?
According to System.map bss ends at offset 0x0567b04. So bss will
overwrite the device-tree blob, because currently the oftree is placed
at 0x103d4000. I've played with the oftree-offset a little bit, and I
need at least 6MB offset from the end of the kernel image in order to
get the system booting.

Hubert

2016-02-23 13:04 GMT+01:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Tue, Feb 23, 2016 at 12:29:41PM +0100, Hubert Feurstein wrote:
>> Hi Sascha,
>>
>> I use an *uncompressed* kernel image. So the kernel is loaded once
>> without any relocation (LoadAddress == StartAddress).
>
> Hm, yes, you said so in your mail, I misread it. Then I don't see what
> could be the problem. Does bootm -v give some valuable output?
> Could it be that the device tree blob is inside the Kernels bss segment?
>
> Sascha
>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
