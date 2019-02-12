Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtepm-0005fl-JA
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 20:39:16 +0000
Date: Tue, 12 Feb 2019 21:39:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190212203912.hf2kok7lpgmy6wrp@pengutronix.de>
References: <20190211164400.14663-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190211164400.14663-1-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH] net: phy: micrel: backport ksz9031 125MHz ref-clk
 workaround
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de

On Mon, Feb 11, 2019 at 05:44:00PM +0100, Marco Felsch wrote:
> This patch backports linux commit e1b505a60366 ("net: phy: micrel: add
> 125MHz reference clock workaround").
> 
> 8<--------------------- The original commit message -------------------
> 
> net: phy: micrel: add 125MHz reference clock workaround
> 
> The micrel KSZ9031 phy has a optional clock pin (CLK125_NDO) which can be
> used as reference clock for the MAC unit. The clock signal must meet the
> RGMII requirements to ensure the correct data transmission between the
> MAC and the PHY. The KSZ9031 phy does not fulfill the duty cycle
> requirement if the phy is configured as slave. For a complete
> describtion look at the errata sheets: DS80000691D or DS80000692D.
> 
> The errata sheet recommends to force the phy into master mode whenever
> there is a 1000Base-T link-up as work around. Only set the
> "micrel,force-master" property if you use the phy reference clock provided
> by CLK125_NDO pin as MAC reference clock in your application.
> 
> Attenation, this workaround is only usable if the link partner can
> be configured to slave mode for 1000Base-T.
> 
> Signed-off-by: Markus Niebel <Markus.Niebel@tqs.de>
> [m.felsch@pengutronix.de: fix dt-binding documentation]
> [m.felsch@pengutronix.de: use already existing result var for read/write]
> [m.felsch@pengutronix.de: add error handling]
> [m.felsch@pengutronix.de: add more comments]
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: David S. Miller <davem@davemloft.net>
> 8<---------------------------------------------------------------------
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---

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
