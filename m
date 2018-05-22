Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x243.google.com ([2607:f8b0:4001:c0b::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLBFX-0002nM-U7
 for barebox@lists.infradead.org; Tue, 22 May 2018 17:39:18 +0000
Received: by mail-it0-x243.google.com with SMTP id 70-v6so997940ity.2
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 10:38:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180522081637.b2mm4raotn5ggqsb@pengutronix.de>
References: <CACvFaDfqmKOB20kdH=XeGRQv4e5spqCegjmaphsLhCOK_ZDSVA@mail.gmail.com>
 <20180522081637.b2mm4raotn5ggqsb@pengutronix.de>
From: Pascal Vizeli <pascal.vizeli@syshack.ch>
Date: Tue, 22 May 2018 19:38:52 +0200
Message-ID: <CACvFaDe8CAyQyJwSfu3AUcZhqi3PKmsBBcvMna705xMw4nJGUA@mail.gmail.com>
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
Subject: Re: RaspberryPi 1/2(/3)
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: barebox@lists.infradead.org

With debug modus it works perfect :) Look like the Serial console is
not exists (PL011).
Is that a problem with changed/updated DTS files?

=~=~=~=~=~=~=~=~=~=~=~= PuTTY log 2018.05.22 19:33:41 =~=~=~=~=~=~=~=~=~=~=~=
uart-pl011 3f201000.serial: probe failed: No such file or directory
bcm2835-gpio 3f200000.gpio: probed gpiochip-1 with base 0
malloc space: 0x1f9fcdc0 -> 0x1fdfcdbf (size 4 MiB)
no /dev/disk0.0. using default env
environment load /dev/env0: No such file or directory
Maybe you have to create the partition.
running /env/bin/init...
- Hit m for menu or wait for autoboot -
bootchooser: Cannot get state 'state'
Nothing bootable found on 'bootchooser'
Nothing bootable found
HassOS boot Menu:     1: Autoboot     2: Boot System 0     3: Boot
System 1     4: Shell

2018-05-22 10:16 GMT+02:00 Roland Hieber <r.hieber@pengutronix.de>:
> On Mon, May 21, 2018 at 05:51:33PM +0200, Pascal Vizeli wrote:
>> Hi,
>>
>> I try to build a bootable barebox for raspberry with 2018.05.00 and buildroot:
>> https://github.com/home-assistant/hassos/tree/dev/buildroot-external
>>
>> I build the origin rpi_defconfig but I'm was not able to boot the
>> 'barebox.bin' and become a output on UART. I can boot the linux kernel
>> from rpi loader. If I try the barebox, it will be flash the green
>> light and if I disable the LED support, only the red power light is
>> seen.
>>
>> I try also the RPi3 patches and end in same result.
>> I follow also this guide:
>> https://www.barebox.org/doc/latest/boards/bcm2835.html
>>
>> Have anyone a idea what will be the problem or what I doing wrong?
>
> Which version of the RPi firmware are you using? I wrote that section
> while using the git tag 1.20171029, maybe they changed something
> again...
>
> What you can try to do is enable "low level debug messages" make
> menuconfig under "Debugging",  and try to set the log level to something
> higher and see if you get any output. I think you also need to set
> "System Type" -> "Lowlevel debug UART" to the model you're using.
>
>  - Roland
>
> --
> Roland Hieber                     | r.hieber@pengutronix.de     |
> Pengutronix e.K.                  | https://www.pengutronix.de/ |
> Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
