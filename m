Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69LD-0001p6-UK
 for barebox@lists.infradead.org; Mon, 24 Feb 2020 08:43:53 +0000
Date: Mon, 24 Feb 2020 09:43:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200224084347.GC3335@pengutronix.de>
References: <c0e44a15-802d-b008-36b3-3b3d6007e587@data-modul.com>
 <f67d5b7fec7c354a8d632dc8e20d15e5c273030f.camel@pengutronix.de>
 <cfdb29ab-63b9-6d85-52b2-e76dd88839fd@data-modul.com>
 <20191213075549.bsugsd4fjo6lqox5@pengutronix.de>
 <94de90ba-583b-1181-c9b8-0375b3b3e834@data-modul.com>
 <d617fe79-4942-d1c7-34d2-837f3c328cff@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d617fe79-4942-d1c7-34d2-837f3c328cff@pengutronix.de>
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
Subject: Re: imx-usb-loader on imx8mq/mm
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, "Yazdani,
 Reyhaneh" <RYazdani@data-modul.com>

On Fri, Feb 21, 2020 at 07:32:55PM +0100, Ahmad Fatoum wrote:
> Hello,
> 
> On 12/13/19 3:24 PM, Yazdani, Reyhaneh wrote:
> > Thanks Sascha,
> > 
> > I could finally program Barebox on eMMC from u-boot :)
> 
> with recent changes in upstream/next, you should be able to do it with imx-usb-loader
> only now.

It seems there are some fixes missing, I'll come up with them later.
Anyway, the recent additions only work on i.MX8MM, the i.MX8MQ has
another USB controller. Also using imx-usb-loader on i.MX8M needs help
from the board code which is currently only implemented on the i.MX8MM
EVK.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
