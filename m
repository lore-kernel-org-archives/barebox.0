Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfxrX-0006zV-7P
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 19:09:00 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so3320618lbo.36
 for <barebox@lists.infradead.org>; Tue, 04 Dec 2012 11:08:56 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1212041048580.29673@oneiric>
References: <alpine.DEB.2.02.1212041048580.29673@oneiric>
Date: Tue, 4 Dec 2012 13:08:55 -0600
Message-ID: <CAGo_u6q97PTW+FAUnTOw1h-Jx=ZbO_hqqfAyP-d8_7DkVZEnkQ@mail.gmail.com>
From: "menon.nishanth@gmail.com" <menon.nishanth@gmail.com>
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
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, Dec 4, 2012 at 10:13 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   while roaming around in the arm/omap files, i noticed that numerous
> files have obsolete "FileName:" values, given that stuff that was once
> in "include/asm-arm" has clearly moved, so you find header files like
> arch/arm/mach-omap/include/mach/gpmc_nand.h that contain:
>
>  * FileName: include/asm-arm/arch-omap/gpmc_nand.h
>  *
>  * OMAP's General Purpose Memory Controller (GPMC) has a NAND controller
>  * embedded. this file provides the platform data structure required to
>  * hook on to it.
>  *
>  */
> /*
>  * (C) Copyright 2008
>  * Texas Instruments, <www.ti.com>
>  * Nishanth Menon <x0nishan@ti.com>
>  *
>  * Originally from Linux kernel:
>  * http://linux.omap.com/pub/kernel/3430zoom/linux-ldp-v1.3.tar.gz
>  * include/asm-arm/arch-omap/nand.h
>
> so the later comment as to the *origin* of the file is fine, but the
> earlier "FileName" value is obviously incorrect.  does that matter?
> is that value used for any sort of documentation processing?

At least when I created the original file in 2008, I think it was
originally from
http://linux.omap.com/pub/kernel/3430zoom/
and the file there was include/asm-arm/arch-omap/nand.h

> p.s.  you can see the number of these with a simple:
>
> $ grep -r "include/asm-arm" *
>
> since i'm working with a number of the ARM files, i'd be happy to
> "fix" that stuff for some reasonable definition of "fix". :-)
>
if there is a cleanup, awesome.. that would be really be good.

Regards,
NM

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
