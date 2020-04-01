Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJWXj-0001p8-4X
 for barebox@lists.infradead.org; Wed, 01 Apr 2020 06:08:04 +0000
Date: Wed, 1 Apr 2020 08:08:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200401060800.GA27288@pengutronix.de>
References: <1640881.QuR4u4vfdf@allan-home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1640881.QuR4u4vfdf@allan-home>
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
Subject: Re: bug report: fail to boot barebox in marvell 6281 board
To: you xiaojie <84640926@qq.com>
Cc: barebox@lists.infradead.org

Hi,

On Wed, Apr 01, 2020 at 12:12:12AM +0800, you xiaojie wrote:
> I ported barebox to a new board similar to guruplug, but it could not boot, 
> only show a line of barebox 2020.03.0-....., and I try official guruplug also 
> stopped. the devicetree is ok under linux 5.4 and the kwbimage.cfg is ok I 
> think, according to the 6281's datasheet and compared with the original 
> register value of machine.
> 
> so any can try guruplug's barebox? this is my porting patch, is there 
> something wrong?

The patch looks good from a first glance.

If you have an old version that works on the Guruplug then you could try
bisecting the problem.

Otherwise, the CONFIG_DEBUG_INITCALLS option helps you see where it
stops.

There's also early printing support which you can enable with
CONFIG_DEBUG_LL (Also set CONFIG_MVEBU_CONSOLE_UART correctly then).
I am not sure where it stops, when you see the barebox banner then this
seems to suggest that you already have a working console, so this might
not be needed.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
