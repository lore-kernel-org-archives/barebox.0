Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGHOJ-00076s-Dk
 for barebox@lists.infradead.org; Mon, 23 Mar 2020 07:20:57 +0000
Date: Mon, 23 Mar 2020 08:20:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200323072053.GN3335@pengutronix.de>
References: <20200320171613.2713143-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320171613.2713143-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] reset: remove duplicate imx8mq-reset.h and use correct
 defines
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 20, 2020 at 06:16:13PM +0100, Lucas Stach wrote:
> The defines in the Barebox copy of imx8mq-reset.h had a type, which has been fixed
> in the upstream Linux version of this file. So depending on include ordering the
> reset driver using those defines would fail to compile. Use the typo fixed versions
> of the define in the driver and remove the duplicate include file, as we also have
> the proper upstream version now.
> 
> Reported-by: Giorgio Dal Molin <giorgio.nicole@arcor.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/reset/reset-imx7.c               | 12 ++---
>  include/dt-bindings/reset/imx8mq-reset.h | 64 ------------------------
>  2 files changed, 6 insertions(+), 70 deletions(-)
>  delete mode 100644 include/dt-bindings/reset/imx8mq-reset.h

Applied, thanks

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
