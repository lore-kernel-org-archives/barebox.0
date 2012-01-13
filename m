Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RlcZE-0007EL-2e
 for barebox@lists.infradead.org; Fri, 13 Jan 2012 08:32:57 +0000
Date: Fri, 13 Jan 2012 09:32:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120113083241.GF5446@pengutronix.de>
References: <260174ADA4D63F4AA543B9C81F2DE712053235C0@POCITMSEXMB02.LntUniverse.com>
 <20120112093127.GA5446@pengutronix.de>
 <260174ADA4D63F4AA543B9C81F2DE71205323640@POCITMSEXMB02.LntUniverse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <260174ADA4D63F4AA543B9C81F2DE71205323640@POCITMSEXMB02.LntUniverse.com>
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
Subject: Re: how to boot from external RAM
To: G Rajender <G.Rajender@lnties.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Jan 12, 2012 at 04:43:04PM +0000, G Rajender wrote:
> Hi,
> 
> I am using  Lauterbauk ARM In Circuit Debugger.
> I have done SDRAM initializations in .cmm (batch file) of debugger and configured SDRAM address in make menuconfig.
> I am able to download the image in to SDRAM mapped address but unable boot from it.
> any suggestions on this. Thanks.

Well, you have a debugger. You could have a look what the code actually
does. To make your life a bit easier you can load the image to
CONFIG_TEXT_BASE which means that barebox does not have to relocate
itself and that the addresses in barebox.S match your hardware addresses
from the beginning on.

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
