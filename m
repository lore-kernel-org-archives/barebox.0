Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlX6C-0001f7-El
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 07:00:46 +0000
Date: Mon, 12 Oct 2015 09:00:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151012070021.GO7858@pengutronix.de>
References: <1442937514-19675-1-git-send-email-pmamonov@gmail.com>
 <1442937514-19675-5-git-send-email-pmamonov@gmail.com>
 <20151007134703.GA8288@ns203013.ovh.net>
 <20151007174016.00ac1be5@berta>
 <20151007154024.GA14384@ns203013.ovh.net>
 <20151007195221.7aaea4c6@berta>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151007195221.7aaea4c6@berta>
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
Subject: Re: [PATCH 4/5] usb: ehci-hcd: use mdelay_non_inerruptible()
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 07, 2015 at 07:52:21PM +0300, Peter Mamonov wrote:
> On Wed, 7 Oct 2015 17:40:24 +0200
> > > Non-interruptible delays are needed here to prevent ehci_* functions
> > > re-entrance. The re-entrance occurs during a usb bus scan, after
> > > detection of a usb keyboard. As soon as a USB keyboard is detected,
> > > it's driver starts the poller, which interferes with the process of
> > > usb bus scan. However that last one delay may be interruptible.
> > 
> > my problem is as soon as you start a usb control msg you block
> > everything
> > 
> > nothing else can run in barebox
> > 
> > can slow down barebox boot
> > 
> > I do think we need a real mdelay_non_interruptible feature but just
> > forbidden to recall usb control msg.
> > But the rest of barebox can run durring those 5ms
> 
> Well, I think it can be done by returning -EAGAIN on re-entrance
> detection in ehci_* functions [1], and skipping the poll in the keyboard
> driver.

Could you tell us what you have done to get re-entrance problems? I have
just replaced the mdelay_non_interruptible with regular mdelay in the
ehci driver and didn't notice any problems. Could you verify the
_non_interruptible is still needed?

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
