Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwrJS-0000Ta-FE
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 09:03:23 +0000
Date: Thu, 2 Aug 2012 11:03:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120802090317.GK30009@pengutronix.de>
References: <1343840077-2425-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343840077-2425-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH] eukrea_cpuimx35: fix USB host
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 01, 2012 at 06:54:37PM +0200, Eric B=E9nard wrote:
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

Applied, thanks. Sorry, I should have done this before the release, but
I missed this one.

Sometimes I wish we had a concept for stable releases.

Sascha

> ---
>  arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> =

> diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm=
/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> index 93d5ac9..49dbabc 100644
> --- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> +++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> @@ -105,7 +105,7 @@ static void imx35_usb_init(void)
>  	tmp &=3D ~(MX35_H1_SIC_MASK | MX35_H1_PM_BIT | MX35_H1_TLL_BIT |
>  		MX35_H1_USBTE_BIT | MX35_H1_IPPUE_DOWN_BIT | MX35_H1_IPPUE_UP_BIT);
>  	tmp |=3D (MXC_EHCI_INTERFACE_SINGLE_UNI) << MX35_H1_SIC_SHIFT;
> -	tmp |=3D MX35_H1_USBTE_BIT;
> +	tmp |=3D MX35_H1_USBTE_BIT | MX35_H1_PM_BIT | MX35_H1_TLL_BIT ;
>  	tmp |=3D MX35_H1_IPPUE_DOWN_BIT;
>  	writel(tmp, IMX_OTG_BASE + 0x600);
>  =

> -- =

> 1.7.7.6
> =

> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
