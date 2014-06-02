Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WrNeU-0004g2-8q
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 08:31:31 +0000
Date: Mon, 2 Jun 2014 10:31:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140602083107.GX15686@pengutronix.de>
References: <1400662482-23560-1-git-send-email-antonynpavlov@gmail.com>
 <CAOpc7mHG9eaRRWkYxazwRCeVrAXB_LPLuD2zPp8WLOj9yiTVnQ@mail.gmail.com>
 <20140521181123.22fa7c295a12523e27d6964b@gmail.com>
 <20140602072450.GW15686@pengutronix.de>
 <CAOpc7mGZGM7K3TxKQhBb1FesfazzViV5ujumPf8ihAjGNGJNwQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mGZGM7K3TxKQhBb1FesfazzViV5ujumPf8ihAjGNGJNwQ@mail.gmail.com>
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
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jun 02, 2014 at 09:59:31AM +0200, Holger Schurig wrote:
> Hmm, I like that it does a rescan, so that it always display the
> currently connected USB device automatically.

Note that we only scan scan the bus once during the lifetime of barebox
unless the force parameter of usb_rescan is true. This is because
we currently remove all existing USB devices and reinstantiate all
USB devices found during scanning. The removal of devices is not very
well implemented. USB only works properly when the tree is scanned once.

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
