Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXA8-0005um-3F
 for barebox@lists.infradead.org; Mon, 06 May 2019 06:31:46 +0000
Date: Mon, 6 May 2019 08:31:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190506063130.vjfaeuexrlqtmjn7@pengutronix.de>
References: <20190430031524.18810-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430031524.18810-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH v2] ARM: imx: disable IPU QoS setup for correct SoCs
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Tue, Apr 30, 2019 at 05:15:24AM +0200, Rouven Czerwinski wrote:
> The condition was introduced in 4e6e8f73e9 ("ARM: imx6: don't
> execute IPU QoS setup on MX6 SX/SL"), but instead it bails at
> the Solo, not the SX and SL.
> 
> The original intent was most probably to add an exception for
> the i.MX6 Solo as well, so everything else is skipped, including
> the SX, SL and now the UL and ULL. Fix the code to reflect this.
> 
> On the SX, SL, UL, ULL, this now avoids writes to memory, which
> isn't described in the datasheets. On the S, it now configures
> the QoS settings.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx6.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

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
