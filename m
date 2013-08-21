Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VC3mn-0003FK-3K
 for barebox@lists.infradead.org; Wed, 21 Aug 2013 08:29:02 +0000
Date: Wed, 21 Aug 2013 10:28:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130821082838.GO31036@pengutronix.de>
References: <CAJyuEef9RA1PnNX3XPKecAbkBiftXydjaOzT0sOphp4A4arRLw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJyuEef9RA1PnNX3XPKecAbkBiftXydjaOzT0sOphp4A4arRLw@mail.gmail.com>
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
Subject: Re: Porting BareBox to Variscite iMX6 SOM
To: Michael Burkey <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

Hi Michael,

On Tue, Aug 20, 2013 at 02:12:20PM -0400, Michael Burkey wrote:
> Thank you Sascha for the additional information in your earlier post!
> 
> Your comments on the imx-image method got me looking at the menuconfig
> options and I located a simple mistake I had made when changing other
> options (while manually editing some files, I had somehow managed to
> inadvertently disable the "support internal boot" option).
> 
> After fixing this, everything now works as I would expect.
> 
> So, I now have the Variscite iMX6 SOM booted directly from SD to the
> BareBox shell on UART1.

Nice. That's good to hear ;)

> 
> Now I just have to start pulling in all the other devices and getting
> them configured properly!

When doing so please start with a devicetree based board to copy-paste
from. The imx6q-phytec-pbab01 should be a pretty good example.

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
