Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJy2R-00027J-IY
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 10:57:21 +0000
Date: Mon, 14 Oct 2019 12:57:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191014105717.zncffdfdg5ul4yev@pengutronix.de>
References: <20191011072217.13607-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011072217.13607-1-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH] fixup! gpio: add DA9062 MFD gpio support
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 11, 2019 at 09:22:17AM +0200, Marco Felsch wrote:
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Hi,
> 
> We need to move the gpio-controller to the mfd root node due to
> hierarchical GPIO irqchips to keep inline with the linux bindings.
> Please see the discussion [1] for further information.
> 
> [1] https://patchwork.ozlabs.org/patch/1163309/
> 
> Regards,
>   Marco
> 
>  drivers/gpio/Kconfig       |   4 -
>  drivers/gpio/Makefile      |   1 -
>  drivers/gpio/gpio-da9062.c | 206 -------------------------------------
>  drivers/mfd/da9063.c       | 136 ++++++++++++++++++++++++
>  4 files changed, 136 insertions(+), 211 deletions(-)
>  delete mode 100644 drivers/gpio/gpio-da9062.c

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
