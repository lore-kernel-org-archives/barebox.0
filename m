Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLqtt-0004wV-Bc
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 07:40:18 +0000
Date: Wed, 10 Oct 2012 09:40:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121010074015.GM27665@pengutronix.de>
References: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 00/14] archosg9: add support for tablet
To: Vicente <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 09, 2012 at 12:55:10AM +0200, Vicente wrote:
> This patch series is the same as before except for:
>  [PATCH 03/13] ARM: ensure irqs are disabled
>     imported irq handling from linux
>  [PATCH 07/13] uimage: improve transfer speed
>     solved a compile warning

I applied most of this series, please check the result in the -next
branch.

> 
> Vicente (14):
>   twl6030: add debug info
>   omap4: add rename definitions to match datasheet
>   ARM: import irq handling from linux
>   ARM: ensure irqs are disabled

I haven't applied these two. I don't think it's worth adding the linux
irq headers. I liked the last version better which only missed the
define for a flag.
I just posted a series making multiple ARM architectures possible, so
we would need a arm_architecture() around the call to disable the irqs,
not an ifdef. You could either change this in a new version or give
me some time until I do it.

>   omap: revert gpiolib

Of course haven't applied this one

>   omap4: add usb boot source
>   bootm: close open files

>   uimage: improve transfer speed

Haven't applied this one as you haven't answered my question how
much improvement (and on which media) we get.

>   fs: improve robustness
>   omap4: add support for booting cpu from usb
>   omap4: add serial communications over usb boot
>   omap4: add filesystem support over usb boot
>   omap4: add support for loading second stage from usb
>   Add support for Archos G9 tablet

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
