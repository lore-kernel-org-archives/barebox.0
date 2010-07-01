Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from csmtp3.one.com ([91.198.169.23])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OUTWS-0003FA-RD
	for barebox@lists.infradead.org; Thu, 01 Jul 2010 23:50:25 +0000
Received: from [192.168.1.68] (92-32-86-92.tn.glocalnet.net [92.32.86.92])
	by csmtp3.one.com (Postfix) with ESMTP id 475DB2405640
	for <barebox@lists.infradead.org>; Thu,  1 Jul 2010 23:50:21 +0000 (UTC)
From: Henrik Leon <henrik@leotec.se>
Date: Fri, 02 Jul 2010 01:50:19 +0200
Message-ID: <1278028219.8621.860.camel@henke-laptop>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Testing dfu support, build error (beagle)
To: barebox@lists.infradead.org

I'm not a skilled programmer so please bare with me if the solution to
this is trivial...

I tried to build a "Device Firmwire Upgrade gadget" on a beagle target,
but a build error occured:

drivers/built-in.o: In function `usb_composite_unregister':
dfu.c:(.text.usb_composite_unregister+0x14): undefined reference to
`usb_gadget_unregister_driver'
drivers/built-in.o: In function `usb_composite_register':
dfu.c:(.text.usb_composite_register+0x54): undefined reference to
`usb_gadget_register_driver'
drivers/built-in.o: In function `usb_dfu_register':
dfu.c:(.text.usb_dfu_register+0x4c): undefined reference to
`usb_gadget_poll'

I also tried to build (with the experimental code flag set)
USB_GADGET_SERIAL, but it failed in a similar way:

drivers/built-in.o: In function `usb_composite_register':
f_acm.c:(.text.usb_composite_register+0x54): undefined reference to
`usb_gadget_register_driver'
drivers/built-in.o: In function `do_mycdev':
f_acm.c:(.text.do_mycdev+0x38): undefined reference to `fsl_udc_irq'
drivers/built-in.o: In function `serial_putc':
f_acm.c:(.text.serial_putc+0x60): undefined reference to `fsl_udc_irq'

So then I tried changing barebox/drivers/usb/gadget/Makefile:
---obj-$(CONFIG_USB_GADGET_SERIAL) += u_serial.o serial.o f_serial.o
f_acm.o
+++obj-y(CONFIG_USB_GADGET_SERIAL) += u_serial.o serial.o f_serial.o
f_acm.o

and now it compiles cleanly. Unfortunately, I don't have any hardware to
test the binary on =/

I'm using codesourcery 2009q3 compiler, barebox 'next' git branch.

My goal with this exercise is to see if I can bring a fresh custom
AM3517-board up to kernel-life using nothing but a USB-cable.

//Henrik



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
