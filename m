Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfzeL-00088T-Jv
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 21:03:30 +0000
Date: Tue, 4 Dec 2012 16:03:24 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <CAGo_u6q6N3pz=32hrs86Xkew2GiTdWMgwng89WrpAccDV0N5uw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1212041602250.3941@oneiric>
References: <alpine.DEB.2.02.1212041048580.29673@oneiric>
 <CAGo_u6q97PTW+FAUnTOw1h-Jx=ZbO_hqqfAyP-d8_7DkVZEnkQ@mail.gmail.com>
 <alpine.DEB.2.02.1212041429450.3234@oneiric>
 <CAGo_u6p3R837Kqmt+EqfXjc4Lger6LK4JNfR6Crtd=s9ZzE7_A@mail.gmail.com>
 <alpine.DEB.2.02.1212041446140.3594@oneiric>
 <alpine.DEB.2.02.1212041551300.3794@oneiric>
 <CAGo_u6q6N3pz=32hrs86Xkew2GiTdWMgwng89WrpAccDV0N5uw@mail.gmail.com>
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

> Seems at least inside TI, we do have a copyright template that has
> been aligned on:
> /*
>  * Function of the file
>  *
>  * Copyright (C) 2012 Texas Instruments Incorporated - http://www.ti.com/
>  *      Nishanth Menon
>  *
>  * This program is free software; you can redistribute it and/or modify
>  * it under the terms of the GNU General Public License version 2 as
>  * published by the Free Software Foundation.
>
>  * This program is distributed "as is" WITHOUT ANY WARRANTY of any
>  * kind, whether express or implied; without even the implied warranty
>  * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>  * GNU General Public License for more details.
>  */

 ok, i'll just collapse those two comment sections together and ditch
the FileName line -- everything else will remain.  i just hate cruft,
especially when it's incorrect cruft.

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
