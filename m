Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfzaL-0007I6-Dd
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 20:59:22 +0000
Received: by mail-la0-f49.google.com with SMTP id r15so3294306lag.36
 for <barebox@lists.infradead.org>; Tue, 04 Dec 2012 12:59:19 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1212041551300.3794@oneiric>
References: <alpine.DEB.2.02.1212041048580.29673@oneiric>
 <CAGo_u6q97PTW+FAUnTOw1h-Jx=ZbO_hqqfAyP-d8_7DkVZEnkQ@mail.gmail.com>
 <alpine.DEB.2.02.1212041429450.3234@oneiric>
 <CAGo_u6p3R837Kqmt+EqfXjc4Lger6LK4JNfR6Crtd=s9ZzE7_A@mail.gmail.com>
 <alpine.DEB.2.02.1212041446140.3594@oneiric>
 <alpine.DEB.2.02.1212041551300.3794@oneiric>
Date: Tue, 4 Dec 2012 14:59:18 -0600
Message-ID: <CAGo_u6q6N3pz=32hrs86Xkew2GiTdWMgwng89WrpAccDV0N5uw@mail.gmail.com>
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

On Tue, Dec 4, 2012 at 2:53 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> On Tue, 4 Dec 2012, Robert P. J. Day wrote:
>
>>   if i don't hear differently, i can submit a patch tomorrow.  as you
>> can see, almost all of that content is arm-related:
>>
>> arch/arm/mach-omap/devices-gpmc-nand.c: * FileName: arch/arm/boards/omap/devices-gpmc-nand.c
>
>   simple aesthetic question for this cleanup.  here's the top of one
> of those sample files:
>
> /**
>  * @file
>  * @brief GPMC specific NAND devices
>  *
>  * FileName: arch/arm/boards/omap/devices-gpmc-nand.c
>  *
>  */
> /*
>  * (C) Copyright 2006-2008
>  * Texas Instruments, <www.ti.com>
>  * Nishanth Menon <x0nishan@ti.com>
>  ... snip ...
>
>   what would you like the final result to be?  collapse the two
> comment blocks into one?  just show me what *this* file should end up
> looking like and i'll apply that to all of them.

Seems at least inside TI, we do have a copyright template that has
been aligned on:
/*
 * Function of the file
 *
 * Copyright (C) 2012 Texas Instruments Incorporated - http://www.ti.com/
 *      Nishanth Menon
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.

 * This program is distributed "as is" WITHOUT ANY WARRANTY of any
 * kind, whether express or implied; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */

As long as GPL V2 is maintained, I dont see any issues. Adding
historic stuff is nice to have, I usually maintain that esp when
taking code from tarballs to just be sure to provide appropriate
credits.

Regards,
Nishanth Menon

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
