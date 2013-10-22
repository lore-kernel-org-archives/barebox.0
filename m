Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYdYP-0005lg-Mp
 for barebox@lists.infradead.org; Tue, 22 Oct 2013 15:07:30 +0000
Date: Tue, 22 Oct 2013 17:07:06 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20131022150706.GA27227@pengutronix.de>
References: <1368210538-15286-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368210538-15286-1-git-send-email-dev@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/2] tegra20: add pinctrl driver
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

Hello Lucas,

On Fri, May 10, 2013 at 08:28:57PM +0200, Lucas Stach wrote:
> diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
> index e6aee50..0b859b8 100644
> --- a/drivers/pinctrl/Kconfig
> +++ b/drivers/pinctrl/Kconfig
> @@ -25,4 +25,10 @@ config PINCTRL_IMX_IOMUX_V3
>  	help
>  	  This iomux controller is found on i.MX25,35,51,53,6.
>  =

> +config PINCTRL_TEGRA20
> +	select PINCTRL
> +	bool "Tegra 20 pinmux"
Now that I tried barebox' master on an i.MX28 I was presented with the
question to enable PINCTRL_TEGRA20 or not during oldconfig. Maybe don't
make this user-selectable? (The other pinctrl driver are affected by the
same "issue".)

> +	help
> +	  The pinmux controller found on the Tegra 20 line of SoCs.
> +
>  endmenu

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
