Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfyD1-0007Ue-2D
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 19:31:11 +0000
Date: Tue, 4 Dec 2012 14:30:59 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <CAGo_u6q97PTW+FAUnTOw1h-Jx=ZbO_hqqfAyP-d8_7DkVZEnkQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1212041429450.3234@oneiric>
References: <alpine.DEB.2.02.1212041048580.29673@oneiric>
 <CAGo_u6q97PTW+FAUnTOw1h-Jx=ZbO_hqqfAyP-d8_7DkVZEnkQ@mail.gmail.com>
MIME-Version: 1.0
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
Subject: Re: lots of inaccurate references to "FileName: include/asm-arm ..."
To: "menon.nishanth@gmail.com" <menon.nishanth@gmail.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, 4 Dec 2012, menon.nishanth@gmail.com wrote:

> On Tue, Dec 4, 2012 at 10:13 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >
> >   while roaming around in the arm/omap files, i noticed that numerous
> > files have obsolete "FileName:" values, given that stuff that was once
> > in "include/asm-arm" has clearly moved, so you find header files like
> > arch/arm/mach-omap/include/mach/gpmc_nand.h that contain:
> >
> >  * FileName: include/asm-arm/arch-omap/gpmc_nand.h
> >  *
> >  * OMAP's General Purpose Memory Controller (GPMC) has a NAND controller
> >  * embedded. this file provides the platform data structure required to
> >  * hook on to it.
> >  *
> >  */
> > /*
> >  * (C) Copyright 2008
> >  * Texas Instruments, <www.ti.com>
> >  * Nishanth Menon <x0nishan@ti.com>
> >  *
> >  * Originally from Linux kernel:
> >  * http://linux.omap.com/pub/kernel/3430zoom/linux-ldp-v1.3.tar.gz
> >  * include/asm-arm/arch-omap/nand.h
> >
> > so the later comment as to the *origin* of the file is fine, but the
> > earlier "FileName" value is obviously incorrect.  does that matter?
> > is that value used for any sort of documentation processing?
>
> At least when I created the original file in 2008, I think it was
> originally from
> http://linux.omap.com/pub/kernel/3430zoom/
> and the file there was include/asm-arm/arch-omap/nand.h
>
> > p.s.  you can see the number of these with a simple:
> >
> > $ grep -r "include/asm-arm" *
> >
> > since i'm working with a number of the ARM files, i'd be happy to
> > "fix" that stuff for some reasonable definition of "fix". :-)
> >
> if there is a cleanup, awesome.. that would be really be good.

  the obvious cleanup is to just delete all those "FileName" lines.
it *is* useful info to know where a file came from in the linux
kernel, i would definitely leave that in.  but (as was explained to me
recently) it's pointless to have a file contain its own alleged name,
especially if files can be moved.

  so unless those "FileName" lines have some value, i would just
remove all of them.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
