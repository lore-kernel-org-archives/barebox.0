Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h7IHu-0004hR-Js
 for barebox@lists.infradead.org; Fri, 22 Mar 2019 11:24:40 +0000
Date: Fri, 22 Mar 2019 12:24:32 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20190322112432.lyooetzaepa3b3jt@pengutronix.de>
References: <CAD_Pvub19JJgwwkZrNX7iz47f-jib5hiUgE+8Z=2cSf80=YygQ@mail.gmail.com>
 <20190321073332.b3725avve4p6ascg@pengutronix.de>
 <CAD_PvubAaFD=zJVrzpjq__F2Qre4XedjE8op_1GAQcf19jYOrg@mail.gmail.com>
 <201903211025.18488.jbe@pengutronix.de>
 <CAD_PvuYsX9jMjjS8tmbOO52397dMw-xegh54aUm2hU2wTUGJqw@mail.gmail.com>
 <73e974ac-11a7-6ee7-ee1a-d5fab51e3b2f@eurek.it>
 <09d70666-fe6d-0bfb-bbcc-e232d52d3e6d@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09d70666-fe6d-0bfb-bbcc-e232d52d3e6d@kalray.eu>
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
Subject: Re: STM32MP1 SoC support in latest Barebox
To: Yann Sionneau <ysionneau@kalray.eu>
Cc: barebox@lists.infradead.org, gianluca <gianlucarenzi@eurek.it>

On Fri, Mar 22, 2019 at 10:46:31AM +0100, Yann Sionneau wrote:
> By searching in list archive you could have found:
> 
> http://lists.infradead.org/pipermail/barebox/2019-March/037572.html
> 
> So there is a bit of support, which has been commited in "next" branch.
> 
> See https://git.pengutronix.de/cgit/barebox/tree/arch/arm/boards/stm32mp157c-dk2?h=next
> 
> No idea how far this boots.

Like always, there are three options to move this forward:

1) somebody does the actual work and sends patches to this list
2) somebody is interested enough to pay us for writing the code
3) wait until we found enough spare time and are interested enough
   do to the work at some point in the future.

rsc
-- 
Pengutronix e.K.                           | Dipl.-Ing. Robert Schwebel  |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
