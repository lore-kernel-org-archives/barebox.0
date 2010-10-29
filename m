Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail9.tpgi.com.au ([203.12.160.104])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PBjvZ-0008WM-D3
	for barebox@lists.infradead.org; Fri, 29 Oct 2010 08:03:11 +0000
Received: from dev1.localnet (220-244-174-13.static.tpgi.com.au
	[220.244.174.13]) (authenticated bits=0)
	by mail9.tpgi.com.au (envelope-from marc@cpdesign.com.au)
	(8.14.3/8.14.3) with ESMTP id o9T82wBN030849
	for <barebox@lists.infradead.org>; Fri, 29 Oct 2010 19:03:00 +1100
From: Marc Reilly <marc@cpdesign.com.au>
Date: Fri, 29 Oct 2010 19:04:16 +1100
References: <AANLkTimj3WiRQaeP+tQ7-AHy3WcVG0MKpwt5uNfo_cWf@mail.gmail.com>
	<AANLkTim9C1gxiGNj3gyso0aqcM_r1qxf0M3dDCWDmMMO@mail.gmail.com>
	<AANLkTikBmg33g-Uh=_fEtvkN6n6GZAi71Lc5tFm51yjJ@mail.gmail.com>
In-Reply-To: <AANLkTikBmg33g-Uh=_fEtvkN6n6GZAi71Lc5tFm51yjJ@mail.gmail.com>
MIME-Version: 1.0
Message-Id: <201010291904.16717.marc@cpdesign.com.au>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: command bootu to start kernel
To: barebox@lists.infradead.org

Hi,

I have no experience with the mini2440, but:

On Friday, October 29, 2010 06:49:52 pm Belisko Marek wrote:
> On Fri, Oct 29, 2010 at 8:08 AM, Belisko Marek <marek.belisko@gmail.com> 
> >> me@host$ file arch/arm/boot/uImage
> >> arch/arm/boot/uImage: u-boot legacy uImage,
> >> Linux-2.6.31-00770-g54c3fe6-dir, Linux/ARM, OS Kernel Image (Not
> >> compressed), 2350016 bytes, Mon Oct 25 16:58:30 2010, Load Address:
> >> 0x40008000, Entry Point: 0x40008000, Header CRC: 0x17A7330B, Data CRC:
> >> 0x888DAA63
> >> 
> >> Anything wrong with the uImage (built with "make uImage") or the
> >> command 'bootm'?

The load and entry point are 0x400...  here

> > 
> > Instead bootm for my uImage works:
> > bootm uImage
> >   Verifying Checksum ... OK
> >   Image Name:   Linux-2.6.32-rc8
> >   Created:      2010-09-27   8:36:01 UTC
> >   Image Type:   ARM Linux Kernel Image (uncompressed)
> >   Data Size:    2058404 Bytes =  2 MB
> >   Load Address: 30008000
> >   Entry Point:  30008000
> > OK

and 0x300.. here


I've no idea how your RAM is mapped, but verify that it is being loaded to the 
correct address. (also check that it's not overlapping your barebox, malloc or 
stack)

> > commandline: console=ttySAC0,115200
> > arch_number: 1999
> > 
> > Starting kernel ...
> 
> Despite of loading kernel is working kernel isn't started for
> mini2440(from u-boot works fine). It hang at:
> Uncompressing
> Linux.....................................................................
> ............................................................. done, booting
> the kernel.

Also enable low level debugging and the earlyprintk in your kernel - maybe the 
kernel is running but crashes before it gets ti initializing the console.


Cheers
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
