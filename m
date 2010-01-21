Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NXxJI-0005S9-Rn
	for barebox@lists.infradead.org; Thu, 21 Jan 2010 13:42:57 +0000
Date: Thu, 21 Jan 2010 14:42:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100121134249.GQ7200@pengutronix.de>
References: <KWLFNO$562DC6F7DC09B93F03CC58E59048B3DD@aruba.it>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <KWLFNO$562DC6F7DC09B93F03CC58E59048B3DD@aruba.it>
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
Subject: Re: Current status of barebox for OMAP3530/beagle
To: Luca Ceresoli <list@lucaceresoli.net>
Cc: barebox@lists.infradead.org

Hi,

On Thu, Jan 21, 2010 at 11:55:00AM +0100, Luca Ceresoli wrote:
> Hi all,
> 
> after reading the docs and searching the list, it is still not clear
> to me how much barebox currently supports OMAP3530 (BeagleBoard in
> particular).
> 
> The omap3530_beagle_per_uart_defconfig is working great as a first
> stage UART loader, as well as adding a few commands. But I failed to
> go much further, i.e. to enable NAND support.

I would expect NAND to be working, though I haven't tested it. What's
going wrong on your board?

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
