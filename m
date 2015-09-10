Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Za46T-0005yL-II
 for barebox@lists.infradead.org; Thu, 10 Sep 2015 15:49:38 +0000
Received: by lbpo4 with SMTP id o4so25626640lbp.2
 for <barebox@lists.infradead.org>; Thu, 10 Sep 2015 08:49:15 -0700 (PDT)
Date: Thu, 10 Sep 2015 18:51:33 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20150910185133.7a11e8f0@berta>
In-Reply-To: <20150910073815.GQ18700@pengutronix.de>
References: <1441816612-5471-1-git-send-email-pmamonov@gmail.com>
 <20150910073815.GQ18700@pengutronix.de>
MIME-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 10 Sep 2015 09:38:15 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Excellent! This makes the framebuffer console support complete :)

I'm sorry to dissapoint you, but this implementation of the usb
keyboard driver seems to be wrong. The driver employs the get_report
request to poll the keyboard state via the control endpoint, however
the "Device Class Definition for Human Interface Devices (HID)" states
the following:
"This request is not intended to be used for polling the device state
on a regular basis. [...] The Interrupt In pipe should be used for
recurring Input reports."

I guess this is the source of the problems with some keyboards: 2 of 4
keyboards I've tested changed their state only on key down, but not
on key up.

So, according the standard, we need to poll a keyboard via interrupt
endpoint. However, current implementation of EHCI driver doesn't support
interrupt transactions: submit_int_msg() in ehci-hcd.c is a stub. I'll
try to implement it.

Peter

> 
> I have not much to say, the driver looks ok to me. I'll test it once I
> find time. Some smally comments inline.
> 
> On Wed, Sep 09, 2015 at 07:36:52PM +0300, Peter Mamonov wrote:
> > diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
> 
> Please add some copyright header and don't forget to put references in
> it where you got the code from.
> 
> > +	if (pressed == 1) {
> > +		if (scancode == NUM_LOCK) {
> > +			data->flags ^= USB_KBD_NUMLOCK;
> > +			return 1;
> > +		}
> > +
> > +		if (scancode == CAPS_LOCK) {
> > +			data->flags ^= USB_KBD_CAPSLOCK;
> > +			return 1;
> > +		}
> > +		if (scancode == SCROLL_LOCK) {
> > +			data->flags ^= USB_KBD_SCROLLLOCK;
> > +			return 1;
> > +		}
> > +	}
> > +
> > +	/* Report keycode if any */
> > +	if (keycode) {
> > +		pr_debug("%s: key pressed: '%c'\n", __FUNCTION__,
> > keycode);
> 
> Please use __func__ rather than __FUNCTION__
> 
> Sascha
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
