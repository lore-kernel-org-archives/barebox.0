Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmFbF-0004Hy-NP
 for barebox@lists.infradead.org; Wed, 23 Jan 2019 10:17:39 +0000
Date: Wed, 23 Jan 2019 11:17:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190123101735.faeyxjmmfxogvwqt@pengutronix.de>
References: <49608661548074089@myt5-f1576e7b5bad.qloud-c.yandex.net>
 <20190121151232.djbrymvdolvpva3z@pengutronix.de>
 <20190121163503.GA2854@ravnborg.org>
 <20190122063306.yvfd6p2b52ofw2ab@pengutronix.de>
 <33796811548166043@iva7-4f557d6b60d4.qloud-c.yandex.net>
 <20190122144240.t7bknlqpipjpzeda@pengutronix.de>
 <12201721548173536@iva5-750e13568e4d.qloud-c.yandex.net>
 <20190123091134.2ibecc3f2sxgr6gc@pengutronix.de>
 <39543571548237706@iva8-6be7d23653d9.qloud-c.yandex.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39543571548237706@iva8-6be7d23653d9.qloud-c.yandex.net>
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
Subject: Re: [HELP] Barebox porting
To: Seraphim Dolbilov <s.dlblv@ya.ru>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jan 23, 2019 at 01:01:46PM +0300, Seraphim Dolbilov wrote:
> 23.01.2019, 12:11, "Sascha Hauer" <s.hauer@pengutronix.de>:
> > What are you trying to archieve?
> 
> My board contains mcp79411 - it's an I2C RTC with EEPROM, which contains
> global-registered MAC address. I want this MAC address to be read by Barebox
> and passed to Linux kernel FEC driver through bootargs. I was trying to find
> solution for shell, but 've already realized that it's impossible to get command's
> output into env variable, so I've to implement it right in board's code.

Indeed, that's better.

You shouldn't use bootargs to pass the MAC address though. There's
of_eth_register_ethaddr() which you can pass the pointer to the fec
device tree node and the MAC address you found in the EEPROM. The rest
is done automatically by barebox.

> 
> Moreover, I had an idea of my device's image having capability to be updated 
> from USB drive using memcpy command (flashing image file from USB drive right
> away into EMMC), but I also cannot check integrity of image flie from 
> Barebox's shell, due to its inability to get command's output.

How is the integrity checked? Some md5sum or something? Anyway, you're
better off doing that in C.

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
