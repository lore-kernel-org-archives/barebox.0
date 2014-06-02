Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WrMcK-0004Jo-Pc
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 07:25:13 +0000
Date: Mon, 2 Jun 2014 09:24:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140602072450.GW15686@pengutronix.de>
References: <1400662482-23560-1-git-send-email-antonynpavlov@gmail.com>
 <CAOpc7mHG9eaRRWkYxazwRCeVrAXB_LPLuD2zPp8WLOj9yiTVnQ@mail.gmail.com>
 <20140521181123.22fa7c295a12523e27d6964b@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140521181123.22fa7c295a12523e27d6964b@gmail.com>
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
Subject: Re: [PATCH] [RFC] [WIP] commands: add tree view capable lsusb
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, May 21, 2014 at 06:11:23PM +0400, Antony Pavlov wrote:
> On Wed, 21 May 2014 15:20:21 +0200
> Holger Schurig <holgerschurig@gmail.com> wrote:
> 
> > Nice, I would just remove the extra empty lines. Linux' "lsusb -t" for
> 
> Good idea! I'll take a look on Linux' lsusb too.
> 
> > example produces this:
> > 
> > holger@desktop:~$ lsusb -t
> > /:  Bus 02.Port 1: Dev 1, Class=root_hub, Driver=ehci-pci/2p, 480M
> >     |__ Port 1: Dev 2, If 0, Class=hub, Driver=hub/8p, 480M
> >         |__ Port 1: Dev 27, If 0, Class=HID, Driver=usbhid, 1.5M
> >         |__ Port 2: Dev 4, If 0, Class=HID, Driver=usbhid, 1.5M
> >         |__ Port 6: Dev 126, If 0, Class=hub, Driver=hub/2p, 480M
> > /:  Bus 01.Port 1: Dev 1, Class=root_hub, Driver=ehci-pci/2p, 480M
> >     |__ Port 1: Dev 2, If 0, Class=hub, Driver=hub/6p, 480M
> > 
> > Also please add an entry into commands/Kconfig:
> 
> I'll separate lsusb code into independent lsusb.c file.
> 
> > And put it into the
> > info group, lsusb just shows something, it doesn't manipulate any
> > hardware.
> 
> Not exactly so. It invokes usb_rescan(0).

You could drop the usb_rescan(). Would that be too confusing?

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
