Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFYRm-0003BR-Eh
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 06:49:15 +0000
Date: Wed, 2 Oct 2019 08:49:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191002064912.2xcdok5aai6omwdj@pengutronix.de>
References: <20191001081509.28051-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001081509.28051-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1] MIPS: net: ag71xx/ar9331: partially sync network
 support with upstream
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 01, 2019 at 10:15:09AM +0200, Oleksij Rempel wrote:
> Ethernet support for ar9331 is upstream now. So, drop every thing what
> is provided by upstream devicetree and rename compatible in the driver.
> 
> barebox network driver will need more work to be upstream compliant. For
> example we should not request or touch the gmac register directly. Since
> currently it is not clear how this should be implemented, patch the
> upstream dts with reg-names = "ge0", "gmac".
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/mips/dts/ar9331-dptechnics-dpt-module.dts |  6 +-----
>  arch/mips/dts/ar9331.dtsi                      | 15 ++++++---------
>  arch/mips/dts/tplink-mr3020.dts                |  2 +-
>  drivers/net/ag71xx.c                           |  2 +-
>  4 files changed, 9 insertions(+), 16 deletions(-)

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
