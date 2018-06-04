Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fPpX5-0006VG-LG
 for barebox@lists.infradead.org; Mon, 04 Jun 2018 13:28:31 +0000
Date: Mon, 4 Jun 2018 15:28:10 +0200
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20180604132810.aklcl4kvajjxofmj@pengutronix.de>
References: <CACvFaDfqmKOB20kdH=XeGRQv4e5spqCegjmaphsLhCOK_ZDSVA@mail.gmail.com>
 <20180522081637.b2mm4raotn5ggqsb@pengutronix.de>
 <CACvFaDe8CAyQyJwSfu3AUcZhqi3PKmsBBcvMna705xMw4nJGUA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACvFaDe8CAyQyJwSfu3AUcZhqi3PKmsBBcvMna705xMw4nJGUA@mail.gmail.com>
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
Subject: Re: RaspberryPi 1/2(/3)
To: Pascal Vizeli <pascal.vizeli@syshack.ch>
Cc: barebox@lists.infradead.org

On Tue, May 22, 2018 at 07:38:52PM +0200, Pascal Vizeli wrote:
> With debug modus it works perfect :) Look like the Serial console is
> not exists (PL011).
> Is that a problem with changed/updated DTS files?

If this is still relevant, you could try fiddling a bit with the UART
options [1] in /boot/config.txt of the RPi firmware (e.g. enable_uart
and dtoverlay=pi3-miniuart-bt). AFAIR the firmware itself sets up the
chip with its own device tree and applies device tree overlays. But this
is only necessary for RPi 2+, iirc.

[1]: https://www.raspberrypi.org/documentation/configuration/uart.md

 - Roland

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
