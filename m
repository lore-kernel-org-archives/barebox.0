Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fmfkT-00032k-JH
 for barebox@lists.infradead.org; Mon, 06 Aug 2018 13:40:39 +0000
Date: Mon, 6 Aug 2018 15:40:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180806134025.r33a5j4meatb22ba@pengutronix.de>
References: <20180717073709.15855-1-eugen.wiens@jumo.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180717073709.15855-1-eugen.wiens@jumo.net>
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
Subject: Re: [PATCH 1/1] imx_thermal: Fixed missing dependency for the
 IMX_THERMAL config
To: Eugen Wiens <eugen.wiens@jumo.net>
Cc: barebox@lists.infradead.org

On Tue, Jul 17, 2018 at 09:37:09AM +0200, Eugen Wiens wrote:
> The temperature sensor driver for Freescale i.MX SoCs use internaly the O=
COTP character device. If the config IMX_THERMAL is selected the OCOTP conf=
ig was not selected and comes up with an error during booting.
> =

> Signed-off-by: Eugen Wiens <eugen.wiens@jumo.net>
> ---

Applied, thanks

Sascha

>  drivers/aiodev/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
> index 8bad94692..7fcc8c509 100644
> --- a/drivers/aiodev/Kconfig
> +++ b/drivers/aiodev/Kconfig
> @@ -10,6 +10,8 @@ config IMX_THERMAL
>         tristate "Temperature sensor driver for Freescale i.MX SoCs"
>         depends on ARCH_IMX6
>         select MFD_SYSCON
> +       select NVMEM
> +       select IMX_OCOTP
>         help
>           Support for Temperature Monitor (TEMPMON) found on Freescale
>           i.MX SoCs.
> -- =

> 2.18.0
> =

> Diese E-Mail kann vertrauliche und/oder rechtlich gesch=FCtzte Informatio=
nen beinhalten und ist ausschlie=DFlich f=FCr die im Verteiler genannten Pe=
rsonen bestimmt. Das unerlaubte Kopieren sowie die unbefugte Weitergabe die=
ser Mail sind nicht gestattet. Bitte benachrichtigen Sie uns gegebenenfalls=
 telefonisch oder mit Antwort-Mail, falls Sie nicht der richtige Adressat d=
ieser E-Mail sind. Bitte l=F6schen Sie diese Nachricht und alle Anh=E4nge d=
azu unverz=FCglich. Falls nicht ausdr=FCcklich vermerkt, ist diese E-Mail k=
eine rechtlich bindende Vereinbarung. =

> =

> Kommanditgesellschaft: JUMO GmbH & Co. KG, Sitz: 36039 Fulda, Amtsgericht=
 Fulda HRA 302, Pers=F6nlich haftende Gesellschafterin: M. K. JUCHHEIM GmbH=
, Sitz: 36039 Fulda, Amtsgericht Fulda HRB 17, Gesch=E4ftsf=FChrer: Dipl.-I=
ng. Bernhard Juchheim, Dipl.-Kfm. Michael Juchheim =

> Ust.-Id.-Nr.: DE 112411234 =

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
