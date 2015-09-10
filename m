Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Za5XR-0006wW-Tf
 for barebox@lists.infradead.org; Thu, 10 Sep 2015 17:21:34 +0000
Date: Thu, 10 Sep 2015 19:21:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150910172111.GR18700@pengutronix.de>
References: <1441816612-5471-1-git-send-email-pmamonov@gmail.com>
 <20150910073815.GQ18700@pengutronix.de>
 <20150910185133.7a11e8f0@berta>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150910185133.7a11e8f0@berta>
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
Subject: Re: [RFC] WIP: add usb keyboard driver
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 10, 2015 at 06:51:33PM +0300, Peter Mamonov wrote:
> On Thu, 10 Sep 2015 09:38:15 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Excellent! This makes the framebuffer console support complete :)
> 
> I'm sorry to dissapoint you, but this implementation of the usb
> keyboard driver seems to be wrong. The driver employs the get_report
> request to poll the keyboard state via the control endpoint, however
> the "Device Class Definition for Human Interface Devices (HID)" states
> the following:
> "This request is not intended to be used for polling the device state
> on a regular basis. [...] The Interrupt In pipe should be used for
> recurring Input reports."
> 
> I guess this is the source of the problems with some keyboards: 2 of 4
> keyboards I've tested changed their state only on key down, but not
> on key up.

Yes, same here. The first keyboard I tested ended up with this
behaviour, the second worked.

> 
> So, according the standard, we need to poll a keyboard via interrupt
> endpoint. However, current implementation of EHCI driver doesn't support
> interrupt transactions: submit_int_msg() in ehci-hcd.c is a stub. I'll
> try to implement it.

U-Boot has an implementation for it, should be possible to adopt the
corresponding code.

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
