Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXgm-0000r8-AU
 for barebox@lists.infradead.org; Mon, 06 May 2019 07:05:29 +0000
Date: Mon, 6 May 2019 09:05:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190506070526.2nynimtdaqqqehjl@pengutronix.de>
References: <20190503194921.19364-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503194921.19364-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH v2 1/4] mci: add driver for BCM283x sdhost core
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, May 03, 2019 at 09:49:18PM +0200, Lucas Stach wrote:
> The sdhost is a simple MMC controller found on the Broadcom
> BCM283x line of SoCs. The driver code was ported from U-Boot
> and then simplified a bit, by dropping a lot of the state
> tracking.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/mci/Kconfig          |   4 +
>  drivers/mci/Makefile         |   1 +
>  drivers/mci/bcm2835-sdhost.c | 638 +++++++++++++++++++++++++++++++++++
>  3 files changed, 643 insertions(+)
>  create mode 100644 drivers/mci/bcm2835-sdhost.c

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
