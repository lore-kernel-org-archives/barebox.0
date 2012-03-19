Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9lJU-00075W-Ib
 for barebox@lists.infradead.org; Mon, 19 Mar 2012 22:44:30 +0000
Date: Mon, 19 Mar 2012 23:44:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120319224422.GE3852@pengutronix.de>
References: <E1S9XKE-0002jJ-Al.shc_work-mail-ru@f275.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1S9XKE-0002jJ-Al.shc_work-mail-ru@f275.mail.ru>
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
Subject: Re: flash_header for mx51
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Mar 19, 2012 at 11:48:18AM +0400, Alexander Shiyan wrote:
> Hello.
> 
> Since for mx51-based boards we use same flash_header file,
> can we rename it to flash_header_imx51 and place to arm/mach-imx
> for use this one for all future mx51 boards?
> Thanks!

I think this won't work in general. The flash header contains the SDRAM
setup which is board specific. There may be some code duplication for
boards which have the same SDRAM, but I'm not sure if it makes sense to
try to merge them.

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
