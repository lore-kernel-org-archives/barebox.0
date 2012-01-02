Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhfLU-0007nt-0K
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 10:42:25 +0000
Date: Mon, 2 Jan 2012 11:42:08 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20120102104208.GA24280@pengutronix.de>
References: <20111124143239.GA32286@pengutronix.de>
 <20120101044619.GD945@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120101044619.GD945@game.jcrosoft.org>
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
Subject: Re: [PATCH] atmel_spi: add mesg->actual_length, so devices can use
 it for read/write
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi,

On Sun, Jan 01, 2012 at 05:46:19AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:32 Thu 24 Nov     , Michael Grzeschik wrote:
> > Without this i.e. the m25p driver is not working properly.
> > 
> > Its used to calculate the return value of the read/write function of
> > some devices. If the value is missing, barebox would always
> > miscalculate the next transfer sizes.
> > 
> > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > ---
> on which platform did you test it?

I tested it on the pm9g45.

Michael

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
