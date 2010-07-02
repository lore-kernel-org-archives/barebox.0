Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OUaPR-0000ia-Dx
	for barebox@lists.infradead.org; Fri, 02 Jul 2010 07:11:38 +0000
Date: Fri, 2 Jul 2010 09:11:29 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20100702071129.GU8767@pengutronix.de>
References: <AANLkTil-pLayTps_sfU1fURx3MrgFTvnaABgP5QSfn9h@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTil-pLayTps_sfU1fURx3MrgFTvnaABgP5QSfn9h@mail.gmail.com>
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
Subject: Re: Novice questions
To: Jose Luis Zabalza <jlz.3008@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 02, 2010 at 05:03:27AM +0200, Jose Luis Zabalza wrote:
> I'm trying write some code into barebox and  I have seen things that
> caught my attention.
>
> 1.- Modules on barebox. lsmod, insmod commands, EXPORT_SYMBOL() macro.
> What is the purpouse of these ? Modules have no means less memory
> footprint ;-??

There are people out there who want to be able to add functionality
later. Think about a product which was delivered in large quantities;
then you decide that you need a new functionality in the bootloader.
Modules make a nice interface for doing so.

rsc
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
