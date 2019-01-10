Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghVlY-0006v6-BJ
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 08:32:41 +0000
Date: Thu, 10 Jan 2019 09:32:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190110083238.db4j3vs6qegh7r2y@pengutronix.de>
References: <20190109112945.GB918@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190109112945.GB918@lenoch>
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
Subject: Re: [PATCH 3/5] usbgadget: dfu: remove useless break in the switch
 statement
To: Ladislav Michl <ladis@linux-mips.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jan 09, 2019 at 12:29:45PM +0100, Ladislav Michl wrote:
> Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> ---
>  drivers/usb/gadget/dfu.c | 5 -----
>  1 file changed, 5 deletions(-)

Applied, thanks

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
