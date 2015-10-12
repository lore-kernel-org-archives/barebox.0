Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZldOq-0005st-Gf
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 13:44:25 +0000
Date: Mon, 12 Oct 2015 15:44:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151012134400.GV7858@pengutronix.de>
References: <1442937514-19675-1-git-send-email-pmamonov@gmail.com>
 <1442937514-19675-5-git-send-email-pmamonov@gmail.com>
 <20151007134703.GA8288@ns203013.ovh.net>
 <20151007174016.00ac1be5@berta>
 <20151007154024.GA14384@ns203013.ovh.net>
 <20151007195221.7aaea4c6@berta>
 <20151012070021.GO7858@pengutronix.de>
 <20151012144325.72d5b323@berta>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151012144325.72d5b323@berta>
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

On Mon, Oct 12, 2015 at 02:43:25PM +0300, Peter Mamonov wrote:
> On Mon, 12 Oct 2015 09:00:21 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Wed, Oct 07, 2015 at 07:52:21PM +0300, Peter Mamonov wrote:
> > > On Wed, 7 Oct 2015 17:40:24 +0200
> > > > > Non-interruptible delays are needed here to prevent ehci_*
> > > > > functions re-entrance. The re-entrance occurs during a usb bus
> > > > > scan, after detection of a usb keyboard. As soon as a USB
> > > > > keyboard is detected, it's driver starts the poller, which
> > > > > interferes with the process of usb bus scan. However that last
> > > > > one delay may be interruptible.
> > > > 
> > > > my problem is as soon as you start a usb control msg you block
> > > > everything
> > > > 
> > > > nothing else can run in barebox
> > > > 
> > > > can slow down barebox boot
> > > > 
> > > > I do think we need a real mdelay_non_interruptible feature but
> > > > just forbidden to recall usb control msg.
> > > > But the rest of barebox can run durring those 5ms
> > > 
> > > Well, I think it can be done by returning -EAGAIN on re-entrance
> > > detection in ehci_* functions [1], and skipping the poll in the
> > > keyboard driver.
> > 
> > Could you tell us what you have done to get re-entrance problems? I
> > have just replaced the mdelay_non_interruptible with regular mdelay
> > in the ehci driver and didn't notice any problems. Could you verify
> > the _non_interruptible is still needed?
> 
> If I revert the "usb: ehci-hcd: use mdelay_non_interruptible()" patch,
> while leaving the "usb: ehci-hcd: detect re-entrance" applied, I get
> the following messages after running the "usb" command:
> 
> barebox:/ usb                                                         
> USB: scanning bus for devices...                                                
> Bus 001 Device 001: ID 0000:0000 EHCI Host Controller                           
> Bus 001 Device 002: ID 0424:2514                                                
> Bus 001 Device 003: ID 413c:2112 Dell USB Wired Multimedia Keybo                
> usb-keyboard usb1-0-0: USB keyboard found                                       
> Bus 001 Device 004: ID 8564:1000 Mass Storage Device                            
> Using index 0 for the new disk                                                  
> usb-keyboard usb1-0-0: submit_int_msg: re-entrance 1 (usb-hub:usb1)             
> usb-keyboard usb1-0-0: submit_int_msg: re-entrance 1 (usb-hub:usb1)             
> usb-keyboard usb1-0-0: submit_int_msg: re-entrance 1 (usb-keyboard:usb1-0-0)    
> usb-keyboard usb1-0-0: submit_int_msg: re-entrance 1 (usb-keyboard:usb1-0-0)    
> usb-keyboard usb1-0-0: submit_int_msg: re-entrance 1 (usb-hub:usb1)             
> usb-keyboard usb1-0-0: submit_int_msg: re-entrance 1 (usb-keyboard:usb1-0-0)    
> usb-keyboard usb1-0-0: submit_int_msg: re-entrance 1 (usb-keyboard:usb1-0-0)    
> Bus 001 Device 005: ID 0424:2514                                                
> 5 USB Device(s) found                                                       
> 
> According to the debug messages: submit_int_msg() is called by the usb-keyboard driver (from the poller function),
> while "usb-hub" driver is executing submit_control_msg() (which calls mdelay() and poller_call() subsequently).
> This occurs several times, until usb bus scan is completed.
> Probably the problem can be reproduced by adding more usb devices.

I wonder why this does not happen here. I finally could reproduce this
by adding some additional delays to the ehci driver.

We should probably move the reentrance detection to the generic usb
layer to usb_submit_int_msg, usb_control_msg and usb_bulk_msg. This
would avoid running into the same problems in the other usb host
drivers. If I understand the issue correctly we could just use regular
*delay in the host drivers when we detect reentrancy correctly, right?
I mean we don't have to print an error message when we detect
reentrance, but instead just consider that a case that can happen.

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
