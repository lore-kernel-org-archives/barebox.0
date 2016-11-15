Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c6dtz-0001wa-Az
 for barebox@lists.infradead.org; Tue, 15 Nov 2016 13:35:56 +0000
Date: Tue, 15 Nov 2016 14:35:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161115133533.hxhpu3upxveb3qb3@pengutronix.de>
References: <1823762258.78822.1479128237871.JavaMail.ngmail@webmail06.arcor-online.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1823762258.78822.1479128237871.JavaMail.ngmail@webmail06.arcor-online.net>
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
Subject: Re: usb otg port not working on an imx25 soc
To: iw3gtf@arcor.de
Cc: barebox@lists.infradead.org

Hi Giorgio,

On Mon, Nov 14, 2016 at 01:57:17PM +0100, iw3gtf@arcor.de wrote:
> Hi,
> 
> I'm currently working on an embedded board with an imx25 soc and I want
> to enable the usb otg port of the soc; in my use case I just want the otg port
> to be configured in usb host mode and use the integrated UTMI phy.
> 
> I built barebox with usb support and the usb ports are actually found:

When USB does not work it's most likely that the usbmisc unit is not
properly configured. Have a look at mx25_initialize_usb_hw(). If you
previously loaded barebox with imx-usb-loader then you could try skipping
the initialization in mx25_initialize_usb_hw() completely.

I've seldomly seen that the actual EHCI driver or USB core is the
problem when no device is detected.

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
