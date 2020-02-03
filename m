Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyWqW-0001aw-VV
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 08:12:42 +0000
Date: Mon, 3 Feb 2020 09:12:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200203081239.vwo26e2fbgse5tkr@pengutronix.de>
References: <20200129113823.8304-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129113823.8304-1-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH] regulator: fixed: take regulator-boot-on into account
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 29, 2020 at 12:38:23PM +0100, Marco Felsch wrote:
> There are regulators which are turned on by default (hw-design) and
> shouldn't be disabled during the boot. Upstream uses the
> regulator-boot-on dt-property for it:
> 
> 8<--------------------------------------------------
>   regulator-boot-on:
>     description: bootloader/firmware enabled regulator
>     type: boolean
> 8<--------------------------------------------------
> 
> The difference between boot-on and always-on is the linux suspend
> handling. Regulators marked as boot-on can be disabled during suspend.
> This case isn't interesting for barebox so we can mark those as
> always-on too.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/regulator/fixed.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

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
