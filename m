Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x22a.google.com ([2607:f8b0:400d:c04::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSlnH-0002A1-AZ
 for barebox@lists.infradead.org; Wed, 26 Mar 2014 11:14:53 +0000
Received: by mail-qg0-f42.google.com with SMTP id q107so642195qgd.1
 for <barebox@lists.infradead.org>; Wed, 26 Mar 2014 04:14:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140326065734.GA18805@omega.Speedport_W_921V_1_24_000>
References: <CA+dawz0DeA4+LWqamXp-tPDyWXW1JXfov-u2xdPBrSEsdFuZ3Q@mail.gmail.com>
 <20140326062619.GP17250@pengutronix.de>
 <20140326065734.GA18805@omega.Speedport_W_921V_1_24_000>
Date: Wed, 26 Mar 2014 16:44:30 +0530
Message-ID: <CA+dawz1a0EVA5OvDGZjpchV13R8J5+hKS8hVOtmmi2HFef5spQ@mail.gmail.com>
From: Ashutosh Singh <embedded.ashu@gmail.com>
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
Subject: Re: Can i access the barebox env from linux
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

Thanks Alex,

The script is quite helpful.
But since i am saving my barebox.env in nand and want to mount, modify
and write it back to nand.
Do you have a safer solution so that complete env data won't corrupted.

Here is my nand partition list created while booting :

Creating 8 MTD partitions on "omap2-nand.0":
[    1.127990] 0x000000000000-0x000000020000 : "nand0.xload"
[    1.135498] 0x000000020000-0x000000040000 : "nand0.xload_backup1"
[    1.143615] 0x000000040000-0x000000060000 : "nand0.xload_backup2"
[    1.151733] 0x000000060000-0x000000080000 : "nand0.xload_backup3"
[    1.159942] 0x000000080000-0x000000100000 : "nand0.barebox"
[    1.167755] 0x000000100000-0x000000120000 : "nand0.bareboxenv"
[    1.175506] 0x000000120000-0x000000920000 : "nand0.kernel"
[    1.189666] 0x000000920000-0x000020000000 : "nand0.root"

And the list in my rfs :

ls -l /dev/mtd
mtd0       mtd2       mtd4       mtd6       mtd8       mtdblock2  mtdblock6
mtd0ro     mtd2ro     mtd4ro     mtd6ro     mtd8ro     mtdblock3  mtdblock7
mtd1       mtd3       mtd5       mtd7       mtdblock0  mtdblock4  mtdblock8
mtd1ro     mtd3ro     mtd5ro     mtd7ro     mtdblock1  mtdblock5

~ Ashu

On Wed, Mar 26, 2014 at 12:27 PM, Alexander Aring <alex.aring@gmail.com> wrote:
> Hi Sascha and Ashutosh,
>
> On Wed, Mar 26, 2014 at 07:26:19AM +0100, Sascha Hauer wrote:
>> On Wed, Mar 26, 2014 at 11:25:07AM +0530, Ashutosh Singh wrote:
>> > Dear All,
>> >
>> > Can i access the barebox env from linux.
>> > Once the kernel boot if i want to create a directory and store some parameter
>> > in default barebox /env folder without going to barebox from kernel.
>> > For Eg.
>> > I booted the board i get the linux promt and depending on some condition
>> > i want to update the barebox env and create a directory in /env so the
>> > next time
>> > when barebox is loading the kernel image it can check that directory
>> > and according
>> > to that it can select the kernel from any source such as mmc, nand, nor, tftp.
>> >
>> > What i observe that after the kernel boot i can see the barebox.env is
>> > mounted as mtdblock5 (case of Nand)
>> > now according to my understanding can i mount this partition modify
>> > with my custom directory
>> > and again boot so that this directory is available in barebox /env .
>>
>> There is no filesystem support for the barebox environment, but you can
>> access the barebox env under Linux using the bareboxenv tool. Enable
>>  [x] build bareboxenv tool for target
>> and you'll find the tool under scripts/
>>
>
> I wrote fast some skript to handle a automatic write of the bareboxenv On
> env changes. It use inotify to detect changes at the environment.
>
> --- snip
>
> #!/bin/sh
>
> MNT=$1
> ENV=$2
>
> bareboxenv -l $MNT $ENV
>
> while true
> do
> inotifywait -e modify $MNT --excludei ".*.swp"
> bareboxenv -s $MNT $ENV
> done
>
> --- snap
>
> NOTE: Don't use this on nand partitions!
>
> This script can be run as daemon on the target and will automatic write
> the environment back. Usage: "./script $MNTPOINT $BBENV".
>
>
> I hacked this in 10 seconds but it depends if it a mtd device then we
> should use nandwrite etc... but maybe we can write a proper C
> implementation, with inotify, mtd ioctl calls (if mtd), etc...
>
> I mean this would be very easy to implemented. :-)
>
> - Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
