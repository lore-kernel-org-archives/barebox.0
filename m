Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XC0na-0002r5-Ky
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 06:22:11 +0000
Date: Tue, 29 Jul 2014 08:21:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140729062142.GC23235@pengutronix.de>
References: <20140728182814.d80c510749ed1851aaddafb8@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140728182814.d80c510749ed1851aaddafb8@gmail.com>
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
Subject: Re: NOR flash writing
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 28, 2014 at 06:28:14PM +0400, Antony Pavlov wrote:
> Hi All!
> 
> I have barebox running on a board with SPI flash chip.
> I can write to the SPI flash chip using /dev/nor0 interface.
> Before writing data to the /dev/nor0 device I have to erase it explicitly with 'erase /dev/nor0' command.
> 
> How I can write to /dev/nor0 in a more transparent way. E.g. if I want to update only several bytes
> on /dev/nor0 then I use 'mw -d /dev/nor0 ...' command and barebox  automatically reads appropriate
> flash sector into RAM, modify it, erase NOR flash device sector and write new sector content into NOR flash device.

There's no convenient way for this, you have to do it manually:

- read a block to a file using memcpy
- modify it using mw
- erase flash block
- copy back using memcpy

I can't think up a good API to combine this into a single command.
I mean for simple modifications some more intelligent read/modify/write
command would work, but normally if you have more than one modification
to do then you don't want to erase your flash with each modification.

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
