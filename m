Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SrVpT-0001ju-Rc
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 15:06:21 +0000
Date: Wed, 18 Jul 2012 17:06:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120718150616.GK30009@pengutronix.de>
References: <50065575.4090808@web.de>
 <5006857D.4020505@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5006857D.4020505@web.de>
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
Subject: Re: AT91SAM9263-EK
To: Stutz Sven <stutzsven@web.de>
Cc: barebox@lists.infradead.org

Hi Sven,

On Wed, Jul 18, 2012 at 11:44:29AM +0200, Stutz Sven wrote:
> 
> Hello Sascha,
> 
> thanks a lot for your help.
> 
> When I completely switch off the ecc, Barebox is loading the Linux kernel.
> But I guess that the ecc is necessary especially for NAND-Flash devices.

Indeed. You shouldn't use NAND without ecc.

> 
> 
> The AT91SAM9263 controller has a ecc unit implemented. There are
> three registers and the error calculation is done automatically,
> only the error correction must be done in software.
> Or is it better to you use the software ecc and I should try to fix
> the software problem?

If possible you should use hardware ecc. It may be though that it has
bugs that force you to use software ecc, but I'm not familiar with the
atmel hardware.

> Can you give me some hints to fix this problem?

Does it work in the kernel? If yes, try looking for differences. The
NAND layers are sufficiently similar.

> 
> Btw. I have found the description table for the NAND devices. But
> what would happen if I change the connections between the controller
> and the NAND-Flash, where are those port description stored or the
> timings to access the data bus?

I have no idea.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
