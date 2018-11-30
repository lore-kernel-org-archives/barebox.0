Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSq9J-0008Cy-Hk
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 21:16:35 +0000
Date: Fri, 30 Nov 2018 22:16:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181130211620.dkxcnyigrpvsjnfo@pengutronix.de>
References: <1543585763.5085.14.camel@erwinrol.com>
 <1543590330.5085.16.camel@erwinrol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1543590330.5085.16.camel@erwinrol.com>
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
Subject: Re: imx6 usb update
To: Erwin Rol <mailinglists@erwinrol.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Nov 30, 2018 at 04:05:30PM +0100, Erwin Rol wrote:
> Hey all,
> 
> the bootmode detection I figured out, but the using DFU to directly
> flash barebox bricks my system;
> 
> usbgadget -D /dev/nand0.barebox(barebox)s
> 
> That doesn't work.

Nope, that doesn't work. For boot sources like SD/eMMC that would
indeed work, but NAND needs special treatment.
You can add what fastboot does:

	if(filetype_is_barebox_image(data)) {
		...
		barebox_update();
	}

There is currently no way to trigger a script.

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
