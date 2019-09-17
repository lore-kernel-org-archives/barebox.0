Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAABZ-0002kR-La
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 09:54:15 +0000
Date: Tue, 17 Sep 2019 11:54:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190917095411.woxhu6zzerys2fjv@pengutronix.de>
References: <20190917075702.25104-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917075702.25104-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/2] gpio: add driver for MPC8xxx ip core
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Sep 17, 2019 at 09:57:01AM +0200, Steffen Trumtrar wrote:
> Import GPIO-driver for MPC512x/8349/8572/8610/QorIQ and compatible from Linux
> v5.2.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/gpio/Kconfig        |   8 +++
>  drivers/gpio/Makefile       |   1 +
>  drivers/gpio/gpio-mpc8xxx.c | 122 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 131 insertions(+)
>  create mode 100644 drivers/gpio/gpio-mpc8xxx.c

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
