Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fg5cd-0000Dd-7H
 for barebox@lists.infradead.org; Thu, 19 Jul 2018 09:53:23 +0000
Message-ID: <1531993986.3511.144.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 19 Jul 2018 11:53:06 +0200
In-Reply-To: <0520cae6-02f5-349f-50ad-947079618d33@pengutronix.de>
References: <CAEp+FuAeZykr4wa-BK-zdTKUPH=kikkeZWLHHpycQ9uRJFkPug@mail.gmail.com>
 <16d74981-28c9-d637-c7de-f1902529ab30@rempel-privat.de>
 <35db1bb9-cb13-26b3-09b7-30f583585155@pengutronix.de>
 <1531925793.3511.128.camel@pengutronix.de>
 <CAEp+FuAsDL9msTeiC=2+bbKHkrEObdKKdctN_G3RdVX8uP=ZsQ@mail.gmail.com>
 <c1c3be93-c29e-7e65-c09b-86edbd0adb1e@rempel-privat.de>
 <CAEp+FuA2+n-zFRxsxUkiroDcosO78jPt4dp69t-Z=t+pt26_6A@mail.gmail.com>
 <0520cae6-02f5-349f-50ad-947079618d33@pengutronix.de>
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
To: Oleksij Rempel <o.rempel@pengutronix.de>, Mihaita Ivascu <mihaita_ivascu@trimble.com>, linux@rempel-privat.de
Cc: barebox@lists.infradead.org, bst@pengutronix.de

On Thu, 2018-07-19 at 07:08 +0200, Oleksij Rempel wrote:
> >           Aside from this issue, are you aware of any method of
> > flashing the barebox  on NAND from Linux(after the kernel was loaded
> > successfully on the target) ?
> > barebox_update does not exist in Linux obviously and porting it is not
> > so trivial, on top of that I don't think I am able to access the nand
> > device from Linux, but only MTD partitions .
> > I have tried  nandwrite and kobs-ng commands but I was not successful.
> 
> barebox_update is a wrapper to: take a image and write it to predefined
> project or board specific location.
> If you have access to this location from linux, you can do it from linux
> as well.

Note that i.MX6, barebox_update also generates additional headers for
the ROM loader (such as a small bad block table). A raw barebox image
without these headers cannot be booted by the ROM from NAND. This is
the reason why simple nandwrite doesn't work.

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
