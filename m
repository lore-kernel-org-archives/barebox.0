Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NNNC1-0005xB-SZ
	for barebox@lists.infradead.org; Wed, 23 Dec 2009 09:07:43 +0000
Date: Wed, 23 Dec 2009 10:06:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091223090639.GP15126@pengutronix.de>
References: <alpine.LFD.2.00.0912221000250.4427@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912221000250.4427@localhost>
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
Subject: Re: which drivers subdirs should be automatically selected?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, Dec 22, 2009 at 10:02:40AM -0500, Robert P. J. Day wrote:
> 
> drivers/Makefile:
> 
> obj-y   += net/
> obj-y   += serial/
> obj-y   += nand/
> obj-y   += nor/
> obj-y   += usb/
> obj-$(CONFIG_SPI) += spi/
> obj-$(CONFIG_I2C) += i2c/
> obj-$(CONFIG_VIDEO) += video/
> 
> 
>   is there a fundamental reason that some of those subdirs are
> auto-selected, while others are based on a CONFIG variable?  asked
> another way, are there some driver subdirs that are so fundamentally
> required that they *should* be auto-selected, or should *everything*
> be a user-selectable choice?  the above just seems slightly
> inconsistent and non-obvious.

Nothing of the above is really fundamental. Without serial drivers you
won't see anything of course, but this won't stop barebox from working.
I think this only reflects a change of taste during time and should be
done consistently so that other people know how to do it. Prefered is
the obj-$(CONFIG_SPI) += spi/ style.

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
