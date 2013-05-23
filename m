Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfVgd-0005An-HP
 for barebox@lists.infradead.org; Thu, 23 May 2013 13:36:08 +0000
Date: Thu, 23 May 2013 15:35:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130523133545.GR32299@pengutronix.de>
References: <1369208989-14369-1-git-send-email-linux@rempel-privat.de>
 <1369208989-14369-2-git-send-email-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369208989-14369-2-git-send-email-linux@rempel-privat.de>
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
Subject: Re: [RFC, PATCH v2 1/3] MIPS: add Atheros ar531x family support
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

Hi Oleksij,

On Wed, May 22, 2013 at 09:49:47AM +0200, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> +
> +/*
> + * This table is indexed by bits 5..4 of the CLOCKCTL1 register
> + * to determine the predevisor value.
> + */
> +static int CLOCKCTL1_PREDIVIDE_TABLE[4] = { 1, 2, 4, 5 };
> +
> +static unsigned int
> +ar2312_cpu_frequency(void)
> +{
> +	unsigned int predivide_mask, predivide_shift;
> +	unsigned int multiplier_mask, multiplier_shift;
> +	unsigned int clockCtl1, preDivideSelect, preDivisor, multiplier;

No CamelCase please.

> +static int platform_init(void)
> +{
> +	add_generic_device("ar2312_reset", DEVICE_ID_SINGLE, NULL,
> +			KSEG1ADDR(AR2312_RESETTMR), 0x4,
> +			IORESOURCE_MEM, NULL);
> +	watchdog_init();
> +	flash_init();
> +	ether_init();

Whether or not the flash/ethernet/serial device is available is board
specific, not SoC specific, so this should be done in board code. It's
good to provide helpers to make this simple for the board code though,
so a good option would be to add a SoC prefix to the functions and call
it from board code.

Otherwise I am fine with this patch, but maybe Antony still has some
comments.

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
