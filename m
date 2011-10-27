Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RJY1b-0007JX-9l
	for barebox@lists.infradead.org; Thu, 27 Oct 2011 22:02:12 +0000
Date: Fri, 28 Oct 2011 00:02:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111027220206.GB23421@pengutronix.de>
References: <4EA7C424.2030901@televic.com>
	<20111026115234.GZ23421@pengutronix.de>
	<4EA9331D.9090004@selea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4EA9331D.9090004@selea.com>
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
Subject: Re: different NAND type.
To: Omar Pighi <pighi@selea.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Oct 27, 2011 at 12:31:57PM +0200, Omar Pighi wrote:
> Hi,
> 
> on imx25 evaboard there is a samsung nand flash, now I'm using a micron
> on our board (with different size),
> is there any kind of dependence on redboot? something to change ? (the DCD?)
> because it is not booting any moe with the new flash...
> suggestion are welcome.

First of all, please do not hijack topics, start a new thread for new
topics.

If your barebox image started on the old board the same image should
start on a different flash aswell, at least when you got the bootstrap
pins right (pagesize, bus width).

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
