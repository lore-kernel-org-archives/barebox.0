Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vc0-x235.google.com ([2607:f8b0:400c:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3uKd-0000Qn-M3
 for barebox@lists.infradead.org; Thu, 16 Jan 2014 21:18:32 +0000
Received: by mail-vc0-f181.google.com with SMTP id ie18so1234002vcb.12
 for <barebox@lists.infradead.org>; Thu, 16 Jan 2014 13:18:10 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20140116141322.GX16215@pengutronix.de>
References: <20131212080359.GE24559@pengutronix.de>
 <CAJyuEefmcqQVKKszuvmGZx4NqaK+j79+-g4gD-ruq9vMO85Wug@mail.gmail.com>
 <20131212195806.GL24559@pengutronix.de>
 <CAJyuEecPnTHU2rTgJzkvkv3p56f32jqaS1aQykn91TNGvcUawg@mail.gmail.com>
 <CAJyuEeejqixPzCez0EZU9hhQkO3f8yvpARLGLwPgQUfGBASZug@mail.gmail.com>
 <CAJyuEee+jyV6DTs3ZGYTercny4FNnxjj_PwWxNmjAEhe2eqeBg@mail.gmail.com>
 <20131219080917.GW24559@pengutronix.de>
 <CAJyuEedJxNN9mPJzAvE6d6kNHCaEqcF-BED0L+r2VCv7e6=T6A@mail.gmail.com>
 <20140110081302.GV6750@pengutronix.de>
 <CAJyuEefMzkW4mCfe+iR7FfVv6jeQMS3XuoPFtO3E8zNomecKoA@mail.gmail.com>
 <20140116141322.GX16215@pengutronix.de>
Date: Thu, 16 Jan 2014 16:18:10 -0500
Message-ID: <CAJyuEecWCmz=gxzMrbGB+=MWqAC9WGooCgTQs-E47rdaQPUOSA@mail.gmail.com>
From: Michael Burkey <mdburkey@gmail.com>
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
Subject: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha,

Eureka! Based on your comments, things are starting to make sense now.
My brain wasn't fully comprehending how things were now supposed to
work.

I now have my kernel booting and things are working much better now (I
still have to get all my partition info specified properly, but that's
a fairly well understood task).

I also went back and watched your ELCE 2013 "Barebox and the
Bootloader Specification" presentation on Youtube. This REALLY helped
clarify things a bit -- although the direction things seem to be
heading (away from raw NOR/NAND, etc) don't fit with the world in
which I typically work (dedicated hardware, totally custom designed
and manufactured carrier boards, etc).

As everything I am currently working with is specifically from a raw
NAND device and using UBI, the Bootloader Specification doesn't really
do anything to help us (also, we will probably have no need for ever
using any standard distribution of Linux, since we do our own custom
rootfs that is trimmed to eliminate everything we don't need).

The way I have things setup now (and apparently working):

1) I have a dtb file built into barebox which is what it is using to
initially configure it's devices.

2) I have all of the legacy type information (MACH_TYPE) specified in
the board.c file and in the /env/config file. This is required to use
the existing (older) kernel we have for the Variscite SOM.

3) I am (currently) using kobs-ng under Linux to initially program
barebox into our NAND part and I am then using barebox to program any
of the additional partitions based on an upgrade script we have
written.

So, to boot the kernel we are using currently, I have modified the
barebox startup script to do an "oftree -f" after startup and then use
bootm to launch the kernel from it's appropriate NAND partition.

Based on my understanding, I could also just as easily (once we get a
newer kernel), *not* do the "oftree -f" and allow barebox to pass the
stored devicetree along to the kernel for initial configuration. I
could also just as easily load, other, different devicetree's using
"oftree -l" from either the barebox environment or from any other
device I mounted (USB, MMC, etc).

Personally, I doubt we will ever use any devicetree other than the one
that is built into barebox initially, but having the ability to load
another one manually is nice (especially for hardware testing).
Honestly though, I personally find just making changes directly to the
board-*.c file and rebuilding the kernel to be easier than reading
through and changing dts files.

I'll try to get some of this cleaned up enough to turn into nice patch
files to post to the mailing list within the next couple of weeks.

Thanks again!
Michael Burkey



On 1/16/14, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Wed, Jan 15, 2014 at 01:35:15PM -0500, Michael Burkey wrote:
>> Sascha, thanks for the advice on the stack unwinding and other
>> debugging aids. It was a huge help.
>>
>> I have made progress and isolated and gotten past my earlier null
>> pointer problem -- it turned out to be an issue that you had already
>> fixed on the tip (the recent changes to armlinux_get_bootparams fixed
>> the null pointer issue).
>>
>> That said, I'm still having issues booting with an older kernel. Which
>> brings me to my next question....
>>
>> In the case where I am booting an old, non-devicetree, kernel with a
>> newer, devicetree, version of barebox, and then using "oftree -f" to
>> flush the devicetree before starting the kernel, what is the proper
>> way to have things like the boot parameters, the boot architecture,
>> etc. specified for passing to the older kernel? Just go back and add
>> them into the board files like they used to be in older versions of
>> barebox?
>
> yes.
>
>> Do you know if having stuff specified in both the old way and
>> in the oftree will cause any potential problems?
>
> Not sure if I understand you. The kernel either takes old style ATAGs or
> a devicetree (in the same pointer), barebox sets up either one or the
> other, but never both. The machine number becomes meaningless with
> devicetree support, it doesn't matter if it is specified or not.
>
>>
>> Basically, my goal is to have a version of barebox than can launch
>> either our current (old) kernel or a newer mainline version
>> interchangeably without having to upgrade barebox (basically, we will
>> probably initially be shipping an older kernel and then upgrading to a
>> newer one later -- and, if at all possible, I'd really rather not have
>> to incur the risk of having our users need to update barebox in the
>> field as well).
>
> Basically barebox has to know whether a kernel is to be started with
> devicetree or not, which means you have to have two boot entries, one
> with devicetree and one without. There are two ways around it:
>
> - Use bootloader spec based booting. This way you have text files on
>   your boot medium describing what to boot. This text file would
>   include information whether or not a kernel should be booted with
>   devicetree
> - Use appended devicetrees: cat zImage dtb > myImage. Such a kernel
>   can be started the traditional way and still uses devicetree.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
