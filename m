Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2g0j-0002QH-AC
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 19:20:38 +0000
Date: Mon, 3 Aug 2020 21:20:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200803192035.GF31536@pengutronix.de>
References: <1595588977-5147-1-git-send-email-renaud.barbier@abaco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1595588977-5147-1-git-send-email-renaud.barbier@abaco.com>
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
Subject: Re: [PATCH] gpio: get function returns masked register value
To: Renaud Barbier <renaud.barbier@abaco.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 24, 2020 at 12:09:37PM +0100, Renaud Barbier wrote:
> Unlike Linux the generic driver get function returns the masked register
> content and not the 0 or 1 value. The consequence is that gpio_get_value
> returns for instance 0x10 for bit 4 instead of 1.
> Use the Linux normalized form instead.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
> ---
>  drivers/gpio/gpio-generic.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)

Applied to master, thanks

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
