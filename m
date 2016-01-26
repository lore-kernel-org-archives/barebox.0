Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aNxha-0005PP-2B
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 07:06:10 +0000
Date: Tue, 26 Jan 2016 08:05:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160126070548.GA13058@pengutronix.de>
References: <1453719967-17358-1-git-send-email-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1453719967-17358-1-git-send-email-ejo@pengutronix.de>
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
Subject: Re: [PATCH] arm: imx53-guf-vincell-lt: dts: do not specfiy fixed
 memory information
To: Enrico Jorns <ejo@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 25, 2016 at 12:06:07PM +0100, Enrico Jorns wrote:
> Setting a fixed memory size prevents from using the different board
> variants with different memories equipped.
> 
> barebox is able to read RAM size informations from the imx53 RAM
> controller and thus does not require this information passed via dts.
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---
>  arch/arm/dts/imx53-guf-vincell-lt.dts | 4 ----
>  arch/arm/dts/imx53-guf-vincell.dts    | 4 ----
>  2 files changed, 8 deletions(-)

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
