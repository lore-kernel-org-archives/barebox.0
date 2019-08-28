Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wEp-0005zE-Kl
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 11:35:44 +0000
Date: Wed, 28 Aug 2019 13:35:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190828113542.h4xiyjr4a2s7lzq6@pengutronix.de>
References: <20190826113854.27895-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826113854.27895-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 1/3] MIPS: ath79: enable watchdog support
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Aug 26, 2019 at 01:38:52PM +0200, Oleksij Rempel wrote:
> all ath79 based SoCs have watchdog. Make sure, it can be used.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/mips/configs/ath79_defconfig | 4 ++++
>  1 file changed, 4 insertions(+)

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
