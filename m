Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W5GwS-0003jk-5u
 for barebox@lists.infradead.org; Mon, 20 Jan 2014 15:39:13 +0000
Date: Mon, 20 Jan 2014 16:38:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140120153848.GR16215@pengutronix.de>
References: <1390045689-23127-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1390045689-23127-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH] ARM: mioa701: fix frequence speedup code
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

Hi Robert,

On Sat, Jan 18, 2014 at 12:48:04PM +0100, Robert Jarzmik wrote:
> As barebox has become the true SPL of mioa701 board (no intermediate
> SPL), a bug was uncovered in the init procedure, where the CPU voltage
> was to be increased by commanding the I2C voltage regulator, while the
> I2C was shut down.
> 
> Fix it by unclock-gating the power I2C bus before using it.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

Applied this series, thanks

Sascha

> ---
>  arch/arm/boards/mioa701/board.c |    1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boards/mioa701/board.c b/arch/arm/boards/mioa701/board.c
> index c46b5da..7ee0be0 100644
> --- a/arch/arm/boards/mioa701/board.c
> +++ b/arch/arm/boards/mioa701/board.c
> @@ -266,6 +266,7 @@ static int mioa701_coredevice_init(void)
>  	 * This requires to command the Maxim 1586 to upgrade core voltage to
>  	 * 1.475 V, on the power I2C bus (device 0x14).
>  	 */
> +	CKEN |= CKEN_PWRI2C;
>  	CCCR = CCCR_A | 0x20290;
>  	PCFR = PCFR_GPR_EN | PCFR_FVC | PCFR_DC_EN | PCFR_PI2C_EN | PCFR_OPDE;
>  	PCMD(0) = PCMD_LC | 0x1f;
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
