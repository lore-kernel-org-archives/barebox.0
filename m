Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4zY8-0001v5-WB
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 20:00:26 +0000
Date: Mon, 11 Feb 2013 21:00:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130211200021.GH1906@pengutronix.de>
References: <1360572905-4566-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360572905-4566-1-git-send-email-h.feurstein@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] ARM i.MX6: Add support for SabreSD board
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi Hubert,

On Mon, Feb 11, 2013 at 09:55:05AM +0100, Hubert Feurstein wrote:
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> ---
>  Changes since V1:
>  - rebased on latest master with arm-entry changes
>  - use phy_register_fixup_for_uid to register phy fixup
>  - register SD4 as first mmc device, so it always becomes disk0
>  - add self and env partition
>  - GbE is working with patch 'net fec_imx: add support for i.MX6 1000Mbps mode'
> 

Applied thanks.

> +
> +static int sabresd_mem_init(void)
> +{
> +	arm_add_mem_device("ram0", 0x10000000, SZ_1G);
> +
> +	return 0;
> +}
> +mem_initcall(sabresd_mem_init);

This is not necessary anymore. I removed this while applying. Could you
verify this still works?

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
