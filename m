Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFjLM-00059l-4y
 for barebox@lists.infradead.org; Wed, 22 Jun 2016 14:41:29 +0000
Date: Wed, 22 Jun 2016 16:41:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160622144104.GB4750@pengutronix.de>
References: <57695CC0.20403@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <57695CC0.20403@gmail.com>
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
Subject: Re: Support USB port SAMA5D3
To: ner0 <avazquez.dev@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Tue, Jun 21, 2016 at 05:26:56PM +0200, ner0 wrote:
> Hi, All!
> 
> I know that it is possible detect usb (mass storage devices) and mount it
> using Barebox.
> 
> I am trying detect a pen drive in a sama5d3 Xplained but it don't work.
> I use the command detect -l  but it seems that USB is not detectable.
> I've taken a look at the file "init.c" but there is no declaration of USB
> ports.
> I have been modifying the code and have added support for USB (basing on
> at91sam9x5k) but can't get it to work.
> The driver started correctly
> atmel-ehci atmel-ehci: USB EHCI 1.00
> when I run "usb" to detect the devices gives me the following message:
> 
> # usb
> USB: scanning bus for devices...
> atmel-ehci atmel-ehci: fail to reset
> 0 USB Device(s) found
> 
> Am I correctly defining the USB port?
> Did I miss something?

I can't find anything obvious in the patch that could be wrong.
Sometimes it helps to have a look at the U-Boot code if there's
something that needs to be configured additionally. Generally the EHCI
driver should work, I use it regularly on i.MX.

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
