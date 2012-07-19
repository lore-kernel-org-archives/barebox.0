Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SrsoC-0000G5-Sm
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 15:38:33 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1Srsnf-0007xn-B1
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 17:38:01 +0200
Received: from h96-60-251-119.cncrtn.dsl.dynamic.tds.net ([96.60.251.119])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2012 17:37:59 +0200
Received: from jkirk865 by h96-60-251-119.cncrtn.dsl.dynamic.tds.net with
 local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2012 17:37:59 +0200
From: Jerry Kirk <jkirk865@gmail.com>
Date: Thu, 19 Jul 2012 15:37:47 +0000 (UTC)
Message-ID: <loom.20120719T173418-826@post.gmane.org>
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
Subject: USB On PCM043?
To: barebox@lists.infradead.org

We have been attempting to get USB Host mode working under Barebox(2012-07-0) on 
a PCM043 platform (i.mx35), but we are having a bit of trouble.

We have  merged the CONFIG_USB specific code for "imx35_devices_init" and 
"imx35_usb_init" from the Eukrea platform into pcm043.c, added the 
"MX35_PAD_I2C2_CLK__USB_TOP_USBH2_PWR" and "MX35_PAD_I2C2_DAT__USB_TOP_USBH2_OC" 
pad definitions (as per the main kernel pcm043.c file), added the "tmp |= 0x3 << 
CCM_CGR2_USB_SHIFT" to enable the USB clock to "pcm043_core_setup", built 
everything with the "usb" command enabled, and then loaded the new Barebox image 
into our pcm043 board. We have USB_EHCI and USB_STORAGE enabled in the Barebox 
config.

If I execute the "usb" command then it returns that it has found 1 EHCI 
controller. If I plug in any device, the only one it has EVER detected has been 
a USB mouse. It will be detected most of the time following a reset and after 
unplugging/replugging the mouse -- but will never be detected again after this 
unless I do a reset/replug operation (and never on a "usb -f" forced redetect).

Basically, our goal is to get USB flash drives working for use as a means of 
upgrading our Linux kernel in the field -- but right now it won't even EVER 
recognize a USB flash drive when it is plugged into the unit. We also know it is 
not a hardware problem as all USB devices work just fine once the full kernel 
finishes booting.

From what we have read, it looks like the Eukrea platform had USB working in it, 
and we have attempted to use it as a guide, but we still aren't having any luck.

Does anyone know of any steps we might be missing? Or of anyone who has gotten 
USB host mode working on a pcm043 under Barebox before?

I think we are close, but something (obviously) still isn't right.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
