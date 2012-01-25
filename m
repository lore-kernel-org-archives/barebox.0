Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RqB1Y-0004vH-1r
 for barebox@lists.infradead.org; Wed, 25 Jan 2012 22:09:01 +0000
Date: Wed, 25 Jan 2012 23:08:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120125220848.GC5446@pengutronix.de>
References: <1327525133.19793.23.camel@hp-dhlii>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1327525133.19793.23.camel@hp-dhlii>
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
Subject: Re: i.MX53 QSB
To: "David Lynch Jr." <dhlii@dlasys.net>
Cc: barebox@lists.infradead.org

Hi David,

On Wed, Jan 25, 2012 at 03:58:53PM -0500, David Lynch Jr. wrote:
> I can build a barebox.bin for the i.MX53 QSB. 
> 
> If I am booting from the SD card how do I get it onto the card
> 
> dd if=barebox.bin of=/dev/sdc bs=512 seek=2 ??

cat barebox.bin > /dev/sdc

Of course this means that you will overwrite the partition table of the
SD card. I'm still loooking for a good way to make this behaviour more
convenient.

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
