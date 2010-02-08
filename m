Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NeQVY-00018K-Ep
	for barebox@lists.infradead.org; Mon, 08 Feb 2010 10:06:23 +0000
Date: Mon, 8 Feb 2010 11:06:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100208100611.GA17643@pengutronix.de>
References: <m33a1eoz9h.fsf@intrepid.localdomain>
	<4B6E9AEE.7040506@pengutronix.de>
	<m3r5owdgy2.fsf_-_@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3r5owdgy2.fsf_-_@intrepid.localdomain>
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
Subject: Re: Flash drivers, was: IXP4xx support
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

On Sun, Feb 07, 2010 at 07:44:05PM +0100, Krzysztof Halasa wrote:
> I also wonder, why are there two NOR flash drivers, old and new?

I started working on the U-Boot flash driver and started making
the different Flash chips (AMD, Intel) and bus widths optional in order
to get the driver smaller. I didn't really get ready with it and
checked it in as a second driver. Sorry for the confusion, I should
have made a seperate branch from it.

> 
> Another thing, the drivers seem to support various configurations like
> 4*16 bit (4 physical flash chips in parallel). Does any currently
> supported platform use anything like that? Or maybe all platforms use
> 1*8 or 16-bit config and the extra code is unneeded complexity?

I have seen all bus widths from 8bit to 64bit on my boards. Not all
of them are supported in barebox, but it's not a good idea to remove
support for it.


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
