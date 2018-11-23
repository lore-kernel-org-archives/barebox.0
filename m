Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gQ6VY-0000Kr-0D
 for barebox@lists.infradead.org; Fri, 23 Nov 2018 08:08:13 +0000
Date: Fri, 23 Nov 2018 09:07:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181123080759.xw3nokc6jn4rohsc@pengutronix.de>
References: <20181120094035.18252-1-matthias.schiffer@ew.tq-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181120094035.18252-1-matthias.schiffer@ew.tq-group.com>
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
Subject: Re: [PATCH] clk: fix NULL deref without OF node in debug message
To: matthias.schiffer@ew.tq-group.com
Cc: barebox@lists.infradead.org

On Tue, Nov 20, 2018 at 10:40:33AM +0100, matthias.schiffer@ew.tq-group.com wrote:
> From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> 
> of_clk_add_provider() may be called for devices added via
> add_generic_device(). There is no OF node in this case, leading to a crash
> when debug logs are enabled.
> 
> This affects various i.MX CPUs, which add imx*-ccm clock devices using
> add_generic_device().
> 
> Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> ---
>  drivers/clk/clk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied this one and the third one for now.

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
