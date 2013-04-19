Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UT6AZ-0007Yh-FS
 for barebox@lists.infradead.org; Fri, 19 Apr 2013 07:55:44 +0000
Message-ID: <5170F879.3090109@pengutronix.de>
Date: Fri, 19 Apr 2013 09:55:37 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1366356610-16536-1-git-send-email-mkl@pengutronix.de>
 <201304190952.40815.jbe@pengutronix.de>
In-Reply-To: <201304190952.40815.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0760072473441415826=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM i.MX28: make chip reset via reset pin work again
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0760072473441415826==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="----enig2DOHDKBNWCKHKBLDLAVUL"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
------enig2DOHDKBNWCKHKBLDLAVUL
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: quoted-printable

On 04/19/2013 09:52 AM, Juergen Beisert wrote:
> Marc Kleine-Budde wrote:
>> Since commit:
>>
>>     2ccd451 ARM i.MX28: change default watchdog reset method
>>
>> the external reset via the reset pin is broken. That commit overwrites=
 the
>> HW_CLKCTRL_RESET register with only WDOG_POR_DISABLE set, which result=
s in
>> disabling the external reset.
>>
>> This patch sets the EXTERNAL_RESET_ENABLE bit, too. While there clean =
up
>> the name of the WDOG_POR_DISABLE define.
>>
>> Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>> ---
>>  arch/arm/mach-mxs/soc-imx28.c | 9 ++++++---
>>  1 file changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx=
28.c
>> index 8972a3d..bcf4bcc 100644
>> --- a/arch/arm/mach-mxs/soc-imx28.c
>> +++ b/arch/arm/mach-mxs/soc-imx28.c
>> @@ -20,8 +20,9 @@
>>  #include <io.h>
>>
>>  #define HW_CLKCTRL_RESET 0x1e0
>> -# define HW_CLKCTRL_RESET_CHIP (1 << 1)
>> -#define HW_CLKCTRL_WDOG_POR_DISABLE (1 << 5)
>> +#define HW_CLKCTRL_RESET_CHIP (1 << 1)
>> +#define HW_CLKCTRL_RESET_EXTERNAL_RESET_ENABLE (1 << 4)
>> +#define HW_CLKCTRL_RESET_WDOG_POR_DISABLE (1 << 5)
>>
>>  /* Reset the full i.MX28 SoC via a chipset feature */
>>  void __noreturn reset_cpu(unsigned long addr)
>> @@ -44,7 +45,9 @@ static int imx28_init(void)
>>  	 * powered via battery, then a WDT reset powers the chip down instea=
d
>>  	 * of resetting it. Use a software reset only.
>>  	 */
>> -	writel(HW_CLKCTRL_WDOG_POR_DISABLE, IMX_CCM_BASE + HW_CLKCTRL_RESET)=
;
>> +	writel(HW_CLKCTRL_RESET_WDOG_POR_DISABLE |
>> +	       HW_CLKCTRL_RESET_EXTERNAL_RESET_ENABLE,
>> +	       IMX_CCM_BASE + HW_CLKCTRL_RESET);
>=20
> IMHO forcing the HW_CLKCTRL_RESET_EXTERNAL_RESET_ENABLE bit set is even=
 as bad=20
> as reset it with the previous patch. We should left this bit untouched =

> instead.
will change

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


------enig2DOHDKBNWCKHKBLDLAVUL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iEYEARECAAYFAlFw+HwACgkQjTAFq1RaXHM6EQCdFYfOZIveHWE5fEUdu0qQGQ9g
A5cAoIF6z636NUHIHEkccvwEVG2d7l5E
=IN0j
-----END PGP SIGNATURE-----

------enig2DOHDKBNWCKHKBLDLAVUL--


--===============0760072473441415826==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0760072473441415826==--
