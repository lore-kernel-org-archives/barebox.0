Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dKgEw-0000Nw-TO
 for barebox@lists.infradead.org; Tue, 13 Jun 2017 07:27:53 +0000
Date: Tue, 13 Jun 2017 09:27:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170613072729.gx63q5adesl67tmf@pengutronix.de>
References: <1496947297-23502-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1496947297-23502-1-git-send-email-akurz@blala.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] ARM: i.MX6 Wandboard: dont do MMDC Write Leveling
 Calibration
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 08, 2017 at 08:41:34PM +0200, Alexander Kurz wrote:
> The hardware requirements to perform a write leveling calibration are
> not fulfilled by the Wandboard modules.
> IMX6DQRM =A744.11.6 "Write leveling Calibration" Note2 states that the fi=
rst
> bit of each data byte group (D0, D8, ..., D56) from memory must be connec=
ted
> to the same data bus bit on the controller, which is not given on the
> Wandboard modules, resulting in unpredictable calib results and breaking =
the
> WBQUAD 2GiB SDRAM setup. Similar restrictions exist for the i.MX6SD.
> =

> Remove this calibration and use the MPWLDECTRL defaults.
> =

> Signed-off-by: Alexander Kurz <akurz@blala.de>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/technexion-wandboard/lowlevel.c | 1 -
>  1 file changed, 1 deletion(-)
> =

> diff --git a/arch/arm/boards/technexion-wandboard/lowlevel.c b/arch/arm/b=
oards/technexion-wandboard/lowlevel.c
> index d3eb9a0..ff5ae6d 100644
> --- a/arch/arm/boards/technexion-wandboard/lowlevel.c
> +++ b/arch/arm/boards/technexion-wandboard/lowlevel.c
> @@ -276,7 +276,6 @@ static unsigned long wandboard_dram_init(void)
>  =

>  	__udelay(100);
>  =

> -	mmdc_do_write_level_calibration();
>  	mmdc_do_dqs_calibration();
>  #ifdef DEBUG
>  	mmdc_print_calibration_results();
> -- =

> 2.1.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
