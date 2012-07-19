Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SrtKP-0003vE-H8
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 16:11:57 +0000
Date: Thu, 19 Jul 2012 18:11:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120719161139.GB30009@pengutronix.de>
References: <loom.20120719T173418-826@post.gmane.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <loom.20120719T173418-826@post.gmane.org>
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
Subject: Re: USB On PCM043?
To: Jerry Kirk <jkirk865@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 19, 2012 at 03:37:47PM +0000, Jerry Kirk wrote:
> We have been attempting to get USB Host mode working under Barebox(2012-07-0) on 
> a PCM043 platform (i.mx35), but we are having a bit of trouble.
> 
> We have  merged the CONFIG_USB specific code for "imx35_devices_init" and 
> "imx35_usb_init" from the Eukrea platform into pcm043.c, added the 
> "MX35_PAD_I2C2_CLK__USB_TOP_USBH2_PWR" and "MX35_PAD_I2C2_DAT__USB_TOP_USBH2_OC" 
> pad definitions (as per the main kernel pcm043.c file), added the "tmp |= 0x3 << 
> CCM_CGR2_USB_SHIFT" to enable the USB clock to "pcm043_core_setup", built 
> everything with the "usb" command enabled, and then loaded the new Barebox image 
> into our pcm043 board. We have USB_EHCI and USB_STORAGE enabled in the Barebox 
> config.
> 
> If I execute the "usb" command then it returns that it has found 1 EHCI 
> controller. If I plug in any device, the only one it has EVER detected has been 
> a USB mouse. It will be detected most of the time following a reset and after 
> unplugging/replugging the mouse -- but will never be detected again after this 
> unless I do a reset/replug operation (and never on a "usb -f" forced redetect).
> 
> Basically, our goal is to get USB flash drives working for use as a means of 
> upgrading our Linux kernel in the field -- but right now it won't even EVER 
> recognize a USB flash drive when it is plugged into the unit. We also know it is 
> not a hardware problem as all USB devices work just fine once the full kernel 
> finishes booting.
> 
> From what we have read, it looks like the Eukrea platform had USB working in it, 
> and we have attempted to use it as a guide, but we still aren't having any luck.
> 
> Does anyone know of any steps we might be missing? Or of anyone who has gotten 
> USB host mode working on a pcm043 under Barebox before?
> 
> I think we are close, but something (obviously) still isn't right.

Could it be that the USB clock operates at the wrong rate? I think it
should be 60MHz.

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
