Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3hGs-0004Jy-Ul
 for barebox@lists.infradead.org; Fri, 20 May 2016 10:03:07 +0000
Date: Fri, 20 May 2016 12:02:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160520100243.GJ11148@pengutronix.de>
References: <1463731746.897415417@f66.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1463731746.897415417@f66.i.mail.ru>
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
Subject: Re: Console not work with CONFIG_CONSOLE_ACTIVATE_FIRST
To: Alexander Shiyan <shc_work@mail.ru>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Alexander,

On Fri, May 20, 2016 at 11:09:06AM +0300, Alexander Shiyan wrote:
> Hello.
> 
> Patch 05261801e9cde103b3c4df843472027c007531da changes input subsystem.
> If the CONFIG_CONSOLE_ACTIVATE_FIRST is set and barebox config contain
> one serial console and one input device (GPIO buttons, for example), the console stops working.
> Currently I haven't found a solution for this, but the CONFIG_CONSOLE_ACTIVATE_ALL
> solve the problem.

The GPIO buttons is registered at device_initcall time whereas the UART
console devices are normally registered at console_initcall time. I
assume either your UART driver or the corresponding device is registered
from a device_initcall when it should be from console_initcall.

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
