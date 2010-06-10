Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMg96-0005UD-P8
	for barebox@lists.infradead.org; Thu, 10 Jun 2010 11:42:05 +0000
Date: Thu, 10 Jun 2010 13:42:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100610114202.GK20799@pengutronix.de>
References: <1276155782-6173-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1276155782-6173-1-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Add support for Eukrea CPUIMX35
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Thu, Jun 10, 2010 at 09:43:02AM +0200, Eric B=E9nard wrote:
> +
> +#define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_M=
FI(8) | IMX_PLL_MFN(5))
> +#define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11)=
 | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
> +
> +static int do_cpufreq(struct command *cmdtp, int argc, char *argv[])
> +{
> +	unsigned long freq;
> +
> +	if (argc !=3D 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	freq =3D simple_strtoul(argv[1], NULL, 0);
> +
> +	switch (freq) {
> +	case 399:
> +		writel(MPCTL_PARAM_399, IMX_CCM_BASE + CCM_MPCTL);
> +		break;
> +	case 532:
> +		writel(MPCTL_PARAM_532, IMX_CCM_BASE + CCM_MPCTL);
> +		break;
> +	default:
> +		return COMMAND_ERROR_USAGE;
> +	}
> +
> +	printf("Switched CPU frequency to %dMHz\n", freq);
> +
> +	return 0;
> +}

I originally added this to the phyCORE i.MX35 board because we had
problems running it at 532 MHz. If you do not have it you probably don't
need it. Though I can keep it if you wish.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
