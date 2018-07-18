Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ffnsl-0005hI-J0
 for barebox@lists.infradead.org; Wed, 18 Jul 2018 14:56:49 +0000
Message-ID: <1531925793.3511.128.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 18 Jul 2018 16:56:33 +0200
In-Reply-To: <35db1bb9-cb13-26b3-09b7-30f583585155@pengutronix.de>
References: <CAEp+FuAeZykr4wa-BK-zdTKUPH=kikkeZWLHHpycQ9uRJFkPug@mail.gmail.com>
 <16d74981-28c9-d637-c7de-f1902529ab30@rempel-privat.de>
 <35db1bb9-cb13-26b3-09b7-30f583585155@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: MFGtools support in barebox
To: Bastian Stender <bst@pengutronix.de>, Oleksij Rempel <linux@rempel-privat.de>, Mihaita Ivascu <mihaita_ivascu@trimble.com>, barebox@lists.infradead.org

On Wed, 2018-07-18 at 15:53 +0200, Bastian Stender wrote:
> Hi,
> 
> On 07/18/2018 03:01 PM, Oleksij Rempel wrote:
> > you email is in the list. (well, different version of it are already
> > in the list). Please wait if some one can respond here.
> > 
> > I'm not an expert, but probably what you need is
> > https://github.com/rauc
> 
> Have a look here:
> 
> http://rauc.readthedocs.io/en/latest/advanced.html#updating-the-bootloader
> 
> Updating barebox on NAND is not yet implemented. It would certainly be a
> nice feature to have. Have a look in section 7.6.2 if you want to do that.

Speaking with my rauc maintainer hat on...

Writing barebox to NAND on an i.MX6 can't be done by generic methods,
so for rauc we would want to call something like barebox-update which
then handles the details. In any case, rauc is not intended for initial
installation in the factory, but for updating in the field.

Instead of MFGtools, we usually load barebox via imx-usb-loader. That
is configured to start the fastboot gadget, which we then use to write
barebox (via barebox_update) and the rootfs.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
