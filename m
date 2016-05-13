Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b19tO-0004dq-Jx
 for barebox@lists.infradead.org; Fri, 13 May 2016 10:00:23 +0000
Date: Fri, 13 May 2016 11:59:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160513095958.GO19714@pengutronix.de>
References: <20160512114411.GA18890@book> <87mvnu8pq8.fsf@gmail.com>
 <20160513084145.GA24807@book>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160513084145.GA24807@book>
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
Subject: Re: Is barebox support usb mass storeage?
To: barebox <barebox@lists.infradead.org>, u74147@gmail.com

On Fri, May 13, 2016 at 04:41:45PM +0800, DU HUANPENG wrote:
> On Fri, May 13, 2016 at 07:57:19AM +0200, Holger Schurig wrote:
> > > Hi, is barebox now supports load images from usb disk?
> > 
> > better-> Hi, does barebox now support load images from USB?
> thank you. :)
> > 
> > 
> > Yes, this is supported. At least for my hardware (i.MX6).
> I need to make my bootloader supports load image from USB disk,
> what documents should i read?

http://barebox.de/doc/latest/user/usb.html?highlight=usb

This is for the user documentation. There is no developer documentation,
for that you have to read the code. Basically you have to register your
USB host device with barebox... and write (port, adopt) the USB host
driver for your device. Which SoC are we talking about?

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
