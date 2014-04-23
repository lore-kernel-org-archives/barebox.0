Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WcrY0-0007BR-Pu
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 07:24:53 +0000
Date: Wed, 23 Apr 2014 09:24:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140423072426.GC5858@pengutronix.de>
References: <534F257F.8000106@exegin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <534F257F.8000106@exegin.com>
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
Subject: Re: [PATCH] Fix AT91 UDC driver on boards without vbus.
To: Owen Kirby <osk@exegin.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 16, 2014 at 05:51:11PM -0700, Owen Kirby wrote:
> From 4ea2bd2e1ca18136d7cfd61643bc8d8187b1495f Mon Sep 17 00:00:00 2001
> From: Owen Kirby <osk@exegin.com>
> Date: Wed, 16 Apr 2014 17:45:18 -0700
> Subject: [PATCH] Fix AT91 UDC driver on boards without vbus.
> 
> While porting Barebox to one of our boards, we found that the AT91 UDC driver
> will fail to connect to USB hosts, and will spam the console with errors if
> the VBUS pin isn't connected.
> 
> Signed-off-by: Owen Kirby <osk@exegin.com>

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
