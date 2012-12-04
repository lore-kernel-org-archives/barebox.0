Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfzUW-00074o-1R
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 20:53:20 +0000
Date: Tue, 4 Dec 2012 15:53:12 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1212041446140.3594@oneiric>
Message-ID: <alpine.DEB.2.02.1212041551300.3794@oneiric>
References: <alpine.DEB.2.02.1212041048580.29673@oneiric>
 <CAGo_u6q97PTW+FAUnTOw1h-Jx=ZbO_hqqfAyP-d8_7DkVZEnkQ@mail.gmail.com>
 <alpine.DEB.2.02.1212041429450.3234@oneiric>
 <CAGo_u6p3R837Kqmt+EqfXjc4Lger6LK4JNfR6Crtd=s9ZzE7_A@mail.gmail.com>
 <alpine.DEB.2.02.1212041446140.3594@oneiric>
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

On Tue, 4 Dec 2012, Robert P. J. Day wrote:

>   if i don't hear differently, i can submit a patch tomorrow.  as you
> can see, almost all of that content is arm-related:
>
> arch/arm/mach-omap/devices-gpmc-nand.c: * FileName: arch/arm/boards/omap/devices-gpmc-nand.c

  simple aesthetic question for this cleanup.  here's the top of one
of those sample files:

/**
 * @file
 * @brief GPMC specific NAND devices
 *
 * FileName: arch/arm/boards/omap/devices-gpmc-nand.c
 *
 */
/*
 * (C) Copyright 2006-2008
 * Texas Instruments, <www.ti.com>
 * Nishanth Menon <x0nishan@ti.com>
 ... snip ...

  what would you like the final result to be?  collapse the two
comment blocks into one?  just show me what *this* file should end up
looking like and i'll apply that to all of them.

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
