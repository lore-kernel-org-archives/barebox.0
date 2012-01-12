Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RlH0T-00048n-AX
 for barebox@lists.infradead.org; Thu, 12 Jan 2012 09:31:38 +0000
Date: Thu, 12 Jan 2012 10:31:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120112093127.GA5446@pengutronix.de>
References: <260174ADA4D63F4AA543B9C81F2DE712053235C0@POCITMSEXMB02.LntUniverse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <260174ADA4D63F4AA543B9C81F2DE712053235C0@POCITMSEXMB02.LntUniverse.com>
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

On Wed, Jan 11, 2012 at 04:22:22PM +0000, G Rajender wrote:
> Hi All,
> 
> How to boot barebox from External SDRAM??
> Im using iMX35 based board.

How do you get the image into the SDRAM? With a debugger?

However, barebox can start from SDRAM in which case it just skips
the SDRAM initialization and depending on the board some more lowlevel
init steps. Just copy the image somewhere into SDRAM and jump into
it.

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
