Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PFZME-0007Xf-9y
	for barebox@lists.infradead.org; Mon, 08 Nov 2010 21:34:31 +0000
Date: Mon, 8 Nov 2010 22:34:24 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20101108213424.GU4233@pengutronix.de>
References: <1289250868.2587.8.camel@aurora>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1289250868.2587.8.camel@aurora>
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
Subject: Re: Garz & Fricke Cupid Support
To: Matthew Pearson <matt@tgm-solutions.com>
Cc: barebox@lists.infradead.org

Matt,

On Mon, Nov 08, 2010 at 09:14:28PM +0000, Matthew Pearson wrote:
> We are working on a G&F Cupid based solution using Barebox as the
> bootloader.  Currently we are using he Redboot that comes with the
> unit to download Barebox and execute it from memory, which is
> excellent for testing but not a long term solution.
>
> Does the Cupid port support executing Barebox from flash on boot in
> place of RedBoot? We have tried it a couple of times but each time has
> resulted in a bricked device. Perhaps we are doing something wrong in
> terms of the right configuration options for the bootloader? or
> perhaps how we are using RedBoot to flash it?
>
> Any hints/tips would be appreciated!

We have a little bit hacky barebox port for the CUPID (to be shown at
the electronica in Munich, starting tomorrow), and we would surely be
interested in some sponsoring to get the port mainlined. Please contact
sales@pengutronix.de if you are interested.

Btw, the MX35 is really, really fast. It boots into Linux in less than a
second, so that we currently are able to show a splash screen directly
from Linux userland.

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
