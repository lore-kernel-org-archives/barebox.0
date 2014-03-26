Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22f.google.com ([2a00:1450:4013:c00::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WShmn-0004vg-9k
 for barebox@lists.infradead.org; Wed, 26 Mar 2014 06:58:06 +0000
Received: by mail-ee0-f47.google.com with SMTP id b15so1261618eek.34
 for <barebox@lists.infradead.org>; Tue, 25 Mar 2014 23:57:41 -0700 (PDT)
Date: Wed, 26 Mar 2014 07:57:36 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140326065734.GA18805@omega.Speedport_W_921V_1_24_000>
References: <CA+dawz0DeA4+LWqamXp-tPDyWXW1JXfov-u2xdPBrSEsdFuZ3Q@mail.gmail.com>
 <20140326062619.GP17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140326062619.GP17250@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Ashutosh Singh <embedded.ashu@gmail.com>

Hi Sascha and Ashutosh,

On Wed, Mar 26, 2014 at 07:26:19AM +0100, Sascha Hauer wrote:
> On Wed, Mar 26, 2014 at 11:25:07AM +0530, Ashutosh Singh wrote:
> > Dear All,
> > 
> > Can i access the barebox env from linux.
> > Once the kernel boot if i want to create a directory and store some parameter
> > in default barebox /env folder without going to barebox from kernel.
> > For Eg.
> > I booted the board i get the linux promt and depending on some condition
> > i want to update the barebox env and create a directory in /env so the
> > next time
> > when barebox is loading the kernel image it can check that directory
> > and according
> > to that it can select the kernel from any source such as mmc, nand, nor, tftp.
> > 
> > What i observe that after the kernel boot i can see the barebox.env is
> > mounted as mtdblock5 (case of Nand)
> > now according to my understanding can i mount this partition modify
> > with my custom directory
> > and again boot so that this directory is available in barebox /env .
> 
> There is no filesystem support for the barebox environment, but you can
> access the barebox env under Linux using the bareboxenv tool. Enable
>  [x] build bareboxenv tool for target
> and you'll find the tool under scripts/
> 

I wrote fast some skript to handle a automatic write of the bareboxenv On
env changes. It use inotify to detect changes at the environment.

--- snip

#!/bin/sh 

MNT=$1
ENV=$2

bareboxenv -l $MNT $ENV

while true
do
inotifywait -e modify $MNT --excludei ".*.swp"
bareboxenv -s $MNT $ENV
done

--- snap

NOTE: Don't use this on nand partitions!

This script can be run as daemon on the target and will automatic write
the environment back. Usage: "./script $MNTPOINT $BBENV".


I hacked this in 10 seconds but it depends if it a mtd device then we
should use nandwrite etc... but maybe we can write a proper C
implementation, with inotify, mtd ioctl calls (if mtd), etc...

I mean this would be very easy to implemented. :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
