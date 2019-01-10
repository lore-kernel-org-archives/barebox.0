Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghVmL-0007E3-5F
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 08:33:30 +0000
Date: Thu, 10 Jan 2019 09:33:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190110083327.cpln2vvhj5ebbo7l@pengutronix.de>
References: <20190109202427.29535-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190109202427.29535-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/3] drivers: fix "no previous prototype" warnings
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 09, 2019 at 11:24:24PM +0300, Antony Pavlov wrote:
> Antony Pavlov (3):
>   w1: fix "no previous prototype for 'w1_found'" warning
>   serial: amba-pl011: fix "no previous prototype for 'pl011_init_port'" warning
>   net: ks8851_mll: fix "no previous prototype for 'ks_enable_qmu'" warning
> 
>  drivers/net/ks8851_mll.c    | 2 +-
>  drivers/serial/amba-pl011.c | 2 +-
>  drivers/w1/w1.c             | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)

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
