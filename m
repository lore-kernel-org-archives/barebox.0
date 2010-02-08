Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NeTtR-0003oU-9R
	for barebox@lists.infradead.org; Mon, 08 Feb 2010 13:43:14 +0000
Date: Mon, 8 Feb 2010 14:43:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100208134306.GC17643@pengutronix.de>
References: <20100206235513.GE15617@darwin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100206235513.GE15617@darwin>
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
Subject: Re: [PATCH] EP93xx: Fix system controller register definitions
To: Matthias Kaehlcke <matthias@kaehlcke.net>
Cc: barebox@lists.infradead.org

Hi Matthias,

On Sun, Feb 07, 2010 at 12:55:13AM +0100, Matthias Kaehlcke wrote:
> EP93xx: The system controller register definition doesn't take into account a 4
> byte gap between ChipId and SysCfg, in consequence all accesses to syscon registers
> ahead of ChipId fail. Fix this by inserting a filler field
> 
> Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>

Your patches seem ok, I applied all three.

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
