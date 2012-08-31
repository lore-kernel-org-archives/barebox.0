Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T7Lj4-0005FC-DZ
 for barebox@lists.infradead.org; Fri, 31 Aug 2012 07:33:10 +0000
Date: Fri, 31 Aug 2012 09:33:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120831073306.GM26594@pengutronix.de>
References: <1346329850-3866-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346329850-3866-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 0/3] ARM i.MX6: basic USB H1 support
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Aug 30, 2012 at 02:30:47PM +0200, Steffen Trumtrar wrote:
> This series adds basic support for usb host1 on imx6q. This was tested on a
> sabrelite board.
> 
> Steffen Trumtrar (3):
>   ARM i.MX6: add the usbphy1 base addr
>   ARM i.MX6: enable usbphy1
>   usb: use ep-specific pwrgood delay

Applied, thanks.

I also applied 3/3 from which I know that it currently does not help
Eric. It's a step in the right direction and I hope that there might
be something else wrong on his hardware.

BTW, Eric, does the hub work under Linux? It also should not work there
when Linux also uses 100ms.

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
