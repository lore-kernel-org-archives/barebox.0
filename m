Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmdT1-000057-26
 for barebox@lists.infradead.org; Wed, 21 Sep 2016 09:05:24 +0000
Date: Wed, 21 Sep 2016 11:05:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160921090500.bkrkohjxpye2gkc6@pengutronix.de>
References: <122759075.350079920.1474446203319.JavaMail.root@zimbra32-e6.priv.proxad.net>
 <220039379.350137727.1474447243380.JavaMail.root@zimbra32-e6.priv.proxad.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <220039379.350137727.1474447243380.JavaMail.root@zimbra32-e6.priv.proxad.net>
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
Subject: Re: How to port brcmnand Linux driver?
To: Eric Le Bihan <eric.le.bihan.dev@free.fr>
Cc: barebox@lists.infradead.org

On Wed, Sep 21, 2016 at 10:40:43AM +0200, Eric Le Bihan wrote:
> Hi!
> 
> I'm trying to port the brcmnand driver for Broadcom NAND controller from Linux.
> This driver requires an update of the MTD headers in barebox, as they lack 
> definitions for functions such as mtd_set_ooblayout().
> 
> What is the recommended strategy for this? Should I update the whole set of
> headers and report the barebox specific changes (use of device_d, etc) or only
> add the missing functions?

For the mtd headers we usually only port the functions we need which
worked good enough in the past.

> 
> In general, when adding such driver, should the functions unsupported by barebox
> (irq handling, memory barriers, etc) be stubbed or removed?

It's a matter of taste. I usually remove spin_locks and other things
that are not relevant for barebox, but we actually do have stubs for some
stuff. I recommend removing such functions, but in the end it's up to
you.

irq handling is normally an area which must be changed heavily anyway when
porting from Linux to barebox, so I wouldn't try to make it look like in
the Linux driver, just to make potential updates from a newer Linux driver
easier.

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
